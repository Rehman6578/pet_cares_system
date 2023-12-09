import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_cares_system/views/Dashboard/GroomingScreen.dart';
import 'package:pet_cares_system/views/Dashboard/MainDashboard.dart';
import 'package:pet_cares_system/views/Dashboard/Navbar_Screen/add_pet_detail.dart';
import 'package:pet_cares_system/views/Dashboard/PetBoarding.dart';
import 'package:pet_cares_system/views/Dashboard/PetDatingScreen.dart';
import 'package:pet_cares_system/views/OnboardingPages/onBoardingScreenWidget.dart';
import 'package:pet_cares_system/views/ProfileScreens/profile.dart';
import 'package:pet_cares_system/views/SearchScreens/nearme_veterinary_screen.dart';
import 'package:pet_cares_system/views/SearchScreens/veterinarydoctor_card_screen.dart';
import 'package:pet_cares_system/views/SplashScreen/SplashScreen.dart';
import 'package:pet_cares_system/views/auth_screens/LoginScreen.dart';
import 'package:pet_cares_system/views/auth_screens/RegisterScreen.dart';

import 'Utils/Models/PetBoarding.dart';

void main() async {
WidgetsFlutterBinding.ensureInitialized();
Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Pet Care',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/SplashScreen',
      getPages: [
        GetPage(name: '/onboardingScreens', page: () => OnboardingScreen()),
        GetPage(name: '/SplashScreen', page: () => Splashscreen()),
        GetPage(name: '/Dashboard', page: () => Dashboard()),
        GetPage(name: '/LoginScreen', page: () => LoginScreen()),
        GetPage(name: '/RegisterScreen', page: () => RegisterScreen()),
        GetPage(name: '/EditProfile', page: () => EditProfile()),
        GetPage(name: '/AddPetDetails', page: () => AddPetDetail()),
        GetPage(
            name: '/NearVeterinaryScreen', page: () => NearVeterinaryScreen()),
        GetPage(
            name: '/VeterinaryDocScreen', page: () => VeterinaryDocScreen()),
        GetPage(name: '/GroomingScreen', page: () => GroomingScreen()),
        GetPage(name: '/PetDatingScreen', page: () => PetDating()),
        GetPage(name: '/PetBoarding', page: () => PetBoardingScreen()),
      ],
    );
  }
}
