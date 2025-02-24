import 'package:evently/utils/app_colors.dart';
import 'package:flutter/material.dart';

class ChooseWidget extends StatelessWidget {
  const ChooseWidget({super.key,required this.firstData,required this.secondData,
    required this.isFirstChoose,
    required this.isSecondChoose,required this.onFirstTapped,required this.onSecondTapped});
 final String firstData;
 final String secondData;
 final bool isFirstChoose;
 final bool isSecondChoose;
final void Function() onFirstTapped;
final  void Function() onSecondTapped;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color:Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(8),

      ),
      child: Column(
        children: [
          InkWell(
            onTap:onFirstTapped ,
            child: Row(
              children: [
                Visibility(
                    visible: isFirstChoose,
                    child: Icon(Icons.check,color: Colors.green,)),
                Spacer(),
                Text(firstData,style: Theme.of(context).textTheme.bodyMedium,)
              ],
            ),
          ),
          SizedBox(height: 5,),
          InkWell(
            onTap: onSecondTapped,
            child: Row(

              children: [
                Visibility(
                    visible: isSecondChoose,
                    child: Icon(Icons.check,color: Colors.green,)),
                Spacer(),
                Text(secondData,style: Theme.of(context).textTheme.bodyMedium,)
              ],
            ),
          ),
        ],
      ),

    );
  }
}
