import 'ai_model.dart';
import 'review_issue.dart';

/// One past (or in-progress) `gitlab.review` run, parsed from
/// `gitlab.review.history` — same running→done lifecycle a build's `Job`
/// already has, so a row here can be either.
class ReviewHistoryEntry {
  const ReviewHistoryEntry({
    required this.id,
    required this.mrIid,
    required this.mrTitle,
    required this.mrUrl,
    required this.noteUrl,
    required this.filesReviewed,
    required this.filesFailed,
    required this.totalFiles,
    required this.skipped,
    required this.riskLevel,
    required this.recommendation,
    required this.issues,
    required this.reviewedAt,
    required this.triggeredBy,
    required this.state,
    required this.label,
    required this.status,
    required this.log,
    required this.failed,
    required this.startedAt,
    required this.model,
  });

  factory ReviewHistoryEntry.fromJson(Map<String, dynamic> json) =>
      ReviewHistoryEntry(
        id: json['id'] as String? ?? '',
        mrIid: (json['mr_iid'] as num?)?.toInt() ?? 0,
        mrTitle: json['mr_title'] as String? ?? 'Untitled MR',
        mrUrl: json['mr_url'] as String? ?? '',
        noteUrl: json['note_url'] as String?,
        filesReviewed: (json['files_reviewed'] as num?)?.toInt() ?? 0,
        filesFailed: (json['files_failed'] as num?)?.toInt() ?? 0,
        totalFiles: (json['total_files'] as num?)?.toInt() ?? 0,
        skipped: json['skipped'] as bool? ?? false,
        riskLevel: json['risk_level'] as String?,
        recommendation: json['recommendation'] as String?,
        issues: (json['issues'] as List<dynamic>? ?? const [])
            .map((e) => ReviewIssue.fromJson(e as Map<String, dynamic>))
            .toList(),
        reviewedAt: json['reviewed_at'] != null
            ? DateTime.parse(json['reviewed_at'] as String)
            : DateTime.now(),
        triggeredBy: json['triggered_by'] as String? ?? 'Unknown',
        // A record from before runs stored it parses as the default tier,
        // which is what those runs used.
        model: AiModel.parse(json['model']),
        // Defaulted to 'done'/false for a record saved before these fields
        // existed, so old history keeps rendering instead of crashing.
        state: json['state'] as String? ?? 'done',
        label: json['label'] as String? ?? json['mr_title'] as String? ?? '',
        status: json['status'] as String? ?? '',
        log: (json['log'] as List<dynamic>? ?? const [])
            .map((e) => e.toString())
            .toList(),
        failed: json['failed'] as bool? ?? false,
        startedAt: json['started_at'] != null
            ? DateTime.parse(json['started_at'] as String)
            : (json['reviewed_at'] != null
                  ? DateTime.parse(json['reviewed_at'] as String)
                  : DateTime.now()),
      );

  final String id;
  final int mrIid;
  final String mrTitle;
  final String mrUrl;
  final String? noteUrl;
  final int filesReviewed;

  /// Files in a batch that no model could answer; 0 on a record from before
  /// this was kept.
  final int filesFailed;
  final int totalFiles;
  final bool skipped;
  final String? riskLevel;
  final String? recommendation;
  final List<ReviewIssue> issues;
  final DateTime reviewedAt;
  final String triggeredBy;

  /// `'running'` or `'done'` — see `GitlabHistoryStore`'s lifecycle doc
  /// comment on the server.
  final String state;
  final String label;
  final String status;
  final List<String> log;
  final bool failed;
  final DateTime startedAt;

  /// The tier the run used, so a Retry runs the same one.
  final AiModel model;

  bool get isRunning => state == 'running';
}

/// One past (or in-progress) `gitlab.translateArb` run — same running→done
/// lifecycle as [ReviewHistoryEntry].
class TranslateArbHistoryEntry {
  const TranslateArbHistoryEntry({
    required this.id,
    required this.module,
    required this.targetBranch,
    required this.mrUrl,
    required this.translatedKeyCount,
    required this.localesUpdated,
    required this.failedKeyCount,
    required this.skipped,
    required this.translatedAt,
    required this.triggeredBy,
    required this.state,
    required this.label,
    required this.status,
    required this.log,
    required this.failed,
    required this.startedAt,
    required this.model,
  });

  factory TranslateArbHistoryEntry.fromJson(Map<String, dynamic> json) =>
      TranslateArbHistoryEntry(
        id: json['id'] as String? ?? '',
        module: json['module'] as String? ?? '',
        targetBranch: json['target_branch'] as String? ?? '',
        mrUrl: json['mr_url'] as String?,
        translatedKeyCount:
            (json['translated_key_count'] as num?)?.toInt() ?? 0,
        localesUpdated: (json['locales_updated'] as List<dynamic>? ?? const [])
            .map((e) => e.toString())
            .toList(),
        failedKeyCount: (json['failed_key_count'] as num?)?.toInt() ?? 0,
        skipped: json['skipped'] as bool? ?? false,
        translatedAt: json['translated_at'] != null
            ? DateTime.parse(json['translated_at'] as String)
            : DateTime.now(),
        triggeredBy: json['triggered_by'] as String? ?? 'Unknown',
        // A record from before runs stored it parses as the default tier,
        // which is what those runs used.
        model: AiModel.parse(json['model']),
        state: json['state'] as String? ?? 'done',
        label: json['label'] as String? ?? json['module'] as String? ?? '',
        status: json['status'] as String? ?? '',
        log: (json['log'] as List<dynamic>? ?? const [])
            .map((e) => e.toString())
            .toList(),
        failed: json['failed'] as bool? ?? false,
        startedAt: json['started_at'] != null
            ? DateTime.parse(json['started_at'] as String)
            : (json['translated_at'] != null
                  ? DateTime.parse(json['translated_at'] as String)
                  : DateTime.now()),
      );

  final String id;
  final String module;
  final String targetBranch;
  final String? mrUrl;
  final int translatedKeyCount;
  final List<String> localesUpdated;
  final int failedKeyCount;
  final bool skipped;
  final DateTime translatedAt;
  final String triggeredBy;

  final String state;
  final String label;
  final String status;
  final List<String> log;
  final bool failed;
  final DateTime startedAt;

  /// The tier the run used, so a Retry runs the same one.
  final AiModel model;

  bool get isRunning => state == 'running';
}
