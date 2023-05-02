import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'speech_to_text_response_state.dart';

////////////////////////////////////////////////
final speechToTextProvider = StateNotifierProvider.autoDispose<
    SpeechToTextNotifier, SpeechToTextResponseState>((ref) {
  return SpeechToTextNotifier(const SpeechToTextResponseState());
});

class SpeechToTextNotifier extends StateNotifier<SpeechToTextResponseState> {
  SpeechToTextNotifier(super.state);

  ///
  Future<void> setListening() async =>
      state = state.copyWith(isListening: true);

  ///
  Future<void> clearListening() async =>
      state = state.copyWith(isListening: false);

  ///
  Future<void> setQuestion({required String question}) async =>
      state = state.copyWith(question: question);

  ///
  Future<void> clearQuestion() async => state = state.copyWith(question: '');

  ///
  Future<void> setTextFieldFocus() async =>
      state = state.copyWith(textFieldFocus: true);
}

////////////////////////////////////////////////
