import 'package:flutter/material.dart';

import '../../../style/AssetsManager.dart';

class TimeTap extends StatelessWidget {
  const TimeTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image:DecorationImage(image:AssetImage(AssetsManager.Time_back))
      ),
    );
  }
  }

