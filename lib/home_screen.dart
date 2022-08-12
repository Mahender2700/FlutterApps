import 'package:flutter/material.dart';
import 'package:himachal_gk/OneLinerQuestion/Category_Wise/category_wise_screen.dart';
import 'OneLinerQuestion/subCategory_screen.dart';
import 'drawer.dart';
import 'extracted_widgets/extracted_widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 240, 240, 240),
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text('Himachal GK'),
      ),
      drawer: MainDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Text(
                      'Know Your State',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        letterSpacing: 1.5,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CategoryCard(
                        iconImg: Icons.near_me,
                        lebel: 'Current\nAffairs',
                        onTapHandler: () {
                          Navigator.of(context).pushNamed('/CurrentAffairs');
                        }),
                    CategoryCard(
                      iconImg: Icons.local_offer,
                      lebel: 'History',
                      onTapHandler: () {
                        Navigator.of(context).pushNamed('/History');
                      },
                    ),
                    CategoryCard(
                      iconImg: Icons.unfold_more,
                      lebel: 'Fact GK',
                      onTapHandler: () {
                        Navigator.of(context).pushNamed('/FactGK');
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                // One Liner Questions

                Row(
                  children: [
                    Text(
                      'One Liner Questions',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        letterSpacing: 1.5,
                      ),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CategoryCard(
                      iconImg: Icons.category,
                      lebel: 'Category\nWise',
                      onTapHandler: () {
                        Navigator.of(context).pushNamed('/CategoryWiseScreen');
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) {
                        //   return CategoryWiseScreen();
                        // }));
                      },
                    ),
                    CategoryCard(
                      iconImg: Icons.mouse,
                      lebel: 'Distt. Wise',
                      onTapHandler: () {
                        Navigator.of(context).pushNamed('/DisttWiseScreen');
                      },
                    ),
                    CategoryCard(
                      iconImg: Icons.local_library,
                      lebel: 'Mixed GK',
                      onTapHandler: () {
                        Navigator.of(context).pushNamed('/MixedGkScreen');
                      },
                    ),
                  ],
                ),

                SizedBox(
                  height: 20,
                ),
                // Test Your Knowledge

                Row(
                  children: [
                    Text(
                      'Test Your Knowledge',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        letterSpacing: 1.5,
                      ),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CategoryCard(
                      iconImg: Icons.school,
                      lebel: 'Category\nQuiz',
                      onTapHandler: () {
                        Navigator.of(context).pushNamed('/CategoryQuiz');
                      },
                    ),
                    CategoryCard(
                      iconImg: Icons.menu,
                      lebel: 'Distt.\nWise Quiz',
                      onTapHandler: () {
                        Navigator.of(context).pushNamed('/DisttWiseQuiz');
                      },
                    ),
                    CategoryCard(
                      iconImg: Icons.more,
                      lebel: 'Mixed Quiz',
                      onTapHandler: () {
                        Navigator.of(context).pushNamed('/MixedQuiz');
                      },
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
