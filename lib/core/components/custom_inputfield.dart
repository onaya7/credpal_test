import 'package:credpal/core/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomInputField extends StatelessWidget {
  const CustomInputField({
    super.key,
    this.controller,
    this.currentFocus,
    this.nextFocus,
    this.isPasswordField = false,
    this.hintText,
    this.labelText,
    this.prefixIconPath,
    this.action,
    this.maxlines = 1,
    this.validator,
    this.onChanged,
    this.enabled = true,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.inputFormatters,
    this.fillColor,
    this.onSuffixIconTap,
  });

  final TextEditingController? controller;
  final FocusNode? currentFocus;
  final FocusNode? nextFocus;
  final bool isPasswordField;
  final String? hintText;
  final String? labelText;
  final String? prefixIconPath;
  final TextInputAction? action;
  final int? maxlines;
  final bool? enabled;
  final bool obscureText;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final Color? fillColor;
  final VoidCallback? onSuffixIconTap;

  final String? Function(String?)? validator;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: enabled,
      controller: controller,
      maxLines: maxlines,
      textInputAction: action,
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      focusNode: currentFocus,
      onTapOutside: (event) => currentFocus?.unfocus(),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      obscureText: obscureText,
      obscuringCharacter: '●',
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        prefixIcon: prefixIconPath != null
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SvgPicture.asset(
                  prefixIconPath!,
                  width: 20,
                  height: 20,
                  colorFilter: ColorFilter.mode(AppColor.purple300, BlendMode.srcIn),
                ),
              )
            : null,
        suffixIcon: isPasswordField
            ? Icon(obscureText ? Icons.visibility_off_outlined : Icons.visibility_outlined)
            : null,
        filled: true,
        fillColor: AppColor.grey100,
        labelStyle: const TextStyle(color: Colors.black, fontSize: 14),
        hintStyle: TextStyle(color: AppColor.purple300, fontSize: 12, fontWeight: FontWeight.w400),
        errorStyle: const TextStyle(color: Colors.redAccent, fontSize: 10),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.transparent, width: 1.5),
          borderRadius: BorderRadius.circular(100),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.transparent, width: 1.5),
          borderRadius: BorderRadius.circular(100),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColor.primary, width: 1.5),
          borderRadius: BorderRadius.circular(100),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red[300]!, width: 1.5),
          borderRadius: BorderRadius.circular(100),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red[300]!, width: 1.5),
          borderRadius: BorderRadius.circular(100),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 13),
      ),

      validator: validator,
      onChanged: onChanged,
    );
  }
}
