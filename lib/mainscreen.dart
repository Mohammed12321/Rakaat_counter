import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'AdHelper.dart';
import 'secondscreen.dart';
import 'package:wakelock/wakelock.dart';
import 'finalScreen.dart';
import 'main.dart';

class mainscreen extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}



class _HomeState extends State<mainscreen> {
  final Map<String, int> dataMap = {
    'Number 1': 1,
    'Number 2': 2,
    'Number 3': 3,
  };

  double rakaa_max;
  String salah_name;
  bool isAdult = false;
  BannerAd _bannerAd;
  bool _isBannerAdReady = false;

  @override
  void initState() {
    _bannerAd = BannerAd(
      adUnitId: AdHelper.bannerAdUnitId,
      request: AdRequest(),
      size: AdSize.banner,
      listener: BannerAdListener(
        onAdLoaded: (_) {
          setState(() {
            _isBannerAdReady = true;
          });
        },
        onAdFailedToLoad: (ad, err) {
          print('Failed to load a banner ad: ${err.message}');
          _isBannerAdReady = false;
          ad.dispose();
        },
      ),
    );
    _bannerAd.load();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rakaa counter application (Ver. 9)'),
        backgroundColor: Colors.green,
        actions: <Widget>[],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Divider(
                color: Colors.green,
                height: 10,
                thickness: 3,
                indent: 175,
                endIndent: 175,
              ),

              Divider(
                color: Colors.green,
                height: 10,
                thickness: 3,
                indent: 155,
                endIndent: 155,
              ),

              Divider(
                color: Colors.green,
                height: 10,
                thickness: 3,
                indent: 135,
                endIndent: 135,
              ),

              Divider(
                color: Colors.green,
                height: 10,
                thickness: 3,
                indent: 115,
                endIndent: 115,
              ),

              Divider(
                color: Colors.green,
                height: 10,
                thickness: 3,
                indent: 95,
                endIndent: 95,
              ),

              Divider(
                color: Colors.green,
                height: 10,
                thickness: 3,
                indent: 95,
                endIndent: 95,
              ),

              Divider(
                color: Colors.green,
                height: 10,
                thickness: 3,
                indent: 30,
                endIndent: 30,
              ),

              Divider(
                color: Colors.green,
                height: 10,
                thickness: 3,
                indent: 30,
                endIndent: 30,
              ),

              Divider(
                color: Colors.green,
                height: 10,
                thickness: 3,
                indent: 30,
                endIndent: 30,
              ),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.green, // background
                  onPrimary: Colors.yellow, // foreground
                ),

                //TextStyle(height: 1.8, fontSize: 23),
                onPressed: () {
                  final boolData = Navigator.pushNamed(
                      context, '/StopwatchPage', arguments: {
                    'salah_name': 'Salah Al-Fajr       صلاة الفجر ',
                    'rakaa_max': 2
                  });

                  setState(() {
                    // isAdult = boolData;
                  });
                },

                child: Text('Salah Al-Fajr   صلاة الفجر ',
                    style: TextStyle(height: 1, fontSize: 20)),
              ),

              Divider(
                color: Colors.green,
                height: 10,
                thickness: 3,
                indent: 30,
                endIndent: 30,
              ),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.green, // background
                  onPrimary: Colors.yellow, // foreground
                ),
                onPressed: () {
                  final boolData = Navigator.pushNamed(
                      context, '/StopwatchPage', arguments: {
                    'salah_name': 'Salah Al-Zuhr صَلَاة ٱلظُّهْر',
                    'rakaa_max': 4
                  });

                  setState(() {
                    //isAdult = boolData;
                  });
                },
                child: Text('Salah Al-Zuhr   صَلَاة ٱلظُّهْر',
                    style: TextStyle(height: 1, fontSize: 20)),
              ),

              Divider(
                color: Colors.green,
                height: 10,
                thickness: 3,
                indent: 30,
                endIndent: 30,
              ),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.green, // background
                  onPrimary: Colors.yellow, // foreground
                ),

                //TextStyle(height: 1.8, fontSize: 23),
                onPressed: () async {
                  final boolData = await Navigator.pushNamed(
                      context, '/StopwatchPage', arguments: {
                    'salah_name': 'Salah Al-Aser صلاة العصر',
                    'rakaa_max': 4
                  });

                  setState(() {
                    //isAdult = boolData;
                  });
                },
                child: Text('Salah Al-Aser   صلاة العصر',
                    style: TextStyle(height: 1, fontSize: 20)),
              ),

              Divider(
                color: Colors.green,
                height: 10,
                thickness: 3,
                indent: 30,
                endIndent: 30,
              ),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.green, // background
                  onPrimary: Colors.yellow, // foreground
                ),

                //TextStyle(height: 1.8, fontSize: 23),
                onPressed: () async {
                  final boolData = await Navigator.pushNamed(
                      context, '/StopwatchPage', arguments: {
                    'salah_name': 'Salah al-Magrib صلاة المغرب ',
                    'rakaa_max': 3
                  });

                  setState(() {
                    //isAdult = boolData;
                  });
                },

                child: Text('Salah Almagrib صلاة المغرب',
                    style: TextStyle(height: 1, fontSize: 20)),
              ),

              Divider(
                color: Colors.green,
                height: 10,
                thickness: 3,
                indent: 30,
                endIndent: 30,
              ),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.green, // background
                  onPrimary: Colors.yellow, // foreground
                ),
                onPressed: () async {
                  final boolData = await Navigator.pushNamed(
                      context, '/StopwatchPage', arguments: {
                    'salah_name': 'Salah Aleshaa صلاة العشاء',
                    'rakaa_max': 4
                  });

                  setState(() {
                    //isAdult = boolData;
                  });
                },
                child: Text('Salah Aleshaa صلاة العشاء',
                    style: TextStyle(height: 1, fontSize: 20)),
              ),

              Divider(
                color: Colors.green,
                height: 10,
                thickness: 3,
                indent: 30,
                endIndent: 30,
              ),

              Divider(
                color: Colors.green,
                height: 10,
                thickness: 3,
                indent: 30,
                endIndent: 30,
              ),

              ////////////////////////////////////////////////////////////

              Divider(
                color: Colors.green,
                height: 10,
                thickness: 3,
                indent: 30,
                endIndent: 30,
              ),

              Divider(
                color: Colors.green,
                height: 10,
                thickness: 3,
                indent: 30,
                endIndent: 30,
              ),

              Divider(
                color: Colors.green,
                height: 10,
                thickness: 3,
                indent: 30,
                endIndent: 30,
              ),

              Divider(
                color: Colors.green,
                height: 10,
                thickness: 3,
                indent: 95,
                endIndent: 95,
              ),

              Divider(
                color: Colors.green,
                height: 10,
                thickness: 3,
                indent: 95,
                endIndent: 95,
              ),

              Divider(
                color: Colors.green,
                height: 10,
                thickness: 3,
                indent: 115,
                endIndent: 115,
              ),

              Divider(
                color: Colors.green,
                height: 10,
                thickness: 3,
                indent: 135,
                endIndent: 135,
              ),

              Divider(
                color: Colors.green,
                height: 10,
                thickness: 3,
                indent: 155,
                endIndent: 155,
              ),

              Divider(
                color: Colors.green,
                height: 10,
                thickness: 3,
                indent: 175,
                endIndent: 175,
              ),

              Text(
                'هذا التطبيق يذكرك برقم الركعة التي تصليها',
                style: TextStyle(height: 1, fontSize: 16),
              ),

              Text(
                'Application is to remind rakaa you pray',
                style: TextStyle(height: 1, fontSize: 16),
              ),
            ],
          ),
        ),
      ),

    );
  }


}

