# CMake generated Testfile for 
# Source directory: /Users/johnjones/Developer/file-embedding-search/server/llama.cpp/tests
# Build directory: /Users/johnjones/Developer/file-embedding-search/server/build/tests
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(test-quantize-fns "/Users/johnjones/Developer/file-embedding-search/server/build/bin/test-quantize-fns")
set_tests_properties(test-quantize-fns PROPERTIES  _BACKTRACE_TRIPLES "/Users/johnjones/Developer/file-embedding-search/server/llama.cpp/tests/CMakeLists.txt;6;add_test;/Users/johnjones/Developer/file-embedding-search/server/llama.cpp/tests/CMakeLists.txt;10;llama_add_test;/Users/johnjones/Developer/file-embedding-search/server/llama.cpp/tests/CMakeLists.txt;0;")
add_test(test-quantize-perf "/Users/johnjones/Developer/file-embedding-search/server/build/bin/test-quantize-perf")
set_tests_properties(test-quantize-perf PROPERTIES  _BACKTRACE_TRIPLES "/Users/johnjones/Developer/file-embedding-search/server/llama.cpp/tests/CMakeLists.txt;6;add_test;/Users/johnjones/Developer/file-embedding-search/server/llama.cpp/tests/CMakeLists.txt;11;llama_add_test;/Users/johnjones/Developer/file-embedding-search/server/llama.cpp/tests/CMakeLists.txt;0;")
add_test(test-sampling "/Users/johnjones/Developer/file-embedding-search/server/build/bin/test-sampling")
set_tests_properties(test-sampling PROPERTIES  _BACKTRACE_TRIPLES "/Users/johnjones/Developer/file-embedding-search/server/llama.cpp/tests/CMakeLists.txt;6;add_test;/Users/johnjones/Developer/file-embedding-search/server/llama.cpp/tests/CMakeLists.txt;12;llama_add_test;/Users/johnjones/Developer/file-embedding-search/server/llama.cpp/tests/CMakeLists.txt;0;")
add_test(test-tokenizer-0 "/Users/johnjones/Developer/file-embedding-search/server/build/bin/test-tokenizer-0" "/Users/johnjones/Developer/file-embedding-search/server/llama.cpp/tests/../models/ggml-vocab.bin")
set_tests_properties(test-tokenizer-0 PROPERTIES  _BACKTRACE_TRIPLES "/Users/johnjones/Developer/file-embedding-search/server/llama.cpp/tests/CMakeLists.txt;6;add_test;/Users/johnjones/Developer/file-embedding-search/server/llama.cpp/tests/CMakeLists.txt;13;llama_add_test;/Users/johnjones/Developer/file-embedding-search/server/llama.cpp/tests/CMakeLists.txt;0;")
add_test(test-grad0 "/Users/johnjones/Developer/file-embedding-search/server/build/bin/test-grad0")
set_tests_properties(test-grad0 PROPERTIES  _BACKTRACE_TRIPLES "/Users/johnjones/Developer/file-embedding-search/server/llama.cpp/tests/CMakeLists.txt;6;add_test;/Users/johnjones/Developer/file-embedding-search/server/llama.cpp/tests/CMakeLists.txt;14;llama_add_test;/Users/johnjones/Developer/file-embedding-search/server/llama.cpp/tests/CMakeLists.txt;0;")
