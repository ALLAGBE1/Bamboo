import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';

class BambooPhoneField extends ConsumerWidget {
  const BambooPhoneField(this.onChanged, {super.key});
  final Function(PhoneNumber)? onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IntlPhoneField(
      decoration: const InputDecoration(
        labelText: '_ _ _ _ _ _',
        border: OutlineInputBorder(
          borderSide: BorderSide(),
        ),
      ),
      initialCountryCode: 'CI',
      onChanged: onChanged,
      // onChanged: (phone) {
      //   print(phone.completeNumber);
      // },
    );
  }
}
