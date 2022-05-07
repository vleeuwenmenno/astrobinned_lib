const String baseUrl = "https://www.astrobin.com/api/v2";

const String loginUrl = "$baseUrl/api-auth-token/";

/// Notification URLs

const String notificationsUrl = "$baseUrl/notifications/notification?page=";
const String notificationByIdUrl = "$baseUrl/notifications/notification/";
const String notificationUnreadCountUrl =
    "$baseUrl/notifications/notification/get_unread_count";
const String notificationMarkAllAsReadUrl =
    "$baseUrl/notifications/notification/mark_all_as_read/";

/// ^^^ Notification URLs ^^^

/// Users URLs

const String getUserUrl = "$baseUrl/common/users/";
const String getCurrentUserProfileUrl = "$baseUrl/common/userprofiles/current";
const String getUserProfileUrl = "$baseUrl/common/userprofiles/";
const String getUserSubscriptionStatusUrl =
    "$baseUrl/common/usersubscriptions/?user=";
const String getSubscriptionsUrl = "$baseUrl/common/subscriptions";
