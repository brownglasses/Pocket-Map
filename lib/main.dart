import 'package:flutter/material.dart';
import 'package:pocket_map_ui/CustomBottomSheet.dart';
import 'package:pocket_map_ui/CustormDialog.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
          home: MyHome(),
        );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Stack(
            children: [
              Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        dialogBuilder(context);
                      },
                      child: const Text('AlertDialog')),
                  ElevatedButton(
                      onPressed: () {
                        bottomSheetBuilder(context);
                      },
                      child: const Text('BottormSheetDialog'))
                ],
              ),
            ),

          ]),
        );
  }

  Future<void> dialogBuilder(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (context) {
        return const CustomDialog();
      },
    );
  }

  Future<void> bottomSheetBuilder(
      BuildContext context) {
    return showModalBottomSheet(
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          // <-- SEE HERE
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(25.0),
          ),
        ),
        context: context,
        builder: (context) {
          return Stack(
            children: [
              const CustomBottomSheet(),
              Positioned(
                  right: 16.0,
                  bottom: 16.0,
                  child: FloatingActionButton(
                    backgroundColor: Colors.white,
                    onPressed: () {
                      // Handle FloatingActionButton onPressed event
                    },
                    child: Image.asset('assets/images/map_icon.png',),
                  )
                     ),
            ],
          );
        });
  }

}
