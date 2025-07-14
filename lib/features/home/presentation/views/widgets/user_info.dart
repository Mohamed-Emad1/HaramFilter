import 'package:flutter/material.dart';
import 'package:haram_filter/core/styles/app_styles.dart';
import 'package:haram_filter/core/utils/app_images.dart';
import 'package:haram_filter/generated/l10n.dart';

class UserData extends StatelessWidget {
  const UserData({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(child: Image.asset(Assets.imagesWoman)),
      title: Text(S.of(context).name, style: AppStyles.bodyLarge16Medium),
      subtitle: Text("User Name", style: AppStyles.labelMedium14Regular),
      // trailing: Text('User Name', style: AppStyles.bodyMedium16Regular),
    );
  }
}
