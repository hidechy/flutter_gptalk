import 'package:freezed_annotation/freezed_annotation.dart';

part 'chatgpt_answer_response_state.freezed.dart';

@freezed
class ChatgptAnswerResponseState with _$ChatgptAnswerResponseState {
  const factory ChatgptAnswerResponseState({
    ///
    @Default('') String answerText,

    ///
    @Default(8) int speechSpeed,
  }) = _ChatgptAnswerResponseState;
}
