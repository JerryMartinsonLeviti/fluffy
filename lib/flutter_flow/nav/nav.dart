import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';

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

  bool showSplashImage = true;

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) => SplashPageWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => SplashPageWidget(),
        ),
        FFRoute(
          name: 'HomePage',
          path: '/homePage',
          builder: (context, params) => HomePageWidget(),
        ),
        FFRoute(
          name: 'Settings2EditProfile',
          path: '/settings2EditProfile',
          builder: (context, params) => Settings2EditProfileWidget(),
        ),
        FFRoute(
          name: 'Step2-SearchResultShopping',
          path: '/step2SearchResultShopping',
          builder: (context, params) => Step2SearchResultShoppingWidget(),
        ),
        FFRoute(
          name: 'ProductDetailPage',
          path: '/productDetailPage',
          builder: (context, params) => ProductDetailPageWidget(),
        ),
        FFRoute(
          name: 'PlannerDashboard',
          path: '/plannerDashboard',
          builder: (context, params) => PlannerDashboardWidget(),
        ),
        FFRoute(
          name: 'ManageEvents_MyEvents',
          path: '/manageEventsMyEvents',
          builder: (context, params) => ManageEventsMyEventsWidget(),
        ),
        FFRoute(
          name: 'AssetsPageDashboard',
          path: '/assetsPageDashboard',
          builder: (context, params) => AssetsPageDashboardWidget(),
        ),
        FFRoute(
          name: 'MessagesByEvent',
          path: '/messagesByEvent',
          builder: (context, params) => MessagesByEventWidget(
            userInfoRow: params.getParam<UserInfosRow>(
              'userInfoRow',
              ParamType.SupabaseRow,
            ),
          ),
        ),
        FFRoute(
          name: 'MarketplaceFirstPage',
          path: '/marketplaceFirstPage',
          builder: (context, params) => MarketplaceFirstPageWidget(),
        ),
        FFRoute(
          name: 'VisionBoardAddToDrawer',
          path: '/visionBoardAddToDrawer',
          builder: (context, params) => VisionBoardAddToDrawerWidget(),
        ),
        FFRoute(
          name: 'VisionBoard',
          path: '/visionBoard',
          builder: (context, params) => VisionBoardWidget(),
        ),
        FFRoute(
          name: 'SecurityShield',
          path: '/securityShield',
          builder: (context, params) => SecurityShieldWidget(),
        ),
        FFRoute(
          name: 'RequesttoBookCart',
          path: '/requesttoBookCart',
          builder: (context, params) => RequesttoBookCartWidget(
            cartRow: params.getParam<CartsRow>(
              'cartRow',
              ParamType.SupabaseRow,
            ),
            eventRow: params.getParam<EventsRow>(
              'eventRow',
              ParamType.SupabaseRow,
            ),
          ),
        ),
        FFRoute(
          name: 'PlannerSideNavBar',
          path: '/plannerSideNavBar',
          builder: (context, params) => PlannerSideNavBarWidget(),
        ),
        FFRoute(
          name: 'PaymentModal',
          path: '/paymentModal',
          builder: (context, params) => PaymentModalWidget(),
        ),
        FFRoute(
          name: 'RFP_SentPage',
          path: '/rFPSentPage',
          builder: (context, params) => RFPSentPageWidget(),
        ),
        FFRoute(
          name: 'VendorSideNavBar',
          path: '/vendorSideNavBar',
          builder: (context, params) => VendorSideNavBarWidget(),
        ),
        FFRoute(
          name: 'InvoiceTemplate',
          path: '/invoiceTemplate',
          builder: (context, params) => InvoiceTemplateWidget(),
        ),
        FFRoute(
          name: 'VendorRFP_Hub',
          path: '/vendorRFPHub',
          builder: (context, params) => VendorRFPHubWidget(),
        ),
        FFRoute(
          name: 'VendorRFP_Detail',
          path: '/vendorRFPDetail',
          builder: (context, params) => VendorRFPDetailWidget(),
        ),
        FFRoute(
          name: 'VendorRFP_AcceptanceSent',
          path: '/vendorRFPAcceptanceSent',
          builder: (context, params) => VendorRFPAcceptanceSentWidget(),
        ),
        FFRoute(
          name: 'LiaisonDashboard',
          path: '/liaisonDashboard',
          builder: (context, params) => LiaisonDashboardWidget(),
        ),
        FFRoute(
          name: 'LiaisonAllEventsList',
          path: '/liaisonAllEventsList',
          builder: (context, params) => LiaisonAllEventsListWidget(),
        ),
        FFRoute(
          name: 'LiaisonTaskList',
          path: '/liaisonTaskList',
          builder: (context, params) => LiaisonTaskListWidget(),
        ),
        FFRoute(
          name: 'VenProductOnboarding-PackageState1',
          path: '/venProductOnboardingPackageState1',
          builder: (context, params) =>
              VenProductOnboardingPackageState1Widget(),
        ),
        FFRoute(
          name: 'VenProductOnboarding-PackageState2',
          path: '/venProductOnboardingPackageState2',
          builder: (context, params) =>
              VenProductOnboardingPackageState2Widget(),
        ),
        FFRoute(
          name: 'VenProductOnboarding-PackageState3',
          path: '/venProductOnboardingPackageState3',
          builder: (context, params) =>
              VenProductOnboardingPackageState3Widget(),
        ),
        FFRoute(
          name: 'VenProductOnboarding-PackageState4',
          path: '/venProductOnboardingPackageState4',
          builder: (context, params) =>
              VenProductOnboardingPackageState4Widget(),
        ),
        FFRoute(
          name: 'VenProductOnboarding-PackageState5',
          path: '/venProductOnboardingPackageState5',
          builder: (context, params) =>
              VenProductOnboardingPackageState5Widget(),
        ),
        FFRoute(
          name: 'ExpandablTest',
          path: '/expandablTest',
          builder: (context, params) => ExpandablTestWidget(),
        ),
        FFRoute(
          name: 'Step1-CreateEvent',
          path: '/step1CreateEvent',
          builder: (context, params) => Step1CreateEventWidget(),
        ),
        FFRoute(
          name: 'EventCartReviewPage',
          path: '/eventCartReviewPage',
          builder: (context, params) => EventCartReviewPageWidget(
            eventRow: params.getParam<EventsRow>(
              'eventRow',
              ParamType.SupabaseRow,
            ),
          ),
        ),
        FFRoute(
          name: 'Step3_5-FavoritesPage',
          path: '/step35FavoritesPage',
          builder: (context, params) => Step35FavoritesPageWidget(),
        ),
        FFRoute(
          name: 'VendorCartDashboard',
          path: '/vendorCartDashboard',
          builder: (context, params) => VendorCartDashboardWidget(),
        ),
        FFRoute(
          name: 'PricePredictorCard',
          path: '/pricePredictorCard',
          builder: (context, params) => PricePredictorCardWidget(
            eventRow: params.getParam<EventsRow>(
              'eventRow',
              ParamType.SupabaseRow,
            ),
          ),
        ),
        FFRoute(
          name: 'LiaisonTaskPage-Details',
          path: '/liaisonTaskPageDetails',
          builder: (context, params) => LiaisonTaskPageDetailsWidget(),
        ),
        FFRoute(
          name: 'LiaisonTaskPage-TasksPage',
          path: '/liaisonTaskPageTasksPage',
          builder: (context, params) => LiaisonTaskPageTasksPageWidget(),
        ),
        FFRoute(
          name: 'VendorProductConfig',
          path: '/vendorProductConfig',
          builder: (context, params) => VendorProductConfigWidget(),
        ),
        FFRoute(
          name: 'MarkdownEntryWidgetTest',
          path: '/markdownEntryWidgetTest',
          builder: (context, params) => MarkdownEntryWidgetTestWidget(),
        ),
        FFRoute(
          name: 'SearchBar_BudgetModal',
          path: '/searchBarBudgetModal',
          builder: (context, params) => SearchBarBudgetModalWidget(),
        ),
        FFRoute(
          name: 'SearchBar_LocationModal',
          path: '/searchBarLocationModal',
          builder: (context, params) => SearchBarLocationModalWidget(),
        ),
        FFRoute(
          name: 'SearchBar_CategoryModal',
          path: '/searchBarCategoryModal',
          builder: (context, params) => SearchBarCategoryModalWidget(),
        ),
        FFRoute(
          name: 'BookingConfirmed_Step1_Email',
          path: '/bookingConfirmedStep1Email',
          builder: (context, params) => BookingConfirmedStep1EmailWidget(),
        ),
        FFRoute(
          name: 'BookingConfirmedStep2_LogIn',
          path: '/bookingConfirmedStep2LogIn',
          builder: (context, params) => BookingConfirmedStep2LogInWidget(),
        ),
        FFRoute(
          name: 'BookingConfirmed_Step3Dashboard',
          path: '/bookingConfirmedStep3Dashboard',
          builder: (context, params) => BookingConfirmedStep3DashboardWidget(),
        ),
        FFRoute(
          name: 'WYSIWYG_EventPage',
          path: '/wYSIWYGEventPage',
          builder: (context, params) => WYSIWYGEventPageWidget(),
        ),
        FFRoute(
          name: 'Cart_AddingProducttoEvent_needstooltip',
          path: '/cartAddingProducttoEventNeedstooltip',
          builder: (context, params) =>
              CartAddingProducttoEventNeedstooltipWidget(),
        ),
        FFRoute(
          name: 'RSVP',
          path: '/rsvp',
          builder: (context, params) => RsvpWidget(),
        ),
        FFRoute(
          name: 'GuestManagement_GuestListBuilderOnEventPage',
          path: '/guestManagementGuestListBuilderOnEventPage',
          builder: (context, params) =>
              GuestManagementGuestListBuilderOnEventPageWidget(),
        ),
        FFRoute(
          name: 'SplashPage',
          path: '/splashPage',
          builder: (context, params) => SplashPageWidget(),
        ),
        FFRoute(
          name: 'RTB_SentPage',
          path: '/rTBSentPage',
          builder: (context, params) => RTBSentPageWidget(),
        ),
        FFRoute(
          name: 'DevModeAccess',
          path: '/devAccessMode',
          builder: (context, params) => DevModeAccessWidget(),
        ),
        FFRoute(
          name: 'VenueDetailPage',
          path: '/venueDetailPage',
          builder: (context, params) => VenueDetailPageWidget(
            venueRow: params.getParam<VenuesRow>(
              'venueRow',
              ParamType.SupabaseRow,
            ),
            vendorRow: params.getParam<VendorsRow>(
              'vendorRow',
              ParamType.SupabaseRow,
            ),
          ),
        ),
        FFRoute(
          name: 'ManageEvents_MyEvents_EventCommandCtr',
          path: '/manageEventsMyEventsEventCommandCtr',
          builder: (context, params) =>
              ManageEventsMyEventsEventCommandCtrWidget(),
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

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
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
      (state.allParams.length == 1 &&
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
    ParamType type, {
    bool isList = false,
    StructBuilder<T>? structBuilder,
  }) {
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
    return deserializeParam<T>(
      param,
      type,
      isList,
      structBuilder: structBuilder,
    );
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
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = page;

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
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
