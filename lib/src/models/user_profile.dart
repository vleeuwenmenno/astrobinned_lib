import 'package:astrobinned_lib/src/models/locations.dart';

class UserProfile {
  int? id;
  double? astrobinIndex;
  double? contributionIndex;
  int? followers;
  List<Locations>? locations;
  Null? deleted;
  String? updated;
  String? lastSeen;
  String? lastSeenInCountry;
  bool? displayMemberSince;
  bool? displayLastSeen;
  String? realName;
  String? website;
  String? job;
  String? hobbies;
  String? instagramUsername;
  String? about;
  String? deleteReason;
  String? deleteReasonOther;
  int? premiumCounter;
  Null? premiumOffer;
  String? premiumOfferExpiration;
  bool? premiumOfferSent;
  String? avatar;
  bool? excludeFromCompetitions;
  bool? autoSubmitToIotdTpProcess;
  bool? bannedFromCompetitions;
  double? astrobinIndexBonus;
  bool? plateSolutionOverlayOnFullDisabled;
  bool? openNotificationsInNewTab;
  String? defaultFrontpageSection;
  int? defaultGallerySorting;
  Null? displayWipImagesOnPublicGallery;
  String? defaultLicense;
  bool? acceptTos;
  String? referralCode;
  bool? receiveImportantCommunications;
  bool? receiveNewsletter;
  bool? receiveMarketingAndCommercialMaterial;
  bool? allowAstronomyAds;
  bool? allowRetailerIntegration;
  Null? inactiveAccountReminderSent;
  Null? neverActivatedAccountReminderSent;
  Null? recoveredImagesNoticeSent;
  Null? language;
  Null? otherLanguages;
  bool? seenRealname;
  Null? seenIotdTpIsExplicitSubmission;
  String? signature;
  String? signatureHtml;
  bool? showSignatures;
  int? postCount;
  bool? autosubscribe;
  bool? receiveForumEmails;
  Null? imageRecoveryProcessStarted;
  Null? imageRecoveryProcessCompleted;
  int? user;
  List<int>? telescopes;
  List<int>? mounts;
  List<int>? cameras;
  List<int>? focalReducers;
  List<int>? software;
  List<int>? filters;
  List<int>? accessories;

  UserProfile(
      {id,
      astrobinIndex,
      contributionIndex,
      followers,
      locations,
      deleted,
      updated,
      lastSeen,
      lastSeenInCountry,
      displayMemberSince,
      displayLastSeen,
      realName,
      website,
      job,
      hobbies,
      instagramUsername,
      about,
      deleteReason,
      deleteReasonOther,
      premiumCounter,
      premiumOffer,
      premiumOfferExpiration,
      premiumOfferSent,
      avatar,
      excludeFromCompetitions,
      autoSubmitToIotdTpProcess,
      bannedFromCompetitions,
      astrobinIndexBonus,
      plateSolutionOverlayOnFullDisabled,
      openNotificationsInNewTab,
      defaultFrontpageSection,
      defaultGallerySorting,
      displayWipImagesOnPublicGallery,
      defaultLicense,
      acceptTos,
      referralCode,
      receiveImportantCommunications,
      receiveNewsletter,
      receiveMarketingAndCommercialMaterial,
      allowAstronomyAds,
      allowRetailerIntegration,
      inactiveAccountReminderSent,
      neverActivatedAccountReminderSent,
      recoveredImagesNoticeSent,
      language,
      otherLanguages,
      seenRealname,
      seenIotdTpIsExplicitSubmission,
      signature,
      signatureHtml,
      showSignatures,
      postCount,
      autosubscribe,
      receiveForumEmails,
      imageRecoveryProcessStarted,
      imageRecoveryProcessCompleted,
      user,
      telescopes,
      mounts,
      cameras,
      focalReducers,
      software,
      filters,
      accessories});

  UserProfile.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    astrobinIndex = json['astrobin_index'];
    contributionIndex = json['contribution_index'];
    followers = json['followers'];
    if (json['locations'] != null) {
      locations = <Locations>[];
      json['locations'].forEach((v) {
        locations!.add(Locations.fromJson(v));
      });
    }
    deleted = json['deleted'];
    updated = json['updated'];
    lastSeen = json['last_seen'];
    lastSeenInCountry = json['last_seen_in_country'];
    displayMemberSince = json['display_member_since'];
    displayLastSeen = json['display_last_seen'];
    realName = json['real_name'];
    website = json['website'];
    job = json['job'];
    hobbies = json['hobbies'];
    instagramUsername = json['instagram_username'];
    about = json['about'];
    deleteReason = json['delete_reason'];
    deleteReasonOther = json['delete_reason_other'];
    premiumCounter = json['premium_counter'];
    premiumOffer = json['premium_offer'];
    premiumOfferExpiration = json['premium_offer_expiration'];
    premiumOfferSent = json['premium_offer_sent'];
    avatar = json['avatar'];
    excludeFromCompetitions = json['exclude_from_competitions'];
    autoSubmitToIotdTpProcess = json['auto_submit_to_iotd_tp_process'];
    bannedFromCompetitions = json['banned_from_competitions'];
    astrobinIndexBonus = json['astrobin_index_bonus'];
    plateSolutionOverlayOnFullDisabled =
        json['plate_solution_overlay_on_full_disabled'];
    openNotificationsInNewTab = json['open_notifications_in_new_tab'];
    defaultFrontpageSection = json['default_frontpage_section'];
    defaultGallerySorting = json['default_gallery_sorting'];
    displayWipImagesOnPublicGallery =
        json['display_wip_images_on_public_gallery'];
    defaultLicense = json['default_license'];
    acceptTos = json['accept_tos'];
    referralCode = json['referral_code'];
    receiveImportantCommunications = json['receive_important_communications'];
    receiveNewsletter = json['receive_newsletter'];
    receiveMarketingAndCommercialMaterial =
        json['receive_marketing_and_commercial_material'];
    allowAstronomyAds = json['allow_astronomy_ads'];
    allowRetailerIntegration = json['allow_retailer_integration'];
    inactiveAccountReminderSent = json['inactive_account_reminder_sent'];
    neverActivatedAccountReminderSent =
        json['never_activated_account_reminder_sent'];
    recoveredImagesNoticeSent = json['recovered_images_notice_sent'];
    language = json['language'];
    otherLanguages = json['other_languages'];
    seenRealname = json['seen_realname'];
    seenIotdTpIsExplicitSubmission =
        json['seen_iotd_tp_is_explicit_submission'];
    signature = json['signature'];
    signatureHtml = json['signature_html'];
    showSignatures = json['show_signatures'];
    postCount = json['post_count'];
    autosubscribe = json['autosubscribe'];
    receiveForumEmails = json['receive_forum_emails'];
    imageRecoveryProcessStarted = json['image_recovery_process_started'];
    imageRecoveryProcessCompleted = json['image_recovery_process_completed'];
    user = json['user'];
    telescopes = json['telescopes'].cast<int>();
    mounts = json['mounts'].cast<int>();
    cameras = json['cameras'].cast<int>();
    focalReducers = json['focal_reducers'].cast<int>();
    software = json['software'].cast<int>();
    filters = json['filters'].cast<int>();
    accessories = json['accessories'].cast<int>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['astrobin_index'] = astrobinIndex;
    data['contribution_index'] = contributionIndex;
    data['followers'] = followers;
    if (locations != null) {
      data['locations'] = locations!.map((v) => v.toJson()).toList();
    }
    data['deleted'] = deleted;
    data['updated'] = updated;
    data['last_seen'] = lastSeen;
    data['last_seen_in_country'] = lastSeenInCountry;
    data['display_member_since'] = displayMemberSince;
    data['display_last_seen'] = displayLastSeen;
    data['real_name'] = realName;
    data['website'] = website;
    data['job'] = job;
    data['hobbies'] = hobbies;
    data['instagram_username'] = instagramUsername;
    data['about'] = about;
    data['delete_reason'] = deleteReason;
    data['delete_reason_other'] = deleteReasonOther;
    data['premium_counter'] = premiumCounter;
    data['premium_offer'] = premiumOffer;
    data['premium_offer_expiration'] = premiumOfferExpiration;
    data['premium_offer_sent'] = premiumOfferSent;
    data['avatar'] = avatar;
    data['exclude_from_competitions'] = excludeFromCompetitions;
    data['auto_submit_to_iotd_tp_process'] = autoSubmitToIotdTpProcess;
    data['banned_from_competitions'] = bannedFromCompetitions;
    data['astrobin_index_bonus'] = astrobinIndexBonus;
    data['plate_solution_overlay_on_full_disabled'] =
        plateSolutionOverlayOnFullDisabled;
    data['open_notifications_in_new_tab'] = openNotificationsInNewTab;
    data['default_frontpage_section'] = defaultFrontpageSection;
    data['default_gallery_sorting'] = defaultGallerySorting;
    data['display_wip_images_on_public_gallery'] =
        displayWipImagesOnPublicGallery;
    data['default_license'] = defaultLicense;
    data['accept_tos'] = acceptTos;
    data['referral_code'] = referralCode;
    data['receive_important_communications'] = receiveImportantCommunications;
    data['receive_newsletter'] = receiveNewsletter;
    data['receive_marketing_and_commercial_material'] =
        receiveMarketingAndCommercialMaterial;
    data['allow_astronomy_ads'] = allowAstronomyAds;
    data['allow_retailer_integration'] = allowRetailerIntegration;
    data['inactive_account_reminder_sent'] = inactiveAccountReminderSent;
    data['never_activated_account_reminder_sent'] =
        neverActivatedAccountReminderSent;
    data['recovered_images_notice_sent'] = recoveredImagesNoticeSent;
    data['language'] = language;
    data['other_languages'] = otherLanguages;
    data['seen_realname'] = seenRealname;
    data['seen_iotd_tp_is_explicit_submission'] =
        seenIotdTpIsExplicitSubmission;
    data['signature'] = signature;
    data['signature_html'] = signatureHtml;
    data['show_signatures'] = showSignatures;
    data['post_count'] = postCount;
    data['autosubscribe'] = autosubscribe;
    data['receive_forum_emails'] = receiveForumEmails;
    data['image_recovery_process_started'] = imageRecoveryProcessStarted;
    data['image_recovery_process_completed'] = imageRecoveryProcessCompleted;
    data['user'] = user;
    data['telescopes'] = telescopes;
    data['mounts'] = mounts;
    data['cameras'] = cameras;
    data['focal_reducers'] = focalReducers;
    data['software'] = software;
    data['filters'] = filters;
    data['accessories'] = accessories;
    return data;
  }
}
