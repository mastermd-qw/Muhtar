import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';

import '/backend/supabase/supabase.dart';
import '/auth/base_auth_user_provider.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? MainPageWidget() : OnBoardingPageWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.loggedIn
              ? MainPageWidget()
              : OnBoardingPageWidget(),
        ),
        FFRoute(
          name: 'OnBoardingPage',
          path: '/onBoardingPage',
          builder: (context, params) => OnBoardingPageWidget(),
        ),
        FFRoute(
          name: 'SignUpPage',
          path: '/signUpPage',
          builder: (context, params) => SignUpPageWidget(),
        ),
        FFRoute(
          name: 'LoginPage',
          path: '/loginPage',
          builder: (context, params) => LoginPageWidget(),
        ),
        FFRoute(
          name: 'MainPage',
          path: '/mainPage',
          builder: (context, params) => MainPageWidget(),
        ),
        FFRoute(
          name: 'ProfileSettingsPage',
          path: '/profileSettingsPage',
          builder: (context, params) => ProfileSettingsPageWidget(),
        ),
        FFRoute(
          name: 'TheChoosingPageTabuk',
          path: '/theChoosingPageTabuk',
          builder: (context, params) => TheChoosingPageTabukWidget(
            imagePath: params.getParam('imagePath', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'LeaderBoardPageChoosers',
          path: '/leaderBoardPageChoosers',
          builder: (context, params) => LeaderBoardPageChoosersWidget(),
        ),
        FFRoute(
          name: 'LeaderBoardPageReceivers',
          path: '/leaderBoardPageReceivers',
          builder: (context, params) => LeaderBoardPageReceiversWidget(),
        ),
        FFRoute(
          name: 'TheChoosingPageRiyadh',
          path: '/theChoosingPageRiyadh',
          builder: (context, params) => TheChoosingPageRiyadhWidget(
            imagePath: params.getParam('imagePath', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'TheChoosingPageMecca',
          path: '/theChoosingPageMecca',
          builder: (context, params) => TheChoosingPageMeccaWidget(
            imagePath: params.getParam('imagePath', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'TheChoosingPageMedina',
          path: '/theChoosingPageMedina',
          builder: (context, params) => TheChoosingPageMedinaWidget(
            imagePath: params.getParam('imagePath', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'TheChoosingPageEasternProvince',
          path: '/theChoosingPageEasternProvince',
          builder: (context, params) => TheChoosingPageEasternProvinceWidget(
            imagePath: params.getParam('imagePath', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'TheChoosingPageAseer',
          path: '/theChoosingPageAseer',
          builder: (context, params) => TheChoosingPageAseerWidget(
            imagePath: params.getParam('imagePath', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'TheChoosingPageQassim',
          path: '/theChoosingPageQassim',
          builder: (context, params) => TheChoosingPageQassimWidget(
            imagePath: params.getParam('imagePath', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'TheChoosingPageHail',
          path: '/theChoosingPageHail',
          builder: (context, params) => TheChoosingPageHailWidget(
            imagePath: params.getParam('imagePath', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'TheChoosingPageAlJawf',
          path: '/theChoosingPageAlJawf',
          builder: (context, params) => TheChoosingPageAlJawfWidget(
            imagePath: params.getParam('imagePath', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'TheChoosingPageAlBahah',
          path: '/theChoosingPageAlBahah',
          builder: (context, params) => TheChoosingPageAlBahahWidget(
            imagePath: params.getParam('imagePath', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'TheChoosingPageNajran',
          path: '/theChoosingPageNajran',
          builder: (context, params) => TheChoosingPageNajranWidget(
            imagePath: params.getParam('imagePath', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'TheChoosingPageJazan',
          path: '/theChoosingPageJazan',
          builder: (context, params) => TheChoosingPageJazanWidget(
            imagePath: params.getParam('imagePath', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'TheChoosingPageNorthernBorders',
          path: '/theChoosingPageNorthernBorders',
          builder: (context, params) => TheChoosingPageNorthernBordersWidget(
            imagePath: params.getParam('imagePath', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'MainPageTabuk',
          path: '/mainPageTabuk',
          builder: (context, params) => MainPageTabukWidget(),
        ),
        FFRoute(
          name: 'MainPageRiyadh',
          path: '/mainPageRiyadh',
          builder: (context, params) => MainPageRiyadhWidget(),
        ),
        FFRoute(
          name: 'MainPageMecca',
          path: '/mainPageMecca',
          builder: (context, params) => MainPageMeccaWidget(),
        ),
        FFRoute(
          name: 'MainPageMedina',
          path: '/mainPageMedina',
          builder: (context, params) => MainPageMedinaWidget(),
        ),
        FFRoute(
          name: 'MainPageEasternProvince',
          path: '/mainPageEasternProvince',
          builder: (context, params) => MainPageEasternProvinceWidget(),
        ),
        FFRoute(
          name: 'MainPageAseer',
          path: '/mainPageAseer',
          builder: (context, params) => MainPageAseerWidget(),
        ),
        FFRoute(
          name: 'MainPageQassim',
          path: '/mainPageQassim',
          builder: (context, params) => MainPageQassimWidget(),
        ),
        FFRoute(
          name: 'MainPageHail',
          path: '/mainPageHail',
          builder: (context, params) => MainPageHailWidget(),
        ),
        FFRoute(
          name: 'MainPageAlJawf',
          path: '/mainPageAlJawf',
          builder: (context, params) => MainPageAlJawfWidget(),
        ),
        FFRoute(
          name: 'MainPageAlBahah',
          path: '/mainPageAlBahah',
          builder: (context, params) => MainPageAlBahahWidget(),
        ),
        FFRoute(
          name: 'MainPageNajran',
          path: '/mainPageNajran',
          builder: (context, params) => MainPageNajranWidget(),
        ),
        FFRoute(
          name: 'MainPageJazan',
          path: '/mainPageJazan',
          builder: (context, params) => MainPageJazanWidget(),
        ),
        FFRoute(
          name: 'MainPageNorthernBorders',
          path: '/mainPageNorthernBorders',
          builder: (context, params) => MainPageNorthernBordersWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
    List<String>? collectionNamePath,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(param, type, isList,
        collectionNamePath: collectionNamePath);
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.location);
            return '/onBoardingPage';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Colors.transparent,
                  child: Image.asset(
                    'assets/images/splashscreen.gif',
                    fit: BoxFit.cover,
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouter.of(context).location;
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}
