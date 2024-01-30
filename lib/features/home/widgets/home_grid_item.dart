import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lpio/features/home/data/home_repository.dart';
import 'package:lpio/theme/my_colors/my_colors_palette.dart';

class HomeGridItem extends StatelessWidget {
  final HomeGridItemData homeGridItemData;
  const HomeGridItem({
    super.key,
    required this.homeGridItemData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 12.h,
        horizontal: 12.w,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.w,
          color: myColorsPalette.grayLight,
        ),
        color: homeGridItemData.color,
        borderRadius: BorderRadius.all(
          Radius.circular(4.r),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(
            homeGridItemData.icon,
          ),
          SizedBox(height: 12.h),
          Text(
            homeGridItemData.count.toString(),
            style: TextStyle(
              color: myColorsPalette.textAction,
              fontSize: 36.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 8.h),
          Expanded(
            child: Text(
              homeGridItemData.label,
              style: TextStyle(
                  color: myColorsPalette.textAction,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  height: 1.2.h),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
