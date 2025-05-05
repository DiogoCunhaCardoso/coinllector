import 'package:coinllector_app/shared/components/bottom_sheets/year_list_tile.dart';
import 'package:coinllector_app/shared/enums/years_enum.dart';
import 'package:flutter/material.dart';
import 'package:coinllector_app/config/themes/sizes.dart';

Future<CoinYear?> showYearSelectionModal(BuildContext context) async {
  final colorScheme = Theme.of(context).colorScheme;
  final mediaQuery = MediaQuery.of(context);

  /*   CoinYear? selectedYear; */

  return await showModalBottomSheet<CoinYear>(
    context: context,
    isScrollControlled: true,
    builder: (context) {
      return Container(
        decoration: BoxDecoration(
          color: colorScheme.surface,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
          boxShadow: [
            BoxShadow(
              color: colorScheme.surfaceContainerHighest,
              blurRadius: 5.0,
            ),
          ],
        ),
        child: ConstrainedBox(
          constraints: BoxConstraints(maxHeight: mediaQuery.size.height * 0.75),
          child: Padding(
            padding: const EdgeInsets.all(AppSizes.p16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: AppSizes.p16),
                // Scrollable list of years
                Flexible(
                  child: SingleChildScrollView(
                    child: Column(
                      children:
                          CoinYear.values.map((year) {
                            return Column(
                              children: [
                                YearSheetTile(
                                  year: year,
                                  isSelected:
                                      false, // no need to track selection
                                  onSelected: (_) {
                                    // Immediately return and close the sheet
                                    Navigator.pop(context, year);
                                  },
                                ),
                                const SizedBox(height: AppSizes.p12),
                              ],
                            );
                          }).toList(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
