import 'package:flutter/material.dart';

class TransparentAppbar extends StatelessWidget with PreferredSizeWidget {
  final bool hasLeadingIcon;
  const TransparentAppbar({
    Key? key,
    required this.hasLeadingIcon,
  }) : super(key: key);
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: hasLeadingIcon,
      elevation: 0,
      leading: hasLeadingIcon
          ? IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios_new_outlined,
              ),
            )
          : null,
    );
  }
}
