import 'package:district_telegram_parser/models/text_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message.freezed.dart';
part 'message.g.dart';

@freezed
class Message with _$Message {
  const Message._();

  const factory Message({
    required int id,
    required String date,
    required String text,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) => Message(
        id: json["id"],
        date: json["date"],
        text: (json['text_entities'] as List<dynamic>)
            .map((e) => TextEntity.fromJson(e as Map<String, dynamic>))
            .map((e) => e.text)
            .toList()
            .join('')
            .toLowerCase(),
      );
}
