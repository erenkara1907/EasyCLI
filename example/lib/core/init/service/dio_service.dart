// ignore_for_file: constant_identifier_names

import 'dart:convert';
import 'dart:io';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import '../../model/base_model.dart';

enum MethodType { GET, POST, UPDATE, DELETE }

class DioService with DioMixin implements Dio {
  static DioService? _instance;
  static DioService get instance {
    _instance ??= DioService._init();
    return _instance!;
  }

  String baseUrl = '';

  DioService._init() {
    if (Platform.isIOS) {
      baseUrl = 'http://localhost:4000/';
    } else {
      baseUrl = 'http://10.0.2.2:4000/';
    }

    options = BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: 5000,
      receiveTimeout: 3000,
    );

    httpClientAdapter = DefaultHttpClientAdapter();
    interceptors.add(LogInterceptor(responseBody: true));
  }

  Future make<T extends BaseModel>(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    required T parserModel,
    required MethodType method,
    dynamic data,
    ProgressCallback? onReceiveProgress,
  }) async {
    final options = Options();
    options.method = getMethodType(method);
    final body = getBodyModel(data);

    try {
      Response response = await request(path, data: body, options: options);
      return parseBody<T>(response.data, parserModel);
    } catch (e) {
      return onError(e.toString());
    }
  }

  String getMethodType(MethodType type) {
    switch (type) {
      case MethodType.GET:
        return 'GET';
      case MethodType.POST:
        return 'POST';
      case MethodType.UPDATE:
        return 'UPDATE';
      case MethodType.DELETE:
        return 'DELETE';
      default:
        // ignore: null_check_always_fails
        return null!;
    }
  }

  dynamic getBodyModel(dynamic data) {
    if (data == null) {
      return data;
    } else if (data is BaseModel) {
      return data.toJson();
    } else {
      return jsonEncode(data);
    }
  }

  dynamic parseBody<T extends BaseModel>(dynamic responseBody, T model) {
    try {
      // ignore: deprecated_member_use
      clear();

      if (responseBody is List) {
        return responseBody
            .map((data) => model.fromJson(data))
            .cast<T>()
            .toList();
      } else if (responseBody is Map) {
        return model.fromJson(responseBody) as T;
      } else {
        return responseBody;
      }
    } catch (e) {
      return responseBody;
    }
  }

  onError(String error) {
    return error;
  }
}
