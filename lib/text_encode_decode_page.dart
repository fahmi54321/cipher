import 'package:cipher_flutter/text_encode_decode_state.dart';
import 'package:cipher_flutter/widget/bg.dart';
import 'package:cipher_flutter/widget/input.dart';
import 'package:cipher_flutter/widget/output.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TextEncodeDecodePage extends StatelessWidget {
  const TextEncodeDecodePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => TextEncodeDecodeState(),
      child: Consumer(
        builder: (BuildContext context, TextEncodeDecodeState state, _) {
          return Stack(
            children: [
              BgTxtEncodeDecode(),
              Scaffold(
                backgroundColor: Colors.transparent,
                body: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(child: InputTextEncodeDecode(state: state)),

                        const SizedBox(width: 24),

                        Expanded(child: OutputTextEncodeDecode(state: state)),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
