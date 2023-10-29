import 'package:flutter/material.dart';

import '../routes/nav.dart';
import '../theme/themes/theme.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Color bgColor;
  final String subTitle;

  const BaseAppBar({
    Key? key,
    required this.title,
    this.bgColor = Colors.white,
    this.subTitle = "",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var route = ModalRoute.of(context);
    return AppBar(
      leading: Visibility(
        visible: route!.canPop,
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Color.fromARGB(255, 255, 255, 255),
              size: 24,
            ),
            onPressed: () {
              popContext(context);
            },
          ),
        ),
      ),
      title: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppTheme.of(context).title1.override(
                  color: Colors.white,
                  fontSize: 20,
                ),
          ),
          if (subTitle != "") const SizedBox(height: 2),
          Visibility(
            visible: subTitle != "",
            child: Text(
              subTitle,
              style: AppTheme.of(context).bodyText2.override(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromARGB(255, 68, 68, 68),
                  ),
            ),
          ),
        ],
      ),
      leadingWidth: route.canPop ? 40 : 0, //56 : 0 - Default
      automaticallyImplyLeading: false,
      centerTitle: false,
      backgroundColor: bgColor,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
