class login_response {
  Response? response;

  login_response({this.response});

  login_response.fromJson(Map<String, dynamic> json) {
    response = json['response'] != null
        ? new Response.fromJson(json['response'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.response != null) {
      data['response'] = this.response!.toJson();
    }
    return data;
  }
}

class Response {
  String? otpCode;
  String? userId;
  String? userName;
  String? email;
  String? mobile;
  String? myReferralCode;
  String? parentReferralCode;
  String? parentId;
  String? description;
  String? experience;
  String? education;
  String? facebook;
  bool? status;
  String? twitter;
  String? instagram;
  String? image;
  String? dob;
  String? registerDate;
  String? msg;

  Response(
      {this.otpCode,
      this.userId,
      this.userName,
      this.email,
      this.mobile,
      this.myReferralCode,
      this.parentReferralCode,
      this.parentId,
      this.description,
      this.experience,
      this.education,
      this.facebook,
      this.status,
      this.twitter,
      this.instagram,
      this.image,
      this.dob,
      this.registerDate,
      this.msg});

  Response.fromJson(Map<String, dynamic> json) {
    otpCode = json['otp_code'];
    userId = json['user_id'];
    userName = json['user_name'];
    email = json['email'];
    mobile = json['mobile'];
    myReferralCode = json['my_referral_code'];
    parentReferralCode = json['parent_referral_code'];
    parentId = json['parent_id'];
    description = json['description'];
    experience = json['experience'];
    education = json['education'];
    facebook = json['facebook'];
    status = json['status'];
    twitter = json['twitter'];
    instagram = json['instagram'];
    image = json['image'];
    dob = json['dob'];
    registerDate = json['register_date'];
    msg = json['msg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['otp_code'] = this.otpCode;
    data['user_id'] = this.userId;
    data['user_name'] = this.userName;
    data['email'] = this.email;
    data['mobile'] = this.mobile;
    data['my_referral_code'] = this.myReferralCode;
    data['parent_referral_code'] = this.parentReferralCode;
    data['parent_id'] = this.parentId;
    data['description'] = this.description;
    data['experience'] = this.experience;
    data['education'] = this.education;
    data['facebook'] = this.facebook;
    data['status'] = this.status;
    data['twitter'] = this.twitter;
    data['instagram'] = this.instagram;
    data['image'] = this.image;
    data['dob'] = this.dob;
    data['register_date'] = this.registerDate;
    data['msg'] = this.msg;
    return data;
  }
}