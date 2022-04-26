import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moni_africa/app/core/p.dart';

import '../../core/theme/color_theme.dart';
import '../../data/models/cluster.dart';
import 'componects/custom_appbar.dart';
import 'componects/cluster_details.dart';
import 'componects/cluster_members.dart';
import 'componects/cluster_page_header.dart';

class ClusterScreen extends StatelessWidget {
  const ClusterScreen({Key? key,  }) : super(key: key);
    @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: CustomAppBar(title: 'My Cluster',),
          body: Column(
            children: [
              Container(
                color: MoniAppColors.secondaryBrandLightest,
                child: const TabBar(
                    indicatorPadding: EdgeInsets.symmetric(horizontal: 30),
                    indicatorColor: MoniAppColors.primaryBrandBase,
                    labelColor: MoniAppColors.primaryBrandBase,
                    unselectedLabelColor: Colors.grey,
                    unselectedLabelStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 13.16,
                        color: MoniAppColors.darkDark),
                    labelStyle:
                    TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
                    tabs: [
                      Tab(text: "Members"),
                      Tab(text: "Cluster Details"),
                    ]),
              ),
              Expanded(
                child: TabBarView(children: [
                  Members(clusterModel: P.cluster.clusterModel!),
                  ClusterDetails(clusterModel: P.cluster.clusterModel!)
                ]),
              ),
            ],
          )),
    );

  }
}
