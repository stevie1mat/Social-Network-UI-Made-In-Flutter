# <img src="https://github.com/stevie1mat/Social-Network-UI-Made-In-Flutter/blob/main/images/logo.png" width="35"> Social Network UI Made In Flutter
 
 A modern, feature-rich social network UI built with Flutter for Android & iOS. This project showcases a complete social media app with state management, real-time interactions, and beautiful UI design.
 
 Star⭐ the repo if you like what you see😉.

# 🛠️ Requirements

## System Requirements
- **Operating System**: macOS, Linux, or Windows
- **IDE**: IntelliJ IDEA, Android Studio, VS Code, or any Flutter-compatible IDE
- **Flutter SDK**: 3.24.3 or higher
- **Dart SDK**: 3.5.3 or higher
- **Git**: For version control

## Development Setup
1. **Clone the repository**
   ```bash
   git clone https://github.com/stevie1mat/Social-Network-UI-Made-In-Flutter.git
   cd Social-Network-UI-Made-In-Flutter
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the app**
   ```bash
   flutter run
   ```

## 🚀 Quick Start
The app is ready to run out of the box with mock data. All state management is pre-configured and functional.

# 🚀 Features

## ✨ Core Features
- **Modern UI/UX Design** - Clean and intuitive social media interface
- **State Management** - Comprehensive state management with Provider
- **Real-time Interactions** - Like, comment, share, and bookmark posts
- **User Authentication** - Complete user profile and authentication system
- **Notifications** - Real-time notification system with read/unread status
- **Story View** - Custom story viewer with interactive navigation
- **Interactive Maps** - Location-based features with FlutterMap
- **Responsive Design** - Works seamlessly on both Android and iOS

## 📱 App Screens
- **Home Feed** - Dynamic post feed with social interactions
- **Profile** - User profile with bio, stats, and activity timeline
- **Connections** - User discovery and connection management
- **Meetup** - Event discovery and location-based features
- **Notifications** - Real-time notification center

# 📦 Packages

## UI & Design
- **google_fonts** - <a href="https://pub.dev/packages/google_fonts">See on Pub.dev</a>
- **timeline_tile** - <a href="https://pub.dev/packages/timeline_tile">See on Pub.dev</a>

## State Management
- **provider** - <a href="https://pub.dev/packages/provider">See on Pub.dev</a>

## Networking & Data
- **http** - <a href="https://pub.dev/packages/http">See on Pub.dev</a>

## Maps & Location
- **flutter_map** - <a href="https://pub.dev/packages/flutter_map">See on Pub.dev</a>
- **latlong2** - <a href="https://pub.dev/packages/latlong2">See on Pub.dev</a>

## Custom Implementation
- **Custom Story Viewer** - Replaced story_view with custom implementation for better compatibility

# 🏗️ Architecture & State Management

## 📊 State Management Structure
```
lib/
├── models/
│   ├── user.dart          # User data model
│   └── post.dart          # Post data model
├── providers/
│   ├── auth_provider.dart      # User authentication & profile
│   ├── post_provider.dart      # Posts, likes, comments, bookmarks
│   └── notification_provider.dart  # Notifications management
└── main.dart              # MultiProvider setup
```

## 🔧 Technical Improvements
- **Provider Pattern** - Centralized state management
- **Reactive UI** - Automatic UI updates on state changes
- **Separation of Concerns** - Business logic separated from UI
- **Scalable Architecture** - Easy to add new features
- **Type Safety** - Strong typing with Dart
- **Error Handling** - Comprehensive error management
- **Loading States** - Smooth user experience with loading indicators

## 🛠️ Build & Compatibility
- **Flutter 3.24.3** - Latest stable version
- **Dart 3.5.3** - Modern Dart features
- **iOS & Android** - Cross-platform compatibility
- **Null Safety** - Full null safety implementation
- **Comprehensive .gitignore** - Production-ready git configuration

# 📸 Screenshots

<h4>Home Screen</h4>
<img src="https://github.com/stevie1mat/Social-Network-UI-Made-In-Flutter/blob/main/homewithstatus.png">

<h4>Profile</h4>
<img src="https://github.com/stevie1mat/Social-Network-UI-Made-In-Flutter/blob/main/profile.png" width="700">

<h4>Meetup</h4>
<img src="https://github.com/stevie1mat/Social-Network-UI-Made-In-Flutter/blob/main/meetup.png" width="700">

<h4>Notifications & Connection</h4>
<img src="https://github.com/stevie1mat/Social-Network-UI-Made-In-Flutter/blob/main/notificationandconnection.png" width="500">

# 🔄 Recent Updates & Improvements

## ✅ Latest Enhancements (Latest Commit)
- **State Management**: Added comprehensive Provider-based state management
- **Data Models**: Created User and Post models with full functionality
- **Authentication**: Implemented AuthProvider for user management
- **Social Features**: Added PostProvider for likes, comments, bookmarks
- **Notifications**: Real-time notification system with NotificationProvider
- **Build Fixes**: Resolved all compatibility issues with Flutter 3.24.3
- **Package Updates**: Updated all dependencies to latest compatible versions
- **Custom Story Viewer**: Replaced problematic story_view with custom implementation
- **HTTP Compatibility**: Fixed URI requirements for latest http package
- **FlutterMap API**: Updated to v6 API for better performance
- **Git Configuration**: Comprehensive .gitignore for production deployment

## 🐛 Bug Fixes
- Fixed nullable color issues in UI components
- Resolved FlutterMap API compatibility problems
- Fixed HTTP package URI requirements
- Replaced incompatible story_view package
- Updated all packages to latest stable versions

## 🚀 Performance Improvements
- Optimized state management for better performance
- Reduced app bundle size with custom implementations
- Improved loading states and error handling
- Enhanced UI responsiveness

# 🎨 Inspiration

The UI is Inspired from the dribbble :
<a href="https://dribbble.com/shots/14355537-Pappyon">Pappyon</a>

# 👨‍💻 Author & Creator of this project
 
Full Stack Dev | <a href="https://stevenmathew.dev">Steven Mathew</a>


