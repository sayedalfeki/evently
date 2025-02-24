import 'package:evently/l10n/app_locale.dart';
import 'package:evently/utils/app_assets.dart';
import 'package:evently/utils/app_sizes.dart';
import 'package:evently/view/profile/setting_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../provider/setting_provider.dart';
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<SettingProvider>(context);
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(16),
          height: getHeight(context)*.15,
           decoration: BoxDecoration(
             color: Theme.of(context).primaryColor,
             borderRadius: BorderRadius.only(bottomLeft: Radius.circular(64))
           ),
           child:Row(
             children: [
               Image.asset(AppAssets.routeImage),
               SizedBox(width: 10,),
               Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text('sayed elfeki'),
                   Text('sayed@gmail.com')
                 ],
               )
             ],
           ) ,
        ),
        SizedBox(height: 10,),
       Padding(padding: EdgeInsets.all(8),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Text(getLanguage(context).language,style: Theme.of(context).textTheme.titleMedium,),
           SizedBox(height: 5,),
           SettingWidget(data:provider.isEnglish()?
           getLanguage(context).english:getLanguage(context).arabic,
           firstData: getLanguage(context).english,
             secondData: getLanguage(context).arabic,
             isFirstChoose:provider.isEnglish()? true:false,
             isSecondChoose:provider.isEnglish()?false:true,
             onFirstTapped: () {
               provider.changeLanguage('en');
             },
             onSecondTapped: (){
             provider.changeLanguage('ar');
             },
             hidden:provider.isLanguageHidden,
             onWidgetTapped:
               provider.changeIsLanguageHidden,
           ),
           SizedBox(height: 5,),
           Text(getLanguage(context).theme,style:Theme.of(context).textTheme.titleMedium),
           SizedBox(height: 5,),
           SettingWidget(data:provider.isLight()?getLanguage(context).light:getLanguage(context).dark,
             firstData: getLanguage(context).light,
             secondData: getLanguage(context).dark,
             isFirstChoose:provider.isLight()? true:false,
             isSecondChoose:provider.isLight()? false:true,
             onFirstTapped: () {
               provider.changeTheme(ThemeMode.light);
             },
             onSecondTapped: () {
               provider.changeTheme(ThemeMode.dark);
             },
             hidden: provider.isThemeHidden,
             onWidgetTapped: provider.changeIsThemeHidden,
           )
         ],
       ),
       )

      ],
    );
  }
}
