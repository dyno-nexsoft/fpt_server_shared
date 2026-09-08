import 'package:freezed_annotation/freezed_annotation.dart';

part 'zentao_status.freezed.dart';
part 'zentao_status.g.dart';

/// `zentao.status` — everything a client needs to render a Zentao screen
/// before the user has typed anything.
///
/// Exists because every other Zentao action is keyed by a task id, and a
/// client that is not Discord has no way to *discover* one: the id of today's
/// report lives in the bot's own storage, put there when the task was created.
/// Without this, a dashboard could only offer a "type a task number" box for a
/// number the user would have to go and find in Discord.
///
/// Deliberately carries the task *id* and not the task: `zentao.report.get`
/// already returns the detail, and duplicating it here would mean two
/// definitions of the same payload drifting apart.
@freezed
abstract class ZentaoStatus with _$ZentaoStatus {
  const factory ZentaoStatus({
    /// Whether the calling Discord account has Zentao credentials stored.
    required bool linked,

    /// The linked Zentao account name — never the stored password.
    String? account,

    /// The server-wide project new report tasks are filed under.
    required int projectId,

    /// The server-wide execution (sprint) new report tasks are created in.
    required int executionId,

    /// Today's report task for the calling user, if one was started.
    int? todayTaskId,
  }) = _ZentaoStatus;

  factory ZentaoStatus.fromJson(Map<String, dynamic> json) =>
      _$ZentaoStatusFromJson(json);
}
