#!/usr/bin/env bash
set -e

echo "=== Generating Python Protobuf Bindings ==="
mkdir -p python/sensor_messages
protoc --proto_path=. --python_out=python/sensor_messages sensor-messages.proto
cat << 'EOF' > python/sensor_messages/__init__.py
from .sensor_messages_pb2 import *
EOF
echo "Python bindings generated at python/sensor_messages/sensor_messages_pb2.py"

echo "=== Generating Dart Protobuf Bindings ==="
mkdir -p lib/src/generated
protoc --plugin=protoc-gen-dart=$HOME/.pub-cache/bin/protoc-gen-dart --proto_path=. --dart_out=lib/src/generated sensor-messages.proto
echo "Dart bindings generated at lib/src/generated/"

echo "=== Running Validation Tests ==="
echo "1. Rust Tests:"
cargo test

echo "2. Python Tests:"
python3 -m unittest discover -s tests -p "*_test.py"

echo "3. Dart Tests:"
dart test

echo "=== All Bindings Generated and Validated Successfully! ==="
