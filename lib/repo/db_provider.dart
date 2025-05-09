import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../service/databaseHelper.dart';

final databaseHelperProvider = Provider((ref) => DatabaseHelper());

