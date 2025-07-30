//CODE FROM STORY_VIEW EXAMPLE
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:story_view/story_view.dart';  // Commented out due to compatibility issues
import 'widget/repository.dart';

class StatusFull extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<WhatsappStory>>(
        builder: (context, AsyncSnapshot<List<WhatsappStory>> snapshot) {
          if (snapshot.hasData && snapshot.data != null) {
            return CustomStoryViewDelegate(
              stories: snapshot.data!,
            );
          }

          if (snapshot.hasError) {
            //  return ErrorView();
          }

          return Center(
            child: SizedBox(
              width: 40,
              height: 40,
              child: CircularProgressIndicator(),
            ),
          );
        },
        future: Repository.getWhatsappStories(),
      ),
    );
  }
}

class CustomStoryViewDelegate extends StatefulWidget {
  final List<WhatsappStory> stories;

  CustomStoryViewDelegate({required this.stories});

  @override
  _CustomStoryViewDelegateState createState() => _CustomStoryViewDelegateState();
}

class _CustomStoryViewDelegateState extends State<CustomStoryViewDelegate> {
  int currentStoryIndex = 0;
  String when = "";

  @override
  void initState() {
    super.initState();
    when = widget.stories[0].when;
  }

  Widget _buildProfileView() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        CircleAvatar(
          radius: 24,
          backgroundImage: NetworkImage(
              "https://post.healthline.com/wp-content/uploads/2019/02/How-to-Become-a-Better-Person-in-12-Steps_1200x628-facebook.jpg"),
        ),
        SizedBox(
          width: 16,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Matt Redman",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                when,
                style: TextStyle(
                  color: Colors.white38,
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  void _nextStory() {
    if (currentStoryIndex < widget.stories.length - 1) {
      setState(() {
        currentStoryIndex++;
        when = widget.stories[currentStoryIndex].when;
      });
    } else {
      Navigator.of(context).pop();
    }
  }

  void _previousStory() {
    if (currentStoryIndex > 0) {
      setState(() {
        currentStoryIndex--;
        when = widget.stories[currentStoryIndex].when;
      });
    }
  }

  Widget _buildStoryContent() {
    final story = widget.stories[currentStoryIndex];
    
    switch (story.mediaType) {
      case MediaType.image:
        return Container(
          width: double.infinity,
          height: double.infinity,
          child: Image.network(
            story.media,
            fit: BoxFit.cover,
          ),
        );
      case MediaType.video:
        return Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.black,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.play_circle_outline, size: 64, color: Colors.white),
                SizedBox(height: 16),
                Text(
                  'Video: ${story.caption}',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ],
            ),
          ),
        );
      case MediaType.text:
        return Container(
          width: double.infinity,
          height: double.infinity,
          color: Color(int.parse(story.color.replaceAll('#', '0xFF'))),
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(32),
              child: Text(
                story.caption,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GestureDetector(
          onTapDown: (details) {
            final screenWidth = MediaQuery.of(context).size.width;
            if (details.globalPosition.dx < screenWidth / 2) {
              _previousStory();
            } else {
              _nextStory();
            }
          },
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.black,
            child: _buildStoryContent(),
          ),
        ),
        Container(
          padding: EdgeInsets.only(
            top: 48,
            left: 16,
            right: 16,
          ),
          child: _buildProfileView(),
        ),
        // Progress indicator
        Positioned(
          top: 100,
          left: 16,
          right: 16,
          child: Row(
            children: List.generate(widget.stories.length, (index) {
              return Expanded(
                child: Container(
                  height: 2,
                  margin: EdgeInsets.symmetric(horizontal: 2),
                  decoration: BoxDecoration(
                    color: index <= currentStoryIndex 
                        ? Colors.white 
                        : Colors.white.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(1),
                  ),
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
