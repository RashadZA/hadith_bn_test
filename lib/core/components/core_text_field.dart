part of 'components.dart';

class CoreTextField extends StatelessWidget {
  final bool readOnly;
  final bool obscureText;
  final bool disableBorder;
  final String? labelText;
  final String? hintText;
  final double? fontSize;
  final int? maxLines;
  final int? minLines;
  final Color? fillColor;
  final Color? textColor;
  final String? helperText;
  final FocusNode? focusNode;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? suffixText;
  final void Function()? onTap;
  final Color? hintTextColor;
  final void Function(String)? onSubmit;
  final void Function(String)? onChanged;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;

  const CoreTextField({
    Key? key,
    this.readOnly = false,
    this.obscureText = false,
    this.disableBorder = false,
    this.labelText,
    this.hintText,
    this.prefixIcon,
    this.helperText,
    this.fontSize,
    this.maxLines = 1,
    this.minLines = 1,
    this.focusNode,
    this.onTap,
    this.fillColor,
    this.onSubmit,
    this.textColor,
    this.onChanged,
    this.suffixText,
    this.suffixIcon,
    this.inputFormatters,
    this.controller,
    this.validator,
    this.keyboardType,
    this.hintTextColor,
    this.textInputAction = TextInputAction.next,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      child: Material(
        //TODO: Fix the design
        // height: textFieldHeight,
        child: TextFormField(
          onTap: onTap,
          cursorHeight: 20,
          autocorrect: false,
          minLines: minLines,
          readOnly: readOnly,
          maxLines: maxLines,
          focusNode: focusNode,
          validator: validator,
          controller: controller,
          obscureText: obscureText,
          onFieldSubmitted: onSubmit,
          keyboardType: keyboardType,
          cursorColor: AppColors.primaryColor,
          textInputAction: textInputAction,
          inputFormatters:
          // inputFormatters == null && keyboardType == TextInputType.phone
          //     ? [PhoneInputFormatter(allowEndlessPhone: true)]
          //     :
          inputFormatters,
          onChanged: onChanged,
          style: AppTextTheme.text15.copyWith(
            fontSize: fontSize,
            fontFamily: AppTextTheme.getPoppins,
            color: textColor ?? AppColors.blueGray,
          ),
          // textCapitalization: TextCapitalization.sentences,
          decoration: InputDecoration(
            isDense: true,
            hintText: hintText,
            hintStyle: AppTextTheme.text15.copyWith(
              color: hintTextColor ?? AppColors.blueGray,
              fontSize: fontSize,
              fontFamily: AppTextTheme.getPoppins,
            ),
            labelText: labelText,
            suffixIcon: suffixIcon,
            labelStyle: AppTextTheme.text15.copyWith(
              color: hintTextColor ?? AppColors.blueGray,
              fontSize: fontSize,
              fontFamily: AppTextTheme.getPoppins,
            ),
            filled: true,
            contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
            fillColor: fillColor ?? AppColors.white,
            prefixIcon: prefixIcon,
            suffixText: suffixText,
            helperText: helperText,
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: disableBorder ? BorderSide(width: 1, color: AppColors.redAccent.withOpacity(.5),) : BorderSide.none,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: disableBorder ? const BorderSide(width: 1, color: AppColors.linearGradientEndColor) : BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: disableBorder ? BorderSide(width: 1, color: AppColors.primaryColor.withOpacity(.67),) : BorderSide.none,
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: disableBorder ? const BorderSide(width: 1, color: AppColors.redAccent) : BorderSide.none,
            ),
            suffixStyle: AppTextTheme.text16.copyWith(
                fontWeight: FontWeight.w600, fontFamily: AppTextTheme.getPoppins),
            helperStyle:
            AppTextTheme.text12.copyWith(fontSize: 12, color: AppColors.primaryColor),
          ),
        ),
      ),
    );
  }
}
