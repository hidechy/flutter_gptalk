// ignore_for_file: must_be_immutable, avoid_dynamic_calls, avoid_catches_without_on_clauses, non_constant_identifier_names

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:speech_to_text/speech_to_text.dart';

import '../extensions/extensions.dart';
import '../state/chatgpt_answer/chatgpt_answer_notifier.dart';
import '../state/speech_to_text/speech_to_text_notifier.dart';
import '../utility/utility.dart';
import 'component/square_button.dart';

class HomeScreen extends ConsumerWidget {
  HomeScreen({super.key});

  Utility utility = Utility();

  TextEditingController textEditingController = TextEditingController();

  FlutterTts flutterTts = FlutterTts();

  SpeechToText speechToText = SpeechToText();

  late WidgetRef _ref;

  ///
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _ref = ref;

    final chatgptAnswerState = ref.watch(chatgptAnswerProvider);

    final speechToTextState = ref.watch(speechToTextProvider);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        fit: StackFit.expand,
        children: [
          utility.getBackGround(),
          SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 50),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 5,
                    vertical: 10,
                  ),
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.blueAccent.withOpacity(0.1),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '質問内容をテキストまたは声で入力する',
                        style: TextStyle(fontSize: 8),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          SquareButton(
                            color: Colors.redAccent.withOpacity(0.2),
                            text: Column(
                              children: const [
                                Icon(Icons.keyboard, size: 15),
                                Text(
                                  'Text Input',
                                  style: TextStyle(fontSize: 8),
                                ),
                              ],
                            ),
                            onTap: () {
                              _ref
                                  .watch(speechToTextProvider.notifier)
                                  .setTextFieldFocus();
                            },
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: TextField(
                              autofocus: speechToTextState.textFieldFocus,
                              controller: textEditingController,
                              onChanged: (value) {
                                _ref
                                    .watch(speechToTextProvider.notifier)
                                    .setQuestion(question: value);
                              },
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SquareButton(
                                color: Colors.redAccent.withOpacity(0.2),
                                text: Column(
                                  children: const [
                                    Icon(Icons.mic, size: 15),
                                    Text(
                                      'Voice Input',
                                      style: TextStyle(fontSize: 8),
                                    ),
                                  ],
                                ),
                                onTapDown: (value) async {
                                  if (!speechToTextState.isListening) {
                                    final available =
                                        await speechToText.initialize();

                                    if (available) {
                                      await ref
                                          .watch(speechToTextProvider.notifier)
                                          .setListening();

                                      await speechToText.listen(
                                        onResult: (result) {
                                          ref
                                              .watch(
                                                  speechToTextProvider.notifier)
                                              .setQuestion(
                                                question:
                                                    result.recognizedWords,
                                              );
                                        },
                                      );
                                    }
                                  }
                                },
                                onTapUp: (value) async {
                                  await ref
                                      .watch(speechToTextProvider.notifier)
                                      .clearListening();

                                  await speechToText.stop();
                                },
                              ),
                              const SizedBox(width: 20),
                              if (speechToTextState.isListening)
                                SpinKitPulse(
                                  color: Colors.white.withOpacity(0.3),
                                  size: 40,
                                ),
                            ],
                          ),
                          Row(
                            children: [
                              SquareButton(
                                color: Colors.greenAccent.withOpacity(0.2),
                                text: Column(
                                  children: const [
                                    Icon(Icons.send, size: 15),
                                    Text(
                                      'send',
                                      style: TextStyle(fontSize: 8),
                                    )
                                  ],
                                ),
                                onTap: () {
                                  if (textEditingController.text != '') {
                                    sendMessage(
                                        message: textEditingController.text);
                                  } else {
                                    showErrorMessage(
                                      context: context,
                                      message: '質問内容が入力されていません。',
                                      ms: 1000,
                                    );
                                  }
                                },
                              ),
                              const SizedBox(width: 5),
                              SquareButton(
                                color: Colors.yellowAccent.withOpacity(0.2),
                                text: Column(
                                  children: const [
                                    Icon(Icons.clear, size: 15),
                                    Text(
                                      'Clear',
                                      style: TextStyle(fontSize: 8),
                                    )
                                  ],
                                ),
                                onTap: () {
                                  textEditingController.text = '';

                                  ref
                                      .watch(speechToTextProvider.notifier)
                                      .clearQuestion();

                                  ref
                                      .watch(chatgptAnswerProvider.notifier)
                                      .clearAnswerText();
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.white.withOpacity(0.2),
                  thickness: 2,
                ),
                Column(
                  children: [
                    ConstrainedBox(
                      constraints: BoxConstraints(
                        minHeight: context.screenSize.height * 0.6,
                      ),
                      child: Text(chatgptAnswerState.answerText),
                    ),
                    Divider(
                      color: Colors.white.withOpacity(0.2),
                      thickness: 2,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SpeechSpeedUnit(),
                          Row(
                            children: [
                              SquareButton(
                                color: Colors.blueAccent.withOpacity(0.2),
                                text: Column(
                                  children: const [
                                    Icon(Icons.play_arrow, size: 15),
                                    Text(
                                      'Speech',
                                      style: TextStyle(fontSize: 8),
                                    ),
                                  ],
                                ),
                                onTap: answerSpeak,
                              ),
                              const SizedBox(width: 5),
                              SquareButton(
                                color: Colors.blueAccent.withOpacity(0.2),
                                text: Column(
                                  children: const [
                                    Icon(Icons.pause, size: 15),
                                    Text(
                                      'Pause',
                                      style: TextStyle(fontSize: 8),
                                    ),
                                  ],
                                ),
                                onTap: () => flutterTts.pause(),
                              ),
                              const SizedBox(width: 5),
                              SquareButton(
                                color: Colors.blueAccent.withOpacity(0.2),
                                text: Column(
                                  children: const [
                                    Icon(Icons.stop, size: 15),
                                    Text(
                                      'Stop',
                                      style: TextStyle(fontSize: 8),
                                    ),
                                  ],
                                ),
                                onTap: () => flutterTts.stop(),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  ///
  Future<void> sendMessage({required String message}) async {
    const baseUrl = 'https://api.openai.com/v1';

    try {
      final response = await http.post(Uri.parse('$baseUrl/chat/completions'),
          headers: {
            'Content-Type': 'application/json',
            'Authorization': 'Bearer ${dotenv.get('OPEN_AI_API_KEY')}',
          },
          body: jsonEncode({
            'model': 'gpt-3.5-turbo-0301',
            'messages': [
              {
                'role': 'user',
                'content': message,
              },
            ],
            'temperature': 0.7
          }));

      if (response.statusCode == 200) {
        final content = jsonDecode(response.body)['choices'][0]['message']
                ['content']
            .toString();

        final decodedContent = utf8.decode(content.runes.toList());

        await _ref
            .watch(chatgptAnswerProvider.notifier)
            .setAnswerText(answer: decodedContent);
      }
    } catch (error) {
      debugPrint(error.toString());
      rethrow;
    }
  }

  ///
  Future<void> answerSpeak() async {
    final chatgptAnswerState = _ref.watch(chatgptAnswerProvider);

    await flutterTts.setLanguage('ja-JP'); // 言語

    await flutterTts.setSpeechRate(chatgptAnswerState.speechSpeed / 10); // 速度

    await flutterTts.setVolume(1); // 音量

    await flutterTts.setPitch(1); // ピッチ

    await flutterTts.speak(chatgptAnswerState.answerText); //読み上げ
  }

  ///
  void showErrorMessage({
    required BuildContext context,
    required String message,
    required int ms,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: Duration(milliseconds: ms),
        backgroundColor: Colors.black,
        content: Text(
          message,
          style: const TextStyle(color: Colors.white, fontSize: 10),
        ),
      ),
    );
  }

  ///
  Widget SpeechSpeedUnit() {
    final speedParam = <int, String>{4: 'slow', 6: 'normal', 8: 'fast'};

    final speechSpeed =
        _ref.watch(chatgptAnswerProvider.select((value) => value.speechSpeed));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Speech Speed',
          style: TextStyle(fontSize: 8),
        ),
        const SizedBox(height: 5),
        Row(
          children: speedParam.entries.map((e) {
            return GestureDetector(
              onTap: () {
                _ref
                    .watch(chatgptAnswerProvider.notifier)
                    .setSpeechSpeed(speed: e.key);
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                margin: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white.withOpacity(0.2),
                  ),
                  color: (speechSpeed == e.key)
                      ? Colors.yellowAccent.withOpacity(0.2)
                      : Colors.transparent,
                ),
                child: Text(
                  e.value,
                  style: const TextStyle(fontSize: 8),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
