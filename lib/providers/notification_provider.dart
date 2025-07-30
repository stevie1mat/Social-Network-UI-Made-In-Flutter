import 'package:flutter/material.dart';

class NotificationItem {
  final String id;
  final String title;
  final String message;
  final String userImage;
  final DateTime timestamp;
  final bool isRead;
  final NotificationType type;

  NotificationItem({
    required this.id,
    required this.title,
    required this.message,
    required this.userImage,
    required this.timestamp,
    required this.isRead,
    required this.type,
  });
}

enum NotificationType {
  like,
  comment,
  follow,
  mention,
  message,
  event,
}

class NotificationProvider with ChangeNotifier {
  List<NotificationItem> _notifications = [];
  bool _isLoading = false;
  String? _error;

  List<NotificationItem> get notifications => _notifications;
  bool get isLoading => _isLoading;
  String? get error => _error;
  int get unreadCount => _notifications.where((n) => !n.isRead).length;

  // Mock notifications data
  final List<NotificationItem> _mockNotifications = [
    NotificationItem(
      id: '1',
      title: 'Crata Maruti',
      message: 'You have missed a call',
      userImage: 'https://content.api.news/v3/images/bin/a6923adbc7bece73803221613f410782',
      timestamp: DateTime.now().subtract(Duration(minutes: 25)),
      isRead: false,
      type: NotificationType.message,
    ),
    NotificationItem(
      id: '2',
      title: 'Amaz Benzon',
      message: 'Has sent You a message',
      userImage: 'https://i.insider.com/5c9a115d8e436a63e42c2883?width=600&format=jpeg&auto=webp',
      timestamp: DateTime.now().subtract(Duration(hours: 1, minutes: 17)),
      isRead: false,
      type: NotificationType.message,
    ),
    NotificationItem(
      id: '3',
      title: 'Flutter I/O',
      message: 'You have an ongoing event',
      userImage: 'https://static.scientificamerican.com/sciam/cache/file/92E141F8-36E4-4331-BB2EE42AC8674DD3_source.jpg',
      timestamp: DateTime.now().subtract(Duration(hours: 5, minutes: 20)),
      isRead: true,
      type: NotificationType.event,
    ),
    NotificationItem(
      id: '4',
      title: 'Jax Max',
      message: 'You have placed a call',
      userImage: 'https://cdn.now.howstuffworks.com/media-content/0b7f4e9b-f59c-4024-9f06-b3dc12850ab7-1920-1080.jpg',
      timestamp: DateTime.now().subtract(Duration(days: 1, minutes: 7)),
      isRead: true,
      type: NotificationType.message,
    ),
    NotificationItem(
      id: '5',
      title: 'Virat Kholi',
      message: 'You have sent a message',
      userImage: 'https://resize.indiatvnews.com/en/resize/newbucket/1200_-/2019/11/virat-kohli-1574240907.jpg',
      timestamp: DateTime.now().subtract(Duration(days: 1, hours: 2, minutes: 45)),
      isRead: true,
      type: NotificationType.message,
    ),
  ];

  Future<void> loadNotifications() async {
    _setLoading(true);
    _clearError();

    try {
      // Simulate API call
      await Future.delayed(Duration(seconds: 1));
      
      _notifications = List.from(_mockNotifications);
      notifyListeners();
    } catch (e) {
      _setError('Failed to load notifications');
    } finally {
      _setLoading(false);
    }
  }

  void markAsRead(String notificationId) {
    final index = _notifications.indexWhere((n) => n.id == notificationId);
    if (index != -1) {
      final notification = _notifications[index];
      _notifications[index] = NotificationItem(
        id: notification.id,
        title: notification.title,
        message: notification.message,
        userImage: notification.userImage,
        timestamp: notification.timestamp,
        isRead: true,
        type: notification.type,
      );
      notifyListeners();
    }
  }

  void markAllAsRead() {
    _notifications = _notifications.map((notification) => NotificationItem(
      id: notification.id,
      title: notification.title,
      message: notification.message,
      userImage: notification.userImage,
      timestamp: notification.timestamp,
      isRead: true,
      type: notification.type,
    )).toList();
    notifyListeners();
  }

  void addNotification(NotificationItem notification) {
    _notifications.insert(0, notification);
    notifyListeners();
  }

  void removeNotification(String notificationId) {
    _notifications.removeWhere((n) => n.id == notificationId);
    notifyListeners();
  }

  List<NotificationItem> getNotificationsByType(NotificationType type) {
    return _notifications.where((n) => n.type == type).toList();
  }

  List<NotificationItem> getUnreadNotifications() {
    return _notifications.where((n) => !n.isRead).toList();
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