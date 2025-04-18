import 'package:coinllector_app/shared/components/bottom_sheets/bottom_sheet_tile.dart';
import 'package:flutter/material.dart';
import 'package:coinllector_app/config/themes/sizes.dart';

void showModalList(BuildContext context) {
  final colorScheme = Theme.of(context).colorScheme;
  showModalBottomSheet(
    backgroundColor: colorScheme.surface,
    context: context,
    isScrollControlled: true, // Allow content to control the height
    builder: (context) {
      List<String> titles = ["A", "D", "F", "G", "J"];

      return StatefulBuilder(
        builder: (context, setState) {
          return Padding(
            padding: const EdgeInsets.all(AppSizes.p16),
            child: SingleChildScrollView(
              // Wrap the content in a SingleChildScrollView
              child: Column(
                mainAxisSize:
                    MainAxisSize
                        .min, // Ensures column only takes up as much space as needed
                children: List.generate(titles.length, (index) {
                  return Column(
                    children: [
                      ModalListTile(title: titles[index], hasCheckbox: true),
                      SizedBox(
                        height: AppSizes.p12,
                      ), // Add spacing between items
                    ],
                  );
                }),
              ),
            ),
          );
        },
      );
    },
  );
}
