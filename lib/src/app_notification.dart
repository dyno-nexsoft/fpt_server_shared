import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_notification.freezed.dart';
part 'app_notification.g.dart';

/// One dashboard notification as `notifications.list` returns it, already
/// resolved for the caller — [read] is whether *that* user has read it.
///
/// [kind] is a plain string (`feature`, `build`) rather than an enum, so a
/// client pinned to an older copy of this package renders a kind it has never
/// heard of with a generic icon instead of failing to parse the whole list.
@freezed
abstract class AppNotification with _$AppNotification {
  const factory AppNotification({
    required String id,
    required String kind,
    required String title,
    required String body,

    /// Dashboard route to open when the notification is tapped, e.g.
    /// `/settings`. Null for one that is purely informational.
    String? path,
    required DateTime createdAt,
    @Default(false) bool read,
  }) = _AppNotification;

  factory AppNotification.fromJson(Map<String, dynamic> json) =>
      _$AppNotificationFromJson(json);
}
