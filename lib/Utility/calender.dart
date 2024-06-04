import 'package:flutter/material.dart';
import 'package:growbuddy/constant.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';

class CalenderAttendance extends StatelessWidget {
  final onDateChange;
  final initialDate;
  const CalenderAttendance({
    super.key,
    required this.onDateChange,
    required this.initialDate,
  });

  @override
  Widget build(BuildContext context) {
    return EasyDateTimeLine(
      initialDate: initialDate,
      activeColor: kPrimaryColor2,
      headerProps: const EasyHeaderProps(
        centerHeader: true,
        dateFormatter: DateFormatter.fullDateDMY(),
        monthPickerType: MonthPickerType.switcher,
        selectedDateStyle: TextStyle(
          color: kPrimaryColor2,
        ),
        monthStyle: TextStyle(
          color: kPrimaryColor2,
          fontSize: 20.0,
          fontWeight: FontWeight.w900,
        ),
        showSelectedDate: false,
      ),
      dayProps: const EasyDayProps(
        height: 100.0,
        borderColor: kPrimaryColor2,
        dayStructure: DayStructure.monthDayNumDayStr,
        todayHighlightColor: kPrimaryColor2,
        inactiveDayStyle: DayStyle(
          dayNumStyle: TextStyle(
            color: kPrimaryColor2,
            fontWeight: FontWeight.bold,
            fontSize: 40.0,
          ),
          dayStrStyle: TextStyle(
            color: kPrimaryColor2,
            fontSize: 16.0,
            fontWeight: FontWeight.w400,
          ),
          monthStrStyle: TextStyle(
            color: kPrimaryColor2,
            fontSize: 16.0,
            fontWeight: FontWeight.w400,
          ),
        ),
        activeDayStyle: DayStyle(
          borderRadius: 50.0,
          dayNumStyle: TextStyle(
            color: kPrimaryColor1,
            fontWeight: FontWeight.bold,
            fontSize: 40.0,
          ),
          monthStrStyle: TextStyle(
            color: kPrimaryColor1,
            fontSize: 16.0,
            fontWeight: FontWeight.w400,
          ),
          dayStrStyle: TextStyle(
            color: kPrimaryColor1,
            fontSize: 16.0,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      timeLineProps: const EasyTimeLineProps(
        margin: EdgeInsets.all(10.0),
      ),
      onDateChange: onDateChange,
    );
  }
}
