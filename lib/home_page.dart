import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:provider_counter_app/business_logic/counter.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context, listen: true);

    return Scaffold(
        body: SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              counter.value.toString(),
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.w),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {
                      counter.increaseValue();
                    },
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Colors.purple.withOpacity(0.7),
                    ),
                    child: Text(
                      'Increment',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.w),
                    )),
                SizedBox(
                  width: 20.w,
                ),
                TextButton(
                    onPressed: () {
                      counter.decreaseValue();
                    },
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Colors.purple.withOpacity(0.7),
                    ),
                    child: Text(
                      'Decrement',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.w),
                    ))
              ],
            )
          ],
        ),
      ),
    ));
  }
}
