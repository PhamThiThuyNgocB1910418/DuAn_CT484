import 'package:flutter/material.dart';
import 'package:myshop/screens/screens.dart';

Future<void> main() async {
  await dotenv.load();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthManager(),
        ),
        ChangeNotifierProxyProvider<AuthManager, ProductsManager>(
          create: (ctx) => ProductsManager(),
          update: (ctx, authManager, productsManager) {
            productsManager!.authToken = authManager.authToken;
            return productsManager;
          },
        ),
        // ChangeNotifierProvider(
        //   create: (ctx) => CartManager(),
        // ),
      ],
      child: Consumer<AuthManager>(builder: (context, AuthManager, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'The Flutter Way',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            fontFamily: "Gordita",
            scaffoldBackgroundColor: bgColor,
            textTheme: const TextTheme(
              bodyText2: TextStyle(color: Colors.black54),
            ),
          ),
          home: AuthManager.isAuth
              ? const AuthScreen()
              : FutureBuilder(
                  future: AuthManager.tryAutoLogin(),
                  builder: (context, snapshot) {
                    return snapshot.connectionState == ConnectionState
                        ? const SplashScreen()
                        : const AuthScreen();
                  },
                ),

          //home:  HomeScreen(), //chay app ban dau

          //home: const UserProductsScreen(),
        );
      }),
    );
  }
}
