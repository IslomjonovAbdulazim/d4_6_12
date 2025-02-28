import 'package:carousel_slider/carousel_slider.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: false,
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
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20),
              Text(
                "Maqsadingiz nima?",
                style: TextStyle(fontSize: 25),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  "Bu sizga eng yaxshi dasturni tanlashga yordam beradi",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
              Expanded(
                child: CarouselSlider(
                  items: List.generate(
                    3,
                    (index) => Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      decoration: BoxDecoration(
                        color: Colors.pinkAccent,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            child: SvgPicture.asset(
                              "assets/img${index + 1}.svg",
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            titles[index],
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            subtitles[index],
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  options: CarouselOptions(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
