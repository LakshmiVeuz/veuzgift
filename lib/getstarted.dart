import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:veuzgift_app/getstarted_scafforld.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetstartedScaffold(
      child:Column(
        children: [
          Flexible(
              child: Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 280),
              child: Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'You want Authentic, here you go!\n',

                        style: TextStyle(
                            fontSize: 37.46,
                            color: Color(0xffffffff),
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Tenor Sans'
                        ),
                      ),

                      TextSpan(
                        text: '\nFind it here, buy it now!',
                        style: TextStyle(
                            fontSize:15.42,
                            color: Color(0xffF2F2F2),
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Tenor Sans'
                        ),
                      )
                    ]
                  ),
                ),
              ),
            ),
          )),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: SizedBox(
              height: 60,
              width: MediaQuery
                  .of(context)
                  .size
                  .width/1.22,
              child: ElevatedButton(

                child: Text("Get Started", style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    color: Colors.white,fontFamily: 'Tenor Sans'),),

                onPressed: () async {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6), // <-- Radius
                  ),
                  primary:  Color(0xFF1EB1AB),
                ),
              ),
            ),
          ),
        ],
      )
    );
  }
}
