import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:lpio/features/bottom_navigation/controllers/bottom_navigation_controller.dart';
import 'package:lpio/routing/go_router.dart';
import 'package:lpio/theme/my_assets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lpio/theme/my_colors/my_colors_palette.dart';

class BottomNavigationWidget extends ConsumerWidget {
  const BottomNavigationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final position = ref.watch(bottomNavigationControllerProvider);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          color: Colors.grey,
          width: double.infinity,
          height: 0.5,
        ),
        BottomNavigationBar(
          elevation: 0,
          backgroundColor: myColorsPalette.bottomBarBackground,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: myColorsPalette.labelGreen,
          unselectedItemColor: Colors.grey,
          currentIndex: position,
          onTap: (value) => _onTap(value, context, ref),
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedLabelStyle: GoogleFonts.getFont(
            'Lato',
            fontSize: 10,
            height: 2.4,
            fontWeight: FontWeight.w500,
          ),
          unselectedLabelStyle: GoogleFonts.getFont(
            'Lato',
            fontSize: 10,
            height: 2.4,
            fontWeight: FontWeight.w500,
          ),
          items: [
            BottomNavigationBarItem(
              label: 'Home',
              icon: SvgPicture.asset(MyAssets.icons.home,
                  colorFilter: ColorFilter.mode(
                    position == 0 ? myColorsPalette.labelGreen : Colors.grey,
                    BlendMode.srcIn,
                  )),
            ),
            BottomNavigationBarItem(
              label: 'Beacons',
              icon: SvgPicture.asset(MyAssets.icons.beacons,
                  colorFilter: ColorFilter.mode(
                    position == 1 ? myColorsPalette.labelGreen : Colors.grey,
                    BlendMode.srcIn,
                  )),
            ),
            BottomNavigationBarItem(
              label: 'Zone history',
              icon: SvgPicture.asset(MyAssets.icons.zoneHistory,
                  colorFilter: ColorFilter.mode(
                    position == 2 ? myColorsPalette.labelGreen : Colors.grey,
                    BlendMode.srcIn,
                  )),
            ),
            BottomNavigationBarItem(
              label: 'Account',
              icon: SvgPicture.asset(MyAssets.icons.account,
                  colorFilter: ColorFilter.mode(
                    position == 3 ? myColorsPalette.labelGreen : Colors.grey,
                    BlendMode.srcIn,
                  )),
            ),
          ],
        ),
      ],
    );
  }
}

void _onTap(int index, BuildContext context, WidgetRef ref) {
  ref.read(bottomNavigationControllerProvider.notifier).setPosition(index);

  switch (index) {
    case 0:
      context.goNamed(AppRoute.homeScreen.name);
      break;
    case 1:
      context.goNamed(AppRoute.beaconsScreen.name);
      break;
    case 2:
      context.goNamed(AppRoute.zoneHistoryScreen.name);
    case 3:
      context.goNamed(AppRoute.accountScreen.name);
    default:
  }
}
