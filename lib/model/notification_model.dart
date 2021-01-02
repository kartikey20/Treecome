class NotificationModel {
  final String notification;
  final String date;

  NotificationModel({this.notification, this.date});

  factory NotificationModel.fromJson(Map<String, dynamic> json) {
    return NotificationModel(
      notification: json['title'] as String,
      date: json['date'] as String,
    );
  }
}
