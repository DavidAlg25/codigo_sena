import 'config/console_session.dart';
import './Views/user_view.dart';
import './Views/auth_view.dart';
import 'dart:io';

void main() async {
  clearScreen();
  await menuLogin();
}

void clearScreen() {
  if (Platform.isWindows) {
    // For Windows systems, use the 'cls' command
    Process.runSync('cls', [], runInShell: true);
  } else {
    // For Unix-like systems, use ANSI escape codes to clear the screen
    stdout.write('\x1B[2J\x1B[0;0H');
  }
}

Future<void> menuLogin() async {
  AuthView authView = AuthView();
  if (await ConsoleSession.isLogged()) {
    final session = await ConsoleSession.loadSession();
    clearScreen();
    //String newToken = await authView.validateToken(session!['token']);
    print('✅  Welcome back! ✅ ');
    Map<String, dynamic>? validatedSession =
        await authView.validateToken(session!['token'] ?? '');
    if (validatedSession == null) {
      print('⚠️ Session expired. Please log in again. ⚠️');
      await ConsoleSession.closeSession();
      authView.onloadView('');
      return;
    } else {
      print('✅ Session is valid. Welcome back, ${validatedSession['user']}! ✅');
      await activeSessionMenu(session);
    }
  } else {
    print('👋 No active session. Please log in.');
    authView.onloadView('');
  }
}

Future<void> activeSessionMenu(Map<String, dynamic>? session) async {
  clearScreen();
  print('\n✅ === ACTIVE LOGIN ===✅ ');
  print('user: ${session!['user']}');
  print('1. Module Users');
  print('2. Module Roles');
  print('3. Module Users Status');
  print('4. Module User');
  print('5. Close Session');
  print('6. Exit');
  stdout.write('Options: ');
  final opcion = stdin.readLineSync();
  switch (opcion) {
    case '1':
      print('📋 Profile of user: ${session['user']}');
      UserView userView = UserView();
      userView.onloadView(session['token']);
      break;
    case '2':
      print('📋 Roles of user: ${session['user']}');
      break;
    case '3':
      print('📋 Status of user: ${session['user']}');
      break;
    case '4':
      print('📋 User: ${session['user']}');
      break;
    case '5':
      await ConsoleSession.closeSession();
      print('👋 Close session');
      break;
    case '6':
      print('👋 ¡Good bye!');
      return;
  }
}
