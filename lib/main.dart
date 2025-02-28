import 'package:carousel_slider/carousel_controller.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 0;

  List titles = ["Shaklni yaxshilash", "Zarur va Kamroq", "Yog'ni yo'qotish"];
  List subtitles = [
    "Menda tanadagi yog 'miqdori kam va ko'proq mushak qurishni xohlayman",
    "Men \"oriq semiz\"man. ingichka ko'rinadi, lekin shakli yo'q. Men o'rganish mushaklarini to'g'ri yo'l bilan qo'shmoqchiman",
    "Menda 20 funtdan ortiq vazn yo'qotish kerak. Men bu yog'larning barchasini tashlab, mushak massasini olishni xohlayman",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}













