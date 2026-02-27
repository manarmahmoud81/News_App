import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:news_app/generated/locale_keys.g.dart';
import 'core/routing/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            // ===== Drawer Header =====
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Color(0xffE9EEFA),
              ),
              child: Center(
                child: Text(
                  'Authentication.settings'.tr(),
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            // ===== English =====
            ListTile(
              leading: const Icon(Icons.language),
              title: Text('Authentication.english'.tr()),
              onTap: () async {
                await context.setLocale(const Locale('en'));
                Navigator.pop(context);
              },
            ),

            // ===== Arabic =====
            ListTile(
              leading: const Icon(Icons.language),
              title: Text('Authentication.arabic'.tr()),
              onTap: () async {
                await context.setLocale(const Locale('ar'));
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(32),
          child: Text(
            LocaleKeys.Authentication_explore.tr(),
              // 'Authentication.explore'.tr()
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: InkWell(
              onTap: () {
                GoRouter.of(context).push(AppRoutes.searchScreen);
              },
              child: const Icon(Icons.search),
            ),
          ),
        ],
        backgroundColor: const Color(0xffE9EEFA),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        child: Column(
          children: [
            // ===== Horizontal List =====
            SizedBox(
              height: 32,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    width: 90,
                    height: 32,
                    margin: const EdgeInsets.symmetric(horizontal: 3),
                    decoration: BoxDecoration(
                      color: const Color(0xffE9EEFA),
                      borderRadius: BorderRadius.circular(56),
                    ),
                    child: Center(
                      child: Text(
                        'Authentication.travel'.tr(),
                        style: const TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 24),

            // ===== Top Image =====
            Container(
              width: 366,
              height: 206,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                  image: AssetImage('assets/images/Image.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // ===== Headline =====
            ListTile(
              title: Text(
                'Authentication.headline'.tr(),
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Authentication.author_date'.tr()),
            ),

            const SizedBox(height: 24),

            // ===== Vertical List =====
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Authentication.main_title'.tr(args: ['$index']),
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'Authentication.sub_title'.tr(args: ['$index']),
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 12),
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
          ],
        ),
      ),
    );
  }
}