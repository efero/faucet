#!/bin/sh
AFL_I_DONT_CARE_ABOUT_MISSING_CRASHES=1 AFL_SKIP_CPUFREQ=1 py-afl-fuzz -x /faucet-src/tests/fuzzer/dict/yaml.dict -m 5000 -i /faucet-src/tests/fuzzer/config/ -o /var/log/afl/ -- /usr/bin/python3 /faucet-src/tests/fuzzer/fuzz_config.py