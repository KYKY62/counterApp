import 'package:counter_app/routes/page_route.dart';
import 'package:counter_app/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
      getPages: AppPage.pageName,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Utama"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Material(
              color: Colors.amber,
              child: InkWell(
                onTap: () => Get.toNamed(RouteName.counter),
                child: const SizedBox(
                  width: 200,
                  height: 40,
                  child: Center(
                    child: Text(
                      "Counter",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Material(
              color: Colors.purple,
              child: InkWell(
                onTap: () => Get.toNamed(RouteName.counterGetX),
                child: const SizedBox(
                  width: 200,
                  height: 40,
                  child: Center(
                    child: Text(
                      "Counter With GetX",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
