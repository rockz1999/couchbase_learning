import 'dart:io';

import 'package:cbl/cbl.dart';
import 'package:cbl_flutter/cbl_flutter.dart';
import 'package:cbl_flutter_ce/cbl_flutter_ce.dart';

class DatabaseManager {
  DatabaseManager._();
  static final DatabaseManager _instance = DatabaseManager._();
  late final Database userDatabase;
  factory DatabaseManager() {
    return _instance;
  }
  DatabaseManager get instance => _instance;
  void initCouchbase() async {
    if (Platform.isIOS || Platform.isAndroid) {
      CblFlutterCe.registerWith();
    }
    await CouchbaseLiteFlutter.init();
    userDatabase = await Database.openAsync('user-pool-test');
    // final replication = await Replicator.create(
    //   ReplicatorConfiguration(
    //     database: userDatabase,
    //     target: UrlEndpoint(
    //       Uri.parse('https//:10.0.0.2:8091/'),
    //     ),
    //     continuous: true,
    //     replicatorType: ReplicatorType.pushAndPull,
    //   ),
    // );
    // replication.start();
  }
}
