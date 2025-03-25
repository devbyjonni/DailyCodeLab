#!/bin/bash

# Get absolute path to this script directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "🚀 Setting up your CodeTrioPlayground..."

# Python
echo "🐍 Setting up Python..."
python3 "$SCRIPT_DIR/setup_python_project.py"

# C#
echo "💻 Setting up C#..."
bash "$SCRIPT_DIR/setup_dotnet_project.sh"

# Swift
echo "🍏 Setting up Swift..."
swift "$SCRIPT_DIR/setup_swift_project.swift"

echo "✅ All languages set up! Time to code like a boss. 😎"
