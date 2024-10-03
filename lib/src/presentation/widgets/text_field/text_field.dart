import 'package:flutter/material.dart';
import 'package:three_planets/constants/app_color_constants.dart';
import 'package:three_planets/constants/text_constants.dart';
import 'package:three_planets/src/presentation/widgets/text_field/custom_text_field.dart';

class TextCustomTextField extends CustomTextField {
  const TextCustomTextField({
    super.key,
    super.labelText,
    super.hintText,
    super.onTextChange,
    super.validator,
    super.controller,
    super.maxLength,
    super.style,
    TextInputType inputType = TextInputType.text,
    super.inputFormatters,
    super.autofillHints,
    super.textCapitalization,
  }) : super(textInputType: inputType);

  @override
  State<TextCustomTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<TextCustomTextField> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = widget.style ?? kContentTextStyle.copyWith(fontWeight: FontWeight.w400);

    return TextFormField(
      keyboardType: widget.textInputType,
      textInputAction: TextInputAction.next,
      textCapitalization: widget.textCapitalization,
      validator: widget.validator,
      onChanged: (value) => widget.onTextChange?.call(value),
      autofillHints: widget.autofillHints,
      controller: _controller,
      maxLength: widget.maxLength,
      cursorColor: Theme.of(context).colorScheme.onSurface,
      decoration: kTextFieldInputDecoration.copyWith(
        labelText: widget.labelText,
        hintText: widget.hintText,
        labelStyle: kContentTextStyle.copyWith(color: kMyrtleGreen),
      ),
      style: textStyle,
      inputFormatters: widget.inputFormatters,
    );
  }
}
