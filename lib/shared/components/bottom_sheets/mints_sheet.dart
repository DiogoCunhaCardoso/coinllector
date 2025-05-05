import 'package:coinllector_app/shared/components/bottom_sheets/mint_sheet_tile.dart';
import 'package:coinllector_app/shared/enums/mint.dart';
import 'package:flutter/material.dart';
import 'package:coinllector_app/config/themes/sizes.dart';

Future<List<MintMark>?> showMintSelectionModal(
  BuildContext context,
  int coinId,
  List<MintMark> currentMints,
) async {
  final colorScheme = Theme.of(context).colorScheme;

  // Create a set of mints that are currently selected
  final selectedMints = Set<MintMark>.from(currentMints);

  return await showModalBottomSheet<List<MintMark>>(
    context: context,
    isScrollControlled: true,
    builder: (context) {
      return StatefulBuilder(
        builder: (context, setState) {
          return Container(
            decoration: BoxDecoration(
              color: colorScheme.surface,
              borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
              boxShadow: [
                BoxShadow(
                  color: colorScheme.surfaceContainerHighest,
                  blurRadius: 5.0,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(AppSizes.p16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: AppSizes.p16),
                  ...MintMark.values.map((mint) {
                    final isSelected = selectedMints.contains(mint);
                    return Column(
                      children: [
                        MintSheetTile(
                          mintMark: mint,
                          isSelected: isSelected,
                          onSelected: (selected) {
                            setState(() {
                              if (selected == true) {
                                selectedMints.add(mint);
                              } else {
                                selectedMints.remove(mint);
                              }
                            });
                          },
                        ),
                        const SizedBox(height: AppSizes.p12),
                      ],
                    );
                  }),
                  const SizedBox(height: AppSizes.p16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('Cancel'),
                      ),
                      ElevatedButton(
                        onPressed:
                            () =>
                                Navigator.pop(context, selectedMints.toList()),
                        child: const Text('Save'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      );
    },
  );
}
