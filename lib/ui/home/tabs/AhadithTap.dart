import 'package:flutter/material.dart';

import '../../../style/AssetsManager.dart';

class AhadithTap extends StatelessWidget {
  const AhadithTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image:DecorationImage(image:AssetImage(AssetsManager.ahadeth_backgroung))
      ),
    );
  }
  }

