import 'package:freezed_annotation/freezed_annotation.dart';

part 'daily_task.freezed.dart';

/// Actions available on a task, derived from its Zentao status.
///
/// This is a domain rule, not a rendering detail: a REST client needs the same
/// answer the Discord buttons do.
enum DailyTaskAction { edit, finish, close }

/// A Zentao daily-report task, projected from the untyped API response.
@freezed
class DailyTask with _$DailyTask {
  const DailyTask._();

  const factory DailyTask({
    required int id,
    required String name,

    /// Description as Markdown (converted from the HTML Zentao stores).
    required String description,

    /// Raw Zentao status: `wait`, `doing`, `done`, `closed`, …
    required String status,

    /// Display name of the assignee.
    required String assignee,
    required DateTime lastEdited,
    required String url,
  }) = _DailyTask;

  /// `parseJson`, not `fromJson`: naming it `fromJson` makes freezed treat
  /// this class as json_serializable's and emit a `.g.dart` expecting to own
  /// both directions — which would replace [toJson] with a generated one that
  /// drops the derived `available_actions` key every client reads.
  ///
  /// Hand-written to match the equally hand-written [toJson]. No `.g.dart`
  /// means the global `field_rename: snake` does not apply here, so both
  /// directions spell the keys out and have to be kept in step by hand.
  /// `available_actions` is deliberately not read back: it is derived from
  /// [status], so parsing it would create a second source of truth a stale
  /// payload could contradict.
  factory DailyTask.parseJson(Map<String, dynamic> json) => DailyTask(
    id: json['id'] as int,
    name: json['name'] as String,
    description: json['description'] as String,
    status: json['status'] as String,
    assignee: json['assignee'] as String,
    lastEdited: DateTime.parse(json['last_edited'] as String),
    url: json['url'] as String,
  );

  bool get isDone => status == 'done';
  bool get isInProgress => status == 'doing';

  /// What the user may do next.
  ///
  /// Mirrors the previous button conditions exactly: edit while not done,
  /// finish while in progress, close once done.
  Set<DailyTaskAction> get availableActions => {
    if (!isDone) DailyTaskAction.edit,
    if (isInProgress) DailyTaskAction.finish,
    if (isDone) DailyTaskAction.close,
  };

  Map<String, Object?> toJson() => {
    'id': id,
    'name': name,
    'description': description,
    'status': status,
    'assignee': assignee,
    'last_edited': lastEdited.toIso8601String(),
    'url': url,
    'available_actions': [for (final action in availableActions) action.name],
  };
}
