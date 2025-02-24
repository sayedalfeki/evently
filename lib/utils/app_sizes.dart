import 'package:flutter/material.dart';
double getHeight(BuildContext context)
{
  return MediaQuery.sizeOf(context).height;
}

double getWidth(BuildContext context)
{
  return MediaQuery.sizeOf(context).width;
}