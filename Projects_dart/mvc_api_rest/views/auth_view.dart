import '../controllers/auth_controller.dart';
import 'dart:io';

class AuthView {
  final AuthController _controller = AuthController();
  final token = '';

  onloadView(String token) async {
    printMenu(token);
  }

  Future<Map<String, dynamic>?> validateToken(String token) {
    Map<String, dynamic> tokenData = {
      'token': token,
    };
    return _controller.validateToken(tokenData);
  }

  Future<void> printMenu(String token) async {
    print('\n✅ === LOGIN ===✅ ');
    print('1. Login');
    print('2. Change Password');
    print('3. Logout');
    print('4. Exit');
    stdout.write('Options: ');
    final opcion = stdin.readLineSync();
    switch (opcion) {
      case '1':
        stdout.write('Enter User Email: ');
        final userEmail = stdin.readLineSync()!;
        stdout.write('Enter User Password: ');
        final userPassword = stdin.readLineSync()!;
        Map<String, dynamic> userData = {
          'api_user': userEmail,
          'api_password': userPassword,
        };
        login(userData);
        break;
      case '2':
        print('🔒 Change Password feature is not implemented yet.');
        break;
      case '3':
        print('👋 ¡Good bye!');
        return;
      default:
        print('❌ Invalid option, try again.');
    }
  }

  // Method to handle user login
  Future<void> login(Map<String, dynamic> userData) async {
    print('🔍 Buscando usuario con datos: $userData');

    String token = await _controller.login(userData);
    if (token.isNotEmpty) {
      print('✅ Login successful. Token: $token');
    } else {
      print('❌ Login failed. Please check your credentials and try again.');
    }
  }
}
