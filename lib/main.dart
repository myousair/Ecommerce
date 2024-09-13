import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:minimart/app.dart';
import 'package:minimart/data/repository/authentication/authentication_repository.dart';
import 'package:minimart/features/authentication/controllers/network/network_manager.dart';
import 'package:minimart/firebase_options.dart';

void main() async {
  Get.lazyPut<NetworkManager>(() => NetworkManager());
  //
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();

  // //

  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  //

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((FirebaseApp value) => Get.put(AuthenticationRepository()));
  runApp(const MyApp());
}
