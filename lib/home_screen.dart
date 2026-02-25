import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/search_screen.dart';

import 'core/routing/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title:  Padding(
         padding: const EdgeInsets.all(32),
         child: Text('Explore'),
       ),
      actions: [ Padding(
        padding: const EdgeInsets.all(16),
        child: InkWell(onTap: (){
          GoRouter.of(context).push(AppRoutes.searchScreen);
        },
            child: Icon(Icons.search)),
      ),],
       backgroundColor: Color(0xffE9EEFA),
     ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32,vertical: 16),
        child: Column(
          children: [
            SizedBox(
              height: 32,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    width: 90,
                    height: 32,
                    margin: EdgeInsets.symmetric(horizontal: 3),
                    decoration: BoxDecoration(
                      color: Color(0xffE9EEFA),
                      borderRadius: BorderRadius.circular(56),
                    ),
                    child: Center(
                      child: Text(
                        'Travel',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 24,),
            Container(
              width: 366,
              height: 206,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: AssetImage('assets/images/Image.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: Text('Apple Unveils Revolutionary AI Features ',style: TextStyle(fontWeight: FontWeight.bold),),
              subtitle: Text('Manar . May 1, 2025'),
            ),
            SizedBox(height: 24,),
            Expanded(
              child: SizedBox(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16), // ← ده اللي بيعمل المسافة بين العناصر
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Main Title $index',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  'Sub Title $index',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey[600],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 12),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              'assets/images/Image.png',
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
