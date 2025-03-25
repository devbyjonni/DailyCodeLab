import os
from pathlib import Path

project_name = "PythonPlayground"
base_path = Path.home() / "Developer" / project_name

os.makedirs(base_path, exist_ok=True)
print(f"✅ Created Python project directory: {base_path}")

main_py = base_path / "main.py"
main_py.write_text("# Python Playground\nprint('Python is ready!')\n")
print(f"✅ Created {main_py}")

