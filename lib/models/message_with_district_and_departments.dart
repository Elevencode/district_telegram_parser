import 'package:district_telegram_parser/models/message.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_with_district_and_departments.freezed.dart';

@freezed
class MessageWithDistrictAndDepartments with _$MessageWithDistrictAndDepartments {
  const MessageWithDistrictAndDepartments._();

  const factory MessageWithDistrictAndDepartments({
    required Message message,
    @Default({}) Set<String> districts,
    @Default({}) Set<String> departments,
  }) = _MessageWithDistrictAndDepartments;

  factory MessageWithDistrictAndDepartments.fromMessage(Message message) => MessageWithDistrictAndDepartments(message: message);
}
