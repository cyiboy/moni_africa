import 'package:flutter/material.dart';

import '../../../core/theme/color_theme.dart';


class MembersInfoTile extends StatelessWidget {
  const MembersInfoTile({
    Key? key,
    required this.firstName,
    required this.lastName,
    required this.deadlineInfo,
    required this.loanDetails,
    required this.textColor,
  }) : super(key: key);

  final String firstName;
  final String lastName;
  final String deadlineInfo;
  final String loanDetails;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: [
          Text(
            "$firstName $lastName",
            style: const TextStyle(color: Color(0xFF13163E), fontSize: 14),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Icon(
              Icons.lens,
              size: 4,
              color: Color(0xFFC4C4C4),
            ),
          ),
          Text(
            deadlineInfo,
            style: const TextStyle(color: MoniAppColors.darkLighter, fontSize: 12),
          ),

        ],
      ),
      subtitle: Text(
        loanDetails,
        style: TextStyle(
            fontFamily: '',
            fontWeight: FontWeight.bold,
            color: textColor,
            fontSize: 12),
      ),
      leading: Container(
        width: 40,
        height: 40,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          color: Colors.grey,
        ),
        child: Center(
            child: Text(
          "${firstName.substring(0, 1)}${lastName.substring(0, 1)}",
          style: const TextStyle(fontSize: 20, color: Colors.white),
        )),
      ),
    );
  }
}
