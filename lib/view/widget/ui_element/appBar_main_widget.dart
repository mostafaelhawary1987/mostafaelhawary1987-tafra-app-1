


import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../shared/sizes.dart';
import '../../../shared/fonts.dart';
import 'custom_dorpdown_location.dart';

class CustomMainBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  bool loact;
  final Color? appBarColor;
  final Widget? leadingWidget;


  CustomMainBar(
      {Key? key,
      this.title,
      this.appBarColor,
      this.leadingWidget,
      
      this.loact = false});

  @override
  Widget build(BuildContext context) {
    final _statusBarHeight = MediaQueryData.fromWindow(window).padding.top;
    return Container(
      padding: EdgeInsets.only(top: _statusBarHeight),
      color: Colors.transparent,
      width: Get.width,
      height: preferredSize.height + _statusBarHeight,
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: MySizes.horizontalMargin,
        ),
        // padding: EdgeInsets.symmetric(vertical: 1.5.h),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomDropDownLocation(),
            // leadingWidget ??
            //     Container(
            //         width: preferredSize.height.h,
            //         height: preferredSize.height.h),
            // Expanded(
            //   child: title != null
            //       ? 
            //       : const SizedBox.shrink(),
            // ),
           
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(70.h);
}
