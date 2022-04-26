import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


import '../../../core/theme/color_theme.dart';
import '../../../core/theme/text_styles.dart';
import '../../../data/models/cluster.dart';

class ClusterDetails extends StatelessWidget {
  const ClusterDetails({Key? key, required this.clusterModel})
      : super(key: key);

  final ClusterModel clusterModel;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      children: [
        detailsSection(
            title: "Cluster purse setting",
            path: "assets/icons/naira.svg",
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Frequency of contribution",
                          style: MoniAppTextStyles.smallSmallRegular,
                        ),
                        SizedBox(height: 4),
                        Text(
                          "Monthly upfront",
                          style: MoniAppTextStyles.regularRegularRegular,
                        ),
                      ],
                    ),
                    const Spacer(),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Change",
                          style: MoniAppTextStyles.textButtonTextStyle,
                        ))
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  "₦${clusterModel.purseBalance}",
                  style:
                      MoniAppTextStyles.smallSmallBold.copyWith(fontFamily: ''),
                ),
                const SizedBox(height: 8),
                const Text(
                  "Your contribution is 8% of your eligible amount",
                  style: TextStyle(fontSize: 14, color: MoniAppColors.greyDark),
                ),
              ],
            )),
        const Divider(
          thickness: 2,
          color: MoniAppColors.grey5,
        ),

        // Group invite code
        detailsSection(
            title: "Group invite Link/Code",
            path: "assets/icons/chain.svg",
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Use the link or code below to invite new member",
                  style: MoniAppTextStyles.smallSmallRegular,
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Member invite code",
                          style: TextStyle(fontSize: 14),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "30DF38TG000",
                          style: MoniAppTextStyles.regularRegularRegular,
                        ),
                      ],
                    ),
                    const Spacer(),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Get new code",
                          style: MoniAppTextStyles.textButtonTextStyle,
                        ))
                  ],
                )
              ],
            )),
        const Divider(
          thickness: 2,
          color: MoniAppColors.grey5,
        ),

        // Loan Settings
        detailsSection(
            title: "Loan setting",
            path: "assets/icons/list.svg",
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Total loan collected by cluster",
                      style: MoniAppTextStyles.tinyTinyRegular,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "₦${clusterModel.purseBalance}",
                      style: MoniAppTextStyles.smallSmallMedium
                          .copyWith(fontFamily: ''),
                    )
                  ],
                ),
                const SizedBox(height: 16),
                Row(children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Repayment Day",
                        style: MoniAppTextStyles.tinyTinyRegular,
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Every Monday",
                        style: MoniAppTextStyles.smallSmallMedium,
                      ),
                    ],
                  ),
                  const Spacer(),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Change",
                        style: MoniAppTextStyles.textButtonTextStyle,
                      ))
                ])
              ],
            )),
        const Divider(
          thickness: 2,
          color: MoniAppColors.grey5,
        ),

        // Pending join request
        detailsSection(
            title: "Pending Join Request",
            path: "assets/icons/list.svg",
            body: Column(
              children: const [
                Text("No pending cluster join request",
                    style: TextStyle(
                        fontSize: 14, color: MoniAppColors.darkLighter)),
              ],
            )),
        const Divider(
          thickness: 2,
          color: MoniAppColors.grey5,
        ),

        // Group Settings
        detailsSection(
            title: "Group Settings",
            path: "assets/icons/settings.svg",
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Group rules"),
                const SizedBox(height: 8),
                const Text(
                    "1. Check the car’s rental terms as well, because each company has its own rules. \n2. Check the car’s rental terms as well, because each company has its own rules."),
                const SizedBox(height: 16),
                const Text("Group Whatsapp"),
                const SizedBox(height: 8),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text:
                              "https://chat.whatsapp.com/BmK1mYu9zGAGhhqi8xqQQ5",
                          style: const TextStyle(
                              color: MoniAppColors.greenDarker,
                              fontSize: 13.16),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // launch(
                              //     "https://chat.whatsapp.com/BmK1mYu9zGAGhhqi8xqQQ5");
                            })
                    ],
                  ),
                ),
                TextButton.icon(
                    onPressed: () {},
                    label: const Text(
                      "Change",
                      style: TextStyle(
                          fontSize: 14, color: MoniAppColors.primaryBrandBase),
                    ),
                    icon: const Icon(Icons.edit,
                        size: 13.5, color: MoniAppColors.primaryBrandBase))
              ],
            )),
        const Divider(
          thickness: 2,
          color: MoniAppColors.grey5,
        ),

        // Benefits earned
        detailsSection(
            title: "Benefits earned",
            path: "assets/icons/cash.svg",
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Total CH benefits earned",
                        style: MoniAppTextStyles.smallSmallRegular),
                    const SizedBox(height: 8),
                    Text("₦${clusterModel.purseBalance}",
                        style: MoniAppTextStyles.smallSmallBold
                            .copyWith(fontFamily: '')),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Available Benefits",
                            style: MoniAppTextStyles.smallSmallRegular),
                        const SizedBox(height: 8),
                        Text("₦${clusterModel.purseBalance}",
                            style: MoniAppTextStyles.smallSmallBold
                                .copyWith(fontFamily: ''))
                      ],
                    ),
                    const Spacer(),
                    TextButton(
                        onPressed: () {},
                        child: const Text("Change",
                            style: MoniAppTextStyles.textButtonTextStyle))
                  ],
                ),
                TextButton.icon(
                    onPressed: () {},
                    label: const Text("View earning history",
                        style: MoniAppTextStyles.textButtonTextStyle),
                    icon: const Icon(Icons.remove_red_eye,
                        size: 16, color: MoniAppColors.primaryBrandBase))
              ],
            ))
      ],
    );
  }
}

Padding detailsSection(
    {required String title, required String path, required Column body}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(children: [
          SvgPicture.asset(path),
          const SizedBox(width: 12),
          Text(title, style: MoniAppTextStyles.smallSmallBold)
        ]),
        const SizedBox(height: 12),
        body
      ],
    ),
  );
}
