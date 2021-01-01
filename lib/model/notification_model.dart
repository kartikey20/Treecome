class Notification_model {
  final String notification;
  final String date;

  Notification_model({this.notification, this.date});

  factory Notification_model.fromJson(Map<String, dynamic> json) {
    return Notification_model(
      notification: json['name'] as String,
      date: json['designation'] as String,
    );
  }
}
