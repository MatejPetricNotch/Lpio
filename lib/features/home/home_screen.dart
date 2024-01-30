import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lpio/features/home/controllers/home_screen_controller.dart';
import 'package:lpio/features/home/widgets/home_grid_item.dart';
import 'package:lpio/features/home/widgets/home_title_widget.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeScreenController = ref.watch(homeScreenControllerProvider);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 20.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const HomeTitleWidget(),
                SizedBox(height: 32.h),
                homeScreenController.when(
                  data: (data) => GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: data.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 1,
                      crossAxisCount: 2,
                      crossAxisSpacing: 20.w,
                      mainAxisSpacing: 24.h,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return HomeGridItem(
                        homeGridItemData: data[index],
                      );
                    },
                  ),
                  loading: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  error: (e, st) => Center(child: Text(e.toString())),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
