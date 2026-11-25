import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en'),
  ];

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'As3ifni'**
  String get appName;

  /// No description provided for @brandArabicName.
  ///
  /// In en, this message translates to:
  /// **'أسعفني'**
  String get brandArabicName;

  /// No description provided for @common_back.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get common_back;

  /// No description provided for @common_more.
  ///
  /// In en, this message translates to:
  /// **'More'**
  String get common_more;

  /// No description provided for @common_edit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get common_edit;

  /// No description provided for @common_delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get common_delete;

  /// No description provided for @common_cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get common_cancel;

  /// No description provided for @common_save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get common_save;

  /// No description provided for @common_saveChanges.
  ///
  /// In en, this message translates to:
  /// **'Save changes'**
  String get common_saveChanges;

  /// No description provided for @common_apply.
  ///
  /// In en, this message translates to:
  /// **'Apply'**
  String get common_apply;

  /// No description provided for @common_next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get common_next;

  /// No description provided for @common_previous.
  ///
  /// In en, this message translates to:
  /// **'Previous'**
  String get common_previous;

  /// No description provided for @common_finish.
  ///
  /// In en, this message translates to:
  /// **'Finish guide'**
  String get common_finish;

  /// No description provided for @common_call.
  ///
  /// In en, this message translates to:
  /// **'Call'**
  String get common_call;

  /// No description provided for @common_start.
  ///
  /// In en, this message translates to:
  /// **'Start'**
  String get common_start;

  /// No description provided for @common_stop.
  ///
  /// In en, this message translates to:
  /// **'Stop'**
  String get common_stop;

  /// No description provided for @common_retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get common_retry;

  /// No description provided for @common_search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get common_search;

  /// No description provided for @common_viewAll.
  ///
  /// In en, this message translates to:
  /// **'View all'**
  String get common_viewAll;

  /// No description provided for @common_important.
  ///
  /// In en, this message translates to:
  /// **'Important'**
  String get common_important;

  /// No description provided for @common_offline.
  ///
  /// In en, this message translates to:
  /// **'Offline'**
  String get common_offline;

  /// No description provided for @common_noInternet.
  ///
  /// In en, this message translates to:
  /// **'No internet required'**
  String get common_noInternet;

  /// No description provided for @common_loading.
  ///
  /// In en, this message translates to:
  /// **'Loading…'**
  String get common_loading;

  /// No description provided for @nav_home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get nav_home;

  /// No description provided for @nav_firstAid.
  ///
  /// In en, this message translates to:
  /// **'First Aid'**
  String get nav_firstAid;

  /// No description provided for @nav_news.
  ///
  /// In en, this message translates to:
  /// **'News'**
  String get nav_news;

  /// No description provided for @nav_settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get nav_settings;

  /// No description provided for @home_eyebrow.
  ///
  /// In en, this message translates to:
  /// **'READY WHEN IT MATTERS'**
  String get home_eyebrow;

  /// No description provided for @home_greeting.
  ///
  /// In en, this message translates to:
  /// **'Good morning,\nyou’re not alone.'**
  String get home_greeting;

  /// No description provided for @home_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Quick help and clear guidance for urgent moments.'**
  String get home_subtitle;

  /// No description provided for @home_sos.
  ///
  /// In en, this message translates to:
  /// **'SOS'**
  String get home_sos;

  /// No description provided for @home_sosHint.
  ///
  /// In en, this message translates to:
  /// **'Double tap to activate'**
  String get home_sosHint;

  /// No description provided for @home_sosAccessibility.
  ///
  /// In en, this message translates to:
  /// **'Double tap to activate SOS'**
  String get home_sosAccessibility;

  /// No description provided for @home_siren.
  ///
  /// In en, this message translates to:
  /// **'Emergency siren'**
  String get home_siren;

  /// No description provided for @home_sirenSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Attract attention nearby'**
  String get home_sirenSubtitle;

  /// No description provided for @home_firstAid.
  ///
  /// In en, this message translates to:
  /// **'First Aid'**
  String get home_firstAid;

  /// No description provided for @home_firstAidSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Learn how to respond'**
  String get home_firstAidSubtitle;

  /// No description provided for @home_quizzes.
  ///
  /// In en, this message translates to:
  /// **'Quizzes'**
  String get home_quizzes;

  /// No description provided for @home_quizzesSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Test your knowledge'**
  String get home_quizzesSubtitle;

  /// No description provided for @home_emergencyNumbers.
  ///
  /// In en, this message translates to:
  /// **'Emergency Numbers'**
  String get home_emergencyNumbers;

  /// No description provided for @home_emergencyNumbersSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Call emergency services'**
  String get home_emergencyNumbersSubtitle;

  /// No description provided for @home_trustedContacts.
  ///
  /// In en, this message translates to:
  /// **'Trusted Contacts'**
  String get home_trustedContacts;

  /// No description provided for @home_trustedContactsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Manage your emergency contacts'**
  String get home_trustedContactsSubtitle;

  /// No description provided for @home_information.
  ///
  /// In en, this message translates to:
  /// **'INFORMATION'**
  String get home_information;

  /// No description provided for @home_latestNews.
  ///
  /// In en, this message translates to:
  /// **'Latest safety updates'**
  String get home_latestNews;

  /// No description provided for @home_safetyGuide.
  ///
  /// In en, this message translates to:
  /// **'SAFETY GUIDE'**
  String get home_safetyGuide;

  /// No description provided for @home_sampleNewsTitle.
  ///
  /// In en, this message translates to:
  /// **'Preparing for seasonal weather changes'**
  String get home_sampleNewsTitle;

  /// No description provided for @home_sampleNewsDescription.
  ///
  /// In en, this message translates to:
  /// **'Practical preparedness information for your household.'**
  String get home_sampleNewsDescription;

  /// No description provided for @home_sampleNewsLocation.
  ///
  /// In en, this message translates to:
  /// **'Algiers'**
  String get home_sampleNewsLocation;

  /// No description provided for @home_educationalSample.
  ///
  /// In en, this message translates to:
  /// **'Educational sample'**
  String get home_educationalSample;

  /// No description provided for @home_sampleContentNotice.
  ///
  /// In en, this message translates to:
  /// **'Sample content is clearly labeled and is not a live emergency alert.'**
  String get home_sampleContentNotice;

  /// No description provided for @firstAid_eyebrow.
  ///
  /// In en, this message translates to:
  /// **'ACT WITH CONFIDENCE'**
  String get firstAid_eyebrow;

  /// No description provided for @firstAid_title.
  ///
  /// In en, this message translates to:
  /// **'First aid, made clear.'**
  String get firstAid_title;

  /// No description provided for @firstAid_description.
  ///
  /// In en, this message translates to:
  /// **'Visual steps for the moments that matter.'**
  String get firstAid_description;

  /// No description provided for @firstAid_exploreGuides.
  ///
  /// In en, this message translates to:
  /// **'Explore visual guides'**
  String get firstAid_exploreGuides;

  /// No description provided for @firstAid_searchPlaceholder.
  ///
  /// In en, this message translates to:
  /// **'Search a guide or symptom'**
  String get firstAid_searchPlaceholder;

  /// No description provided for @firstAid_filterLabel.
  ///
  /// In en, this message translates to:
  /// **'Filter first aid guides'**
  String get firstAid_filterLabel;

  /// No description provided for @firstAid_filterAll.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get firstAid_filterAll;

  /// No description provided for @firstAid_filterUrgent.
  ///
  /// In en, this message translates to:
  /// **'Urgent'**
  String get firstAid_filterUrgent;

  /// No description provided for @firstAid_filterInjury.
  ///
  /// In en, this message translates to:
  /// **'Injury'**
  String get firstAid_filterInjury;

  /// No description provided for @firstAid_filterBasics.
  ///
  /// In en, this message translates to:
  /// **'Basics'**
  String get firstAid_filterBasics;

  /// No description provided for @firstAid_chooseTopic.
  ///
  /// In en, this message translates to:
  /// **'CHOOSE A TOPIC FOR IMMEDIATE STEPS'**
  String get firstAid_chooseTopic;

  /// No description provided for @firstAid_whatHappened.
  ///
  /// In en, this message translates to:
  /// **'What happened?'**
  String get firstAid_whatHappened;

  /// No description provided for @firstAid_allOffline.
  ///
  /// In en, this message translates to:
  /// **'All offline'**
  String get firstAid_allOffline;

  /// No description provided for @firstAid_offlineLabel.
  ///
  /// In en, this message translates to:
  /// **'Offline'**
  String get firstAid_offlineLabel;

  /// No description provided for @firstAid_noGuideFound.
  ///
  /// In en, this message translates to:
  /// **'No guide found'**
  String get firstAid_noGuideFound;

  /// No description provided for @firstAid_tryShorterSearch.
  ///
  /// In en, this message translates to:
  /// **'Try a shorter search term.'**
  String get firstAid_tryShorterSearch;

  /// No description provided for @aid_bleeding.
  ///
  /// In en, this message translates to:
  /// **'Bleeding'**
  String get aid_bleeding;

  /// No description provided for @aid_bleedingDescription.
  ///
  /// In en, this message translates to:
  /// **'Control blood loss safely'**
  String get aid_bleedingDescription;

  /// No description provided for @aid_burns.
  ///
  /// In en, this message translates to:
  /// **'Burns'**
  String get aid_burns;

  /// No description provided for @aid_burnsDescription.
  ///
  /// In en, this message translates to:
  /// **'Cool and protect the skin'**
  String get aid_burnsDescription;

  /// No description provided for @aid_choking.
  ///
  /// In en, this message translates to:
  /// **'Choking'**
  String get aid_choking;

  /// No description provided for @aid_chokingDescription.
  ///
  /// In en, this message translates to:
  /// **'Recognize airway obstruction'**
  String get aid_chokingDescription;

  /// No description provided for @aid_fractures.
  ///
  /// In en, this message translates to:
  /// **'Fractures'**
  String get aid_fractures;

  /// No description provided for @aid_fracturesDescription.
  ///
  /// In en, this message translates to:
  /// **'Support and immobilize'**
  String get aid_fracturesDescription;

  /// No description provided for @aid_fainting.
  ///
  /// In en, this message translates to:
  /// **'Fainting'**
  String get aid_fainting;

  /// No description provided for @aid_faintingDescription.
  ///
  /// In en, this message translates to:
  /// **'Position and monitor safely'**
  String get aid_faintingDescription;

  /// No description provided for @aid_heartAttack.
  ///
  /// In en, this message translates to:
  /// **'Heart attack'**
  String get aid_heartAttack;

  /// No description provided for @aid_heartAttackDescription.
  ///
  /// In en, this message translates to:
  /// **'Act quickly and call help'**
  String get aid_heartAttackDescription;

  /// No description provided for @aid_seizures.
  ///
  /// In en, this message translates to:
  /// **'Seizures'**
  String get aid_seizures;

  /// No description provided for @aid_seizuresDescription.
  ///
  /// In en, this message translates to:
  /// **'Protect from nearby hazards'**
  String get aid_seizuresDescription;

  /// No description provided for @aid_wounds.
  ///
  /// In en, this message translates to:
  /// **'Wounds & injuries'**
  String get aid_wounds;

  /// No description provided for @aid_woundsDescription.
  ///
  /// In en, this message translates to:
  /// **'Clean, cover and monitor'**
  String get aid_woundsDescription;

  /// No description provided for @aid_poisoning.
  ///
  /// In en, this message translates to:
  /// **'Poisoning'**
  String get aid_poisoning;

  /// No description provided for @aid_poisoningDescription.
  ///
  /// In en, this message translates to:
  /// **'Identify and seek expert help'**
  String get aid_poisoningDescription;

  /// No description provided for @aid_allergicReactions.
  ///
  /// In en, this message translates to:
  /// **'Allergic reactions'**
  String get aid_allergicReactions;

  /// No description provided for @aid_allergicReactionsDescription.
  ///
  /// In en, this message translates to:
  /// **'Spot serious symptoms'**
  String get aid_allergicReactionsDescription;

  /// No description provided for @aid_drowning.
  ///
  /// In en, this message translates to:
  /// **'Drowning'**
  String get aid_drowning;

  /// No description provided for @aid_drowningDescription.
  ///
  /// In en, this message translates to:
  /// **'Rescue without risking yourself'**
  String get aid_drowningDescription;

  /// No description provided for @aid_electricShock.
  ///
  /// In en, this message translates to:
  /// **'Electric shock'**
  String get aid_electricShock;

  /// No description provided for @aid_electricShockDescription.
  ///
  /// In en, this message translates to:
  /// **'Make the area safe first'**
  String get aid_electricShockDescription;

  /// No description provided for @aid_heatstroke.
  ///
  /// In en, this message translates to:
  /// **'Heatstroke'**
  String get aid_heatstroke;

  /// No description provided for @aid_heatstrokeDescription.
  ///
  /// In en, this message translates to:
  /// **'Cool quickly and call help'**
  String get aid_heatstrokeDescription;

  /// No description provided for @aid_hypothermia.
  ///
  /// In en, this message translates to:
  /// **'Hypothermia'**
  String get aid_hypothermia;

  /// No description provided for @aid_hypothermiaDescription.
  ///
  /// In en, this message translates to:
  /// **'Warm gradually and monitor'**
  String get aid_hypothermiaDescription;

  /// No description provided for @aid_cpr.
  ///
  /// In en, this message translates to:
  /// **'CPR & basic life support'**
  String get aid_cpr;

  /// No description provided for @aid_cprDescription.
  ///
  /// In en, this message translates to:
  /// **'Check, call and compress'**
  String get aid_cprDescription;

  /// No description provided for @guide_highPriority.
  ///
  /// In en, this message translates to:
  /// **'HIGH PRIORITY'**
  String get guide_highPriority;

  /// No description provided for @guide_callHelp.
  ///
  /// In en, this message translates to:
  /// **'Call help'**
  String get guide_callHelp;

  /// No description provided for @guide_stepProgress.
  ///
  /// In en, this message translates to:
  /// **'Step {current} of {total}'**
  String guide_stepProgress(Object current, Object total);

  /// No description provided for @guide_doThisNow.
  ///
  /// In en, this message translates to:
  /// **'DO THIS NOW'**
  String get guide_doThisNow;

  /// No description provided for @guide_important.
  ///
  /// In en, this message translates to:
  /// **'Important'**
  String get guide_important;

  /// No description provided for @guide_whatNotToDo.
  ///
  /// In en, this message translates to:
  /// **'What not to do'**
  String get guide_whatNotToDo;

  /// No description provided for @guide_doNotLeaveAlone.
  ///
  /// In en, this message translates to:
  /// **'Never leave the person alone unless you must call for help.'**
  String get guide_doNotLeaveAlone;

  /// No description provided for @guide_medicalDisclaimer.
  ///
  /// In en, this message translates to:
  /// **'This guide supports—not replaces—professional emergency care.'**
  String get guide_medicalDisclaimer;

  /// No description provided for @guide_step_checkResponsiveness.
  ///
  /// In en, this message translates to:
  /// **'Check responsiveness'**
  String get guide_step_checkResponsiveness;

  /// No description provided for @guide_step_checkResponsivenessText.
  ///
  /// In en, this message translates to:
  /// **'Tap both shoulders and speak loudly. Look for any response.'**
  String get guide_step_checkResponsivenessText;

  /// No description provided for @guide_step_checkResponsivenessWarning.
  ///
  /// In en, this message translates to:
  /// **'Do not shake the person forcefully.'**
  String get guide_step_checkResponsivenessWarning;

  /// No description provided for @guide_step_checkBreathing.
  ///
  /// In en, this message translates to:
  /// **'Check normal breathing'**
  String get guide_step_checkBreathing;

  /// No description provided for @guide_step_checkBreathingText.
  ///
  /// In en, this message translates to:
  /// **'Look for chest movement and listen for breathing for no more than 10 seconds.'**
  String get guide_step_checkBreathingText;

  /// No description provided for @guide_step_checkBreathingWarning.
  ///
  /// In en, this message translates to:
  /// **'Gasping is not normal breathing.'**
  String get guide_step_checkBreathingWarning;

  /// No description provided for @guide_step_callEmergency.
  ///
  /// In en, this message translates to:
  /// **'Call emergency services'**
  String get guide_step_callEmergency;

  /// No description provided for @guide_step_callEmergencyText.
  ///
  /// In en, this message translates to:
  /// **'Ask someone to call Civil Protection. If alone, call before starting compressions.'**
  String get guide_step_callEmergencyText;

  /// No description provided for @guide_step_callEmergencyWarning.
  ///
  /// In en, this message translates to:
  /// **'Put the phone on speaker so your hands stay free.'**
  String get guide_step_callEmergencyWarning;

  /// No description provided for @guide_step_compressions.
  ///
  /// In en, this message translates to:
  /// **'Begin chest compressions'**
  String get guide_step_compressions;

  /// No description provided for @guide_step_compressionsText.
  ///
  /// In en, this message translates to:
  /// **'Place both hands at the center of the chest. Push hard and fast.'**
  String get guide_step_compressionsText;

  /// No description provided for @guide_step_compressionsWarning.
  ///
  /// In en, this message translates to:
  /// **'Aim for 100–120 compressions per minute.'**
  String get guide_step_compressionsWarning;

  /// No description provided for @quiz_eyebrow.
  ///
  /// In en, this message translates to:
  /// **'LEARN BY DOING'**
  String get quiz_eyebrow;

  /// No description provided for @quiz_title.
  ///
  /// In en, this message translates to:
  /// **'Train your emergency instincts'**
  String get quiz_title;

  /// No description provided for @quiz_description.
  ///
  /// In en, this message translates to:
  /// **'Short quizzes, clear explanations, and progress you can see.'**
  String get quiz_description;

  /// No description provided for @quiz_yourProgress.
  ///
  /// In en, this message translates to:
  /// **'YOUR PROGRESS'**
  String get quiz_yourProgress;

  /// No description provided for @quiz_mastery.
  ///
  /// In en, this message translates to:
  /// **'mastery'**
  String get quiz_mastery;

  /// No description provided for @quiz_safetyExplorer.
  ///
  /// In en, this message translates to:
  /// **'Safety Explorer'**
  String get quiz_safetyExplorer;

  /// No description provided for @quiz_nextLevelHint.
  ///
  /// In en, this message translates to:
  /// **'Complete one more quiz to reach the next level.'**
  String get quiz_nextLevelHint;

  /// No description provided for @quiz_beginner.
  ///
  /// In en, this message translates to:
  /// **'Beginner'**
  String get quiz_beginner;

  /// No description provided for @quiz_intermediate.
  ///
  /// In en, this message translates to:
  /// **'Intermediate'**
  String get quiz_intermediate;

  /// No description provided for @quiz_advanced.
  ///
  /// In en, this message translates to:
  /// **'Advanced'**
  String get quiz_advanced;

  /// No description provided for @quiz_start.
  ///
  /// In en, this message translates to:
  /// **'Start'**
  String get quiz_start;

  /// No description provided for @quiz_questionsCount.
  ///
  /// In en, this message translates to:
  /// **'{count} questions'**
  String quiz_questionsCount(Object count);

  /// No description provided for @quiz_generalFirstAid.
  ///
  /// In en, this message translates to:
  /// **'General First Aid'**
  String get quiz_generalFirstAid;

  /// No description provided for @quiz_emergencySituations.
  ///
  /// In en, this message translates to:
  /// **'Emergency Situations'**
  String get quiz_emergencySituations;

  /// No description provided for @quiz_burnsInjuries.
  ///
  /// In en, this message translates to:
  /// **'Burns & Injuries'**
  String get quiz_burnsInjuries;

  /// No description provided for @quiz_cprChoking.
  ///
  /// In en, this message translates to:
  /// **'CPR & Choking'**
  String get quiz_cprChoking;

  /// No description provided for @quiz_fireSafety.
  ///
  /// In en, this message translates to:
  /// **'Fire Safety'**
  String get quiz_fireSafety;

  /// No description provided for @quiz_publicSafety.
  ///
  /// In en, this message translates to:
  /// **'Public Safety'**
  String get quiz_publicSafety;

  /// No description provided for @quiz_questionCount.
  ///
  /// In en, this message translates to:
  /// **'Question {current} of {total}'**
  String quiz_questionCount(Object current, Object total);

  /// No description provided for @quiz_safetyFirst.
  ///
  /// In en, this message translates to:
  /// **'Safety first'**
  String get quiz_safetyFirst;

  /// No description provided for @quiz_categoryEmergency.
  ///
  /// In en, this message translates to:
  /// **'EMERGENCY SITUATIONS'**
  String get quiz_categoryEmergency;

  /// No description provided for @quiz_questionApproach.
  ///
  /// In en, this message translates to:
  /// **'What should you do first when approaching an injured person?'**
  String get quiz_questionApproach;

  /// No description provided for @quiz_answerDanger.
  ///
  /// In en, this message translates to:
  /// **'Check for immediate danger'**
  String get quiz_answerDanger;

  /// No description provided for @quiz_answerWater.
  ///
  /// In en, this message translates to:
  /// **'Give them water'**
  String get quiz_answerWater;

  /// No description provided for @quiz_answerMove.
  ///
  /// In en, this message translates to:
  /// **'Move them immediately'**
  String get quiz_answerMove;

  /// No description provided for @quiz_answerWait.
  ///
  /// In en, this message translates to:
  /// **'Wait for someone else'**
  String get quiz_answerWait;

  /// No description provided for @quiz_correctAnswer.
  ///
  /// In en, this message translates to:
  /// **'Correct answer'**
  String get quiz_correctAnswer;

  /// No description provided for @quiz_explanation.
  ///
  /// In en, this message translates to:
  /// **'Check for danger first so you do not become another casualty.'**
  String get quiz_explanation;

  /// No description provided for @quiz_submitAnswer.
  ///
  /// In en, this message translates to:
  /// **'Submit answer'**
  String get quiz_submitAnswer;

  /// No description provided for @quiz_viewResults.
  ///
  /// In en, this message translates to:
  /// **'View results'**
  String get quiz_viewResults;

  /// No description provided for @quiz_complete.
  ///
  /// In en, this message translates to:
  /// **'QUIZ COMPLETE'**
  String get quiz_complete;

  /// No description provided for @quiz_resultTitle.
  ///
  /// In en, this message translates to:
  /// **'Great emergency instincts!'**
  String get quiz_resultTitle;

  /// No description provided for @quiz_resultDescription.
  ///
  /// In en, this message translates to:
  /// **'You know the key principles. Review one answer to make them stick.'**
  String get quiz_resultDescription;

  /// No description provided for @quiz_finalScore.
  ///
  /// In en, this message translates to:
  /// **'Final score'**
  String get quiz_finalScore;

  /// No description provided for @quiz_accuracy.
  ///
  /// In en, this message translates to:
  /// **'Accuracy'**
  String get quiz_accuracy;

  /// No description provided for @quiz_correctCount.
  ///
  /// In en, this message translates to:
  /// **'{count} correct'**
  String quiz_correctCount(Object count);

  /// No description provided for @quiz_incorrectCount.
  ///
  /// In en, this message translates to:
  /// **'{count} incorrect'**
  String quiz_incorrectCount(Object count);

  /// No description provided for @quiz_retry.
  ///
  /// In en, this message translates to:
  /// **'Retry quiz'**
  String get quiz_retry;

  /// No description provided for @quiz_reviewAnswers.
  ///
  /// In en, this message translates to:
  /// **'Review answers'**
  String get quiz_reviewAnswers;

  /// No description provided for @news_eyebrow.
  ///
  /// In en, this message translates to:
  /// **'VERIFIED INFORMATION'**
  String get news_eyebrow;

  /// No description provided for @news_title.
  ///
  /// In en, this message translates to:
  /// **'News & emergency alerts'**
  String get news_title;

  /// No description provided for @news_description.
  ///
  /// In en, this message translates to:
  /// **'Source and timestamp shown on every update.'**
  String get news_description;

  /// No description provided for @news_searchPlaceholder.
  ///
  /// In en, this message translates to:
  /// **'Search updates or locations'**
  String get news_searchPlaceholder;

  /// No description provided for @news_filterAll.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get news_filterAll;

  /// No description provided for @news_filterAccidents.
  ///
  /// In en, this message translates to:
  /// **'Accidents'**
  String get news_filterAccidents;

  /// No description provided for @news_filterFires.
  ///
  /// In en, this message translates to:
  /// **'Fires'**
  String get news_filterFires;

  /// No description provided for @news_filterNaturalDisasters.
  ///
  /// In en, this message translates to:
  /// **'Natural Disasters'**
  String get news_filterNaturalDisasters;

  /// No description provided for @news_filterPublicSafety.
  ///
  /// In en, this message translates to:
  /// **'Public Safety'**
  String get news_filterPublicSafety;

  /// No description provided for @news_filterHealth.
  ///
  /// In en, this message translates to:
  /// **'Health'**
  String get news_filterHealth;

  /// No description provided for @news_informationFeed.
  ///
  /// In en, this message translates to:
  /// **'Information feed'**
  String get news_informationFeed;

  /// No description provided for @news_updated.
  ///
  /// In en, this message translates to:
  /// **'Updated {time} ago'**
  String news_updated(Object time);

  /// No description provided for @news_information.
  ///
  /// In en, this message translates to:
  /// **'INFORMATION'**
  String get news_information;

  /// No description provided for @news_warning.
  ///
  /// In en, this message translates to:
  /// **'WARNING'**
  String get news_warning;

  /// No description provided for @news_educationalSample.
  ///
  /// In en, this message translates to:
  /// **'Educational sample'**
  String get news_educationalSample;

  /// No description provided for @news_sampleTitle.
  ///
  /// In en, this message translates to:
  /// **'Seasonal preparedness: a practical household checklist'**
  String get news_sampleTitle;

  /// No description provided for @news_sampleDescription.
  ///
  /// In en, this message translates to:
  /// **'Simple steps for staying informed and preparing essential supplies.'**
  String get news_sampleDescription;

  /// No description provided for @news_sampleSource.
  ///
  /// In en, this message translates to:
  /// **'Public Safety Education'**
  String get news_sampleSource;

  /// No description provided for @news_sampleSecondTitle.
  ///
  /// In en, this message translates to:
  /// **'How to stay safe during reduced visibility'**
  String get news_sampleSecondTitle;

  /// No description provided for @news_sampleThirdTitle.
  ///
  /// In en, this message translates to:
  /// **'Emergency kit: six items to keep ready'**
  String get news_sampleThirdTitle;

  /// No description provided for @news_sampleThirdSource.
  ///
  /// In en, this message translates to:
  /// **'Civil Protection guidance'**
  String get news_sampleThirdSource;

  /// No description provided for @news_demoNotice.
  ///
  /// In en, this message translates to:
  /// **'Demonstration content only. No fictional event is presented as live.'**
  String get news_demoNotice;

  /// No description provided for @article_educationalSample.
  ///
  /// In en, this message translates to:
  /// **'EDUCATIONAL SAMPLE'**
  String get article_educationalSample;

  /// No description provided for @article_source.
  ///
  /// In en, this message translates to:
  /// **'SOURCE'**
  String get article_source;

  /// No description provided for @article_sampleSource.
  ///
  /// In en, this message translates to:
  /// **'Public safety education sample'**
  String get article_sampleSource;

  /// No description provided for @article_sampleBody.
  ///
  /// In en, this message translates to:
  /// **'Preparing in advance can make a stressful situation easier to manage. Keep verified emergency numbers available and discuss a simple family contact plan.'**
  String get article_sampleBody;

  /// No description provided for @article_recommendedActions.
  ///
  /// In en, this message translates to:
  /// **'Recommended actions'**
  String get article_recommendedActions;

  /// No description provided for @article_actionContacts.
  ///
  /// In en, this message translates to:
  /// **'Save trusted contacts on your device.'**
  String get article_actionContacts;

  /// No description provided for @article_actionTorch.
  ///
  /// In en, this message translates to:
  /// **'Keep a small torch and charged power bank.'**
  String get article_actionTorch;

  /// No description provided for @article_actionSources.
  ///
  /// In en, this message translates to:
  /// **'Follow verified government sources for live updates.'**
  String get article_actionSources;

  /// No description provided for @article_demoAlertNotice.
  ///
  /// In en, this message translates to:
  /// **'This demonstration article is not a real-time emergency alert.'**
  String get article_demoAlertNotice;

  /// No description provided for @contacts_eyebrow.
  ///
  /// In en, this message translates to:
  /// **'STORED ON THIS DEVICE'**
  String get contacts_eyebrow;

  /// No description provided for @contacts_title.
  ///
  /// In en, this message translates to:
  /// **'Your trusted circle'**
  String get contacts_title;

  /// No description provided for @contacts_description.
  ///
  /// In en, this message translates to:
  /// **'These people receive your SOS message and available location.'**
  String get contacts_description;

  /// No description provided for @contacts_privateLocal.
  ///
  /// In en, this message translates to:
  /// **'Private and locally stored'**
  String get contacts_privateLocal;

  /// No description provided for @contacts_emptyTitle.
  ///
  /// In en, this message translates to:
  /// **'No trusted contacts yet'**
  String get contacts_emptyTitle;

  /// No description provided for @contacts_emptyDescription.
  ///
  /// In en, this message translates to:
  /// **'Add someone you trust so SOS can reach them.'**
  String get contacts_emptyDescription;

  /// No description provided for @contacts_add.
  ///
  /// In en, this message translates to:
  /// **'Add trusted contact'**
  String get contacts_add;

  /// No description provided for @contacts_smsNotice.
  ///
  /// In en, this message translates to:
  /// **'Direct SMS sending depends on device support and platform permissions. iOS may require the system composer.'**
  String get contacts_smsNotice;

  /// No description provided for @contacts_removeConfirm.
  ///
  /// In en, this message translates to:
  /// **'Remove {name} from trusted contacts?'**
  String contacts_removeConfirm(Object name);

  /// No description provided for @contacts_removed.
  ///
  /// In en, this message translates to:
  /// **'Contact removed'**
  String get contacts_removed;

  /// No description provided for @contacts_editTitle.
  ///
  /// In en, this message translates to:
  /// **'Edit trusted contact'**
  String get contacts_editTitle;

  /// No description provided for @contacts_addTitle.
  ///
  /// In en, this message translates to:
  /// **'Add someone you trust'**
  String get contacts_addTitle;

  /// No description provided for @contacts_formDescription.
  ///
  /// In en, this message translates to:
  /// **'They will be included when you activate emergency SMS.'**
  String get contacts_formDescription;

  /// No description provided for @contacts_nameLabel.
  ///
  /// In en, this message translates to:
  /// **'Contact name'**
  String get contacts_nameLabel;

  /// No description provided for @contacts_namePlaceholder.
  ///
  /// In en, this message translates to:
  /// **'e.g. Amine Benali'**
  String get contacts_namePlaceholder;

  /// No description provided for @contacts_phoneLabel.
  ///
  /// In en, this message translates to:
  /// **'Phone number'**
  String get contacts_phoneLabel;

  /// No description provided for @contacts_phonePlaceholder.
  ///
  /// In en, this message translates to:
  /// **'+213 555 00 00 00'**
  String get contacts_phonePlaceholder;

  /// No description provided for @contacts_save.
  ///
  /// In en, this message translates to:
  /// **'Save contact'**
  String get contacts_save;

  /// No description provided for @numbers_eyebrow.
  ///
  /// In en, this message translates to:
  /// **'AVAILABLE OFFLINE'**
  String get numbers_eyebrow;

  /// No description provided for @numbers_title.
  ///
  /// In en, this message translates to:
  /// **'Government emergency services'**
  String get numbers_title;

  /// No description provided for @numbers_description.
  ///
  /// In en, this message translates to:
  /// **'Choose the service that best matches the situation.'**
  String get numbers_description;

  /// No description provided for @numbers_beforePublication.
  ///
  /// In en, this message translates to:
  /// **'Before publication'**
  String get numbers_beforePublication;

  /// No description provided for @numbers_verificationNotice.
  ///
  /// In en, this message translates to:
  /// **'Emergency numbers should be re-verified with official Algerian government sources before release.'**
  String get numbers_verificationNotice;

  /// No description provided for @numbers_governmentService.
  ///
  /// In en, this message translates to:
  /// **'GOVERNMENT SERVICE'**
  String get numbers_governmentService;

  /// No description provided for @service_police.
  ///
  /// In en, this message translates to:
  /// **'Police'**
  String get service_police;

  /// No description provided for @service_policeNote.
  ///
  /// In en, this message translates to:
  /// **'Public safety and police emergency'**
  String get service_policeNote;

  /// No description provided for @service_civilProtection.
  ///
  /// In en, this message translates to:
  /// **'Civil Protection'**
  String get service_civilProtection;

  /// No description provided for @service_civilProtectionNote.
  ///
  /// In en, this message translates to:
  /// **'Fire, rescue and medical response'**
  String get service_civilProtectionNote;

  /// No description provided for @service_gendarmerie.
  ///
  /// In en, this message translates to:
  /// **'National Gendarmerie'**
  String get service_gendarmerie;

  /// No description provided for @service_gendarmerieNote.
  ///
  /// In en, this message translates to:
  /// **'Emergency support outside urban areas'**
  String get service_gendarmerieNote;

  /// No description provided for @service_calling.
  ///
  /// In en, this message translates to:
  /// **'Opening phone for {number}'**
  String service_calling(Object number);

  /// No description provided for @sos_active.
  ///
  /// In en, this message translates to:
  /// **'EMERGENCY MODE ACTIVE'**
  String get sos_active;

  /// No description provided for @sos_sending.
  ///
  /// In en, this message translates to:
  /// **'Sending emergency message…'**
  String get sos_sending;

  /// No description provided for @sos_sent.
  ///
  /// In en, this message translates to:
  /// **'Message submitted'**
  String get sos_sent;

  /// No description provided for @sos_sendingDescription.
  ///
  /// In en, this message translates to:
  /// **'Contacting {count} trusted contacts with your available location.'**
  String sos_sendingDescription(Object count);

  /// No description provided for @sos_sentDescription.
  ///
  /// In en, this message translates to:
  /// **'SMS submission confirmed for {count} contacts. Delivery is not guaranteed.'**
  String sos_sentDescription(Object count);

  /// No description provided for @sos_emergencySms.
  ///
  /// In en, this message translates to:
  /// **'Emergency SMS'**
  String get sos_emergencySms;

  /// No description provided for @sos_submittedNetwork.
  ///
  /// In en, this message translates to:
  /// **'Submitted to mobile network'**
  String get sos_submittedNetwork;

  /// No description provided for @sos_sendingNow.
  ///
  /// In en, this message translates to:
  /// **'Sending now'**
  String get sos_sendingNow;

  /// No description provided for @sos_currentLocation.
  ///
  /// In en, this message translates to:
  /// **'Current location'**
  String get sos_currentLocation;

  /// No description provided for @sos_locationAttached.
  ///
  /// In en, this message translates to:
  /// **'Location attached · accuracy {accuracy} m'**
  String sos_locationAttached(Object accuracy);

  /// No description provided for @sos_trustedContacts.
  ///
  /// In en, this message translates to:
  /// **'Trusted contacts'**
  String get sos_trustedContacts;

  /// No description provided for @sos_noneConfigured.
  ///
  /// In en, this message translates to:
  /// **'None configured'**
  String get sos_noneConfigured;

  /// No description provided for @sos_needImmediateHelp.
  ///
  /// In en, this message translates to:
  /// **'NEED IMMEDIATE HELP?'**
  String get sos_needImmediateHelp;

  /// No description provided for @sos_callEmergency.
  ///
  /// In en, this message translates to:
  /// **'Call emergency services'**
  String get sos_callEmergency;

  /// No description provided for @sos_returnHome.
  ///
  /// In en, this message translates to:
  /// **'Return home'**
  String get sos_returnHome;

  /// No description provided for @siren_active.
  ///
  /// In en, this message translates to:
  /// **'SIREN ACTIVE'**
  String get siren_active;

  /// No description provided for @siren_stopped.
  ///
  /// In en, this message translates to:
  /// **'SIREN STOPPED'**
  String get siren_stopped;

  /// No description provided for @siren_ready.
  ///
  /// In en, this message translates to:
  /// **'READY'**
  String get siren_ready;

  /// No description provided for @siren_helpFindYou.
  ///
  /// In en, this message translates to:
  /// **'Help others find you'**
  String get siren_helpFindYou;

  /// No description provided for @siren_attractAttention.
  ///
  /// In en, this message translates to:
  /// **'Attract attention nearby'**
  String get siren_attractAttention;

  /// No description provided for @siren_activeDescription.
  ///
  /// In en, this message translates to:
  /// **'A loud repeating alert is playing. Keep the device uncovered.'**
  String get siren_activeDescription;

  /// No description provided for @siren_inactiveDescription.
  ///
  /// In en, this message translates to:
  /// **'The siren is independent from SOS and does not send a message.'**
  String get siren_inactiveDescription;

  /// No description provided for @siren_stop.
  ///
  /// In en, this message translates to:
  /// **'Stop siren'**
  String get siren_stop;

  /// No description provided for @siren_start.
  ///
  /// In en, this message translates to:
  /// **'Start siren'**
  String get siren_start;

  /// No description provided for @siren_protectHearing.
  ///
  /// In en, this message translates to:
  /// **'Protect your hearing'**
  String get siren_protectHearing;

  /// No description provided for @siren_hearingWarning.
  ///
  /// In en, this message translates to:
  /// **'Hold the device away from your ears when the siren is active.'**
  String get siren_hearingWarning;

  /// No description provided for @settings_eyebrow.
  ///
  /// In en, this message translates to:
  /// **'YOUR EXPERIENCE'**
  String get settings_eyebrow;

  /// No description provided for @settings_title.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings_title;

  /// No description provided for @settings_description.
  ///
  /// In en, this message translates to:
  /// **'Manage language, appearance, emergency data and offline access.'**
  String get settings_description;

  /// No description provided for @settings_preferences.
  ///
  /// In en, this message translates to:
  /// **'PREFERENCES'**
  String get settings_preferences;

  /// No description provided for @settings_emergencyOffline.
  ///
  /// In en, this message translates to:
  /// **'EMERGENCY & OFFLINE'**
  String get settings_emergencyOffline;

  /// No description provided for @settings_information.
  ///
  /// In en, this message translates to:
  /// **'INFORMATION'**
  String get settings_information;

  /// No description provided for @settings_language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get settings_language;

  /// No description provided for @settings_appearance.
  ///
  /// In en, this message translates to:
  /// **'Appearance'**
  String get settings_appearance;

  /// No description provided for @settings_darkMode.
  ///
  /// In en, this message translates to:
  /// **'Dark mode'**
  String get settings_darkMode;

  /// No description provided for @settings_lightMode.
  ///
  /// In en, this message translates to:
  /// **'Light mode'**
  String get settings_lightMode;

  /// No description provided for @settings_savedContacts.
  ///
  /// In en, this message translates to:
  /// **'{count} contacts saved'**
  String settings_savedContacts(Object count);

  /// No description provided for @settings_downloadedGuides.
  ///
  /// In en, this message translates to:
  /// **'{count} guides downloaded'**
  String settings_downloadedGuides(Object count);

  /// No description provided for @settings_privacyPermissions.
  ///
  /// In en, this message translates to:
  /// **'Privacy & permissions'**
  String get settings_privacyPermissions;

  /// No description provided for @settings_privacyDescription.
  ///
  /// In en, this message translates to:
  /// **'Your data and controls'**
  String get settings_privacyDescription;

  /// No description provided for @settings_about.
  ///
  /// In en, this message translates to:
  /// **'About As3ifni'**
  String get settings_about;

  /// No description provided for @settings_aboutDescription.
  ///
  /// In en, this message translates to:
  /// **'Mission, version and credits'**
  String get settings_aboutDescription;

  /// No description provided for @settings_adminDashboard.
  ///
  /// In en, this message translates to:
  /// **'Admin dashboard'**
  String get settings_adminDashboard;

  /// No description provided for @settings_adminDescription.
  ///
  /// In en, this message translates to:
  /// **'Content management preview'**
  String get settings_adminDescription;

  /// No description provided for @settings_version.
  ///
  /// In en, this message translates to:
  /// **'Version 1.0.0 · Built for safer communities'**
  String get settings_version;

  /// No description provided for @language_title.
  ///
  /// In en, this message translates to:
  /// **'Choose your language'**
  String get language_title;

  /// No description provided for @language_description.
  ///
  /// In en, this message translates to:
  /// **'The layout and navigation direction update automatically.'**
  String get language_description;

  /// No description provided for @language_english.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get language_english;

  /// No description provided for @language_englishDirection.
  ///
  /// In en, this message translates to:
  /// **'English interface · Left to right'**
  String get language_englishDirection;

  /// No description provided for @language_arabic.
  ///
  /// In en, this message translates to:
  /// **'العربية'**
  String get language_arabic;

  /// No description provided for @language_arabicDirection.
  ///
  /// In en, this message translates to:
  /// **'واجهة عربية · من اليمين إلى اليسار'**
  String get language_arabicDirection;

  /// No description provided for @language_apply.
  ///
  /// In en, this message translates to:
  /// **'Apply language'**
  String get language_apply;

  /// No description provided for @offline_eyebrow.
  ///
  /// In en, this message translates to:
  /// **'ESSENTIAL GUIDANCE ANYWHERE'**
  String get offline_eyebrow;

  /// No description provided for @offline_title.
  ///
  /// In en, this message translates to:
  /// **'Offline content'**
  String get offline_title;

  /// No description provided for @offline_description.
  ///
  /// In en, this message translates to:
  /// **'Downloaded guides stay available without internet.'**
  String get offline_description;

  /// No description provided for @offline_storage.
  ///
  /// In en, this message translates to:
  /// **'Offline content storage'**
  String get offline_storage;

  /// No description provided for @offline_availableCount.
  ///
  /// In en, this message translates to:
  /// **'{count} guides available offline'**
  String offline_availableCount(Object count);

  /// No description provided for @offline_downloaded.
  ///
  /// In en, this message translates to:
  /// **'Downloaded'**
  String get offline_downloaded;

  /// No description provided for @offline_itemsCount.
  ///
  /// In en, this message translates to:
  /// **'{count} items'**
  String offline_itemsCount(Object count);

  /// No description provided for @offline_updatedReady.
  ///
  /// In en, this message translates to:
  /// **'Updated recently · Offline ready'**
  String get offline_updatedReady;

  /// No description provided for @offline_availableGuides.
  ///
  /// In en, this message translates to:
  /// **'Available guides'**
  String get offline_availableGuides;

  /// No description provided for @offline_wifiRecommended.
  ///
  /// In en, this message translates to:
  /// **'Wi-Fi recommended'**
  String get offline_wifiRecommended;

  /// No description provided for @offline_sizeIllustrations.
  ///
  /// In en, this message translates to:
  /// **'{size} MB · Includes illustrations'**
  String offline_sizeIllustrations(Object size);

  /// No description provided for @privacy_eyebrow.
  ///
  /// In en, this message translates to:
  /// **'CLEAR, RESPECTFUL CONTROLS'**
  String get privacy_eyebrow;

  /// No description provided for @privacy_title.
  ///
  /// In en, this message translates to:
  /// **'Your privacy matters'**
  String get privacy_title;

  /// No description provided for @privacy_description.
  ///
  /// In en, this message translates to:
  /// **'You stay in control of saved contacts, location and permissions.'**
  String get privacy_description;

  /// No description provided for @privacy_trustedContacts.
  ///
  /// In en, this message translates to:
  /// **'Trusted contacts'**
  String get privacy_trustedContacts;

  /// No description provided for @privacy_trustedContactsDescription.
  ///
  /// In en, this message translates to:
  /// **'Names and phone numbers remain stored locally on your device.'**
  String get privacy_trustedContactsDescription;

  /// No description provided for @privacy_location.
  ///
  /// In en, this message translates to:
  /// **'Location access'**
  String get privacy_location;

  /// No description provided for @privacy_locationDescription.
  ///
  /// In en, this message translates to:
  /// **'Location is requested during SOS so it can be included when available.'**
  String get privacy_locationDescription;

  /// No description provided for @privacy_emergencyMessages.
  ///
  /// In en, this message translates to:
  /// **'Emergency messages'**
  String get privacy_emergencyMessages;

  /// No description provided for @privacy_emergencyMessagesDescription.
  ///
  /// In en, this message translates to:
  /// **'Direct SMS depends on Android permissions. iOS may open the system composer.'**
  String get privacy_emergencyMessagesDescription;

  /// No description provided for @privacy_dataSharing.
  ///
  /// In en, this message translates to:
  /// **'Data sharing'**
  String get privacy_dataSharing;

  /// No description provided for @privacy_dataSharingDescription.
  ///
  /// In en, this message translates to:
  /// **'Only the information shown in the emergency message is shared with selected contacts.'**
  String get privacy_dataSharingDescription;

  /// No description provided for @privacy_openPermissions.
  ///
  /// In en, this message translates to:
  /// **'Open device permissions'**
  String get privacy_openPermissions;

  /// No description provided for @about_version.
  ///
  /// In en, this message translates to:
  /// **'أسعفني · Version 1.0.0'**
  String get about_version;

  /// No description provided for @about_description.
  ///
  /// In en, this message translates to:
  /// **'As3ifni helps people act with greater confidence during emergencies through clear guidance, local contacts and accessible public-safety information.'**
  String get about_description;

  /// No description provided for @about_mission.
  ///
  /// In en, this message translates to:
  /// **'Our mission is to make the first moments of an emergency less confusing for everyone.'**
  String get about_mission;

  /// No description provided for @about_acknowledgments.
  ///
  /// In en, this message translates to:
  /// **'Acknowledgments'**
  String get about_acknowledgments;

  /// No description provided for @about_medicalReview.
  ///
  /// In en, this message translates to:
  /// **'Medical guidance must be reviewed by qualified first-aid professionals before publication. Emergency service information should be verified with official Algerian sources.'**
  String get about_medicalReview;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
