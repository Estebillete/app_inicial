import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? iconn;
  final IconData? suffix;
  final TextInputType? textInput;
  final bool isPassword;

  final String formProperty;
  final Map<String, String> formValues;

  const CustomInputField({
    Key? key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.iconn,
    this.suffix,
    this.textInput,
    this.isPassword = false,
    required this.formProperty,
    required this.formValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      keyboardType: textInput,
      obscureText: isPassword,
      onChanged: (value) {
        formValues[formProperty] = value;
      },
      validator: (value) {
        if (value == null) return 'este campo es requerido';
        return value.length < 3 ? 'Minimo 3 letras' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          helperText: helperText,
          //counterText: '3 caracteres',
          //prefixIcon: Icon(Icons.verified_user_outlined),
          // ignore: unnecessary_null_comparison
          suffixIcon: suffix == null ? null : Icon(suffix),
          // ignore: unnecessary_null_comparison
          icon: iconn == null ? null : Icon(iconn),
          border: const OutlineInputBorder(
              borderRadius:
                  BorderRadius.only(bottomLeft: Radius.circular(15)))),
    );
  }
}
