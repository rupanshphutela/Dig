import 'package:go_router/go_router.dart';
import 'package:the_dig_app/screens/contacts_page.dart';
import 'package:the_dig_app/screens/incoming_swipes_page.dart';
import 'package:the_dig_app/screens/profile_page.dart';
import 'package:the_dig_app/screens/registration_page.dart';
import 'package:the_dig_app/screens/swipes_page.dart';
import '../screens/profiles_page.dart';
import '../screens/chat.dart';
import '../screens/login_page.dart';
import '../screens/settings_page.dart';

final routes = [
  GoRoute(
    path: '/register',
    builder: (context, state) => const RegistrationPage(),
  ),
  GoRoute(
    path: '/login',
    builder: (context, state) => const LoginScreen(),
  ),
  GoRoute(
    path: '/profiles',
    builder: (context, state) {
      final String email = state.queryParams['email'].toString();
      return ProfilesPage(email: email);
    },
  ),
  // GoRoute(
  //     path: '/add/owner/profile',
  //     builder: (context, state) {
  //       final String email = state.queryParams['email'].toString();
  //       return OwnerProfileForm(email: email);
  //     }),
  GoRoute(
      path: '/edit/profile',
      builder: (context, state) {
        final String email = state.queryParams['email'].toString();
        return ProfilePage(email: email);
      }),
  GoRoute(
    path: '/chats',
    builder: (context, state) => Chat(
      chatId: '',
      otherUserId: '',
      userId: '',
      email: '',
    ),
  ),
  GoRoute(
    path: '/settings',
    builder: (context, state) {
      final String email = state.queryParams['email'].toString();
      return SettingsPage(email: email);
    },
  ),
  GoRoute(
    path: '/swipes',
    builder: (context, state) {
      final String direction = state.queryParams['direction'].toString();
      final String email = state.queryParams['email'].toString();
      return SwipesPage(email: email, direction: direction);
    },
  ),
  GoRoute(
    path: '/incoming/swipes',
    builder: (context, state) {
      final String email = state.queryParams['email'].toString();
      return IncomingSwipesPage(email: email);
    },
  ),
  GoRoute(
    path: '/contacts',
    builder: (context, state) {
      final String email = state.queryParams['email'].toString();
      return ContactsPage(email: email);
    },
  ),
];
