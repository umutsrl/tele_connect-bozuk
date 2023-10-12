class Senders {
  final String senderName;
  final String senderNumber;
  final String senderCountryCode;
  final String? additionalInfo; // Örneğin: Kişi hakkında ek bilgi
  final int? id;

  Senders({
    required this.senderName,
    required this.senderNumber,
    required this.senderCountryCode,
    this.additionalInfo,
    this.id,
  });

  factory Senders.fromJson(Map<String, dynamic> json) {
    return Senders(
      senderName: json['senderName'],
      senderNumber: json['senderNumber'],
      senderCountryCode: json['senderCountryCode'],
      additionalInfo: json['additionalInfo'],
      id: json['id'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'SenderName': senderName,
      'SenderNumber': senderNumber,
      'SenderCountryCode': senderCountryCode,
      'AdditionalInfo': additionalInfo,
      'id': id,
    };
  }
}
