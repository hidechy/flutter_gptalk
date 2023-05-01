import 'package:freezed_annotation/freezed_annotation.dart';

part 'speech_to_text_response_state.freezed.dart';

@freezed
class SpeechToTextResponseState with _$SpeechToTextResponseState {
  const factory SpeechToTextResponseState({
    ///
    @Default(false) bool isListening,

    ///
    @Default('') String question,
  }) = _SpeechToTextResponseState;
}
