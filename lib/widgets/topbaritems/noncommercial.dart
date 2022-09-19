import 'package:flutter/material.dart';
import 'package:radianteam_website/pages/noncommercial.dart';

import 'dart:html' as html;

enum NonCommercialMenu {
  happyBank,
  queues,
  wishList,
  shortURLs,
  requestGenerator
}

class NonCommercialMenuItem extends StatelessWidget {
  const NonCommercialMenuItem({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<NonCommercialMenu>(
        child: const Padding(
          padding: EdgeInsets.all(10),
          child: Text('Non-commercial'),
        ),
        onSelected: (value) {
          Navigator.push(
            context,
            PageRouteBuilder(
                transitionDuration: const Duration(milliseconds: 0),
                pageBuilder: (context, __, ___) => const NonCommercialPage()),
          );
          html.window.history
              .pushState(null, 'Non-commercial', NonCommercialPage.route);
        },
        // Callback that sets the selected popup menu item.
        itemBuilder: (BuildContext context) =>
            <PopupMenuEntry<NonCommercialMenu>>[
              const PopupMenuItem<NonCommercialMenu>(
                value: NonCommercialMenu.happyBank,
                child: Text('Bank of happiness'),
              ),
              const PopupMenuItem<NonCommercialMenu>(
                value: NonCommercialMenu.queues,
                child: Text('Queue management'),
              ),
              const PopupMenuItem<NonCommercialMenu>(
                value: NonCommercialMenu.wishList,
                child: Text('Wish list'),
              ),
              const PopupMenuItem<NonCommercialMenu>(
                value: NonCommercialMenu.shortURLs,
                child: Text('URL shortener'),
              ),
              const PopupMenuItem<NonCommercialMenu>(
                value: NonCommercialMenu.requestGenerator,
                child: Text('Request generator'),
              ),
            ]);
  }
}
