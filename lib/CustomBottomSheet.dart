import 'package:flutter/material.dart';
import 'package:pocket_map_ui/Memory.dart';
class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.75,
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text('추억 모아 보기', style: TextStyle(fontWeight: FontWeight.bold),),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
          const Memory(title: '제목', location: '인하대학교 공학과', dateTime: '2023년 04월 23일', images: ['assets/images/cat.png', 'assets/images/cat2.png'],
              content: '식육목(食肉目) 고양이과의 포유류에 속하며, 반려묘 또는 고양이과의 총칭. 한자로는 묘(猫)라 하고, 수고양이를 낭묘(郎猫), 암고양이를 여묘(女猫), 얼룩고양이를 표화묘(豹花猫),')
          ],
        ),
      );
  }
}
