import 'package:caretutors_task/features/auth/presentation/pages/login_page.dart';
import 'package:caretutors_task/features/auth/presentation/pages/register_page.dart';
import 'package:caretutors_task/features/home/presentation/page/home_page.dart';
import 'package:caretutors_task/features/note/presentation/page/add_note_page.dart';
import 'package:caretutors_task/features/splash/presentation/pages/splash_page.dart';
import 'package:go_router/go_router.dart';


class AppRouter {
  static final router = GoRouter(
    initialLocation: '/splash',
    routes: [
      GoRoute(path: '/splash', builder: (_, __) => const SplashScreen()),
      GoRoute(path: '/login', builder: (_, __) => const LoginPage()),
      GoRoute(path: '/register', builder: (_, __) => const RegisterPage()),
      GoRoute(path: '/home', builder: (_, __) => const HomePage()),
      GoRoute(path: '/add-note', builder: (_, __) => const AddNotePage()),
    ],
  );
}