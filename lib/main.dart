import 'package:flutter/material.dart';
import 'package:radiology_app/components/tab_text.dart';
import 'package:radiology_app/constants.dart';
import 'package:radiology_app/tabs/marketplace.dart';
import 'package:radiology_app/tabs/news.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this, initialIndex: 1);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Radiology",
        theme: ThemeData(
          colorScheme: const ColorScheme.light(
            primary: primaryColor,
            secondary: secondaryColor,
          ),
          useMaterial3: true,
        ),
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: appBarColor,
            leading: IconButton(
              icon: Container(
                margin: const EdgeInsets.all(5),
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: appBarColor,
                    border: Border.all(color: primaryColor)),
                child: const Center(
                  child: Icon(
                    Icons.arrow_back_ios_new_sharp,
                    color: primaryColor,
                    size: 20,
                  ),
                ),
              ),
              onPressed: () {},
            ),
            title: const Text(
              "Radiology",
              style: TextStyle(
                fontFamily: "Avenir",
                fontWeight: FontWeight.w800,
                fontSize: 24,
              ),
            ),
            actions: [
              IconButton(
                icon: Image.asset("assets/img/heart.png"),
                onPressed: () {},
              ),
              IconButton(
                icon: Image.asset(
                  "assets/img/share.png",
                  scale: 0.8,
                ),
                onPressed: () {},
              ),
              Image.asset(
                "assets/img/AI.png",
                scale: 0.8,
              ),
            ],
            bottom: TabBar(
              controller: tabController,
              tabs: const [
                Tab(
                  child: TabText(text: "Overview"),
                ),
                Tab(
                  child: TabText(text: "Marketplace"),
                ),
                Tab(
                  child: TabText(text: "News"),
                ),
              ],
            ),
          ),
          body: TabBarView(
            controller: tabController,
            children: const [
              Center(
                child: Text("Under Construction... 🚧"),
              ),
              Marketplace(),
              News()
            ],
          ),
        ));
  }
}
