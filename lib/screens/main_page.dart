import 'package:flutter/material.dart';
import 'package:github/core/components/size_config.dart';
import 'package:github/core/constants/colors.dart';
import 'package:github/core/constants/images.dart';
import 'package:github/core/widgets/buttom_widgets.dart';
import 'package:github/core/widgets/text_form_widgets.dart';
import 'package:github/screens/second_page.dart';

// ignore: must_be_immutable
class MainPage extends StatelessWidget {
  TextEditingController searchController = TextEditingController();
  MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(AppImages.main),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: getH(118.0),
              width: getW(121.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppImages.github),
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(left: getW(30.0), right: getW(30.0)),
                child: TextFormWidget(
                    prefixIcon: const Icon(Icons.search),
                    hintText: "search by username",
                    controller: searchController)),
            ButtonWidget(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const SecondPage(),
                  ),
                );
              },
              height: 48.0,
              weight: 170.0,
              text: "Go",
              color: AppColor.green,
            ),
          ],
        ),
      ),
    );
  }
}
