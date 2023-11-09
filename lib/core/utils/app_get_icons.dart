part of 'design_utils.dart';

Widget iconUnknownPX(
    String icon, {
      double? size,
    }) {
  return SizedBox(
    width: size ?? 24,
    height: size ?? 24,
    child: SvgPicture.asset(
      icon,
      width: size ?? 24,
      height: size ?? 24,
    ),
  );
}
Widget icon32PX(
    String icon,) {
  return SizedBox(
    width: 32,
    height: 32,
    child: SvgPicture.asset(
      icon,
      width: 32,
      height: 32,
    ),
  );
}
Widget icon24PX(
    String icon, ) {
  return SizedBox(
    width: 24,
    height: 24,
    child: SvgPicture.asset(
      icon,
      width: 24,
      height: 24,
    ),
  );
}
Widget icon22PX(
    String icon,) {
  return SizedBox(
    height: 22,
    width: 22,
    child: SvgPicture.asset(
      icon,
      width: 22,
      height: 22,
    ),
  );
}