// Copyright (c) 2014, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of test_runner.runner;

/// Template of a Dart file that sets the unittest VmConfiguration and calls
/// another file's main. You need to replace the `{{test_file_name}}`
/// placeholder with the path to the original test file to execute.
const String VM_TEST_DART_FILE_TEMPLATE = '''
// Copyright (c) 2014, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library test_runner.vm_test_config;

import 'package:unittest/vm_config.dart';
import '/test/{{test_file_name}}' as test;

/// Sets the VmConfiguration and then calls the original test file.
void main() {
  useVMConfiguration();
  test.main();
}
''';
