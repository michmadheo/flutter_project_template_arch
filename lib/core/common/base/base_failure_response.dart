import 'package:equatable/equatable.dart';

class BaseFailureResponse extends Equatable {
  final String message;

  const BaseFailureResponse({
    required this.message,
  });

  factory BaseFailureResponse.fromJson(Map<String, dynamic> json) {
    return BaseFailureResponse(
      message: json['message'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'message': message,
    };
  }

  @override
  List<Object?> get props => [message];
}