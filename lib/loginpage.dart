import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

 class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.only(left: 36,right: 36),
          child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 129),
                child: Text(
                  '''Welcome
Back! ''',
                  maxLines: 2,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 40.26,
                    fontFamily: 'Tenor Sans',
                    color: Color(0xff000000),
                  ),
                ),

              ),
              SizedBox(height:41 ,),
              TextField(

                decoration: InputDecoration(

                    prefixIcon:SvgPicture.asset("assets/images/user.svg"),
                  hintText: "Username or Email",
                  hintStyle: TextStyle(
                      color: Color(0xFF676767),
                      fontFamily: 'Tenor Sans',
                      fontWeight: FontWeight.w400,
                      fontSize: 13.74),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFA8A8A9)),

                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFA8A8A9))
                  ),
                  fillColor: Color(0xfff3f3f3),
                  filled: true
                ),
              ),
              SizedBox(height: 40,),
              TextField(

                decoration: InputDecoration(
                    prefixIcon:SvgPicture.asset("assets/images/password.svg"),
                    suffixIcon:SvgPicture.asset("assets/images/eye.svg") ,
                    hintText: "Password",
                    hintStyle: TextStyle(
                        color: Color(0xFF676767),
                        fontFamily: 'Tenor Sans',
                        fontWeight: FontWeight.w400,
                        fontSize: 13.74),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFA8A8A9)),

                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFA8A8A9))
                    ),
                    fillColor: Color(0xfff3f3f3),
                    filled: true
                ),
              ),
              SizedBox(height: 10,),
              InkWell(
                child: Text('Forgot Password?',style: TextStyle(
                    color: Color(0xFF1EB1AB),
                    fontFamily: 'Tenor Sans',
                    fontWeight: FontWeight.w400,
                    fontSize: 13.42),
                  textAlign: TextAlign.end,
                ),
                onTap:() {},
              ),
              SizedBox(height: 40,),
              SizedBox(
                height: 60,
                width: MediaQuery
                    .of(context)
                    .size
                    .width/1.22,
                child: ElevatedButton(

                  child: Text("Login", style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 22.37,
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
              SizedBox(height: 50,),
              Center(
                child: Text('- OR Continue with -',style: TextStyle(
                    color: Color(0xFF575757),
                    fontFamily: 'Tenor Sans',
                    fontWeight: FontWeight.w400,
                    fontSize: 13.42),
                  textAlign: TextAlign.end,
                ),
              ),
              SizedBox(height: 20,),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width/1.9,
                  //color: Colors.cyan,
                  child: Row(

                    children: [

                      Image.asset('assets/images/Google.png',height: 63,width: 63,),
                      SizedBox(width: 8,),
                      SvgPicture.asset("assets/images/apple.svg"),
                      SizedBox(width: 8,),
                      SvgPicture.asset("assets/images/facebook.svg")
                    ],
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
