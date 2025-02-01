import 'package:cloud_firestore/cloud_firestore.dart';

class ThreadModel {
  final String? id;
  String title;
  String content;
  String userId;
  DateTime? createdAt;
  DateTime? updatedAt;

  // Constructor
  ThreadModel({
    this.id,
    required this.title,
    required this.content,
    required this.userId,
    this.createdAt,
    this.updatedAt,
  });

  // Helper function to get formatted creation date
  String get formattedCreatedAt =>
      createdAt != null ? createdAt!.toIso8601String() : 'N/A';

  // Helper function to get formatted update date
  String get formattedUpdatedAt =>
      updatedAt != null ? updatedAt!.toIso8601String() : 'N/A';

  // Static function to create an empty thread model
  static ThreadModel empty() => ThreadModel(title: '', content: '', userId: '');

  // Convert model to JSON structure for Firebase storage
  Map<String, dynamic> toJson() {
    return {
      'Title': title,
      'Content': content,
      'UserId': userId,
      'CreatedAt': createdAt ?? FieldValue.serverTimestamp(),
      'UpdatedAt': FieldValue.serverTimestamp(),
    };
  }

  // Function to calculate time difference in human-readable format
  String get timeAgo {
    if (createdAt == null) return "Unknown";

    final now = DateTime.now();
    final difference = now.difference(createdAt!);

    if (difference.inSeconds < 60) {
      return "${difference.inSeconds} seconds ago";
    } else if (difference.inMinutes < 60) {
      return "${difference.inMinutes} minutes ago";
    } else if (difference.inHours < 24) {
      return "${difference.inHours} hours ago";
    } else if (difference.inDays < 7) {
      return "${difference.inDays} days ago";
    } else if (difference.inDays < 30) {
      return "${(difference.inDays / 7).floor()} weeks ago";
    } else if (difference.inDays < 365) {
      return "${(difference.inDays / 30).floor()} months ago";
    } else {
      return "${(difference.inDays / 365).floor()} years ago";
    }
  }

  // Factory method to create a ThreadModel from a Firebase document snapshot
  factory ThreadModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    if (document.data() != null) {
      final data = document.data()!;
      return ThreadModel(
        id: document.id,
        title: data['Title'] ?? '',
        content: data['Content'] ?? '',
        userId: data['UserId'] ?? '',
        createdAt: data['CreatedAt'] != null
            ? (data['CreatedAt'] as Timestamp).toDate()
            : DateTime.now(),
        updatedAt: data['UpdatedAt'] != null
            ? (data['UpdatedAt'] as Timestamp).toDate()
            : DateTime.now(),
      );
    } else {
      return empty();
    }
  }

  // Dummy thread list with AI-generated answers
  static List<ThreadModel> dummyThreads = [
    ThreadModel(
      id: "1",
      title: "Flutter State Management",
      content:
      "The best state management approach depends on your app's complexity. Provider is a great option for small apps, while Riverpod and Bloc offer more scalable solutions.",
      userId: "piyush_user_id",
      createdAt: DateTime.now().subtract(Duration(days: 1)),
      updatedAt: DateTime.now(),
    ),
    ThreadModel(
      id: "2",
      title: "Dart Futures & Streams",
      content:
      "Futures are for single asynchronous computations (e.g., fetching data once), while Streams allow continuous data flow (e.g., real-time updates from a database).",
      userId: "piyush_user_id",
      createdAt: DateTime.now().subtract(Duration(days: 2)),
      updatedAt: DateTime.now(),
    ),
    ThreadModel(
      id: "3",
      title: "Best UI Libraries for Flutter",
      content:
      "Popular UI libraries include Flutter Material, Cupertino, GetWidget, and Tailwind-Flutter for sleek UI designs.",
      userId: "piyush_user_id",
      createdAt: DateTime.now().subtract(Duration(days: 3)),
      updatedAt: DateTime.now(),
    ),
    ThreadModel(
      id: "4",
      title: "Flutter Performance Optimization",
      content:
      "Use const widgets, minimize widget rebuilds with keys, leverage Isolates for heavy tasks, and optimize images to improve performance.",
      userId: "piyush_user_id",
      createdAt: DateTime.now().subtract(Duration(days: 4)),
      updatedAt: DateTime.now(),
    ),
    ThreadModel(
      id: "5",
      title: "Null Safety in Dart",
      content:
      "Dart's null safety helps prevent null reference errors by enforcing non-nullable types. Use `?`, `!`, and `late` carefully to manage nullable variables.",
      userId: "piyush_user_id",
      createdAt: DateTime.now().subtract(Duration(days: 5)),
      updatedAt: DateTime.now(),
    ),
    ThreadModel(
      id: "6",
      title: "Best Backend for Flutter Apps",
      content:
      "Firebase is great for real-time apps, while Supabase, AWS Amplify, and Node.js with Express provide alternative backends depending on scalability needs.",
      userId: "piyush_user_id",
      createdAt: DateTime.now().subtract(Duration(days: 6)),
      updatedAt: DateTime.now(),
    ),
    ThreadModel(
      id: "7",
      title: "How to Handle API Calls in Flutter?",
      content:
      "Use the `http` package for simple REST API calls, or Dio for advanced networking with caching, interceptors, and better error handling.",
      userId: "piyush_user_id",
      createdAt: DateTime.now().subtract(Duration(days: 7)),
      updatedAt: DateTime.now(),
    ),
    ThreadModel(
      id: "8",
      title: "Flutter vs React Native",
      content:
      "Flutter offers a fully customized UI with Dart, while React Native allows for web and mobile compatibility with JavaScript. Flutter is better for UI-intensive apps.",
      userId: "piyush_user_id",
      createdAt: DateTime.now().subtract(Duration(days: 8)),
      updatedAt: DateTime.now(),
    ),
    ThreadModel(
      id: "9",
      title: "Is Flutter Good for Large Apps?",
      content:
      "Yes, but proper architecture is key. Use modular coding patterns like MVVM, Clean Architecture, or Riverpod for better scalability in large apps.",
      userId: "piyush_user_id",
      createdAt: DateTime.now().subtract(Duration(days: 9)),
      updatedAt: DateTime.now(),
    ),
  ];
}
