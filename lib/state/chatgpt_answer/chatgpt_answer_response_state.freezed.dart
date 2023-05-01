// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chatgpt_answer_response_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatgptAnswerResponseState {
  ///
  String get answerText => throw _privateConstructorUsedError;

  ///
  int get speechSpeed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatgptAnswerResponseStateCopyWith<ChatgptAnswerResponseState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatgptAnswerResponseStateCopyWith<$Res> {
  factory $ChatgptAnswerResponseStateCopyWith(ChatgptAnswerResponseState value,
          $Res Function(ChatgptAnswerResponseState) then) =
      _$ChatgptAnswerResponseStateCopyWithImpl<$Res,
          ChatgptAnswerResponseState>;
  @useResult
  $Res call({String answerText, int speechSpeed});
}

/// @nodoc
class _$ChatgptAnswerResponseStateCopyWithImpl<$Res,
        $Val extends ChatgptAnswerResponseState>
    implements $ChatgptAnswerResponseStateCopyWith<$Res> {
  _$ChatgptAnswerResponseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answerText = null,
    Object? speechSpeed = null,
  }) {
    return _then(_value.copyWith(
      answerText: null == answerText
          ? _value.answerText
          : answerText // ignore: cast_nullable_to_non_nullable
              as String,
      speechSpeed: null == speechSpeed
          ? _value.speechSpeed
          : speechSpeed // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChatgptAnswerResponseStateCopyWith<$Res>
    implements $ChatgptAnswerResponseStateCopyWith<$Res> {
  factory _$$_ChatgptAnswerResponseStateCopyWith(
          _$_ChatgptAnswerResponseState value,
          $Res Function(_$_ChatgptAnswerResponseState) then) =
      __$$_ChatgptAnswerResponseStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String answerText, int speechSpeed});
}

/// @nodoc
class __$$_ChatgptAnswerResponseStateCopyWithImpl<$Res>
    extends _$ChatgptAnswerResponseStateCopyWithImpl<$Res,
        _$_ChatgptAnswerResponseState>
    implements _$$_ChatgptAnswerResponseStateCopyWith<$Res> {
  __$$_ChatgptAnswerResponseStateCopyWithImpl(
      _$_ChatgptAnswerResponseState _value,
      $Res Function(_$_ChatgptAnswerResponseState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answerText = null,
    Object? speechSpeed = null,
  }) {
    return _then(_$_ChatgptAnswerResponseState(
      answerText: null == answerText
          ? _value.answerText
          : answerText // ignore: cast_nullable_to_non_nullable
              as String,
      speechSpeed: null == speechSpeed
          ? _value.speechSpeed
          : speechSpeed // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ChatgptAnswerResponseState implements _ChatgptAnswerResponseState {
  const _$_ChatgptAnswerResponseState(
      {this.answerText = '', this.speechSpeed = 8});

  ///
  @override
  @JsonKey()
  final String answerText;

  ///
  @override
  @JsonKey()
  final int speechSpeed;

  @override
  String toString() {
    return 'ChatgptAnswerResponseState(answerText: $answerText, speechSpeed: $speechSpeed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatgptAnswerResponseState &&
            (identical(other.answerText, answerText) ||
                other.answerText == answerText) &&
            (identical(other.speechSpeed, speechSpeed) ||
                other.speechSpeed == speechSpeed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, answerText, speechSpeed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatgptAnswerResponseStateCopyWith<_$_ChatgptAnswerResponseState>
      get copyWith => __$$_ChatgptAnswerResponseStateCopyWithImpl<
          _$_ChatgptAnswerResponseState>(this, _$identity);
}

abstract class _ChatgptAnswerResponseState
    implements ChatgptAnswerResponseState {
  const factory _ChatgptAnswerResponseState(
      {final String answerText,
      final int speechSpeed}) = _$_ChatgptAnswerResponseState;

  @override

  ///
  String get answerText;
  @override

  ///
  int get speechSpeed;
  @override
  @JsonKey(ignore: true)
  _$$_ChatgptAnswerResponseStateCopyWith<_$_ChatgptAnswerResponseState>
      get copyWith => throw _privateConstructorUsedError;
}
