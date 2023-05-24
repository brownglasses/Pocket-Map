import 'package:flutter/material.dart';

class Memory extends StatelessWidget {
  const Memory(
      {Key? key,
      required this.title,
      required this.location,
      required this.dateTime,
      required this.images,
      required this.content})
      : super(key: key);
  final String title;
  final String location;
  final String dateTime;
  final List<String> images;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),),
          IconButton(
              onPressed: () {},
              icon: Image.asset('assets/images/Meatballs_menu.png'))
        ],
      ),
      Align(alignment: Alignment.centerLeft, child: Text(location, style: const TextStyle(
        fontSize: 15,
        color: Color(0xff8D8D8D),
      ),)),
      const SizedBox(
        height: 5,
      ),
      Align(alignment: Alignment.centerLeft, child: Text(dateTime, style: const TextStyle(fontSize: 15),)),
      const SizedBox(
        height: 5,
      ),
      Align(
        alignment: Alignment.centerLeft,
          child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: images.map((image) => buildDataRow(image)).toList(),
        ),
      )),
      Text(
        content,
        softWrap: true,
      ),
    ]);
  }

  Widget buildDataRow(String image) {
    return Container(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(
          image,
          width: 100,
          height: 100,
        ));
  }
}
