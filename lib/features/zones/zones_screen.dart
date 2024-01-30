import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lpio/features/zones/controllers/zones_screen_controller.dart';
import 'package:lpio/features/zones/widgets/zone_ble_clients_field.dart';
import 'package:lpio/theme/my_colors/my_colors_palette.dart';

class ZonesScreen extends ConsumerStatefulWidget {
  const ZonesScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ZonesScreenState();
}

class _ZonesScreenState extends ConsumerState<ZonesScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final zoneData = ref.watch(zonesScreenControllerProvider);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 15.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Text(
                    'Zone history',
                    style: GoogleFonts.getFont(
                      'Lato',
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      color: myColorsPalette.textAction,
                      letterSpacing: 0.4,
                    ),
                  ),
                ),
                SizedBox(height: 30.h),
                zoneData.when(
                  data: (data) {
                    return Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: ZoneBleClientsField(
                            initialValue: data.selectedBleClient,
                            name: 'client',
                            label: 'Select Client',
                            hintText: 'Select BLE Client',
                            options: data.bleClients,
                            onChanged: (bleClient) => ref
                                .read(zonesScreenControllerProvider.notifier)
                                .updateState(bleClient!),
                          ),
                        ),
                        SizedBox(height: 30.h),
                        Padding(
                          padding: EdgeInsets.only(
                              left: data.zonesData!.isEmpty ? 0 : 20.0.w),
                          child: SizedBox(
                            height: 80.h,
                            child: data.zonesData!.isEmpty
                                ? Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.data_array_outlined,
                                        size: 50.h,
                                        color: myColorsPalette.labelGray,
                                      ),
                                      SizedBox(height: 4.h),
                                      Text(
                                        'No records to display.',
                                        style: GoogleFonts.getFont(
                                          'Lato',
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.w900,
                                          color: myColorsPalette.primary,
                                          letterSpacing: -0.4,
                                          height: 1,
                                        ),
                                      ),
                                    ],
                                  )
                                : ListView.separated(
                                    itemCount: data.zonesData?.length ?? 0,
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) =>
                                        Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 6.w),
                                      child: Icon(
                                        Icons.arrow_right_alt_outlined,
                                        color: myColorsPalette.primary,
                                        size: 32,
                                      ),
                                    ),
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      String zone =
                                          data.zonesData![index].zone.name;
                                      String time = DateFormat('kk:mm').format(
                                          DateTime.parse(data.zonesData![index]
                                              .firstTimeSeen));
                                      String year = DateFormat('MM.dd.yyyy')
                                          .format(DateTime.parse(data
                                              .zonesData![index]
                                              .firstTimeSeen));
                                      return Padding(
                                        padding: EdgeInsets.only(
                                            right: index ==
                                                    data.zonesData!.length - 1
                                                ? 20.w
                                                : 0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: myColorsPalette
                                                  .grayExtraLight,
                                              borderRadius:
                                                  BorderRadius.circular(16.r)),
                                          padding: EdgeInsets.symmetric(
                                              vertical: 6.h, horizontal: 12.w),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                zone,
                                                style: GoogleFonts.getFont(
                                                  'Lato',
                                                  fontSize: 13.sp,
                                                  fontWeight: FontWeight.w900,
                                                  color: myColorsPalette
                                                      .labelGreen,
                                                  letterSpacing: -0.4,
                                                  height: 1,
                                                ),
                                              ),
                                              SizedBox(height: 6.h),
                                              Text(
                                                time,
                                                style: GoogleFonts.getFont(
                                                  'Lato',
                                                  fontSize: 13.sp,
                                                  fontWeight: FontWeight.w900,
                                                  color:
                                                      myColorsPalette.primary,
                                                  letterSpacing: -0.4,
                                                ),
                                              ),
                                              SizedBox(height: 2.h),
                                              Text(
                                                year,
                                                style: GoogleFonts.getFont(
                                                  'Lato',
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color:
                                                      myColorsPalette.grayDark,
                                                  letterSpacing: -0.4,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                          ),
                        ),
                        SizedBox(height: 30.h),
                        PaginatedDataTable(
                          headingRowColor:
                              MaterialStateProperty.all(Colors.white),
                          rowsPerPage: 5,
                          columns: [
                            buildDataColumn('Zone'),
                            buildDataColumn('First Time Seen'),
                            buildDataColumn('Last Time Seen'),
                            buildDataColumn('Id'),
                          ],
                          source: MyDataTableSource(data.zonesData!
                              .map(
                                (item) => DataRow(
                                  color:
                                      MaterialStateProperty.all(Colors.white),
                                  cells: [
                                    buildDataCell(item.zone.name),
                                    buildDataCell(
                                        DateFormat('MM.dd.yyyy - kk:mm').format(
                                            DateTime.parse(
                                                item.firstTimeSeen))),
                                    buildDataCell(
                                        DateFormat('MM.dd.yyyy - kk:mm').format(
                                            DateTime.parse(item.lastTimeSeen))),
                                    buildDataCell(item.id.toString()),
                                  ],
                                ),
                              )
                              .toList()),
                        ),
                      ],
                    );
                  },
                  error: (error, stackTrace) => Text(error.toString()),
                  loading: () => Center(
                    child: CircularProgressIndicator(
                      color: myColorsPalette.textAction,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyDataTableSource extends DataTableSource {
  final List<DataRow> _rows;

  MyDataTableSource(this._rows);

  @override
  DataRow? getRow(int index) {
    if (index >= _rows.length) {
      return null;
    }
    return _rows[index];
  }

  @override
  int get rowCount => _rows.length;

  @override
  bool get isRowCountApproximate => false;

  @override
  int get selectedRowCount => 0;
}

DataColumn buildDataColumn(String label) {
  return DataColumn(
      label: Text(
    label,
    style: GoogleFonts.getFont(
      'Lato',
      fontSize: 13.sp,
      fontWeight: FontWeight.w900,
      color: myColorsPalette.labelGreen,
      letterSpacing: -0.4,
    ),
  ));
}

DataCell buildDataCell(String label) {
  return DataCell(Text(
    label,
    style: GoogleFonts.getFont(
      'Lato',
      fontSize: 13.sp,
      fontWeight: FontWeight.w400,
      color: myColorsPalette.primary,
      letterSpacing: -0.4,
    ),
  ));
}
