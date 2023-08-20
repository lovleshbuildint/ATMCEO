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
  String? transactionTrendFilter,
) {
  if (searchValue == null || searchValue.isEmpty) {
    if (transactionTrendFilter != null) {
      List<dynamic> filteredData1 = [];
      if (transactionTrendFilter.startsWith('-(') &&
          transactionTrendFilter.endsWith(')')) {
        var range = transactionTrendFilter.substring(
            2, transactionTrendFilter.length - 1);
        var rangeValues = range.split(' - ');
        var upperBound =
            int.tryParse(rangeValues[0].replaceAll('%', '').trim());
        upperBound = -1 * upperBound!;
        var lowerBound =
            int.tryParse(rangeValues[1].replaceAll('%', '').trim());
        lowerBound = -1 * lowerBound!;
        for (dynamic data in mainData['data']) {
          if (data['transactionTrend'] <= lowerBound &&
              data['transactionTrend'] >= upperBound) {
            filteredData1.add(data);
          }
        }
        return {'userId': mainData['userId'], 'data': filteredData1};
      } else if (transactionTrendFilter.startsWith('(') &&
          transactionTrendFilter.endsWith(')')) {
        var range = transactionTrendFilter.substring(
            1, transactionTrendFilter.length - 1);
        var rangeValues = range.split(' - ');
        var lowerBound =
            int.tryParse(rangeValues[0].replaceAll('%', '').trim());
        var upperBound =
            int.tryParse(rangeValues[1].replaceAll('%', '').trim());
        for (dynamic data in mainData['data']) {
          if (data['transactionTrend'] >= lowerBound &&
              data['transactionTrend'] <= upperBound) {
            filteredData1.add(data);
          }
        }
        return {'userId': mainData['userId'], 'data': filteredData1};
      }
    } else {
      return mainData;
    }
  }

  List<dynamic> filteredData = [];

  for (dynamic data in mainData['data']) {
    if (data['atmId'].contains(searchValue)) {
      filteredData.add(data);
    }
  }

  return {'userId': mainData['userId'], 'data': filteredData};
}

dynamic searchFilter(
  dynamic mainData,
  String? searchValue,
) {
  // {"userId":"bhu","data":[{"atmId":"DP","r":"1"},{"atmId":"MPZ","r":"1"}]} search atmID
  if (searchValue == null || searchValue.isEmpty) {
    return mainData;
  }

  List<dynamic> filteredData = [];

  for (dynamic data in mainData['data']) {
    if (data['atmId'].contains(searchValue)) {
      filteredData.add(data);
    }
  }

  return {'userId': mainData['userId'], 'data': filteredData};
}
