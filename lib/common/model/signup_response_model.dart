import 'dart:convert';

SignupResponseModel signupResponseModelFromJson(String str) => SignupResponseModel.fromJson(json.decode(str));

String registerResponseModelToJson(SignupResponseModel data) => json.encode(data.toJson());

class SignupResponseModel {
    final bool status;
    final String message;

    SignupResponseModel({
        required this.status,
        required this.message,
    });

    factory SignupResponseModel.fromJson(Map<String, dynamic> json) => SignupResponseModel(
        status: json["status"],
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
    };
}