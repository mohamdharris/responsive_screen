import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:responsive_screen/phone_view.dart';
import 'package:responsive_screen/responsive_helper.dart';
import 'package:responsive_screen/tab_view.dart';

class MyHomepage extends StatelessWidget {
  const MyHomepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("CodeX")),
      body: SafeArea(
        child: ResponsiveWidget(
            mobile: MyMobileBody(),
            //  Column(
            //   children: [buildBannerSlider(), buildTitle],
            // ),
            tab: TabView()
            // Row(
            //   children: [
            //     buildBannerSlider(),
            //     SizedBox(width: 24),
            //     Expanded(child: buildTitle),
            //   ],
            // )
            ),
      ),
    );
  }

  Text get buildTitle {
    return Text(
      'Hey There \n\nCodeX is an ecosystem of particular resource od development want to \nbild high-quality mobile apps.',
      style: TextStyle(fontSize: 22),
    );
  }

  Container buildBannerSlider() {
    return Container(
      width: 320,
      height: 180,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.red, Colors.pink]),
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
