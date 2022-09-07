import 'package:flutter/material.dart';
import 'package:himachal_gk/Model/question_model.dart';
import 'package:himachal_gk/OneLinerQuestion/Category_Wise/river_gk.dart';

class Quiz extends StatelessWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Question 1/10",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  width: double.infinity,
                  padding: EdgeInsets.all(30),
                  child: Text(
                    'Q.1. This is the Question, you should write here',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'HP TET 2022',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 150,
                ),
                Column(
                  children: [
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(vertical: 8),
                      height: 48,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Option 1",
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          primary: Colors.white,
                          onPrimary: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(vertical: 8),
                      height: 48,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Option 2",
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          primary: Colors.white,
                          onPrimary: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(vertical: 8),
                      height: 48,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Option 3",
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          primary: Colors.white,
                          onPrimary: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(vertical: 8),
                      height: 48,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Option 4",
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          primary: Colors.white,
                          onPrimary: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
