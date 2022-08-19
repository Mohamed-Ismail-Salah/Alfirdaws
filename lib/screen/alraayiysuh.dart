
import 'package:alfirdaws/models/AwaqatAlsalah_model.dart';
import 'package:alfirdaws/services/awaqat_alsalah_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../widgets/custom_card.dart';

class alraayiysuh extends StatefulWidget {

  @override

  State<alraayiysuh> createState() => _alraayiysuhState();
}

AwaqatAlsalahModle? futureAwaqatAlsalah;
class _alraayiysuhState extends State<alraayiysuh> {

AwaqatAlsalah salah=AwaqatAlsalah();
  @override
  void initState()  {
    getdata()async{
      futureAwaqatAlsalah =await salah.getAwaqatAlsalah();
    }

    super.initState();
  }
  @override

  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [

            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(40)),
                  image: DecorationImage(
                      image: AssetImage(
                              "assets/images/islamic-prayer-dusk-sun.jpg")
                          as ImageProvider,
                      fit: BoxFit.cover,
                      opacity: .8)),
              child: Center(child: Text("      ${DateFormat.jm().format(DateTime.now())}\n${ DateFormat.yMMMMd('en_US').format(DateTime.now())}\n",style: TextStyle(
                fontSize:30,
                color: Colors.white

              ),)),
            ),

          ],
        ),
        Expanded(
          child: Container(
            child: ListView(

              children: [

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [

                      CustomCard(pageTitle: 'الفجر\n${futureAwaqatAlsalah?.Fajr}', imageLocation: 'assets/images/f.jpg',height: 150,width: 110,fSize: 25,nav: false,),
                      CustomCard(pageTitle: ' الظهر\n ${futureAwaqatAlsalah?.Dhuhr}', imageLocation: 'assets/images/z.jpg',height: 150,width: 110,fSize: 25,nav: false,),
                      CustomCard(pageTitle: 'العصر\n${futureAwaqatAlsalah?.Asr}', imageLocation: 'assets/images/a.jpg',height: 150,width: 110,fSize: 25,nav: false,),
                      CustomCard(pageTitle: 'المغرب\n ${futureAwaqatAlsalah?.Maghrib}', imageLocation: 'assets/images/m.jpg',height: 150,width: 110,fSize: 25,nav: false,),
                      CustomCard(pageTitle: 'العشاء\n ${futureAwaqatAlsalah?.Isha}', imageLocation: 'assets/images/e.jpg',height: 150,width: 110,fSize: 25,nav: false,),
                    ],
                  ),
                ),
                CustomCard(
                  pageTitle: 'قران كريم',
                  imageLocation: 'assets/images/q .jpg',

                ),
                CustomCard(
                  pageTitle: 'الصلا ه',
                  imageLocation: 'assets/images/s.jpg',
                ),
                CustomCard(
                  pageTitle: 'الوضوء',
                  imageLocation: 'assets/images/w.jpg',
                ),
                CustomCard(
                  pageTitle: 'لاذكار',
                  imageLocation: 'assets/images/d.jpg',
                ),
                // CustomCard(
                //   pageTitle: 'احاديث نبويه',
                //  imageLocation:  'assets/images/احديث.jpeg',
                //
                //  ),

                CustomCard(
                  pageTitle: 'اسماء الله الحسنى',
                  imageLocation: 'assets/images/img.png',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }


}
