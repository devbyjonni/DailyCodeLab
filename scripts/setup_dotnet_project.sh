#!/bin/bash

PROJECT_NAME="DotnetPlayground"
PROJECT_DIR="$HOME/Developer/$PROJECT_NAME"

mkdir -p "$PROJECT_DIR"
cd "$PROJECT_DIR" || exit

dotnet new console
echo "✅ Created .NET project at $PROJECT_DIR"
