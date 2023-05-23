import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        constraints: const BoxConstraints(
          minWidth: 200, // Minimum width
          maxWidth: 300, // Maximum width
          minHeight: 400, // Minimum height
          maxHeight: 500, // Maximum height
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: (){
                    Navigator.of(context).pop();
                  }, icon: const Icon(Icons.clear)),
                  const Text('마커 수정', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 16), ),
                  TextButton(onPressed: (){
                    Navigator.of(context).pop();
                  }, child: const Text('저장', style: TextStyle(color: Colors.black)
                    ,))
                ],
              ),
              const SizedBox(height: 8,),
              Row(
                children: [
                  const Text("제목"),
                  const SizedBox(width: 5,),
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Color(0xffEFC903),
                            width: 1.0, // Adjust the width as needed
                          ),
                        ),
                      ),
                      padding: const EdgeInsets.only(bottom: 3, top: 6),
                      margin: const EdgeInsets.only(right: 20),

                      child: const TextField(
                        decoration: null,
                        ),
                      ),
                  ),



                ],
              ),
              const SizedBox(height: 8,),
              Row(
                children: [
                  const Text('장소'),
                  TextButton(onPressed: (){}, child: Text('인하대학교 경영대학', style: TextStyle(color: Colors.black),))
                ],
              ),
              const SizedBox(height: 8,),
              const Text('기본마커'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(onPressed: (){}, iconSize: 20,icon: Image.asset('assets/images/Fire_fill.png')),
                      IconButton(onPressed: (){}, iconSize: 20,icon: Image.asset('assets/images/Fire_fill.png')),
                      IconButton(onPressed: (){}, iconSize: 20,icon: Image.asset('assets/images/Fire_fill.png')),
                      IconButton(onPressed: (){}, iconSize: 20,icon: Image.asset('assets/images/Fire_fill.png')),
                    ],
                  ),
                  IconButton(onPressed: (){}, iconSize: 28,icon: Image.asset('assets/images/happy.png')),
                ],
              ),
              const Text("커스텀 마커"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(width: 0, height: 0,),
                  IconButton(onPressed: () {},iconSize: 28, icon: Image.asset('assets/images/img_box.png'))
                ],
              ),
              const Text("마커 미리보기"),
              const SizedBox(height: 12,),
              Center(

                child:  Container(constraints: const BoxConstraints(
                  minHeight: 50, // Minimum height
                  maxHeight: 80,
                ),
                  child: ClipRRect(

                      borderRadius: BorderRadius.circular(30.0),
                      child: Image.asset('assets/images/cat.png')// Text(key['title']),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}