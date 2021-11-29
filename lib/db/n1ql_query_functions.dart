import 'dart:developer';

import 'package:cbl/cbl.dart';
import 'package:couchbash_login/models/user_model/user_model.dart';

import 'database_manager.dart';

class DatabaseQueries {
  Future<UserModel?> getUserByEmailPass(String email, String password) async {
    final query = await Query.fromN1ql(DatabaseManager().userDatabase, '''
  SELECT *
  FROM _
  WHERE _.password = "$password" AND _.email = "$email"
  ''');
    final resultSet = await query.execute();
    final results = await resultSet
        .asStream()
        .map((result) => UserModel.fromJson(
            result.toPlainMap()['_'] as Map<String, dynamic>? ?? {}))
        .toList();
    log(results.toString(), name: 'QUERY-RESULTS');

    return results.isNotEmpty ? results.last : null;
  }
}
