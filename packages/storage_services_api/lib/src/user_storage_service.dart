import 'package:storage_services_api/src/storage_service.dart';

class UserStorageService extends ImageStorageService {
  String getCurrentUid() => firebaseAuth.currentUser!.uid;
}
