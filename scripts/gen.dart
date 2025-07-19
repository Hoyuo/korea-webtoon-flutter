import 'dart:io';

Future<void> main() async {
  final directory = Directory('assets');

  try {
    await searchAssets(directory);
  } catch (e) {
    print('Error: $e');
  }
}

Future<void> searchAssets(Directory directory) async {
  try {
    final files = await directory.list().toList();

    var map = <String, List<String>>{};
    List<String> flavor = [];

    for (final entity in files) {
      if (entity is Directory) {
        final lastPath = entity.path.split('/').last;
        if (lastPath == 'images') {
          map = await listFiles(entity, map);
        } else {
          // isExist -> entity
          Directory tempDirectory = Directory('${entity.path}/images');
          if ((tempDirectory).existsSync()) {
            flavor.add(lastPath);
            map = await listFiles(tempDirectory, map);
          }
        }
      }
    }
    createClassFile(directory, flavor, map);
  } catch (e) {
    print('Error: $e');
  }
}

Future<Map<String, List<String>>> listFiles(
    Directory directory, Map<String, List<String>> map) async {
  final files = await directory.list().toList();

  for (final entity in files) {
    if (entity is File) {
      final lastPath = entity.path.split('/').last;
      final list = map[lastPath];
      if (list != null) {
        list.add(entity.path);
      } else {
        map[lastPath] = [entity.path];
      }
    }
  }

  return map;
}

Future<void> createClassFile(Directory directory, List<String> flavors,
    Map<String, List<String>> map) async {
  final file = File('lib/common/presentation/global_assets.dart');
  file.createSync();
  final StringBuffer buffer = StringBuffer();

  buffer.writeln('import \'package:flutter/services.dart\';');
  buffer.writeln('import \'.generated/assets.gen.dart\';');
  buffer.writeln();
  buffer.writeln('class GlobalAssets {');
  buffer.writeln('  GlobalAssets._();');
  buffer.writeln();

  map.forEach((file_name, file_path_list) {
    buffer.writeln(
        '  static ${getClassType(file_name)} get ${getAttribute(file_name)} {');
    if (file_path_list.length == 1) {
      buffer.writeln('    return ${getAssetsImage(file_path_list.first)};');
    } else {
      buffer.writeln('    switch (appFlavor) {');
      file_path_list.forEach((file_path) {
        final parts = file_path.split('/');
        final flavor = parts[1];
        if (flavors.contains(flavor)) {
          buffer.writeln('      case \'$flavor\':');
          buffer.writeln('        return ${getAssetsImage(file_path)};');
        }
      });
      buffer.writeln('      default:');
      buffer
          .writeln('        return ${getAssetsDefaultImage(file_path_list)};');
      buffer.writeln('    }');
    }
    buffer.writeln('  }');
    buffer.writeln();
  });

  buffer.writeln('}');
  file.writeAsStringSync(buffer.toString());
}

String getClassType(String path) {
  final extension = path.split('.').last;

  switch (extension) {
    case 'png':
    case 'jpg':
    case 'jpeg':
      return 'AssetGenImage';
    case 'svg':
      return 'SvgGenImage';
    case 'json':
      return 'LottieGenImage';
    case 'flr':
      return 'FlareGenImage';
    case 'riv':
      return 'RiveGenImage';
    default:
      return 'String';
  }
}

String getAttribute(String fileName) {
  // "ic_test_img.png" -> "icTestImg"
  final name = fileName.split('.').first;
  final parts = name.split('_');
  final first = parts.first;
  final rest = parts.sublist(1).map((part) {
    return part[0].toUpperCase() + part.substring(1);
  });
  return first + rest.join();
}

String getAssetsImage(String filePath) {
  // "assets/images/ic_test_img.png" -> "Assets.images.icTestImg"
  // "assets/dc/images/ic_test_img.png" -> "Assets.dc.images.icTestImg"

  final parts = filePath.split('/');
  if (parts.length == 3) {
    return 'Assets.images.${getAttribute(parts.last)}';
  } else if (parts.length == 4) {
    return 'Assets.${parts[1]}.images.${getAttribute(parts.last)}';
  } else {
    throw 'Invalid file path: $filePath';
  }
}

String getAssetsDefaultImage(List<String> filePathList) {
  // "assets/images/ic_test_img.png" -> "Assets.images.ic_test_img.png"
  // "assets/dc/images/ic_test_img.png" -> "Assets.dc.images.ic_test_img"

  var result = '';
  var check = 0;

  for (final filePath in filePathList) {
    final parts = filePath.split('/');
    if (parts.length == 3) {
      check++;
      result = 'Assets.images.${getAttribute(parts.last)}';
    }
  }

  if (check != 1) {
    throw 'Invalid file path: $filePathList';
  }

  return result;
}
