import 'package:flutter/material.dart';
import 'package:flutter_application_1/Controllers/Languages.dart';
import 'package:flutter_application_1/Models/fakeData.dart';
import 'package:flutter_application_1/Pages/CrewPage.dart';
import 'package:flutter_application_1/Pages/MarinePage.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FakeData();
    return GetMaterialApp(
      title: 'Flutter Demo',
      defaultTransition: Transition.native,
      translations: LanguageTokens(),
      locale: const Locale('tr'),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Digital Ocean'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool switchValue = true;
  int selectedindex = 0;
  List<Widget> tabList = [];
  @override
  void initState() {
    tabList = [const CrewPage(), const MarinePage()];
    super.initState();
  }

  String get digitalOcean =>
      "https://www.digitall-ocean.com/img/digitall-ocean-logo.png";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              child: Image.network(digitalOcean),
            ),
            ListTile(
              title: Text('Contracts'.tr),
            ),
            ListTile(
              title: Text('CRM'.tr),
            ),
            ListTile(
              title: Text('vessel'.tr),
            ),
            ListTile(
              title: Text('crew'.tr),
              onTap: () {
                setState(() {
                  selectedindex = 0;
                });
                Get.back();
              },
            ),
            ListTile(
              trailing: Switch(
                  value: switchValue,
                  onChanged: (value) {
                    setState(() {
                      switchValue = value;
                      if (value) {
                        Get.updateLocale(const Locale('tr'));
                      } else {
                        Get.updateLocale(const Locale('en'));
                      }
                    });
                  }),
              title: Text('changeLanguage'.tr),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.person),
            label: "crew".tr,
            backgroundColor: Colors.grey,
          ),
          BottomNavigationBarItem(
              icon: const Icon(Icons.water),
              label: "marine".tr,
              backgroundColor: Colors.blue[400])
        ],
        type: BottomNavigationBarType.shifting,
        currentIndex: selectedindex,
        onTap: (index) {
          setState(() {
            selectedindex = index;
          });
        },
      ),
      body: tabList[selectedindex],
      appBar: AppBar(
        title: Text(widget.title),
      ),
    );
  }
}
