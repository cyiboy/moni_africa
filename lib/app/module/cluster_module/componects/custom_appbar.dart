import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moni_africa/app/core/p.dart';
import 'package:moni_africa/app/core/theme/color_theme.dart';

import 'cluster_page_header.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;


  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        title,
        style: const TextStyle(
          color: MoniAppColors.grey5,
          fontSize: 16,
          fontWeight: FontWeight.w300,
        ),
      ),
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back,
          color: MoniAppColors.grey5,
        ),
        onPressed: () {
          Get.back();
        },
      ),
      elevation: 0,
      flexibleSpace: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/BG.png'),
                fit: BoxFit.fill
            )
        ),
      ),
      bottom:  PreferredSize(
        preferredSize: const Size.fromHeight(200.0),
        child: ClusterPageHeader(clusterModel: P.cluster.clusterModel!),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(320);
}
