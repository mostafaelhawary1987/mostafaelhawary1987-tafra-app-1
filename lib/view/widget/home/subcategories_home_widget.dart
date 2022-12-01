import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../../../shared/sizes.dart';
import '../../../shared/static_data.dart';
import '../categories_card_widget.dart';


class SubCategoriesHomeWidegt extends StatelessWidget {
  const SubCategoriesHomeWidegt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: subcate.length,
        crossAxisCount: 2,
        mainAxisSpacing: 0.2.h,
        crossAxisSpacing: 15.w,
        // padding: EdgeInsetsDirectional.only(start: MySizes.horizontalMargin),
        itemBuilder: (context, index) => SizedBox(
              height: MySizes.verticalMargin * 11.h,
              width: MySizes.horizontalMargin * 2.w,
              child: CategoryCardSectionWidget(
                categoryImage: subcate[index].submcateimage,
                categoryName: subcate[index].submcatename,
              ),
            ));
  }
}
