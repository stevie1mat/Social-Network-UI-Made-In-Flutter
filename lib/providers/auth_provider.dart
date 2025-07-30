import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../models/user.dart';
import '../config/supabase_config.dart';

class AuthProvider with ChangeNotifier {
  AppUser? _currentUser;
  bool _isLoading = false;
  String? _error;

  AppUser? get currentUser => _currentUser;
  bool get isLoading => _isLoading;
  String? get error => _error;
  bool get isAuthenticated => _currentUser != null;

  // Initialize auth state
  Future<void> initializeAuth() async {
    try {
      // Check if Supabase is available
      if (SupabaseConfig.supabaseUrl.isNotEmpty) {
        final session = Supabase.instance.client.auth.currentSession;
        if (session?.user != null) {
          _currentUser = AppUser(
            id: session!.user.id,
            name: session.user.userMetadata?['name'] ?? 'User',
            email: session.user.email ?? '',
            profileImage: session.user.userMetadata?['avatar_url'] ?? _mockUser.profileImage,
            bio: session.user.userMetadata?['bio'] ?? _mockUser.bio,
            followers: _mockUser.followers,
            following: _mockUser.following,
            posts: _mockUser.posts,
          );
          notifyListeners();
        }
      }
    } catch (e) {
      print('Error initializing auth: $e');
    }
  }

  // Mock user data for demonstration
  final AppUser _mockUser = AppUser(
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
      // Check if Supabase is available
      if (Supabase.instance.client.auth.currentSession != null || 
          SupabaseConfig.supabaseUrl.isNotEmpty) {
        // Sign in with Supabase
        final response = await Supabase.instance.client.auth.signInWithPassword(
          email: email,
          password: password,
        );

        if (response.user != null) {
          // Create user object from Supabase user data
          _currentUser = AppUser(
            id: response.user!.id,
            name: response.user!.userMetadata?['name'] ?? 'User',
            email: response.user!.email ?? '',
            profileImage: response.user!.userMetadata?['avatar_url'] ?? _mockUser.profileImage,
            bio: response.user!.userMetadata?['bio'] ?? _mockUser.bio,
            followers: _mockUser.followers,
            following: _mockUser.following,
            posts: _mockUser.posts,
          );
          notifyListeners();
        } else {
          _setError('Invalid credentials');
        }
      } else {
        // Mock authentication for development
        await Future.delayed(Duration(seconds: 2));
        if (email.isNotEmpty && password.isNotEmpty) {
          _currentUser = _mockUser;
          notifyListeners();
        } else {
          _setError('Invalid credentials');
        }
      }
    } catch (e) {
      _setError('An error occurred during sign in: ${e.toString()}');
    } finally {
      _setLoading(false);
    }
  }

  Future<void> signOut() async {
    _setLoading(true);
    
    try {
      // Check if Supabase is available
      if (Supabase.instance.client.auth.currentSession != null || 
          SupabaseConfig.supabaseUrl.isNotEmpty) {
        // Sign out from Supabase
        await Supabase.instance.client.auth.signOut();
      }
      
      _currentUser = null;
      notifyListeners();
    } catch (e) {
      _setError('An error occurred during sign out: ${e.toString()}');
    } finally {
      _setLoading(false);
    }
  }

  Future<void> signUp(String email, String password, String name) async {
    _setLoading(true);
    _clearError();

    try {
      // Check if Supabase is available
      if (Supabase.instance.client.auth.currentSession != null || 
          SupabaseConfig.supabaseUrl.isNotEmpty) {
        // Sign up with Supabase
        final response = await Supabase.instance.client.auth.signUp(
          email: email,
          password: password,
          data: {
            'name': name,
          },
        );

        if (response.user != null) {
          // Create user object from Supabase user data
          _currentUser = AppUser(
            id: response.user!.id,
            name: name,
            email: email,
            profileImage: _mockUser.profileImage,
            bio: _mockUser.bio,
            followers: _mockUser.followers,
            following: _mockUser.following,
            posts: _mockUser.posts,
        );
          notifyListeners();
        } else {
          _setError('Failed to create account');
        }
      } else {
        // Mock signup for development
        await Future.delayed(Duration(seconds: 2));
        _currentUser = AppUser(
          id: DateTime.now().millisecondsSinceEpoch.toString(),
          name: name,
          email: email,
          profileImage: _mockUser.profileImage,
          bio: _mockUser.bio,
          followers: _mockUser.followers,
          following: _mockUser.following,
          posts: _mockUser.posts,
        );
        notifyListeners();
      }
    } catch (e) {
      _setError('An error occurred during sign up: ${e.toString()}');
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
      
      _currentUser = AppUser(
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