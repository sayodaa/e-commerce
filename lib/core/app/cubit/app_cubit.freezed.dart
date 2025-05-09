// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppState()';
}


}

/// @nodoc
class $AppStateCopyWith<$Res>  {
$AppStateCopyWith(AppState _, $Res Function(AppState) __);
}


/// @nodoc


class _Initial implements AppState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppState.initial()';
}


}




/// @nodoc


class ThemeChangeModeState implements AppState {
  const ThemeChangeModeState({required this.isDark});
  

 final  bool isDark;

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ThemeChangeModeStateCopyWith<ThemeChangeModeState> get copyWith => _$ThemeChangeModeStateCopyWithImpl<ThemeChangeModeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ThemeChangeModeState&&(identical(other.isDark, isDark) || other.isDark == isDark));
}


@override
int get hashCode => Object.hash(runtimeType,isDark);

@override
String toString() {
  return 'AppState.themeChangeMode(isDark: $isDark)';
}


}

/// @nodoc
abstract mixin class $ThemeChangeModeStateCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory $ThemeChangeModeStateCopyWith(ThemeChangeModeState value, $Res Function(ThemeChangeModeState) _then) = _$ThemeChangeModeStateCopyWithImpl;
@useResult
$Res call({
 bool isDark
});




}
/// @nodoc
class _$ThemeChangeModeStateCopyWithImpl<$Res>
    implements $ThemeChangeModeStateCopyWith<$Res> {
  _$ThemeChangeModeStateCopyWithImpl(this._self, this._then);

  final ThemeChangeModeState _self;
  final $Res Function(ThemeChangeModeState) _then;

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isDark = null,}) {
  return _then(ThemeChangeModeState(
isDark: null == isDark ? _self.isDark : isDark // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class ChangeLanguageState implements AppState {
  const ChangeLanguageState({required this.locale});
  

 final  Locale locale;

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangeLanguageStateCopyWith<ChangeLanguageState> get copyWith => _$ChangeLanguageStateCopyWithImpl<ChangeLanguageState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeLanguageState&&(identical(other.locale, locale) || other.locale == locale));
}


@override
int get hashCode => Object.hash(runtimeType,locale);

@override
String toString() {
  return 'AppState.changeLanguage(locale: $locale)';
}


}

/// @nodoc
abstract mixin class $ChangeLanguageStateCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory $ChangeLanguageStateCopyWith(ChangeLanguageState value, $Res Function(ChangeLanguageState) _then) = _$ChangeLanguageStateCopyWithImpl;
@useResult
$Res call({
 Locale locale
});




}
/// @nodoc
class _$ChangeLanguageStateCopyWithImpl<$Res>
    implements $ChangeLanguageStateCopyWith<$Res> {
  _$ChangeLanguageStateCopyWithImpl(this._self, this._then);

  final ChangeLanguageState _self;
  final $Res Function(ChangeLanguageState) _then;

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? locale = null,}) {
  return _then(ChangeLanguageState(
locale: null == locale ? _self.locale : locale // ignore: cast_nullable_to_non_nullable
as Locale,
  ));
}


}

// dart format on
