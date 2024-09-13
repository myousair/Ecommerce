import 'package:get/get.dart';
import 'package:minimart/features/authentication/screens/login/login.dart';
import 'package:minimart/features/authentication/screens/onboarding/onBoarding.dart';
import 'package:minimart/features/authentication/screens/password_configuratin/forget_password.dart';
import 'package:minimart/features/authentication/screens/signup/signup.dart';
import 'package:minimart/features/authentication/screens/signup/verify_email.dart';
import 'package:minimart/features/personalization/screens/address/address.dart';
import 'package:minimart/features/personalization/screens/profile/profile.dart';
import 'package:minimart/features/personalization/screens/settings/setting.dart';
import 'package:minimart/features/shop/screens/cart/cart.dart';
import 'package:minimart/features/shop/screens/checkout/checkout.dart';
import 'package:minimart/features/shop/screens/home/home.dart';
import 'package:minimart/features/shop/screens/orders/order.dart';
import 'package:minimart/features/shop/screens/product_review/product_review.dart';
import 'package:minimart/features/shop/screens/store/store.dart';
import 'package:minimart/features/shop/screens/wishlist/wishlist.dart';
import 'package:minimart/routes/routes.dart';

class AppRoutes {
  static final pages = [
    GetPage(name: Routes.home, page: () => const HomeScreen()),
    GetPage(name: Routes.store, page: () => const StoreScreen()),
    GetPage(name: Routes.favouites, page: () => const FavouriteScreen()),
    GetPage(name: Routes.settings, page: () => const SettingScreen()),
    GetPage(
        name: Routes.productReviews, page: () => const ProductReviewScreen()),
    GetPage(name: Routes.order, page: () => const OrderScreen()),
    GetPage(name: Routes.checkout, page: () => const CheckoutScreen()),
    GetPage(name: Routes.cart, page: () => const CartScreen()),
    GetPage(name: Routes.userProfile, page: () => const ProfileScreen()),
    GetPage(name: Routes.userAddress, page: () => const UserAddressScreen()),
    GetPage(name: Routes.signup, page: () => const SignupScreen()),
    GetPage(
        name: Routes.verifyEmail, page: () => const VerificationEmailScreen()),
    GetPage(name: Routes.signIn, page: () => const LoginScreen()),
    GetPage(name: Routes.forgetPassword, page: () => const ForgetPassword()),
    GetPage(name: Routes.onBoarding, page: () => const OnBoardingScreen()),
  ];
}
