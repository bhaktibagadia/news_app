// import 'dart:js';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/categorymodel.dart';
import 'package:news_app/models/slider_model.dart';
import 'package:news_app/services/data.dart';
import 'package:news_app/services/slider_data.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<CategoryModel> categories = [];
  List<sliderModel> sliders = [];
  @override
  void initState() {
    categories = getCategories();
    sliders = getSliders();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("News"),
            Text(
              "Now",
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Container(
        child: Column(children: [
          Container(
            height: 70,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return CategoryTile(
                      image: categories[index].image,
                      categoryName: categories[index].categoryName);
                }),
          ),
          SizedBox(
            height: 30.0,
          ),
          CarouselSlider.builder(
              itemCount: sliders.length,
              itemBuilder: (context, index, realIndex) {
                String? res = sliders[index].image;
                String? res1 = sliders[index].name;
                return buildImage(res!, index, res1!);
              },
              options: CarouselOptions(
                  height: 250,
                  // viewportFraction: 1,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.height))
        ]),
      ),
    );
  }

  Widget buildImage(String image, int index, String name) => Container(
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              image,
              height: 250,
              fit: BoxFit.cover,
              width: MediaQuery.of(context as BuildContext).size.width,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 130.0),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            child: Text(
              name,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500),
            ),
          )
        ],
      ));
}

class CategoryTile extends StatelessWidget {
  final image, categoryName;
  CategoryTile({this.categoryName, this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.asset(
              image,
              width: 120,
              height: 60,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: 120,
            height: 60,
            // decoration: BoxDecoration(borderRadius: BorderRadius.circular(6)),
            color: Colors.black26,
            child: Text(
              categoryName,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }
}
