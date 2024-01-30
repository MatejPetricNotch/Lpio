import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lpio/features/beacons/domain/beacon_scanned.dart';
import 'package:lpio/features/beacons/widgets/beacon_item.dart';

class BeaconWidget extends StatelessWidget {
  final BeaconScanned beaconScanned;
  const BeaconWidget({
    super.key,
    required this.beaconScanned,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.r),
        border: Border.all(
          width: 1,
          color: const Color.fromRGBO(234, 236, 238, 1),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          BeaconItem(title: 'Minor Number', data: beaconScanned.minor),
          SizedBox(height: 16.h),
          BeaconItem(title: 'Major Number', data: beaconScanned.major),
          SizedBox(height: 16.h),
          BeaconItem(title: 'UUID', data: beaconScanned.uuid),
          SizedBox(height: 16.h),
          BeaconItem(title: 'Ble Name', data: beaconScanned.name ?? '-'),
          SizedBox(height: 16.h),
          BeaconItem(title: 'TX', data: beaconScanned.txPower ?? '-'),
          SizedBox(height: 16.h),
          BeaconItem(title: 'RSSI', data: beaconScanned.rssi ?? '-'),
        ],
      ),
    );
  }
}
