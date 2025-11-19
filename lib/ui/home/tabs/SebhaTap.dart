import 'package:flutter/material.dart';

import '../../../style/AssetsManager.dart';

class SebhaTap extends StatelessWidget {
  const SebhaTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image:DecorationImage(image:AssetImage(AssetsManager.sebha_background))
      ),
    );
  }
  }

