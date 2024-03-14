import 'package:bamboo/shared/helpers/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HelloSceen extends ConsumerStatefulWidget {
  const HelloSceen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HelloSceenState();
}

class _HelloSceenState extends ConsumerState<HelloSceen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: context.colors.blackBamboo,
      height: MediaQuery.sizeOf(context).height,
      width: MediaQuery.sizeOf(context).width,
      child: Column(
        children: [
          Container(
            color: context.colors.blackBamboo,
            child: const Text("data"),
          ),
          // const BambooPhoneField(onCha)
          // BambooPhoneField((p0) => null)
        ],
      ),
    ));
  }
}
