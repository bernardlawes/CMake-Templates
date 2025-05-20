# 🛠️ C++ CMake Project Templates

A flexible set of C++ repositories powered by **CMake**, **CMakeSettings.json**, and automated build scripts (`.bat` and `.ps1`), supporting multiple architectural patterns for fast prototyping and scalable application structure.

---

## 📦 Project Types

### 1. **Standalone**
- A single-purpose C++ application with its own `main.cpp`.
- Ideal for quick experiments or focused tools.
- Minimal dependencies, clean separation of concerns.

### 2. **Modular**
- Each module is a separate project with its own entry point.
- Launchable from an interactive **CLI menu**.
- Great for managing multiple related tools/utilities in one repo.

### 3. **Orchestrated**
- Central **controller** (orchestrator) routes execution to internal modules.
- Modules may not have independent entry points.
- Ideal for coordinated workflows or pipelines (e.g., image processing → scoring → visualization).

---

## 🚀 Features

- 🧩 Modular, scalable C++ project structure
- 📁 CMake-based builds with `CMakeLists.txt` and `CMakeSettings.json`
- ⚙️ Preconfigured `.bat` and `.ps1` scripts to automate:
  - Configuration
  - Build
  - Launch
- 🧪 Easily extendable templates for:
  - Class libraries
  - CLI apps
  - Background processors

---

## 🗂️ Example Directory Layout

