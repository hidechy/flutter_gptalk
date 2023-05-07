// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'speech_to_text_response_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SpeechToTextResponseState {
  ///
  bool get isListening => throw _privateConstructorUsedError;

  ///
  String get question => throw _privateConstructorUsedError;

  ///
  bool get textFieldFocus => throw _privateConstructorUsedError;

  ///
  bool get speechFlag => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SpeechToTextResponseStateCopyWith<SpeechToTextResponseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpeechToTextResponseStateCopyWith<$Res> {
  factory $SpeechToTextResponseStateCopyWith(SpeechToTextResponseState value,
          $Res Function(SpeechToTextResponseState) then) =
      _$SpeechToTextResponseStateCopyWithImpl<$Res, SpeechToTextResponseState>;
  @useResult
  $Res call(
      {bool isListening,
      String question,
      bool textFieldFocus,
      bool speechFlag});
}

/// @nodoc
class _$SpeechToTextResponseStateCopyWithImpl<$Res,
        $Val extends SpeechToTextResponseState>
    implements $SpeechToTextResponseStateCopyWith<$Res> {
  _$SpeechToTextResponseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isListening = null,
    Object? question = null,
    Object? textFieldFocus = null,
    Object? speechFlag = null,
  }) {
    return _then(_value.copyWith(
      isListening: null == isListening
          ? _value.isListening
          : isListening // ignore: cast_nullable_to_non_nullable
              as bool,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      textFieldFocus: null == textFieldFocus
          ? _value.textFieldFocus
          : textFieldFocus // ignore: cast_nullable_to_non_nullable
              as bool,
      speechFlag: null == speechFlag
          ? _value.speechFlag
          : speechFlag // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SpeechToTextResponseStateCopyWith<$Res>
    implements $SpeechToTextResponseStateCopyWith<$Res> {
  factory _$$_SpeechToTextResponseStateCopyWith(
          _$_SpeechToTextResponseState value,
          $Res Function(_$_SpeechToTextResponseState) then) =
      __$$_SpeechToTextResponseStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isListening,
      String question,
      bool textFieldFocus,
      bool speechFlag});
}

/// @nodoc
class __$$_SpeechToTextResponseStateCopyWithImpl<$Res>
    extends _$SpeechToTextResponseStateCopyWithImpl<$Res,
        _$_SpeechToTextResponseState>
    implements _$$_SpeechToTextResponseStateCopyWith<$Res> {
  __$$_SpeechToTextResponseStateCopyWithImpl(
      _$_SpeechToTextResponseState _value,
      $Res Function(_$_SpeechToTextResponseState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isListening = null,
    Object? question = null,
    Object? textFieldFocus = null,
    Object? speechFlag = null,
  }) {
    return _then(_$_SpeechToTextResponseState(
      isListening: null == isListening
          ? _value.isListening
          : isListening // ignore: cast_nullable_to_non_nullable
              as bool,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      textFieldFocus: null == textFieldFocus
          ? _value.textFieldFocus
          : textFieldFocus // ignore: cast_nullable_to_non_nullable
              as bool,
      speechFlag: null == speechFlag
          ? _value.speechFlag
          : speechFlag // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SpeechToTextResponseState implements _SpeechToTextResponseState {
  const _$_SpeechToTextResponseState(
      {this.isListening = false,
      this.question = '',
      this.textFieldFocus = false,
      this.speechFlag = false});

  ///
  @override
  @JsonKey()
  final bool isListening;

  ///
  @override
  @JsonKey()
  final String question;

  ///
  @override
  @JsonKey()
  final bool textFieldFocus;

  ///
  @override
  @JsonKey()
  final bool speechFlag;

  @override
  String toString() {
    return 'SpeechToTextResponseState(isListening: $isListening, question: $question, textFieldFocus: $textFieldFocus, speechFlag: $speechFlag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SpeechToTextResponseState &&
            (identical(other.isListening, isListening) ||
                other.isListening == isListening) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.textFieldFocus, textFieldFocus) ||
                other.textFieldFocus == textFieldFocus) &&
            (identical(other.speechFlag, speechFlag) ||
                other.speechFlag == speechFlag));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isListening, question, textFieldFocus, speechFlag);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SpeechToTextResponseStateCopyWith<_$_SpeechToTextResponseState>
      get copyWith => __$$_SpeechToTextResponseStateCopyWithImpl<
          _$_SpeechToTextResponseState>(this, _$identity);
}

abstract class _SpeechToTextResponseState implements SpeechToTextResponseState {
  const factory _SpeechToTextResponseState(
      {final bool isListening,
      final String question,
      final bool textFieldFocus,
      final bool speechFlag}) = _$_SpeechToTextResponseState;

  @override

  ///
  bool get isListening;
  @override

  ///
  String get question;
  @override

  ///
  bool get textFieldFocus;
  @override

  ///
  bool get speechFlag;
  @override
  @JsonKey(ignore: true)
  _$$_SpeechToTextResponseStateCopyWith<_$_SpeechToTextResponseState>
      get copyWith => throw _privateConstructorUsedError;
}
