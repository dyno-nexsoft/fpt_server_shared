import 'api_key_info.dart';
import 'api_key_role.dart';
import 'app_notification.dart';
import 'owner_info.dart';

/// `admin.apiKeys.add` — the new key, with its secret. The only time the
/// secret exists: the server keeps just a hash.
class ApiKeyCreated {
  const ApiKeyCreated({
    required this.id,
    required this.secret,
    required this.role,
  });

  factory ApiKeyCreated.fromJson(Map<String, dynamic> json) => ApiKeyCreated(
    id: json['id'] as String,
    secret: json['secret'] as String,
    role: ApiKeyRole.tryParse(json['role'] as String?) ?? ApiKeyRole.user,
  );

  final String id;
  final String secret;
  final ApiKeyRole role;
}

/// `admin.apiKeys.list`.
class ApiKeyList {
  const ApiKeyList({required this.keys, this.currentKeyId});

  factory ApiKeyList.fromJson(Map<String, dynamic> json) => ApiKeyList(
    currentKeyId: json['current_key_id'] as String?,
    keys: [
      for (final key in json['keys'] as List<dynamic>? ?? const [])
        ApiKeyInfo.fromJson(key as Map<String, dynamic>),
    ],
  );

  final List<ApiKeyInfo> keys;

  /// The key this very request was made with, when it is one of [keys].
  final String? currentKeyId;
}

/// `admin.owners.list`.
class OwnerList {
  const OwnerList(this.owners);

  factory OwnerList.fromJson(Map<String, dynamic> json) => OwnerList([
    for (final owner in json['owners'] as List<dynamic>? ?? const [])
      OwnerInfo.fromJson(owner as Map<String, dynamic>),
  ]);

  final List<OwnerInfo> owners;
}

/// `admin.logs.tail`.
class LogsTail {
  const LogsTail({
    required this.lines,
    required this.firstLine,
    required this.totalLines,
  });

  factory LogsTail.fromJson(Map<String, dynamic> json) => LogsTail(
    lines: [
      for (final line in json['lines'] as List<dynamic>? ?? const []) '$line',
    ],
    firstLine: (json['first_line'] as num?)?.toInt() ?? 1,
    totalLines: (json['total_lines'] as num?)?.toInt() ?? 0,
  );

  final List<String> lines;

  /// The absolute, 1-based number of `lines[0]`.
  final int firstLine;

  /// How long the whole log is.
  final int totalLines;
}

/// `notifications.list`.
class NotificationList {
  const NotificationList({required this.notifications, required this.unread});

  factory NotificationList.fromJson(Map<String, dynamic> json) =>
      NotificationList(
        notifications: [
          for (final item
              in json['notifications'] as List<dynamic>? ?? const [])
            AppNotification.fromJson(item as Map<String, dynamic>),
        ],
        unread: (json['unread_count'] as num?)?.toInt() ?? 0,
      );

  final List<AppNotification> notifications;
  final int unread;
}
