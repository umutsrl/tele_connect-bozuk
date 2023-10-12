class Person {
  final String personName;
  final String personNumber;
  final String personEmail;
  final String personCountryCode;

  Person({
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

  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(
      personName: json['personName'],
      personNumber: json['personNumber'],
      personEmail: json['personEmail'],
      personCountryCode: json['personCountryCode'],
    );
  }
}
