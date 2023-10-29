import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../../../core/components/error_widget.dart';
import '../../../../core/error/exception.dart';
import '../model/dashboard_model.dart';

abstract class DashboardRemoteDataSource {
  Future<DashboardModel> getData();
}

class DashboardRemoteDataSourceImpl extends DashboardRemoteDataSource {
  @override
  Future<DashboardModel> getData() async {
    var body = {"action": "getServices", "uid": "masterFree"};
    final encodeBody = jsonEncode(body);
    http.Response res = await http.post(
      Uri.parse(
          "https://script.google.com/macros/s/AKfycbwgJgCJjW_eumv0-CifEIGOXPIlQz9H06fsDAqziq1kO20dto35R5Awg-0MMkMAFAhwNg/exec"),
      body: encodeBody,
      headers: {
        "Content-Type" : "application/json",
      }
    );
    if (res.statusCode == 200) {
      return DashboardModel.fromJson(json.decode(res.body));
    } else {
      throw ServerException(status: FailureStatus.networkFailure);
    }
  }
}
