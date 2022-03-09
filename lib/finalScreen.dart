import 'package:flutter/material.dart';
import 'main.dart';
import 'mainscreen.dart';
import 'dart:async';
import 'package:wakelock/wakelock.dart';
import 'secondscreen.dart';

class FinalScreen extends StatefulWidget {
  //const ({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<FinalScreen> {
  @override
  Widget build(BuildContext context) {




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



            //if (line_length<10){x=0},
            Text(
              'تقبل الله صلاتك',
              style: TextStyle(height: 1, fontSize: 29),
            ),
            Text(
              'May god accept your pray',
              style: TextStyle(height: 1, fontSize: 29),
            ),
            Text(
              '       ',
              style: TextStyle(height: 2, fontSize: 20),
            ),
            Text(
              'أَسْتَغْفِرُ ٱللّٰهَ      أَسْتَغْفِرُ ٱللّٰهَ      أَسْتَغْفِرُ ٱللّٰهَ',
              style: TextStyle(height: 1, fontSize: 16),
            ),
            Text(
              'Astaghfirullah Astaghfirullah Astaghfirullah',
              style: TextStyle(height: 1, fontSize: 16),

            ),

            Text(
              '',
              style: TextStyle(height: 3, fontSize: 16),
            ),
            Text(
              'اللهم أنت السلام ومنك السلام تباركت يا ذا الجلال و الاكرام',
              style: TextStyle(height: 1, fontSize: 16),
            ),



            Text(
              'Allahumma Antas-Salamu, wa minkas-Salamu, tabarakta ya Dhal-Jalali wal-Ikram',
              textAlign: TextAlign.center,
              style: TextStyle(height: 1, fontSize: 16
              ),
            ),

            Text(
              '       ',
              style: TextStyle(height: 3, fontSize: 16),
            ),
            Text(
              'اللَّهُ لاَ إِلَهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَنْ ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِنْ عِلْمِهِ إِلاَّ بِمَا شَاءَ وَسِعَ كُرْسِيُّهُ السَّمَاواتِ وَالأَرْضَ وَلاَ يَئُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ',
                textAlign: TextAlign.center,
              style: TextStyle(height: 1, fontSize: 16),
            ),
            Text(
              '       ',
              style: TextStyle(height: 1, fontSize: 16),
            ),
            Text(
              'ALLALHU LA ILAHA ILLA HUWAALHAYUL QAIYUM LA TA’KHUDHUHU SINATUN WALA NAWM LAHU MA FIS-SAMAWATI WA MA FIL ARD MAN DHAL-LADHI YASHFA’U INDAHU ILLAH BI EI’JNI YA’LAMU MA BAINA AIDIHIM WA MA KHALFAHUM WALA YUHITUNA BI SHAI’IM-MIN ‘ILMIHI ILLA BIMA SHA’A WASI’A KURSIYUHUS SAMAWATI WALARD WA LA YA’UDUHU HIFDHUHUMA WA HUWAL ‘ALIYUL-AZEEM.',
                textAlign: TextAlign.center,
              style: TextStyle(height: 1, fontSize: 15),
            ),

            Text(
              '       ',
              style: TextStyle(height: 1, fontSize: 16),
            ),

            ElevatedButton(onPressed:(){


              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyApp()));

            },
              style: ElevatedButton.styleFrom(
                primary: Colors.green, // background
                onPrimary: Colors.yellow, // foreground

              ),

              //TextStyle(height: 1.8, fontSize: 23),


              child: Text('                Exit                  خروج           ',
                  style: TextStyle(height: 2, fontSize: 22)),
            ),



          ],
        ),
      ),
    );



  }
}


