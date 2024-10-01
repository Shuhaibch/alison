import 'dart:convert';

class LoginRespModel {
    final int? success;
    final String? message;
    final Customerdata? customerdata;
    final String? guestId;

    LoginRespModel({
        this.success,
        this.message,
        this.customerdata,
        this.guestId,
    });

    LoginRespModel copyWith({
        int? success,
        String? message,
        Customerdata? customerdata,
        String? guestId,
    }) => 
        LoginRespModel(
            success: success ?? this.success,
            message: message ?? this.message,
            customerdata: customerdata ?? this.customerdata,
            guestId: guestId ?? this.guestId,
        );

    factory LoginRespModel.fromRawJson(String str) => LoginRespModel.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory LoginRespModel.fromJson(Map<String, dynamic> json) => LoginRespModel(
        success: json["success"],
        message: json["message"],
        customerdata: json["customerdata"] == null ? null : Customerdata.fromJson(json["customerdata"]),
        guestId: json["guest_id"],
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "customerdata": customerdata?.toJson(),
        "guest_id": guestId,
    };
}

class Customerdata {
    final String? id;
    final String? name;
    final String? email;
    final String? mobile;
    final String? referee;
    final String? referralCode;
    final int? status;
    final String? token;
    final int? otpverificationstatus;
    final int? emailverificationstatus;

    Customerdata({
        this.id,
        this.name,
        this.email,
        this.mobile,
        this.referee,
        this.referralCode,
        this.status,
        this.token,
        this.otpverificationstatus,
        this.emailverificationstatus,
    });

    Customerdata copyWith({
        String? id,
        String? name,
        String? email,
        String? mobile,
        String? referee,
        String? referralCode,
        int? status,
        String? token,
        int? otpverificationstatus,
        int? emailverificationstatus,
    }) => 
        Customerdata(
            id: id ?? this.id,
            name: name ?? this.name,
            email: email ?? this.email,
            mobile: mobile ?? this.mobile,
            referee: referee ?? this.referee,
            referralCode: referralCode ?? this.referralCode,
            status: status ?? this.status,
            token: token ?? this.token,
            otpverificationstatus: otpverificationstatus ?? this.otpverificationstatus,
            emailverificationstatus: emailverificationstatus ?? this.emailverificationstatus,
        );

    factory Customerdata.fromRawJson(String str) => Customerdata.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Customerdata.fromJson(Map<String, dynamic> json) => Customerdata(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        mobile: json["mobile"],
        referee: json["referee"],
        referralCode: json["referral_code"],
        status: json["status"],
        token: json["token"],
        otpverificationstatus: json["otpverificationstatus"],
        emailverificationstatus: json["emailverificationstatus"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "mobile": mobile,
        "referee": referee,
        "referral_code": referralCode,
        "status": status,
        "token": token,
        "otpverificationstatus": otpverificationstatus,
        "emailverificationstatus": emailverificationstatus,
    };
}
