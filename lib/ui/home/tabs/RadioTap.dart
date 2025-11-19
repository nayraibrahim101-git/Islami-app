import 'package:flutter/material.dart';

import '../../../style/AssetsManager.dart';

class RadioTap extends StatelessWidget {
  const RadioTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image:DecorationImage(image:AssetImage(AssetsManager.radio_back))
      ),
    );
  }
  }

