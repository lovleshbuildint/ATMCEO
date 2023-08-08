import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';

dynamic newCustomFunction(String? userDatastr) {
  if (userDatastr != null) {
    dynamic json = jsonDecode(userDatastr);
    return json;
  }
  return null;
}

Color? newCustomFunction2(int? transactionTrendInt) {
  // return color #B1000E if transactionTrendInt is less then 0 else return #3AB100
  if (transactionTrendInt != null && transactionTrendInt < 0) {
    return Color(0xFFB1000E);
  } else {
    return Color(0xFF3AB100);
  }
}

dynamic filter(
  dynamic mainData,
  String? searchValue,
) {
  List<dynamic> filteredData = [];

  if (searchValue != null || searchValue != "") {
    for (var data in mainData['data']) {
      if (data['atmId'] == searchValue) {
        filteredData.add(data);
      }
    }
    return {'data': searchValue};
  } else if (mainData != null && (searchValue == null || searchValue == "")) {
    return {mainData};
  }
}
