import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GetstartedScaffold extends StatelessWidget {
  const GetstartedScaffold({super.key, this.child});
 final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Image.asset('assets/images/getstarted.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,),
          SafeArea(
              child: child!)
          //SvgPicture.asset("assets/images/onboarding 1.svg"),
        ],
      ),
    );
  }
}
