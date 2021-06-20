import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dhekr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    double _screenWidth = mediaQuery.size.width;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('image/DKR.jpg'),
          fit: BoxFit.cover,
        )),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Container(
                  width: _screenWidth / 1.5,
                  padding: const EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(9.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          offset: Offset(5.0, 5.0),
                          blurRadius: 5.0)
                    ],
                    shape: BoxShape.rectangle,
                  ),
                  child: new Align(
                    heightFactor: 1.0,
                    child: new Text(
                      'قال رسول الله صلى الله عليه وسلم: (مَنْ قال لا إلهَ إلَّا اللهُ وحدَهُ لَا شرِيكَ لَهُ ، لَهُ الملْكُ ، ولَهُ الحمْدُ ، وهُوَ عَلَى كُلِّ شيءٍ قديرٌ ، فِي يومٍ مائَةَ مرةٍ ، كانتْ لَهُ عِدْلَ عشرِ رقابٍ ، وكُتِبَتْ لَهُ مائَةُ حسنَةٍ ، ومُحِيَتْ عنه مائَةُ سيِّئَةٍ ، وكانَتْ لَهُ حِرْزًا منَ الشيطانِ يَوْمَهُ ذَلِكَ حتى يُمْسِيَ ، ولم يأتِ أحدٌ بأفضلَ مِمَّا جاءَ بِهِ ، إلَّا أحدٌ عَمِلَ عملًا أكثرَ مِنْ ذلِكَ)',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          fontFamily: 'Welc'),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
