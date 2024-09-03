import 'package:responsive_sizer/responsive_sizer.dart';

mixin TextSize {
  static double get tiny => Adaptive.sp(12.0);
  static double get mini => Adaptive.sp(14.0);
  static double get small => Adaptive.sp(15.0);
  static double get normal => Adaptive.sp(17.0);
  static double get medium => Adaptive.sp(20.0);
  static double get large => Adaptive.sp(22.0);
  static double get big => Adaptive.sp(24.0);
  static double get verybig => Adaptive.sp(30.0);
}