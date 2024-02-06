-- Dart / Flutter
local dap = require('dap')

dap.adapters.dart = {
  type = 'executable',
  command = 'dart',
  args = {'debug_adapter'}
}
dap.adapters.flutter = {
  type = 'executable',
  command = 'flutter',
  args = {'debug_adapter'}
}
dap.configurations.dart = {
  {
    type = "dart",
    request = "launch",
    name = "Launch dart",
    dartSdkPath = "/home/gabe/.local/share/mise/installs/flutter/3.7.6-stable/bin/dart", -- ensure this is correct
    flutterSdkPath = "/home/gabe/.local/share/mise/installs/flutter/3.7.6-stable/bin/flutter",                  -- ensure this is correct
    program = "${workspaceFolder}/lib/main.dart",     -- ensure this is correct
    cwd = "${workspaceFolder}",
  },
  {
    type = "flutter",
    request = "launch",
    name = "Launch flutter",
    dartSdkPath = "/home/gabe/.local/share/mise/installs/flutter/3.7.6-stable/bin/dart", -- ensure this is correct
    flutterSdkPath = "/home/gabe/.local/share/mise/installs/flutter/3.7.6-stable/bin/flutter",                  -- ensure this is correct
    program = "${workspaceFolder}/lib/main.dart",     -- ensure this is correct
    cwd = "${workspaceFolder}",
  }
}
