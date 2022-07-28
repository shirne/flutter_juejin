
import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'jj_localizations_en.dart';
import 'jj_localizations_zh.dart';

/// Callers can lookup localized strings with an instance of JJLocalizations returned
/// by `JJLocalizations.of(context)`.
///
/// Applications need to include `JJLocalizations.delegate()` in their app's
/// localizationDelegates list, and the locales they support in the app's
/// supportedLocales list. For example:
///
/// ```
/// import 'gen/jj_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: JJLocalizations.localizationsDelegates,
///   supportedLocales: JJLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # rest of dependencies
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
/// be consistent with the languages listed in the JJLocalizations.supportedLocales
/// property.
abstract class JJLocalizations {
  JJLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static JJLocalizations? of(BuildContext context) {
    return Localizations.of<JJLocalizations>(context, JJLocalizations);
  }

  static const LocalizationsDelegate<JJLocalizations> delegate = _JJLocalizationsDelegate();

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
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('zh')
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'Juejin'**
  String get appTitle;

  /// No description provided for @exceptionError.
  ///
  /// In en, this message translates to:
  /// **'error'**
  String get exceptionError;

  /// No description provided for @exceptionFailed.
  ///
  /// In en, this message translates to:
  /// **'failed'**
  String get exceptionFailed;

  /// No description provided for @exceptionErrorWidget.
  ///
  /// In en, this message translates to:
  /// **'Exception thrown during building this widget...'**
  String get exceptionErrorWidget;

  /// No description provided for @exceptionRouteNotFound.
  ///
  /// In en, this message translates to:
  /// **' route not found。'**
  String get exceptionRouteNotFound;

  /// No description provided for @exceptionRouteUnknown.
  ///
  /// In en, this message translates to:
  /// **'Unknown'**
  String get exceptionRouteUnknown;

  /// No description provided for @listEmpty.
  ///
  /// In en, this message translates to:
  /// **'It\'s empty here.'**
  String get listEmpty;

  /// No description provided for @listLoadingMore.
  ///
  /// In en, this message translates to:
  /// **'Loading more content...'**
  String get listLoadingMore;

  /// No description provided for @listNetworkErrorClickRetry.
  ///
  /// In en, this message translates to:
  /// **'Network exceptions thrown. Click to retry.'**
  String get listNetworkErrorClickRetry;

  /// No description provided for @listNoMoreToLoad.
  ///
  /// In en, this message translates to:
  /// **'Nothing left.'**
  String get listNoMoreToLoad;

  /// No description provided for @listRefreshing.
  ///
  /// In en, this message translates to:
  /// **'Refreshing...'**
  String get listRefreshing;

  /// No description provided for @listRefreshWaiting.
  ///
  /// In en, this message translates to:
  /// **'Pull down more to refresh'**
  String get listRefreshWaiting;

  /// No description provided for @listRefreshArmed.
  ///
  /// In en, this message translates to:
  /// **'Release to refresh'**
  String get listRefreshArmed;

  /// No description provided for @listRefreshSucceed.
  ///
  /// In en, this message translates to:
  /// **'Refreshed with new contents'**
  String get listRefreshSucceed;

  /// No description provided for @listRefreshFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to refresh'**
  String get listRefreshFailed;

  /// No description provided for @webViewTitle.
  ///
  /// In en, this message translates to:
  /// **'Web page'**
  String get webViewTitle;

  /// No description provided for @tabHome.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get tabHome;

  /// No description provided for @tabHot.
  ///
  /// In en, this message translates to:
  /// **'Hot'**
  String get tabHot;

  /// No description provided for @tabMy.
  ///
  /// In en, this message translates to:
  /// **'My'**
  String get tabMy;

  /// No description provided for @unfold.
  ///
  /// In en, this message translates to:
  /// **'Unfold'**
  String get unfold;

  /// No description provided for @ad.
  ///
  /// In en, this message translates to:
  /// **'Ad'**
  String get ad;

  /// No description provided for @like.
  ///
  /// In en, this message translates to:
  /// **'Like'**
  String get like;

  /// No description provided for @comment.
  ///
  /// In en, this message translates to:
  /// **'Comment'**
  String get comment;

  /// No description provided for @favourite.
  ///
  /// In en, this message translates to:
  /// **'Favourite'**
  String get favourite;

  /// No description provided for @follow.
  ///
  /// In en, this message translates to:
  /// **'Follow'**
  String get follow;

  /// No description provided for @likes.
  ///
  /// In en, this message translates to:
  /// **' likes'**
  String get likes;

  /// No description provided for @liked.
  ///
  /// In en, this message translates to:
  /// **'and others liked'**
  String get liked;

  /// No description provided for @followed.
  ///
  /// In en, this message translates to:
  /// **'Followed'**
  String get followed;

  /// No description provided for @unfollowed.
  ///
  /// In en, this message translates to:
  /// **'Unfollowed'**
  String get unfollowed;

  /// No description provided for @views.
  ///
  /// In en, this message translates to:
  /// **'Views'**
  String get views;

  /// No description provided for @signInOrUp.
  ///
  /// In en, this message translates to:
  /// **'Sign in/Sign up'**
  String get signInOrUp;
}

class _JJLocalizationsDelegate extends LocalizationsDelegate<JJLocalizations> {
  const _JJLocalizationsDelegate();

  @override
  Future<JJLocalizations> load(Locale locale) {
    return SynchronousFuture<JJLocalizations>(lookupJJLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'zh'].contains(locale.languageCode);

  @override
  bool shouldReload(_JJLocalizationsDelegate old) => false;
}

JJLocalizations lookupJJLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return JJLocalizationsEn();
    case 'zh': return JJLocalizationsZh();
  }

  throw FlutterError(
    'JJLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
