import 'package:flutter/material.dart';

void showPlainTextMessage(BuildContext context, String message) {
  final overlay = Overlay.of(context);
  final overlayEntry = OverlayEntry(
    builder: (context) => Positioned(
      top: MediaQuery.of(context).size.height * 0.4,
      left: 20,
      right: 20,
      child: Material(
        color: Colors.transparent,
        child: Center(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.8),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              message,
              style: const TextStyle(color: Colors.white, fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    ),
  );

  overlay.insert(overlayEntry);

  Future.delayed(const Duration(seconds: 2), () {
    overlayEntry.remove();
  });
}
