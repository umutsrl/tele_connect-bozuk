class MailModel {
  List<String>? to;
  List<String>? cc;
  List<String>? bcc;
  String? subject;
  String? body;
  String? contentType;

  MailModel({
    this.to,
    this.cc,
    this.bcc,
    this.subject,
    this.body,
    this.contentType,
  });

  factory MailModel.fromJson(Map<String, dynamic> json) {
    return MailModel(
      to: json['to'] != null ? List<String>.from(json['to']) : null,
      cc: json['cc'] != null ? List<String>.from(json['cc']) : null,
      bcc: json['bcc'] != null ? List<String>.from(json['bcc']) : null,
      subject: json['subject'],
      body: json['body'],
      contentType: json['contentType'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['to'] = this.to;
    data['cc'] = this.cc;
    data['bcc'] = this.bcc;
    data['subject'] = this.subject;
    data['body'] = this.body;
    data['contentType'] = this.contentType;
    return data;
  }
}
