import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:perplexity_clone/utils/formatters/formatter.dart';

class NewsModel {
  final String? id;
  String imageUrl;
  String title;
  String curatedBy;
  DateTime? postedAt;
  DateTime? updatedAt;
  String curatedByImage;
  int views;
  String content;

  // Constructor for news model
  NewsModel({
    this.id,
    required this.imageUrl,
    required this.title,
    required this.curatedBy,
    required this.updatedAt,
    required this.postedAt,
    required this.curatedByImage,
    required this.views,
    required this.content,
  });

  // Helper function to get formatted created date
  String get formattedCreatedDate => TFormatter.formatDate(postedAt);

  //
  // // Helper function to get formatted posted date
  String get formattedPostedDate => TFormatter.formatDate(updatedAt);

  // Helper function to get formatted view count
  String get formattedViewCount => TFormatter.formatViews(views);

  // Helper function to calculate time to read based on word count
  String get timeToReadPost {
    // Average reading speed: 200 words per minute
    int words =
        content.split(RegExp(r'\s+')).length; // Split content into words
    int readingTimeInMinutes = (words / 200).round(); // Calculate reading time

    if (readingTimeInMinutes <= 1) {
      return '1 min';
    } else {
      return '$readingTimeInMinutes min';
    }
  }

// Helper function to calculate time to read based on word count
  String get timeToReadNews {
    // Average reading speed: 200 words per minute
    int words =
        content.split(RegExp(r'\s+')).length; // Split content into words
    int readingTimeInMinutes = (words / 200).round(); // Calculate reading time

    if (readingTimeInMinutes <= 1) {
      return '1 min';
    } else {
      return '$readingTimeInMinutes min';
    }
  }

  // Convert model to JSON structure for storing data in Firebase
  Map<String, dynamic> toJson() {
    return {
      'ImageUrl': imageUrl,
      'Title': title,
      'CuratedBy': curatedBy,
      'UpdatedAt': updatedAt,
      'PostedAt': postedAt,
      'CuratedByImage': curatedByImage,
      'Views': views,
      'Content': content,
    };
  }

  // Factory method to create a NewsModel from a Firebase document snapshot
  factory NewsModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    if (document.data() != null) {
      final data = document.data()!;
      return NewsModel(
        id: document.id,
        imageUrl: data.containsKey('ImageUrl') ? data['ImageUrl'] ?? '' : '',
        title: data.containsKey('Title') ? data['Title'] ?? '' : '',
        curatedBy: data.containsKey('CuratedBy') ? data['CuratedBy'] ?? '' : '',
        updatedAt: data.containsKey('UpdatedAt')
            ? data['UpdatedAt']?.toDate() ?? DateTime.now()
            : DateTime.now(),
        postedAt: data.containsKey('PostedAt')
            ? data['PostedAt']?.toDate() ?? DateTime.now()
            : DateTime.now(),
        curatedByImage: data.containsKey('CuratedByImage')
            ? data['CuratedByImage'] ?? ''
            : '',
        views: data.containsKey('Views') ? data['Views'] ?? 0 : 0,
        content: data.containsKey('Content') ? data['Content'] ?? '' : '',
      );
    } else {
      return NewsModel(
        imageUrl: '',
        title: '',
        curatedBy: '',
        updatedAt: DateTime.now(),
        postedAt: DateTime.now(),
        curatedByImage: '',
        views: 0,
        content: '',
      );
    }
  }

  static List<NewsModel> dummyNews = [
    NewsModel(
      imageUrl:
          "https://pplx-res.cloudinary.com/image/upload/v1738432072/page_uploads/PXeORajRohxoFOm/getty-images-u-5vgwNHem4-unsplash.jpg",
      title: "Cursing Disables Google AI Overview",
      curatedBy: "elymc",
      updatedAt: DateTime.now(),
      postedAt: DateTime.now(),
      curatedByImage:
          "https://imagedelivery.net/MPdwyYSWT8IY7lxgN3x3Uw/831bd9b7-78f7-4d06-7380-44809b816500/thumbnail",
      views: 1200,
      content:
          "Recent findings show that the use of profanity and aggressive language in interaction with AI systems might disable their functionality, affecting their ability to provide useful answers. This article explores the implications of this discovery and what it means for the future of AI technology.",
    ),
    NewsModel(
      imageUrl:
          'https://pplx-res.cloudinary.com/image/upload/t_thumbnail/v1738430177/getty_uploads/1421759579_xkg3nd.png',
      title: 'Apple Cancels AR Glasses',
      curatedBy: 'aetheris',
      updatedAt: DateTime.now(),
      postedAt: DateTime.now(),
      curatedByImage:
          'https://imagedelivery.net/MPdwyYSWT8IY7lxgN3x3Uw/21b187bb-9a85-43f2-8e6e-f8845b169900/thumbnail',
      views: 5000,
      content:
          "Apple has announced that it will no longer pursue its augmented reality (AR) glasses project, marking a significant shift in the tech giant's plans for the future. This decision is seen as a strategic move to focus on other projects, such as AR-enhanced iPhones.",
    ),
    NewsModel(
      imageUrl:
          'https://pplx-res.cloudinary.com/image/fetch/s--n5mC8bMd--/t_thumbnail/https://eyes.nasa.gov/apps/exo/assets/image/thumbnail/exoplanet/superearth-list.webp',
      title: 'Super-Earth Discovered',
      curatedBy: 'elymc',
      updatedAt: DateTime.now(),
      postedAt: DateTime.now(),
      curatedByImage:
          'https://imagedelivery.net/MPdwyYSWT8IY7lxgN3x3Uw/831bd9b7-78f7-4d06-7380-44809b816500/thumbnail',
      views: 3000,
      content:
          "A new exoplanet discovery has scientists buzzing. The newly found super-Earth, which lies within the habitable zone of its star, could potentially support life. Researchers are excited about this discovery, which may open new avenues for studying planets outside our solar system.",
    ),
    NewsModel(
      imageUrl:
          'https://pplx-res.cloudinary.com/image/fetch/s--2LtYXb33--/t_thumbnail/https://media-cldnry.s-nbcnews.com/image/upload/t_nbcnews-fp-1200-630%2Cf_auto%2Cq_auto:best/rockcms/2025-01/250130-JOURNAVX-Tablets-ew-1251p-ccb57c.jpg',
      title: 'FDA Approves Non-Opioid Pain Drug',
      curatedBy: 'elymc',
      updatedAt: DateTime.now(),
      postedAt: DateTime.now(),
      curatedByImage:
          'https://imagedelivery.net/MPdwyYSWT8IY7lxgN3x3Uw/831bd9b7-78f7-4d06-7380-44809b816500/thumbnail',
      views: 2200,
      content:
          "The FDA has approved a new non-opioid pain medication that promises to help people manage pain without the risk of addiction. This groundbreaking drug could revolutionize the way pain is treated and reduce the dependency on opioids.",
    ),
    NewsModel(
      imageUrl:
          'https://pplx-res.cloudinary.com/image/upload/v1738430177/getty_uploads/1421759579_xkg3nd.png',
      title: "Elon's DOGE Gains Treasury Access",
      curatedBy: 'knowledgework',
      updatedAt: DateTime.now(),
      postedAt: DateTime.now(),
      curatedByImage:
          'https://imagedelivery.net/MPdwyYSWT8IY7lxgN3x3Uw/ab5fe07a-d042-4134-5ab5-b05f00d50f00/thumbnail',
      views: 4000,
      content:
          "Elon Musk's company has announced that Dogecoin (DOGE) has gained access to its corporate treasury, signaling a major step for the cryptocurrency. This move has the potential to solidify DOGE's position as a leading digital asset and could influence the future of cryptocurrencies.",
    ),
  ];
}
