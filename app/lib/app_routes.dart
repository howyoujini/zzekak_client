part of '../zzekak_app.dart';

const _pathSplash = "/";
const _pathLogin = "/login";
const _pathHome = "/home";

enum AppRoutes {
  SPLASH(_pathSplash),
  LOGIN(_pathLogin),
  HOME(_pathHome);

  final String path;

  const AppRoutes(this.path);
}

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: AppRoutes.SPLASH.path,
      name: AppRoutes.SPLASH.name,
      builder: (final BuildContext context, final GoRouterState state) =>
          const SplashScreen(),
    ),
    GoRoute(
      path: AppRoutes.HOME.path,
      name: AppRoutes.HOME.name,
      builder: (final BuildContext context, final GoRouterState state) =>
          const HomeScreen(),
    ),
    GoRoute(
      path: AppRoutes.LOGIN.path,
      name: AppRoutes.LOGIN.name,
      builder: (final BuildContext context, final GoRouterState state) =>
          LoginScreen(
        di: GetIt.instance,
      ),
    ),
  ],
);
