import 'package:flutter/material.dart';
import 'package:pocket_map_ui/CustormDialog.dart';
import 'package:pocket_map_ui/CustomBottomSheet.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
                        _dialogBuilder(context);
                      },
                      child: Text('AlertDialog')),
                  ElevatedButton(
                      onPressed: () {
                        _BottomSheetBuilder(context);
                      },
                      child: Text('BottormSheetDialog'))
                ],
              ),
            ),

          ]),
        );
  }

  Future<void> _dialogBuilder(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return CustomDialog();
      },
    );
  }

  Future<void> _BottomSheetBuilder(
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
        builder: (BuildContext context) {
          return Stack(
            children: [
              customBottomSheet(),
              Positioned(
                  right: 16.0,
                  bottom: 16.0,
                  child: FloatingActionButton(
                    backgroundColor: Colors.white,
                    onPressed: () {
                      // Handle FloatingActionButton onPressed event
                    },
                    child: Image.asset("assets/images/map_icon.png",),
                  )
                     ),
            ],
          );
        });
  }

}
