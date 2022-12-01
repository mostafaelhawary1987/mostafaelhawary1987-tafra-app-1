import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/fonts.dart';
import '../../shared/sizes.dart';

class CategoryCardSectionWidget extends StatelessWidget {
  final String categoryName;
  final String categoryImage;

  const CategoryCardSectionWidget({
    Key? key,
    required this.categoryName,
    required this.categoryImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {},
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: MySizes.verticalMargin * .6),
            height: MySizes.horizontalMargin * 4.5,
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
                borderRadius: MySizes.recBorderRadius),
            child: Center(
                child: Image.asset(
              categoryImage,
              width: 100.w,
              height: 100.h,
              fit: BoxFit.fill,
            )),
          ),
          Flexible(
              child: Text(categoryName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                      fontFamily: MyFontFamily.medium))),
        ],
      ),
    );
  }
}
