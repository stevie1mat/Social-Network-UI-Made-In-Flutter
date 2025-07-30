import 'package:flutter/material.dart';
import '../models/post.dart';

class PostProvider with ChangeNotifier {
  List<Post> _posts = [];
  bool _isLoading = false;
  String? _error;

  List<Post> get posts => _posts;
  bool get isLoading => _isLoading;
  String? get error => _error;

  // Mock posts data
  final List<Post> _mockPosts = [
    Post(
      id: '1',
      userId: '1',
      userName: 'Allan Paterson',
      userProfileImage: 'https://cdn.now.howstuffworks.com/media-content/0b7f4e9b-f59c-4024-9f06-b3dc12850ab7-1920-1080.jpg',
      content: 'Just finished building this amazing social network UI in Flutter! 🚀 The design is inspired by modern social media platforms with a clean and intuitive interface.',
      imageUrl: 'https://images.unsplash.com/photo-1518709268805-4e9042af2176?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1000&q=80',
      createdAt: DateTime.now().subtract(Duration(hours: 2)),
      likes: 124,
      comments: 23,
      shares: 8,
      isLiked: false,
      isBookmarked: false,
    ),
    Post(
      id: '2',
      userId: '2',
      userName: 'Sarah Johnson',
      userProfileImage: 'https://images.unsplash.com/photo-1494790108755-2616b612b786?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1000&q=80',
      content: 'Beautiful day for a hike! 🏔️ Nature always helps me clear my mind and find inspiration for new projects.',
      imageUrl: 'https://images.unsplash.com/photo-1506905925346-21bda4d32df4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1000&q=80',
      createdAt: DateTime.now().subtract(Duration(hours: 4)),
      likes: 89,
      comments: 12,
      shares: 3,
      isLiked: true,
      isBookmarked: false,
    ),
    Post(
      id: '3',
      userId: '3',
      userName: 'Mike Chen',
      userProfileImage: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1000&q=80',
      content: 'Working on some exciting new features for our app. Can\'t wait to share the updates with everyone! 💻',
      imageUrl: null,
      createdAt: DateTime.now().subtract(Duration(hours: 6)),
      likes: 67,
      comments: 8,
      shares: 2,
      isLiked: false,
      isBookmarked: true,
    ),
  ];

  Future<void> loadPosts() async {
    _setLoading(true);
    _clearError();

    try {
      // Simulate API call
      await Future.delayed(Duration(seconds: 1));
      
      _posts = List.from(_mockPosts);
      notifyListeners();
    } catch (e) {
      _setError('Failed to load posts');
    } finally {
      _setLoading(false);
    }
  }

  Future<void> createPost(String content, {String? imageUrl}) async {
    _setLoading(true);
    _clearError();

    try {
      // Simulate API call
      await Future.delayed(Duration(seconds: 1));
      
      final newPost = Post(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        userId: '1', // Current user ID
        userName: 'Allan Paterson',
        userProfileImage: 'https://cdn.now.howstuffworks.com/media-content/0b7f4e9b-f59c-4024-9f06-b3dc12850ab7-1920-1080.jpg',
        content: content,
        imageUrl: imageUrl,
        createdAt: DateTime.now(),
        likes: 0,
        comments: 0,
        shares: 0,
        isLiked: false,
        isBookmarked: false,
      );
      
      _posts.insert(0, newPost);
      notifyListeners();
    } catch (e) {
      _setError('Failed to create post');
    } finally {
      _setLoading(false);
    }
  }

  void toggleLike(String postId) {
    final postIndex = _posts.indexWhere((post) => post.id == postId);
    if (postIndex != -1) {
      final post = _posts[postIndex];
      final updatedPost = post.copyWith(
        isLiked: !post.isLiked,
        likes: post.isLiked ? post.likes - 1 : post.likes + 1,
      );
      
      _posts[postIndex] = updatedPost;
      notifyListeners();
    }
  }

  void toggleBookmark(String postId) {
    final postIndex = _posts.indexWhere((post) => post.id == postId);
    if (postIndex != -1) {
      final post = _posts[postIndex];
      final updatedPost = post.copyWith(
        isBookmarked: !post.isBookmarked,
      );
      
      _posts[postIndex] = updatedPost;
      notifyListeners();
    }
  }

  void addComment(String postId, String comment) {
    final postIndex = _posts.indexWhere((post) => post.id == postId);
    if (postIndex != -1) {
      final post = _posts[postIndex];
      final updatedPost = post.copyWith(
        comments: post.comments + 1,
      );
      
      _posts[postIndex] = updatedPost;
      notifyListeners();
    }
  }

  void sharePost(String postId) {
    final postIndex = _posts.indexWhere((post) => post.id == postId);
    if (postIndex != -1) {
      final post = _posts[postIndex];
      final updatedPost = post.copyWith(
        shares: post.shares + 1,
      );
      
      _posts[postIndex] = updatedPost;
      notifyListeners();
    }
  }

  List<Post> getBookmarkedPosts() {
    return _posts.where((post) => post.isBookmarked).toList();
  }

  List<Post> getLikedPosts() {
    return _posts.where((post) => post.isLiked).toList();
  }

  void _setLoading(bool loading) {
    _isLoading = loading;
    notifyListeners();
  }

  void _setError(String error) {
    _error = error;
    notifyListeners();
  }

  void _clearError() {
    _error = null;
    notifyListeners();
  }
} 