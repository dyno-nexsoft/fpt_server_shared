import 'action_results.dart';
import 'action_transport.dart';
import 'params/admin_params.dart';
import 'params/notification_params.dart';
import 'params/system_params.dart';

/// Every action as a typed call: the params object in, the decoded result
/// out. A caller never writes an action name or a parameter key — those are
/// spelled here, once, for the dashboard and `fpt_server_mcp` alike.
///
/// A failure is whatever the [ActionTransport] throws; nothing here swallows
/// it.
extension FptActions on ActionTransport {
  // admin.apiKeys.*

  Future<ApiKeyList> apiKeysList() async =>
      ApiKeyList.fromJson(await invokeAction('admin.apiKeys.list', const {}));

  Future<ApiKeyCreated> apiKeysAdd(ApiKeyAddParams params) async =>
      ApiKeyCreated.fromJson(
        await invokeAction('admin.apiKeys.add', params.toJson()),
      );

  Future<void> apiKeysEdit(ApiKeyEditParams params) =>
      invokeAction('admin.apiKeys.edit', params.toJson());

  Future<void> apiKeysRemove(ApiKeyRemoveParams params) =>
      invokeAction('admin.apiKeys.remove', params.toJson());

  /// Ends this session's key if it came from Discord sign-in.
  Future<void> apiKeysSignOut() =>
      invokeAction('admin.apiKeys.signOut', const {});

  // admin.owners.*

  Future<OwnerList> ownersList() async =>
      OwnerList.fromJson(await invokeAction('admin.owners.list', const {}));

  Future<void> ownersAdd(OwnerParams params) =>
      invokeAction('admin.owners.add', params.toJson());

  Future<void> ownersRemove(OwnerParams params) =>
      invokeAction('admin.owners.remove', params.toJson());

  // admin.logs.tail

  Future<LogsTail> logsTail([
    LogsTailParams params = const LogsTailParams(),
  ]) async =>
      LogsTail.fromJson(await invokeAction('admin.logs.tail', params.toJson()));

  // notifications.*

  Future<NotificationList> notificationsList() async =>
      NotificationList.fromJson(
        await invokeAction('notifications.list', const {}),
      );

  Future<void> notificationsMarkRead([
    MarkNotificationsReadParams params = const MarkNotificationsReadParams(),
  ]) => invokeAction('notifications.markRead', params.toJson());

  Future<void> notificationsAnnounce(AnnounceNotificationParams params) =>
      invokeAction('notifications.announce', params.toJson());

  Future<void> notificationsRemove(RemoveNotificationParams params) =>
      invokeAction('notifications.remove', params.toJson());

  // system.* / cron.* / p2p.*

  Future<void> hotReload() => invokeAction('system.hotReload', const {});

  Future<void> restart([RestartParams params = const RestartParams()]) =>
      invokeAction('system.restart', params.toJson());

  Future<void> hiveClean(HiveBoxCleanParams params) =>
      invokeAction('system.hive.clean', params.toJson());

  Future<void> cronRun(CronRunParams params) =>
      invokeAction('cron.run', params.toJson());

  Future<void> p2pFilesDelete(P2pFilesDeleteParams params) =>
      invokeAction('p2p.files.delete', params.toJson());
}
