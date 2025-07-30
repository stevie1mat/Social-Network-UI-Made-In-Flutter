import 'package:flutter/material.dart';
import '../models/user.dart';

class AuthProvider with ChangeNotifier {
  User? _currentUser;
  bool _isLoading = false;
  String? _error;

  User? get currentUser => _currentUser;
  bool get isLoading => _isLoading;
  String? get error => _error;
  bool get isAuthenticated => _currentUser != null;

  // Mock user data for demonstration
  final User _mockUser = User(
    id: '1',
    name: 'Allan Paterson',
    email: 'allan@example.com',
    profileImage: 'https://cdn.now.howstuffworks.com/media-content/0b7f4e9b-f59c-4024-9f06-b3dc12850ab7-1920-1080.jpg',
    bio: 'Flutter Developer | UI/UX Designer | Coffee Lover',
    followers: 1247,
    following: 892,
    posts: 156,
  );

  Future<void> signIn(String email, String password) async {
    _setLoading(true);
    _clearError();

    try {
      // Simulate API call
      await Future.delayed(Duration(seconds: 2));
      
      // Mock authentication
      if (email == 'test@example.com' && password == 'password') {
        _currentUser = _mockUser;
        notifyListeners();
      } else {
        _setError('Invalid credentials');
      }
    } catch (e) {
      _setError('An error occurred during sign in');
    } finally {
      _setLoading(false);
    }
  }

  Future<void> signOut() async {
    _setLoading(true);
    
    try {
      // Simulate API call
      await Future.delayed(Duration(seconds: 1));
      
      _currentUser = null;
      notifyListeners();
    } catch (e) {
      _setError('An error occurred during sign out');
    } finally {
      _setLoading(false);
    }
  }

  Future<void> updateProfile({
    String? name,
    String? bio,
    String? profileImage,
  }) async {
    if (_currentUser == null) return;

    _setLoading(true);
    _clearError();

    try {
      // Simulate API call
      await Future.delayed(Duration(seconds: 1));
      
      _currentUser = User(
        id: _currentUser!.id,
        name: name ?? _currentUser!.name,
        email: _currentUser!.email,
        profileImage: profileImage ?? _currentUser!.profileImage,
        bio: bio ?? _currentUser!.bio,
        followers: _currentUser!.followers,
        following: _currentUser!.following,
        posts: _currentUser!.posts,
      );
      
      notifyListeners();
    } catch (e) {
      _setError('An error occurred while updating profile');
    } finally {
      _setLoading(false);
    }
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