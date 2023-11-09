part of 'components.dart';

class CoreButton extends CupertinoButton {
  const CoreButton({
    Key? key,
    Color? color,
    required Widget child,
    void Function()? onPressed,
    AlignmentGeometry alignment = Alignment.center,
    EdgeInsetsGeometry? padding = EdgeInsets.zero,
    BorderRadius? borderRadius =
    const BorderRadius.all(Radius.circular(defaultBorderRadius)),
  }) : super(
    key: key,
    minSize: 0,
    color: color,
    child: child,
    padding: padding,
    alignment: alignment,
    onPressed: onPressed,
    borderRadius: borderRadius,
    disabledColor: Colors.transparent,
    pressedOpacity: defaultButtonPressedOpacity,
  );
}