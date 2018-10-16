mode = ScriptMode.Verbose

packageName   = "nimcrypto"
version       = "0.3.4"
author        = "Eugene Kabanov"
description   = "Nim cryptographic library"
license       = "MIT"
skipDirs      = @["tests", "Nim"]

requires "nim > 0.18.0"

task tests, "Runs the test suite":
  exec "nim c -f -r tests/testkeccak"
  exec "nim c -f -r tests/testsha2"
  exec "nim c -f -r tests/testripemd"
  exec "nim c -f -r tests/testblake2"
  exec "nim c -f -r tests/testhmac"
  exec "nim c -f -r tests/testrijndael"
  exec "nim c -f -r tests/testtwofish"
  exec "nim c -f -r tests/testblowfish"
  exec "nim c -f -r tests/testbcmode"
  exec "nim c -f -r tests/testsysrand"
  exec "nim c -f -r tests/testkdf"
  exec "nim c -f -r tests/testapi"
  exec "nim c -f -d:release -r tests/testkeccak"
  exec "nim c -f -d:release -r tests/testsha2"
  exec "nim c -f -d:release -r tests/testripemd"
  exec "nim c -f -d:release -r tests/testblake2"
  exec "nim c -f -d:release -r tests/testhmac"
  exec "nim c -f -d:release -r tests/testrijndael"
  exec "nim c -f -d:release -r tests/testtwofish"
  exec "nim c -f -d:release -r tests/testblowfish"
  exec "nim c -f -d:release -r tests/testbcmode"
  exec "nim c -f -d:release -r tests/testsysrand"
  exec "nim c -f -d:release -r tests/testkdf"
  exec "nim c -f -d:release -r tests/testapi"
