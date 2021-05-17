import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:touchable_opacity/touchable_opacity.dart';

import '../widgets/fourthBody.dart';
import 'router.dart';

class FourthPage extends StatefulWidget {
  @override
  _FourthPageState createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  @override
  Widget build(BuildContext context) {
    final double phisW = MediaQuery.of(context).size.width *
        MediaQuery.of(context).devicePixelRatio;
    final double phisH = MediaQuery.of(context).size.height *
        MediaQuery.of(context).devicePixelRatio;
    final bool mobile = GetPlatform.isMobile ? true : false;
    print(phisW);
    double width = context.width;
    print(phisH);
    double height = context.height;
    return Scaffold(
      appBar: AppBar(
        title: phisW > phisH * 1.3 && !mobile
            ? Text(
                'Simple Flutter Website',
                style: Theme.of(context).textTheme.headline1,
              )
            : null,
      ),
      drawer: phisW < phisH * 1.3 && !mobile
          ? Drawer(
              child: ListView(
                children: [
                  TouchableOpacity(
                    onTap: () => Get.offAll(() => Home()),
                    child: DrawerHeader(
                      padding: const EdgeInsets.all(1.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Simple Flutter Website",
                            style: Theme.of(context).textTheme.headline2,
                            textAlign: TextAlign.center,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(FontAwesomeIcons.idCard,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(color: Colors.orangeAccent),
                    ),
                  ),
                  TouchableOpacity(
                    onTap: () => Get.offAll(() => Home()),
                    child: ListTile(
                      title: Text("Home"),
                      trailing: Icon(FontAwesomeIcons.idBadge),
                    ),
                  ),
                  TouchableOpacity(
                    onTap: () => Get.offAll(() => SecondPage()),
                    child: ListTile(
                      title: Text("Second Page"),
                      trailing: Icon(FontAwesomeIcons.toolbox),
                    ),
                  ),
                  TouchableOpacity(
                    onTap: () => Get.offAll(() => ThirdPage()),
                    child: ListTile(
                      title: Text("Third Page"),
                      trailing: Icon(FontAwesomeIcons.mailBulk),
                    ),
                  ),
                  TouchableOpacity(
                    onTap: () => Get.offAll(() => FourthPage()),
                    child: ListTile(
                      title: Text("Fourth Page"),
                      trailing: Icon(FontAwesomeIcons.grinSquintTears),
                    ),
                  ),
                  TouchableOpacity(
                    onTap: () => Get.offAll(() => Faq()),
                    child: ListTile(
                      title: Text("FAQ"),
                      trailing: Icon(FontAwesomeIcons.questionCircle),
                    ),
                  ),
                ],
              ),
            )
          : null,
      body: Container(
        width: width,
        height: height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              phisW > phisH * 1.3
                  ? Container(
                      width: width,
                      height: height,
                      child: Column(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              color: Colors.orangeAccent,
                              width: width,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(width: width * 0.092),
                                  TouchableOpacity(
                                    onTap: () => Get.offAll(() => Home()),
                                    child: Container(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(
                                        'Home',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline2,
                                      ),
                                    ),
                                  ),
                                  TouchableOpacity(
                                    onTap: () => Get.offAll(() => SecondPage()),
                                    child: Container(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(
                                        'Second Page',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline2,
                                      ),
                                    ),
                                  ),
                                  TouchableOpacity(
                                    onTap: () => Get.offAll(() => ThirdPage()),
                                    child: Container(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(
                                        'Order in Bulk',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline2,
                                      ),
                                    ),
                                  ),
                                  TouchableOpacity(
                                    onTap: () => Get.offAll(() => FourthPage()),
                                    child: Container(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(
                                        'Fourth Page',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline2,
                                      ),
                                    ),
                                  ),
                                  TouchableOpacity(
                                    onTap: () => Get.offAll(() => Faq()),
                                    child: Container(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(
                                        'FAQ',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline2,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 13,
                            child: Container(
                              height: height * 0.9,
                              width: width,
                              child: Row(
                                children: [
                                  Expanded(flex: 1, child: SizedBox()),
                                  Expanded(
                                      flex: 8,
                                      child: FourthBody(height: height)),
                                  Expanded(flex: 1, child: SizedBox()),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ))
                  : FourthBody(width: width, height: height),
              Container(
                color: Colors.grey[900],
                height: 300,
                width: width,
                child: Text(
                  'Footer',
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
