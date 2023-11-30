import 'package:coo_sport/account/accountpage.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

// import '../features/authentication/screens/login/login.dart';
// import '../features/authentication/screens/onboarding/onboarding.dart';
// import '../features/authentication/screens/password_configuration/forget_password.dart';
// import '../features/authentication/screens/signup/signup.dart';
// import '../features/authentication/screens/signup/verify_email.dart';
// import '../features/personalization/screens/address/address.dart';
// import '../features/personalization/screens/profile/profile.dart';
// import '../features/personalization/screens/setting/settings.dart';
import '../features/shop/screens/cart/cart.dart';
import '../features/shop/screens/checkout/checkout.dart';
import '../features/shop/screens/favourites/favourite.dart';
import '../features/shop/screens/home/home.dart';
import '../features/shop/screens/order/order.dart';
import '../features/shop/screens/product_reviews/product_reviews.dart';
import '../features/shop/screens/search/search.dart';
import '../features/shop/screens/store/store.dart';
import 'routes.dart';

class AppRoutes {
  static final pages = [
    GetPage(name: TRoutes.home, page: () => const HomeScreen(title: '',)),
    GetPage(name: TRoutes.store, page: () => const StoreScreen(title: '',)),
    GetPage(name: TRoutes.favourites, page: () => const FavouriteScreen()),
    GetPage(name: TRoutes.settings, page: () => const AccountPage(title: '',)),
    GetPage(name: TRoutes.search, page: () => const SearchScreen()),
    GetPage(name: TRoutes.productReviews, page: () => const ProductReviewsScreen()),
    GetPage(name: TRoutes.order, page: () => const OrderScreen()),
    GetPage(name: TRoutes.checkout, page: () => const CheckoutScreen()),
    GetPage(name: TRoutes.cart, page: () => const CartScreen(title: '',)),
    GetPage(name: TRoutes.userProfile, page: () => const AccountPage(title: '',)),
    // GetPage(name: TRoutes.userAddress, page: () => const UserAddressScreen()),
    // GetPage(name: TRoutes.signup, page: () => const SignupScreen()),
    // GetPage(name: TRoutes.verifyEmail, page: () => const VerifyEmailScreen()),
    // GetPage(name: TRoutes.signIn, page: () => const LoginScreen()),
    // GetPage(name: TRoutes.forgetPassword, page: () => const ForgetPassword()),
    // GetPage(name: TRoutes.onBoarding, page: () => const OnBoardingScreen()),
    // Add more GetPage entries as needed
  ];
}
