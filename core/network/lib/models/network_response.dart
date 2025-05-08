class NetworkResponse {
  int? statusCode;
  String? statusMessage;
  dynamic value;

  NetworkResponse({this.statusCode, this.statusMessage, this.value});

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map["status_code"] = statusCode;
    map["status_message"] = statusMessage;
    map["value"] = value;
    return map;
  }

  NetworkResponse.fromJson(dynamic json) {
    statusCode = json["status_code"];
    statusMessage = json["status_message"];
    value = json["value"];
  }
}
