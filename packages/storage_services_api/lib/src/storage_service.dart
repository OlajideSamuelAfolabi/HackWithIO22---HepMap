import 'dart:io';
import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:uuid/uuid.dart';

final firebaseAuth = FirebaseAuth.instance;

abstract class ImageStorageService {
  Future<String> uploadImage(Reference ref, File file) async {
    String fileExtension = FileUtils.getFileExtension(file);
    Reference storageReference = ref.child('${Uuid().v4()}.$fileExtension');

    UploadTask uploadTask = storageReference.putFile(file);

    await uploadTask.whenComplete(() => null);

    String fileUrl = await storageReference.getDownloadURL();

    return fileUrl;
  }
}

/// Just a utility class for managing files
class FileUtils {
  static String getFileExtension(File file) {
    List fileNameSplit = file.path.split(".");
    String extension = fileNameSplit.last;
    return extension;
  }

  static String getFileSize(File file) {
    return (file.lengthSync() / (1024 * 1024)).toStringAsFixed(1);
  }

  static String formatBytes(bytes, decimals) {
    if (bytes == 0) return "0.0 KB";
    var k = 1024,
        dm = decimals <= 0 ? 0 : decimals,
        sizes = ['Bytes', 'KB', 'MB', 'GB', 'TB', 'PB', 'EB', 'ZB', 'YB'],
        i = (log(bytes) / log(k)).floor();
    return (((bytes / pow(k, i)).toStringAsFixed(dm)) + ' ' + sizes[i]);
  }
}
