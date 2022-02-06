import 'package:fallsa_admin/constants/controllers.dart';
import 'package:fallsa_admin/helpers/responsiveness.dart';
import 'package:fallsa_admin/pages/fallRisk/widgets/downloadFallRisk.dart';
import 'package:fallsa_admin/pages/fallRisk/widgets/fallRisk_table.dart';
import 'package:fallsa_admin/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FallRiskPage extends StatelessWidget {
  const FallRiskPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6),
                child: CustomText(
                  text: menuController.activeitem.value,
                  size: 24,
                  weight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 8,
              ),
              DownloadFallRisk(),
            ],
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Expanded(
          child: ListView(
            children: [
              FallRiskTable(),
            ],
          ),
        ),
      ],
    );
  }
}
