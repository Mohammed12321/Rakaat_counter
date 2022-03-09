import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'mainscreen.dart';
import 'secondscreen.dart';
import 'finalScreen.dart';
import 'package:flutter/services.dart';
import 'package:new_version/new_version.dart';


////////////////////////////////////////

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);



  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}



class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
    super.initState();

    _checkVersion();
  }

  void _checkVersion() async {
    final newVersion = NewVersion(


      androidId: "com.smtcontact.RakaatCounter",
    );

    final status = await newVersion.getVersionStatus();
    newVersion.showUpdateDialog(
      context: context,
      versionStatus: status,
      dialogTitle: "UPDATE!!!",
      dismissButtonText: "Skip",
      dialogText: "Please update the app from " + "${status.localVersion}" + " to " + "${status.storeVersion}",
      dismissAction: () {
        SystemNavigator.pop();
      },
      updateButtonText: "Lets update",
    );

    print("DEVICE : " + status.localVersion);
    print("STORE : " + status.storeVersion);

  }


  @override
  Widget build(BuildContext context) {

  }
}



/////////////////////////////////////




void main() {
  WidgetsFlutterBinding.ensureInitialized();
  _initGoogleMobileAds();
  runApp(MyApp());
}
Future<InitializationStatus> _initGoogleMobileAds() {
  // TODO: Initialize Google Mobile Ads SDK
  return MobileAds.instance.initialize();
}

class MyApp extends StatelessWidget {
  @override




  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Passing Data',
      theme: ThemeData(
        primaryColor: Color(0xFF55C1EF),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => mainscreen(),
        '/StopwatchPage': (context) => StopwatchPage(),
        '/finalScreen': (context) => FinalScreen(),
      },

    );
  }

}







