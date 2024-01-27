import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:csv/csv.dart';
import 'package:district_telegram_parser/models/message.dart';
import 'package:district_telegram_parser/models/message_with_district_and_departments.dart';

import '../.assets/departments.dart';

/// На выходе нужно получить следующий результат:
/// 1. CSV, в котором отражены сообщения, содержащие один из keywords, district, department.
/// 2. CSV, в котором отражены сообщения, содержащие один из keywords и district.
/// 3. CSV, в котором отражены сообщения, содержащие один из keywords и department.
/// 4. CSV, в котором отражены сообщения, содержащие один из keywords и не содержащие ни district ни department.
///
/// В CSV должны быть следующие столбцы:
/// 1. Дата и время.
/// 2. keyword.
/// 3. Текст сообщения
/// 4. district/department/null.

void main() async {
  final stopwatch = Stopwatch()..start();

  final csvDepAndDicts = [
    ['DateTime', 'Key word', 'Text', 'Department', 'Distritct'],
  ];
  final csvDep = [
    ['DateTime', 'Key word', 'Text', 'Department'],
  ];
  final csvDist = [
    ['DateTime', 'Key word', 'Text', 'Distritct'],
  ];
  final csvNone = [
    ['DateTime', 'Key word', 'Text'],
  ];

  final districtsFile = File('.assets/districts.json');
  final districtsData = await districtsFile.readAsString();
  final districtsDecoded = jsonDecode(districtsData) as List;

  final List<String> districts = districtsDecoded.map((e) => (e['name'] as String).toLowerCase()).toList();
  final List<String> departments = departmentsData.map((e) => e.toLowerCase()).toList();

  final messageFile = File('.assets/messages.json');
  final messageData = await messageFile.readAsString();
  final messagesJson = jsonDecode(messageData);

  final messages = (messagesJson["messages"] as List).map((e) => Message.fromJson(e)).toList();
  final Map<String, List<Message>> keywordMessages = {};

  for (final k in keywords) {
    for (final m in messages) {
      if (m.text.contains(k)) {
        if (!keywordMessages.containsKey(k)) keywordMessages[k] = [];
        keywordMessages[k]!.add(m);
      }
    }
  }

  log('Keywords added! len: ${keywordMessages.keys.length}');

  Map<String, List<MessageWithDistrictAndDepartments>> result = {};

  for (var entry in keywordMessages.entries) {
    if (!result.containsKey(entry.key)) result[entry.key] = [];
    for (final v in entry.value) {
      result[entry.key]!.add(MessageWithDistrictAndDepartments.fromMessage(v));
    }
  }

  log('Messages transformed to MessageWithDistrictAndDepartments');
  log('Search matches with districts and departments...');

  for (final entry in result.entries) {
    for (int i = 0; i < entry.value.length; i++) {
      // final textAsList = entry.value[i].message.text.split(' ');

      log('${entry.value[i].message.id}, i: $i, len: ${entry.value.length}, key: ${entry.key}');

      for (final dist in districts) {
        RegExp regExp = RegExp(r'\b' + RegExp.escape(dist) + r'\b');
        // TODO: too long.
        if (regExp.hasMatch(entry.value[i].message.text)) {
          entry.value[i] = entry.value[i].copyWith(districts: {...entry.value[i].districts, dist});
        } else {
          continue;
        }
        // if (entry.value[i].message.text.contains(dist)) {
        //   entry.value[i] = entry.value[i].copyWith(districts: {...entry.value[i].districts, dist});
        // } else {
        //   continue;
        // }
      }

      for (final dep in departments) {
        RegExp regExp = RegExp(r'\b' + RegExp.escape(dep) + r'\b');
        // TODO: too long.
        if (regExp.hasMatch(entry.value[i].message.text)) {
          entry.value[i] = entry.value[i].copyWith(departments: {...entry.value[i].departments, dep});
        } else {
          continue;
        }

        // if (entry.value[i].message.text.contains(dep)) {
        //   entry.value[i] = entry.value[i].copyWith(departments: {...entry.value[i].departments, dep});
        // } else {
        //   continue;
        // }
      }
    }
  }

  log('Matching ended! Splitting lists to target lists');

  final Map<String, List<MessageWithDistrictAndDepartments>> none = {};
  final Map<String, List<MessageWithDistrictAndDepartments>> depAndDist = {};
  final Map<String, List<MessageWithDistrictAndDepartments>> onlyDeps = {};
  final Map<String, List<MessageWithDistrictAndDepartments>> onlyDists = {};

  for (final word in keywords) {
    if (!none.containsKey(word)) none[word] = [];
    if (!depAndDist.containsKey(word)) depAndDist[word] = [];
    if (!onlyDeps.containsKey(word)) onlyDeps[word] = [];
    if (!onlyDists.containsKey(word)) onlyDists[word] = [];
  }

  for (final entry in result.entries) {
    for (final value in entry.value) {
      if (value.departments.isEmpty && value.districts.isEmpty) {
        none[entry.key]!.add(value);
        continue;
      }

      if (value.departments.isNotEmpty && value.districts.isNotEmpty) {
        depAndDist[entry.key]!.add(value);
        continue;
      }

      if (value.departments.isNotEmpty && value.districts.isEmpty) {
        onlyDeps[entry.key]!.add(value);
        continue;
      }
      if (value.departments.isEmpty && value.districts.isNotEmpty) {
        onlyDists[entry.key]!.add(value);
        continue;
      }
    }
  }
  log('List splitted!');
  log('Preparing data for CSV');

  

  for (final entry in depAndDist.entries) {
    for (final value in entry.value) {
      for (final dist in value.districts) {
        csvDepAndDicts.add(
          [
            value.message.date,
            entry.key,
            value.message.text,
            value.departments.join(','),
            dist,
          ],
        );
      }
    }
  }

  for (final entry in onlyDists.entries) {
    for (final value in entry.value) {
      for (final dist in value.districts) {
        csvDist.add([value.message.date, entry.key, value.message.text, dist]);
      }
    }
  }
  for (final entry in onlyDeps.entries) {
    for (final value in entry.value) {
      for (final dep in value.departments) {
        csvDep.add([value.message.date, entry.key, value.message.text, dep]);
      }
    }
  }
  for (final entry in none.entries) {
    for (final value in entry.value) {
      csvNone.add([value.message.date, entry.key, value.message.text]);
    }
  }

  log('We have data!');
  log('Generating CSVs');
  String csvList1 = ListToCsvConverter().convert(csvDepAndDicts);
  File('.result/valid.csv').writeAsString(csvList1);
  String csvList2 = ListToCsvConverter().convert(csvDist);
  File('.result/districts_only.csv').writeAsString(csvList2);
  String csvList3 = ListToCsvConverter().convert(csvDep);
  File('.result/deps_only.csv').writeAsString(csvList3);
  String csvList4 = ListToCsvConverter().convert(csvNone);
  File('.result/invalid.csv').writeAsString(csvList4);

  stopwatch.stop();
  log('Done! Execution time: ${stopwatch.elapsed}');
}

const List<String> keywords = [
  'aperturado',
  'reaperturado',
  'cerrado',
];

