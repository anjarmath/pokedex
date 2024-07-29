import 'dart:convert';

import 'package:either_dart/either.dart';
import 'package:pokedex/core/api_res.dart';
import 'package:pokedex/core/constant.dart';
import 'package:pokedex/core/datastate.dart';
import 'package:pokedex/core/failure.dart';
import 'package:http/http.dart' as http;

class GraphQlSource {
  DataState<ApiResponse> query(Map<String, dynamic> query) async {
    final url = Uri.parse(kBaseAPIUrl).replace(queryParameters: query);

    try {
      final response = await http.post(url);

      return Right(
        ApiResponse(
            data: jsonDecode(response.body)["data"] ??
                jsonDecode(response.body)["errors"][0],
            statusCode: response.statusCode),
      );
    } catch (e) {
      return Left(
        Failure(
          // this is example of using 1 as code for query error, in real case we may need error code specification
          statusCode: 1,
          message: e.toString(),
        ),
      );
    }
  }
}
