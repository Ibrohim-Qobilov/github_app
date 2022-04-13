import 'package:flutter/material.dart';
import 'package:github/core/components/size_config.dart';
import 'package:github/core/constants/images.dart';
import 'package:github/core/widgets/row_widgets.dart';
import 'package:github/core/widgets/text_widgets.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          color: Colors.black,
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: getH(265.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(top: getH(20.0), bottom: getH(20.0)),
                    child: Container(
                      height: getH(120.0),
                      width: getW(120.0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(AppImages.github),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextWidget(size: 22.0, text: "Ibrohim Qobilov"),
                  ),
                  TextWidget(
                      size: 12.0,
                      text: "lillie.harrison90 / Parasol / New-york"),
                ],
              ),
            ),
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.70,
                child: ListView.builder(itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Divider(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextWidget(size: 14.0, text: "flutter upgrate"),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: getH(10.0), bottom: getH(10)),
                                  child: TextWidget(
                                    size: 12.0,
                                    text: "Apache Infrastructure Puppet",
                                    color: Colors.grey,
                                  ),
                                ),
                                const Icon(Icons.arrow_forward_ios)
                              ],
                            ),
                            Row(
                              children: [
                                IconTextWidgets(
                                  icon: const Icon(Icons.visibility),
                                  text: "1333",
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: getW(15.0)),
                                  child: IconTextWidgets(
                                  icon: const Icon(Icons.star),
                                  text: "1333",
                                ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: getW(15.0)),
                                  child: IconTextWidgets(
                                  icon: const Icon(Icons.network_cell),
                                  text: "1333",
                                ),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  );
                }))
          ],
        ),
      ),
    );
  }
}

