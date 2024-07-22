import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../observers/route_observer.dart';
import 'app_routes.dart';

final appNavigator = GoRouter(
  initialLocation: AppRoutes.initial.path,
  debugLogDiagnostics: kDebugMode,
  observers: [
    AppRouteObserver(),
  ],
  routes: [
    GoRoute(
      path: AppRoutes.initial.path,
      name: AppRoutes.initial.name,
      builder: (context, state) => Scaffold(
        body: Center(
          child: Column(
            children: [
              const Text(
                "Initial Page",
              ),
            ],
          ),
        ),
      ),
    ),
    // StatefulShellRoute.indexedStack(
    //   builder: (context, state, navigationShell) => Scaffold(
    //     body: Row(
    //       children: [
    //         Container(
    //           width: MediaQuery.of(context).size.width * 0.2,
    //         ),
    //         VerticalDivider(
    //           width: 0,
    //           color: Theme.of(context).dividerColor,
    //         ),
    //         Expanded(
    //           child: Column(
    //             children: [
    //               Container(
    //                 padding: const EdgeInsets.symmetric(
    //                   horizontal: 24,
    //                   vertical: 18,
    //                 ),
    //                 margin: const EdgeInsets.all(12),
    //                 decoration: BoxDecoration(
    //                   color: AppColors.lightGreen,
    //                   borderRadius: BorderRadius.circular(6),
    //                 ),
    //                 child: Row(
    //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                   children: [
    //                     Text(
    //                       "Home${state.matchedLocation}",
    //                       style:
    //                           Theme.of(context).textTheme.bodySmall?.copyWith(
    //                                 color: AppColors.white,
    //                               ),
    //                     ),
    //                     Row(
    //                       mainAxisAlignment: MainAxisAlignment.end,
    //                       crossAxisAlignment: CrossAxisAlignment.center,
    //                       children: [
    //                         const Icon(
    //                           IconConstants.profileIcon,
    //                           color: AppColors.white,
    //                         ),
    //                         const SizedBox(
    //                           width: 5,
    //                         ),
    //                         Text(
    //                           "johndoe@gmail.com",
    //                           style: Theme.of(context)
    //                               .textTheme
    //                               .titleSmall
    //                               ?.copyWith(
    //                                 color: AppColors.white,
    //                                 fontWeight: FontWeight.w700,
    //                               ),
    //                         ),
    //                         const SizedBox(
    //                           width: 10,
    //                         ),
    //                         const Icon(
    //                           IconConstants.settingsIcon,
    //                           color: AppColors.white,
    //                         ),
    //                         const SizedBox(
    //                           width: 10,
    //                         ),
    //                         const Icon(
    //                           IconConstants.notificationsIcon,
    //                           color: AppColors.white,
    //                         ),
    //                       ],
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //               const SizedBox(
    //                 height: 10,
    //               ),
    //               Expanded(
    //                 child: Padding(
    //                   padding: const EdgeInsets.all(12),
    //                   child: navigationShell,
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    //   branches: [
    //     StatefulShellBranch(
    //       routes: [
    //         GoRoute(
    //           path: AppRoutes.patientsListing.path,
    //           name: AppRoutes.patientsListing.name,
    //           builder: (context, state) => const PatientListingScreen(),
    //         ),
    //       ],
    //     ),
    //     StatefulShellBranch(
    //       routes: [
    //         GoRoute(
    //           path: AppRoutes.registration.path,
    //           name: AppRoutes.registration.name,
    //           builder: (context, state) => const Scaffold(
    //             body: Center(
    //               child: Text(
    //                 "Registration Screen",
    //               ),
    //             ),
    //           ),
    //         ),
    //       ],
    //     )
    //   ],
    // ),
  ],
);
