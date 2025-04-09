import 'package:go_router/go_router.dart';
import 'package:journo_blog_app/presentation/screens/auth/login/widgets/login.dart';
import 'package:journo_blog_app/presentation/screens/auth/register/widgets/register.dart';
import 'package:journo_blog_app/presentation/screens/auth/widgets/auth.dart';
import 'package:journo_blog_app/presentation/screens/general/home/home_details.dart';
import 'package:journo_blog_app/presentation/screens/onboard/onboard.dart';
import '../screens/general/general.dart';
import '../screens/splash/splash.dart';



  final GoRouter router = GoRouter(
    // initialLocation: "/profile",
    routes: [
    GoRoute(path: "/", builder: (context, state)=> const Splash(),
    routes: [ // sub routes 
        GoRoute(path: "onboard", builder: (context, state)=> const OnBoard()),
        GoRoute(path: "auth", builder: (context, state)=> const Auth()),
        GoRoute(path: "login", builder: (context, state)=> const Login()),
        GoRoute(path: "register", builder: (context, state)=> const Register()),
         GoRoute(path: "general", builder: (context, state)=> const  General()),
           GoRoute(path: "homedetails", builder: (context, state)=> const HomeDetails()),
       
    ]
    ),
  ]); 