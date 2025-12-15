class LogoutResponse {
  final String message;
  final List<dynamic> data;
  final bool status;
  final int code;

  LogoutResponse({
    required this.message,
    required this.data,
    required this.status,
    required this.code,
  });

  factory LogoutResponse.fromJson(Map<String, dynamic> json) {
    return LogoutResponse(
      message: json['message'],
      data: List<dynamic>.from(json['data']),
      status: json['status'],
      code: json['code'],
    );
  }
}
