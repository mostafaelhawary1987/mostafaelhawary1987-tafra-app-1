import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sa3ada/shared/images.dart';

import '../data/model/categories_home_model.dart';
import '../data/model/category_model.dart';
import '../data/model/subcategories_home_model.dart';
import '../data/model/userHome_model.dart';
import '../data/model/userReview_model.dart';
import '../translation/languages.dart';

List<CategoryModel> categories = [
  CategoryModel(name: LanguagesKeys.cate1.toString().tr, image: MyImages.clean),
  CategoryModel(name: LanguagesKeys.cate2.toString().tr, image: MyImages.clean),
  CategoryModel(name: LanguagesKeys.cate3.toString().tr, image: MyImages.clean),
  CategoryModel(name: LanguagesKeys.cate4.toString().tr, image: MyImages.clean),
  CategoryModel(name: LanguagesKeys.cate5.toString().tr, image: MyImages.clean),
];

// List<UserHomeModel> userHome = [
//   UserHomeModel(
//       image: MyImages.user3,
//       name: 'أسماء ابراهيم',
//       title: 'تنظيف منازل',
//       rate: 2.5),
//   UserHomeModel(
//       image: MyImages.user4,
//       name: 'اشرقت عبدالله',
//       title: 'صالون تجميل منزلى ',
//       rate: 3.8),
//   UserHomeModel(
//       image: MyImages.user1,
//       name: "محمود عبد العظيم",
//       title: 'صيانة و تركيبات',
//       rate: 1.5),
//   UserHomeModel(
//       image: MyImages.user5,
//       name: 'احمد على عبد الرحمن',
//       title: 'تحاليل طبية بالمنزل',
//       rate: 3.5),
//   UserHomeModel(
//       image: MyImages.user6,
//       name: "قمر سيد على",
//       title: 'عناية بالكبار',
//       rate: 2.8),
// ];

List<UserReviewModel> userReview = [
  UserReviewModel(
      name: 'عائشة بن احمد',
      review: 'نظيفة و مدبرة فى مواد التنظيف و النتيجة رائعة',
      rate: 4.0,
      rateNumber: '5/4'),
  UserReviewModel(
      name: 'منتصرة حمدان',
      review: 'رائعة مشكورا جدا لها',
      rate: 5.0,
      rateNumber: '5/5')
];
List<CategoriesHomeModel> cateHome = [
  CategoriesHomeModel(
    text: "معاون منزل",
    subtitle:
        "تنظيف المنزل - طهي - تنظيف السجاد - تنظيف الستائر والمفروشات - تنظيف المطبخ",
    image: MyImages.cate1,
  ),
  CategoriesHomeModel(
    text: "الصيانة و التركيبات",
    subtitle: "تركيبات الدش والريسيفر",
    image: MyImages.cate2,
  ),
  CategoriesHomeModel(
    text: "مصنع غذائي",
    subtitle:
        "مربات - مخللات - حلويات - حلوى مجففة - منتجات البان - اسماك مملحة",
    image: MyImages.cate6,
  ),
  CategoriesHomeModel(
    text: "مساعد خدمات صحية",
    subtitle: "رعاية مسنين - التحاليل - الأشعة - القياسات الحيوية",
    image: MyImages.cate4,
  ),
  CategoriesHomeModel(
    text: "التفصيل والخياطة",
    subtitle:
        "اطقم السرير - ملابس حريمي - ملابس رجالي - ملابس اطفال - يونيفورم",
    image: MyImages.cate5,
  ),
  CategoriesHomeModel(
    text: "مشرف حضانة",
    subtitle: "مساعد معلم - مشرف حضانة - جليسة اطفال",
    image: MyImages.cate7,
  ),
];

List<SubCategoriesHomeModel> subcate = [
  SubCategoriesHomeModel(
    submcatename: "تنظيف المنزل ",
    submcateimage: MyImages.clean2,
  ),
  SubCategoriesHomeModel(
    submcatename: "تنظيف المطبخ",
    submcateimage: MyImages.clean1,
  ),
  SubCategoriesHomeModel(
    submcatename: " تنظيف الستائر والمفروشات",
    submcateimage: MyImages.clean4,
  ),
  SubCategoriesHomeModel(
    submcatename: "تنظيف السجاد",
    submcateimage: MyImages.clean3,
  ),
  SubCategoriesHomeModel(
    submcatename: "طهي",
    submcateimage: MyImages.clean2,
  ),

];


