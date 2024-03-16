import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_app/apps/routes/router_name.dart';
import 'package:quiz_app/pages/article/article_page.dart';
import 'package:quiz_app/pages/category/category_page.dart';

class RouterConfigCustom {
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: RoutersPath.homePath,
        builder: (BuildContext context, GoRouterState state) {
          return const ArticlePage();
        },
        routes: <RouteBase>[
          GoRoute(
            name: RoutersName.categoryName,
            path: RoutersPath.categoryPath,
            builder: (BuildContext context, GoRouterState state) {
              return const CategoryPage();
            },
            routes: <RouteBase>[
              // GoRoute(
              //   // name: RoutersName.articleName,
              //   // path: RoutersName.articleName,
              //   // builder: (BuildContext context, GoRouterState state) {
              //   //   return const ArticlePage();
              //   // },
              // ),
            ],
          ),
        ],
      ),
    ],
  );
}
