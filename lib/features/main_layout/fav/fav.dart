import 'package:flutter/material.dart';
import '../../../core/colors_manager.dart';
import '../../../core/widgets/custom_text_form_field.dart';
import '../../../l10n/app_localizations.dart';
import '../home/event_item.dart';

class Favourite extends StatelessWidget {
  const Favourite({super.key});

  @override
  Widget build(BuildContext context) {
    AppLocalizations appLocalizations = AppLocalizations.of(context)!;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CustomTextFormField(hint: appLocalizations.search,
            prefixIcon: Icons.search, prefixIconColor: ColorsManager.blue,
            ),
            Expanded(child: ListView.builder(itemBuilder: (context, index) => EventItem(),itemCount: 10,))

          ],
        ),
      ),
    );
  }
}
