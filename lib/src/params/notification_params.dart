import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_params.freezed.dart';
part 'notification_params.g.dart';

/// `notifications.markRead`.
@freezed
abstract class MarkNotificationsReadParams with _$MarkNotificationsReadParams {
  const factory MarkNotificationsReadParams({
    /// Empty means everything visible to the caller.
    @Default([]) List<String> ids,
  }) = _MarkNotificationsReadParams;

  factory MarkNotificationsReadParams.fromJson(Map<String, dynamic> json) =>
      _$MarkNotificationsReadParamsFromJson(json);
}

/// `notifications.announce` — a "new feature" notice for everyone's inbox.
@freezed
abstract class AnnounceNotificationParams with _$AnnounceNotificationParams {
  const factory AnnounceNotificationParams({
    required String title,
    required String body,

    /// A dashboard route starting with a single `/` — where tapping the
    /// notice goes.
    String? path,
  }) = _AnnounceNotificationParams;

  factory AnnounceNotificationParams.fromJson(Map<String, dynamic> json) =>
      _$AnnounceNotificationParamsFromJson(json);
}

/// `notifications.remove`.
@freezed
abstract class RemoveNotificationParams with _$RemoveNotificationParams {
  const factory RemoveNotificationParams({required String id}) =
      _RemoveNotificationParams;

  factory RemoveNotificationParams.fromJson(Map<String, dynamic> json) =>
      _$RemoveNotificationParamsFromJson(json);
}
