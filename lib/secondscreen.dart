import 'package:flutter/material.dart';
import 'main.dart';
import 'dart:async';
import 'package:wakelock/wakelock.dart';
import 'mainscreen.dart';
import 'finalScreen.dart';
import 'dart:io';



class secondscreen extends StatelessWidget {


  @override

  Widget build(BuildContext context) {

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Stopwatch Example', home: StopwatchPage());
  }
}

class StopwatchPage extends StatefulWidget {


 final double rakaa_max;
 final String salah_name;

  StopwatchPage({this.salah_name,this.rakaa_max});

  @override

  _StopwatchPageState createState() => _StopwatchPageState();

}

class _StopwatchPageState extends State<StopwatchPage> {



  Stopwatch _stopwatch;
  Timer _timer;
  double seconds=0;
  double dish_value=0;
  int rakaa=1;
  int increment=0;
  double time_remain=30;
  double multiply=1;
  double line_length=0;
  int flag_end=0;


  @override
  void initState() {
    super.initState();
    _stopwatch = Stopwatch();
    _timer = new Timer.periodic(new Duration(milliseconds: 1000), (timer) {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void handleStartStop() {
    if (_stopwatch.isRunning) {
      _stopwatch.stop();
    } else {
      _stopwatch.start();
    }

    setState(() {});
  }


  @override
  Widget build(BuildContext context) {


    final routeData =
    ModalRoute.of(context).settings.arguments as Map<String, Object>;
    final newRakaaMax = routeData['rakaa_max'];
    final salah_name = routeData['salah_name'];
    int rakaaMax=newRakaaMax;


    seconds=seconds+increment;
    if (seconds<40*multiply) {
      time_remain = 40*multiply- seconds;
      line_length=((40*multiply-time_remain)*3.5)/multiply+10;
    }


    if (seconds>40*multiply && seconds<90*multiply) {
      time_remain = 90*multiply - seconds;
      line_length=((50*multiply-time_remain)*3.5)/multiply+10;

    }
    if (seconds>90*multiply  && seconds<120*multiply && rakaaMax >2) {
      time_remain = 120*multiply - seconds;
      line_length=((30*multiply-time_remain)*4.2)/(multiply)+10;
    }
    if (seconds>120*multiply&&rakaaMax >3 ) {
      time_remain = 150*multiply  - seconds;
      line_length=((30*multiply-time_remain)*4.2)/(multiply)+10;
    }

    int time_remain1=time_remain.toInt();

    if (seconds>40*multiply&&seconds<80*multiply) {
      rakaa=2;
    }

    if (seconds>87*multiply&&rakaaMax==2){
      flag_end=1;

    }

    if (seconds>90*multiply&&seconds<120*multiply&& rakaaMax>2){
      rakaa=3;
    }
    if (seconds==120*multiply&& rakaaMax==3){
      flag_end=1;
    }

    if (seconds>120*multiply&&rakaaMax>3){
      rakaa=4;
    }
    if (seconds>145*multiply&& rakaaMax==4){
      flag_end=1;
    }


    if (flag_end==1){


      Future.delayed(const Duration(milliseconds: 500), () {
      // Here you can write your code

        setState(() {
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => FinalScreen()),
                  (route) => false);
        });
      });


      //Navigator.push(context,
       //   MaterialPageRoute(builder: (context) => FinalScreen()));
    }


    setState(() {
      Wakelock.enable();
      // You could also use Wakelock.toggle(on: true);
    });



    return Scaffold(



      appBar: AppBar(

        title:Text('Rakaa counter application'),
        backgroundColor: Colors.green,
        actions:<Widget>[

        ],

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Text(
              salah_name,

              style: TextStyle(height: 1, fontSize: 22),
            ),


            const Text(
              'Rakaa  ركعه',

              style: TextStyle(height: 2, fontSize: 15),
            ),



            Text(
              '$rakaa',
              style: TextStyle(height: 2, fontSize: 50),
            ),


            //if (line_length<10){x=0},
            Text(
              'Time remaining in this rakaa in sec  الوقت المتبقي في هذه الركعة بالثواني',
              style: TextStyle(height: 2, fontSize: 11),
            ),
            Divider(

              color: Colors.green,
              height: 50,
              thickness: 10,
              indent: line_length,
              endIndent: line_length,

            ),


            Text(
              '$time_remain1',
              style: TextStyle(height: 1, fontSize: 25),
            ),
            Text(
              '       ',
              style: TextStyle(height: 1, fontSize: 25),
            ),
            Text(
              '       ',
              style: TextStyle(height: 1, fontSize: 25),
            ),




            Row(
              mainAxisSize: MainAxisSize.min,
              children: [


                Text(
                  '     ',
                  style: TextStyle(height: 1, fontSize: 25),
                ),












              ],
            ),




            Text(
              '     ',
              style: TextStyle(height: 1, fontSize: 25),
            ),



            Divider(

              color: Colors.green,
              height: 10,
              thickness: 1,
              indent: 14,
              endIndent: 14,

            ),

            Text(
              'Time needed for 1st rakaa  الوقت اللازم للركعة الأولى',
              style: TextStyle(height: 1, fontSize: 14),
            ),

            Row(
              mainAxisSize: MainAxisSize.min,
              children: [



                ElevatedButton(onPressed:(){
                  rakaa=1;seconds=0;
                  increment=1;multiply=0.75;} ,
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green, // background
                    onPrimary: Colors.yellow, // foreground

                  ),

                  //TextStyle(height: 0.8, fontSize: 23),


                  child: Text('30',
                      style: TextStyle(height: 0.8, fontSize: 18)),
                ),


                Text(
                  ' ',
                  style: TextStyle(height: 1, fontSize: 15),
                ),



                ElevatedButton(onPressed:(){

                  rakaa=1;seconds=0;

                  multiply=1;{increment=1;}} ,
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green, // background
                    onPrimary: Colors.yellow, // foreground

                  ),

                  //TextStyle(height: 1.8, fontSize: 23),


                  child: Text('40',
                      style: TextStyle(height: 1, fontSize: 18)),
                ),



                Text(
                  ' ',
                  style: TextStyle(height: 1, fontSize: 15),
                ),



                ElevatedButton(onPressed:(){

                  rakaa=1;seconds=0;
                  multiply=1.5;{increment=1;}} ,
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green, // background
                    onPrimary: Colors.yellow, // foreground

                  ),

                  //TextStyle(height: 1.8, fontSize: 23),


                  child: Text('60',
                      style: TextStyle(height: 1, fontSize: 18)),
                ),




                Text(
                  ' ',
                  style: TextStyle(height: 1, fontSize: 18),
                ),



                ElevatedButton(onPressed:(){

                  rakaa=1;seconds=0;
                  multiply=2;{increment=1;}} ,
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green, // background
                    onPrimary: Colors.yellow, // foreground

                  ),

                  //TextStyle(height: 1.8, fontSize: 23),


                  child: Text('80',
                      style: TextStyle(height: 1, fontSize: 18)),
                ),




                Text(
                  ' ',
                  style: TextStyle(height: 1, fontSize: 18),
                ),







                ElevatedButton(onPressed:(){

                  rakaa=1;seconds=0;
                  multiply=3;{increment=1;}} ,
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green, // background
                    onPrimary: Colors.yellow, // foreground

                  ),

                  //TextStyle(height: 1.8, fontSize: 23),


                  child: Text('120',
                      style: TextStyle(height: 1, fontSize: 18)),
                ),




              ],
            ),


            Divider(

              color: Colors.green,
              height: 10,
              thickness: 1,
              indent: 14,
              endIndent: 14,

            ),

            Text(
              '  ',
              style: TextStyle(height: 1, fontSize: 20),
            ),


            Text(
              '  ',
              style: TextStyle(height: 1, fontSize: 18),
            ),


            Text(
              '  ',
              style: TextStyle(height: 1, fontSize: 18),
            ),

            Divider(

              color: Colors.green,
              height: 10,
              thickness: 1,
              indent: 14,
              endIndent: 14,

            ),



        Row(
            mainAxisSize: MainAxisSize.min,
            children: [

            ElevatedButton(onPressed:(){rakaa=1;seconds=0;increment=0;multiply=0.75;} ,
              style: ElevatedButton.styleFrom(
                primary: Colors.green, // background
                onPrimary: Colors.yellow, // foreground

              ),

              //TextStyle(height: 1.8, fontSize: 23),






              child: Text('  Reset       مسح  ',
                  style: TextStyle(height: 1, fontSize: 18)),
            ),

              Text(
                ' ',
                style: TextStyle(height: 1, fontSize: 18),
              ),

              ElevatedButton(onPressed:(){
              rakaa=1;seconds=0;increment=0;

              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyApp()));

            },
              style: ElevatedButton.styleFrom(
                primary: Colors.green, // background
                onPrimary: Colors.yellow, // foreground

              ),

              //TextStyle(height: 1.8, fontSize: 23),





              child: Text('  Exit         خروج ',
                  style: TextStyle(height: 1, fontSize: 18)),
            ),

            ],
            ),


            Divider(

              color: Colors.green,
              height: 10,
              thickness: 1,
              indent: 14,
              endIndent: 14,

            ),


          ],



        ),
      ),
    );
  }
}
