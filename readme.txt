# 🛠️ C++ CMake Project Templates

A collection of C++ CMake and automated build scripts (.bat and .ps1), supporting multiple architectural patterns for fast prototyping and scalable application structure.

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


```yaml
---

## 📂 Scripts

### `build.bat`
- Sets up and compiles the project using MSVC or MinGW
- Auto-detects current config from `CMakeSettings.json`

### `launch.ps1`
- Offers a menu for selecting and running available modules or orchestrated tasks
- Can be extended to support input args or debugging

---

## 🧠 Orchestrated vs. Modular — What’s the Difference?

| Modular | Orchestrated |
|--------|--------------|
| Each module is independently runnable | Centralized controller launches tasks |
| Good for toolkits/utilities | Good for pipelines/workflows |
| Think: "menu of apps" | Think: "flow of execution" |

> TL;DR: Modular = flexible menu. Orchestrated = directed sequence.

---

## 🧪 Getting Started

1. Clone the template you need:
   ```bash
   git clone https://github.com/yourusername/cpp-cmake-templates.git


Open in Visual Studio or run build.bat.

Run launch.ps1 to select modules or execute orchestrator.

📄 License
MIT License — use freely and modify for your own workflows.

🙋‍♂️ Author
Created by Bernard Lawes
For devs who want speed, structure, and scriptable automation in modern C++.


### ✅ Clarifying “Orchestrated” vs. “Modular”

- **Modular**: You write many small programs, each with its own `main()` and logic. The user picks one to run from a menu.
- **Orchestrated**: You write **one `main()`** that **calls the modules**, directing how they work together (e.g., preprocess → analyze → report).

So:  
- Modular = Lego pieces you can run alone  
- Orchestrated = One master controller arranging and executing those pieces
