import 'dart:developer';
import 'dart:io';

import 'package:cbl/cbl.dart';
import 'package:cbl_flutter/cbl_flutter.dart';
import 'package:cbl_flutter_ce/cbl_flutter_ce.dart';

class DatabaseManager {
  DatabaseManager._();
  static final DatabaseManager _instance = DatabaseManager._();
  late final Database userDatabase;
  Replicator? replicator;
  factory DatabaseManager() {
    return _instance;
  }
  DatabaseManager get instance => _instance;

  void initCouchbase() async {
    if (Platform.isIOS || Platform.isAndroid) {
      CblFlutterCe.registerWith();
    }
    await CouchbaseLiteFlutter.init();
    userDatabase = await Database.openAsync(
      'user-pool-test',
    );
    replicator = await Replicator.create(
      ReplicatorConfiguration(
        database: userDatabase,
        authenticator:
            BasicAuthenticator(username: 'atish_manala', password: 'ati0987sh'),
        target: UrlEndpoint(
          Uri.parse('ws://10.0.2.2:4984/db'),
        ),
        continuous: true,
        replicatorType: ReplicatorType.pushAndPull,
      ),
    );
    replicator?.addDocumentReplicationListener((change) {
      log(change.documents.toString());
    });
    replicator?.start();
  }

  void destroy() {
    replicator?.close();
  }
}
