import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:news/main_variable.dart';

import '../model/news_model.dart';

class BookmarkController extends GetxController {
  RxMap<String, NewsModel> bookmarks = <String, NewsModel>{}.obs;
  final String? userId = FirebaseAuth.instance.currentUser?.uid;

  @override
  void onInit() {
    super.onInit();
    loadBookmarks();
  }

  bool isLoggedIn() {
    return FirebaseAuth.instance.currentUser != null;
  }

  save(NewsModel newsModel, String category) {
    if (isLoggedIn()) {
      toggleBookmark(newsModel, category);
    } else {
      Get.defaultDialog(
          title: 'مطلوب تسجيل دخول',
          middleText:
              'يجب أن تكون مسجل دخول لإضافة الأخبار إلى الاخبار المحفوظة.',
          textConfirm: 'تسجيل الدخول',
          textCancel: 'عمل حساب جديد',
          onConfirm: () {
            Get.toNamed(loginView);
          },
          onCancel: () {
            Get.toNamed(registerView);
          });
    }
  }

  Future<void> loadBookmarks() async {
    final querySnapshot = await FirebaseFirestore.instance
        .collection('users')
        .doc(userId)
        .collection('bookmarks')
        .get();

    for (var doc in querySnapshot.docs) {
      final data = doc.data();
      bookmarks[doc.id] = NewsModel(
        id: doc.id,
        title: data['title'],
        author: data['author'],
        description: data['description'],
        image: data['image'],
        publishedAt: data['publishedAt'],
      );
    }
  }

  Future<void> checkBookmarkStatus(String newsId) async {
    final doc = await FirebaseFirestore.instance
        .collection('users')
        .doc(userId)
        .collection('bookmarks')
        .doc(newsId)
        .get();

    if (doc.exists) {
      final data = doc.data();
      final newsModel = NewsModel.fromJson(data!);
      bookmarks[newsId] = newsModel;
    } else {
      bookmarks.remove(newsId);
    }
  }

  Future<void> toggleBookmark(NewsModel newsModel, String category) async {
    final bookmarkRef = FirebaseFirestore.instance
        .collection('users')
        .doc(userId)
        .collection('bookmarks')
        .doc(newsModel.id);

    if (bookmarks.containsKey(newsModel.id)) {
      bookmarks.remove(newsModel.id);
      await bookmarkRef.delete();
      Get.snackbar('تم الإزالة', 'تمت إزالة الخبر من الإشارات المرجعية');
    } else {
      bookmarks[newsModel.id] = newsModel;
      await bookmarkRef.set({
        'title': newsModel.title,
        'author': newsModel.author,
        'description': newsModel.description,
        'image': newsModel.image,
        'publishedAt': newsModel.publishedAt,
        'category': category,
      });
      Get.snackbar('تم الإضافة', 'تمت إضافة الخبر إلى الإشارات المرجعية');
    }
  }
}
