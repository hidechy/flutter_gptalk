import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'chatgpt_answer_response_state.dart';

////////////////////////////////////////////////
final chatgptAnswerProvider = StateNotifierProvider.autoDispose<
    ChatgptAnswerNotifier, ChatgptAnswerResponseState>((ref) {
  return ChatgptAnswerNotifier(const ChatgptAnswerResponseState());
});

class ChatgptAnswerNotifier extends StateNotifier<ChatgptAnswerResponseState> {
  ChatgptAnswerNotifier(super.state);

  ///
  Future<void> setAnswerText({required String answer}) async =>
      state = state.copyWith(answerText: answer);

  ///
  Future<void> clearAnswerText() async =>
      state = state.copyWith(answerText: '');

  ///
  Future<void> setSpeechSpeed({required int speed}) async =>
      state = state.copyWith(speechSpeed: speed);
}

////////////////////////////////////////////////
