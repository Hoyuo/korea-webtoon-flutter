fvm dart run build_runner build --delete-conflicting-outputs

fvm dart pub global activate flutter_gen
fluttergen

fvm dart run easy_localization:generate -S assets/translations -f keys -O lib/common/presentation/.generated locale_keys.g.dart -o locale_keys.g.dart