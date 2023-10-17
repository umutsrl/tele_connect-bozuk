class PersonModel {
  final String personName;
  final String personNumber;
  final String personEmail;
  final String personCountryCode;

  PersonModel({
    required this.personName,
    required this.personNumber,
    required this.personEmail,
    required this.personCountryCode,
  });

  Map<String, dynamic> toJson() {
    return {
      'personName': personName,
      'personNumber': personNumber,
      'personEmail': personEmail,
      'personCountryCode': personCountryCode,
    };
  }

  factory PersonModel.fromJson(Map<String, dynamic> json) {
    return PersonModel(
      personName: json['personName'],
      personNumber: json['personNumber'],
      personEmail: json['personEmail'],
      personCountryCode: json['personCountryCode'],
    );
  }
}
