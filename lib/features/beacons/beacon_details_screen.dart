import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lpio/features/beacons/data/beacons_repository.dart';
import 'package:lpio/features/beacons/domain/beacon_details.dart';
import 'package:lpio/features/beacons/domain/beacon_scanned.dart';
import 'package:lpio/features/beacons/widgets/beacon_item.dart';
import 'package:lpio/theme/my_colors/my_colors_palette.dart';

class BeaconDetailsScreen extends ConsumerWidget {
  final BeaconScanned beaconScanned;
  const BeaconDetailsScreen({
    super.key,
    required this.beaconScanned,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue<BeaconDetails?> beaconDetails =
        ref.watch(beaconDetailsProvider(beaconScanned.uuid));

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            'Beacon sdas',
            style: GoogleFonts.getFont(
              'Lato',
              fontSize: 17.sp,
              letterSpacing: -0.4,
              fontWeight: FontWeight.w600,
              color: myColorsPalette.textAction,
              height: 1,
            ),
          ),
        ),
        body: Center(
          child: Padding(
              padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 20.w),
              child: switch (beaconDetails) {
                AsyncData(:final value) => Column(
                    children: [
                      BeaconItem(
                          title: 'ID', data: ((value?.id) ?? '-').toString()),
                      SizedBox(height: 16.h),
                      BeaconItem(title: 'UUID', data: beaconScanned.uuid),
                      SizedBox(height: 16.h),
                      BeaconItem(
                          title: 'Ble Name', data: value?.bleName ?? '-'),
                      SizedBox(height: 16.h),
                      BeaconItem(
                          title: 'TX', data: beaconScanned.txPower ?? '-'),
                      SizedBox(height: 16.h),
                      BeaconItem(
                          title: 'RSSI', data: beaconScanned.rssi ?? '-'),
                      SizedBox(height: 16.h),
                      BeaconItem(title: 'Mac', data: value?.mac ?? '-'),
                      SizedBox(height: 16.h),
                      BeaconItem(
                          title: 'Major Number', data: beaconScanned.major),
                      SizedBox(height: 16.h),
                      BeaconItem(
                          title: 'Minor Number', data: beaconScanned.minor),
                      SizedBox(height: 16.h),
                      BeaconItem(title: 'Comment', data: value?.comment ?? '-'),
                      SizedBox(height: 16.h),
                      BeaconItem(
                          title: 'Created by', data: value?.createdBy ?? '-'),
                      SizedBox(height: 16.h),
                      BeaconItem(
                          title: 'Created Date',
                          data: value?.createdDate ?? '-'),
                      SizedBox(height: 16.h),
                      BeaconItem(
                          title: 'Last Modified By',
                          data: value?.lastModifiedBy ?? '-'),
                      SizedBox(height: 16.h),
                      BeaconItem(
                          title: 'Last Modified Date',
                          data: value?.lastModifiedDate ?? '-'),
                      SizedBox(height: 16.h),
                      const BeaconItem(title: 'Zone', data: '-'),
                    ],
                  ),
                AsyncError(:final error) => Text('Error: $error'),
                _ => const CircularProgressIndicator(),
              }),
        ));
  }
}
