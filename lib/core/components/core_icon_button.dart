part of 'components.dart';

class CoreIconButton extends StatelessWidget {
  final String icon;
  final double? width;
  final Color? color;
  final Function()? onPressed;
  const CoreIconButton({super.key, required this.icon, this.width, this.color, this.onPressed});

  @override
  Widget build(BuildContext context) {
     return CoreButton(
      onPressed: onPressed,
      child: SvgPicture.asset(
        icon,
        width: width,
        colorFilter: ColorFilter.mode(color ?? AppColors.shuttleGrey , BlendMode.srcIn),
        height: width,
      ),
    );
  }
}
