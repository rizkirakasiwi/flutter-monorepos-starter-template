import 'package:flutter/material.dart';

enum ButtonType { initial, outlined, textButton }

class AppButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final VoidCallback? onLongPress;
  final ValueChanged<bool>? onFocusChange;
  final ButtonStyle? style;
  final WidgetStatesController? statesController;
  final Widget child;
  final ButtonType type;
  final Widget? leading;
  final Widget? trailing;

  const AppButton({
    super.key,
    required this.child,
    this.onPressed,
    this.onLongPress,
    this.onFocusChange,
    this.style,
    this.statesController,
    this.type = ButtonType.initial,
    this.leading,
    this.trailing,
  });

  const AppButton.outlined({
    super.key,
    required this.child,
    this.onPressed,
    this.onLongPress,
    this.onFocusChange,
    this.style,
    this.statesController,
    this.leading,
    this.trailing,
    this.type = ButtonType.outlined,
  });

  const AppButton.textButton({
    super.key,
    required this.child,
    this.onPressed,
    this.onLongPress,
    this.onFocusChange,
    this.style,
    this.statesController,
    this.leading,
    this.trailing,
    this.type = ButtonType.textButton,
  });

  @override
  Widget build(BuildContext context) {
    return _button();
  }

  Widget _button() {
    final content = Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (leading != null) ...[
          leading!,
          const SizedBox(width: 8),
        ],
        Flexible(child: child),
        if (trailing != null) ...[
          const SizedBox(width: 8),
          trailing!,
        ],
      ],
    );

    switch (type) {
      case ButtonType.initial:
        return ElevatedButton(
          onPressed: onPressed,
          onLongPress: onLongPress,
          onFocusChange: onFocusChange,
          style: style,
          statesController: statesController,
          child: content,
        );
      case ButtonType.outlined:
        return OutlinedButton(
          onPressed: onPressed,
          onLongPress: onLongPress,
          onFocusChange: onFocusChange,
          style: style,
          statesController: statesController,
          child: content,
        );
      case ButtonType.textButton:
        return TextButton(
          onPressed: onPressed,
          onLongPress: onLongPress,
          onFocusChange: onFocusChange,
          style: style,
          statesController: statesController,
          child: content,
        );
    }
  }
}

