import 'package:freezed_annotation/freezed_annotation.dart';

part 'text_entity.freezed.dart';
part 'text_entity.g.dart';

@freezed
class TextEntity with _$TextEntity {
  const TextEntity._();

  const factory TextEntity({
    required String text,
  }) = _TextEntity;

  factory TextEntity.fromJson(Map<String, dynamic> json) => _$TextEntityFromJson(json);
}
