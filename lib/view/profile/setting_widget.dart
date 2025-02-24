import 'package:evently/utils/app_colors.dart';
import 'package:evently/view/profile/choose_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/setting_provider.dart';
class SettingWidget extends StatefulWidget {
   SettingWidget({super.key,required this.data,required this.firstData,
    required this.secondData,
  required this.isFirstChoose,required this.isSecondChoose,
     required this.onFirstTapped,required this.onSecondTapped,
     required this.hidden,required this.onWidgetTapped
  });
  final String data;
  final String firstData;
  final String secondData;
  final bool isFirstChoose;
  final bool isSecondChoose;
  final bool hidden;
   final void Function() onFirstTapped;
   final  void Function() onSecondTapped;
   final  void Function() onWidgetTapped;

  @override
  State<SettingWidget> createState() => _SettingWidgetState();
}

class _SettingWidgetState extends State<SettingWidget> {


  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<SettingProvider>(context);

    return Column(
      children: [
        InkWell(
          onTap:widget.onWidgetTapped,
          child: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.secondaryColor),
              borderRadius: BorderRadius.circular(16)
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:
                  [
                    Text(widget.data,style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: AppColors.secondaryColor
                    ),),
                    Icon(Icons.arrow_drop_down,color: AppColors.secondaryColor,),
                  ],
                ),

              ],
            ),
          ),
        ),
        Visibility(
            visible:!widget.hidden,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ChooseWidget(firstData: widget.firstData, secondData: widget.secondData,
                  isFirstChoose: widget.isFirstChoose,
                isSecondChoose: widget.isSecondChoose,
              onFirstTapped: widget.onFirstTapped,
                onSecondTapped: widget.onSecondTapped,
              ),
            ))
      ],
    );
  }
}
/*
* add setting for the app .
change language to english or arabic.
change theme to dark or light .
* */