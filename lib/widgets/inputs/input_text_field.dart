import 'package:bamboo/shared/helpers/constant.dart';
import 'package:bamboo/shared/helpers/extensions.dart';
import 'package:bamboo/widgets/svg_icon.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

enum ColecTextfieldType {
  text(padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4)),

  password(padding: EdgeInsets.symmetric(horizontal: 12, vertical: 2)),

  textarea(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      maxCharacters: 125);

  final EdgeInsets padding;
  final int maxCharacters;

  const ColecTextfieldType({required this.padding, this.maxCharacters = 0});
}

class ColecTextfield extends StatefulWidget {
  const ColecTextfield(
      {super.key,
      this.labelText,
      required this.textFieldKey,
      this.showToggleVisibility = false,
      this.hasError = false,
      this.errorText = '',
      this.helperText = '',
      this.hintText = '',
      required this.labelTextheader,
      required this.type,
      this.isDisabled = false,
      required this.controller,
      this.validator,
      this.shouldShowRules = false,
      this.shouldShowprefixIcon = false,
      this.focusNode});

  final ColecTextfieldType type;
  final Key textFieldKey;
  final String? labelText;
  final String? hintText;
  final bool showToggleVisibility;
  final String errorText;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final bool hasError;
  final String helperText;
  final String labelTextheader;
  final bool? isDisabled;
  final bool shouldShowRules;
  final bool shouldShowprefixIcon;
  final FocusNode? focusNode;

  @override
  State<ColecTextfield> createState() => _ColecTextfieldState();
}

class _ColecTextfieldState extends State<ColecTextfield> {
  bool _isObscured = true;
  late bool isValid;
  late bool hasError;
  late String? errorText;
  late bool _isPasswordValid;
  late bool _isTyping;

  late TextEditingController _textEditingController;

  @override
  void initState() {
    _isObscured = true;
    hasError = widget.hasError;
    errorText = widget.errorText.isEmpty ? null : widget.errorText;
    isValid = false;
    _isPasswordValid = false;
    _isTyping = false;
    _textEditingController = TextEditingController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * 0.85,
      child: Column(
        children: [
          Column(
            children: [
              Container(
                alignment: Alignment.bottomLeft,
                child: Text(
                  widget.labelTextheader,
                  // style: TextStyles.body1Bold.copyWith(color: Colors.black),
                  textAlign: TextAlign.start,
                ),
              ),
              TextFormField(
                focusNode: widget.focusNode,
                key: widget.textFieldKey,
                // controller: _textEditingController,
                controller: widget.controller,
                // cursorColor: context.colors.textStaticDefaultHigh,
                obscureText: widget.showToggleVisibility ? _isObscured : false,
                // style: TextStyles.body1Regular
                //     .copyWith(color: context.colors.textStaticDefaultHigh),
                onChanged: (value) {
                  _validatePassword(value);
                  setState(() {
                    _isTyping = true;
                  });
                },
                onEditingComplete: () {
                  setState(() {
                    _isTyping = false;
                  });
                },
                decoration: const InputDecoration().copyWith(
                  fillColor: widget.isDisabled! == true
                      ? context.colors.blackBamboo!
                      : context.colors.blackBamboo,
                  focusColor: widget.isDisabled! == true
                      ? context.colors.blackBamboo!
                      : context.colors.blackBamboo,
                  hintText: widget.hintText,
                  prefixIcon: widget.shouldShowprefixIcon
                      ? Icon(
                          Icons.search,
                          color: context.colors.blackBamboo,
                        )
                      : null,
                  suffixIcon: widget.showToggleVisibility
                      ? GestureDetector(
                          onTap: () {
                            setState(() {
                              _isObscured = !_isObscured;
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: SvgIcon(
                              iconPath: _isObscured ? eye : eyeCrossed,
                              color: context.colors.blackBamboo!,
                              size: 5,
                            ),
                          ),
                        )
                      : null,
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                ),
              ),
              if (widget.type == ColecTextfieldType.textarea) ...[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      const Expanded(child: Text("")),
                      SizedBox(
                        height: 24,
                        child: Text(
                          "${widget.type.maxCharacters - _textEditingController.text.length} characters left",
                          style: TextStyle(
                            color: context.colors.blackBamboo,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ]
            ],
          ),
          if ((widget.type == ColecTextfieldType.password &&
                  widget.shouldShowRules &&
                  _isTyping) ||
              (widget.shouldShowRules && widget.controller.text.isNotEmpty))
            Container(
              alignment: Alignment.bottomLeft,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gap(8),
                  // Rule(
                  //   iconPath: _isPasswordValid ? ruleCheckMark : ruleCross,
                  //   iconColor: _isPasswordValid
                  //       ? context.colors.iconStaticSuccess!
                  //       : context.colors.blackBamboo!,
                  //   labelText: '8 caractères',
                  //   color: _isPasswordValid
                  //       ? context.colors.textStaticSuccess!
                  //       : context.colors.blackBamboo!,
                  // ),
                  // Rule(
                  //   iconPath: _isPasswordValid ? ruleCheckMark : ruleCross,
                  //   iconColor: _isPasswordValid
                  //       ? context.colors.iconStaticSuccess!
                  //       : context.colors.blackBamboo!,
                  //   labelText: '1 majuscule',
                  //   color: _isPasswordValid
                  //       ? context.colors.textStaticSuccess!
                  //       : context.colors.blackBamboo!,
                  // ),
                  // Rule(
                  //   iconPath: _isPasswordValid ? ruleCheckMark : ruleCross,
                  //   iconColor: _isPasswordValid
                  //       ? context.colors.iconStaticSuccess!
                  //       : context.colors.blackBamboo!,
                  //   labelText: '1 minuscule',
                  //   color: _isPasswordValid
                  //       ? context.colors.textStaticSuccess!
                  //       : context.colors.blackBamboo!,
                  // ),
                  // Rule(
                  //   iconPath: _isPasswordValid ? ruleCheckMark : ruleCross,
                  //   iconColor: _isPasswordValid
                  //       ? context.colors.iconStaticSuccess!
                  //       : context.colors.blackBamboo!,
                  //   labelText: '1 caractère spécial',
                  //   color: _isPasswordValid
                  //       ? context.colors.textStaticSuccess!
                  //       : context.colors.blackBamboo!,
                  // ),
                  // Rule(
                  //   iconPath: _isPasswordValid ? ruleCheckMark : ruleCross,
                  //   iconColor: _isPasswordValid
                  //       ? context.colors.iconStaticSuccess!
                  //       : context.colors.blackBamboo!,
                  //   labelText: '1 chiffre',
                  //   color: _isPasswordValid
                  //       ? context.colors.textStaticSuccess!
                  //       : context.colors.blackBamboo!,
                  // ),
                ],
              ),
            ),
          if (widget.errorText.isNotEmpty) ...[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  SvgIcon(
                    iconPath: iconError,
                    color: context.colors.blackBamboo!,
                  ),
                  const SizedBox(width: 4),
                  Expanded(
                    child: Text(
                      widget.errorText,
                      // style: TextStyles.body2Bold
                      //     .copyWith(color: context.colors.blackBamboo),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }

  void _validatePassword(String value) {
    _isPasswordValid = value.length >= 8 &&
        value.contains(RegExp(r'[A-Z]')) &&
        value.contains(RegExp(r'[a-z]')) &&
        value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]')) &&
        value.contains(RegExp(r'[0-9]'));
    if (value.isEmpty) {
      setState(() {
        _isPasswordValid = false;
      });
    }
  }
}
