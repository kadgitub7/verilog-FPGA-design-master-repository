# Verilog and FPGA design — learning repository

A structured, topic-driven collection of small **RTL + self-checking testbench** examples. It serves two purposes: documenting a personal learning path through *Digital Design and Computer Architecture* (Harris & Harris) and giving newcomers a **repeatable folder pattern** they can copy.

Designs are simulated with **[Verilator](https://www.veripool.org/verilator/)** by default (fast, strong linting, works on Windows with a documented install). FPGA vendor flows belong in separate lab folders when you add a real board and constraints—not in every early topic.

---

## Prerequisites

- **Verilator 5.x** (5.0 or newer recommended) with `--timing` support for simple delay-based testbenches. [Installation](https://veripool.org/guide/latest/install.html) — on Windows, use a prebuilt binary or build from source with a C++ compiler.
- A C++17-capable toolchain (Visual Studio Build Tools or similar on Windows) — required to compile the Verilator-generated simulator.
- Optional: an FPGA board and vendor tools (Vivado, Quartus, etc.) when you add `fpga/` or `labs/vendor/` projects later.

Check Verilator:

```powershell
verilator --version
```

---

## How to run simulations (Windows / PowerShell)

From the repository root, run the helper script with the path to a topic folder that contains `rtl/` and `tb/`:

```powershell
.\scripts\run_verilator.ps1 -TopicPath "topics\00-combinational\01_mux"
```

The script builds with Verilator (`--binary --timing`), runs the generated executable, and exits non-zero on failure. Each topic’s `README.md` repeats the same command for copy-paste.

On Linux or WSL:

```bash
chmod +x scripts/run_verilator.sh
./scripts/run_verilator.sh topics/00-combinational/01_mux
```

---

## Lint (optional)

From a topic directory (or pass paths as needed):

```powershell
verilator --lint-only -Wall rtl\mux.sv
```

---

## Table of contents (topics)

| Order | Topic area | Folder | Status |
| ----- | ---------- | ------ | ------ |
| 1 | Combinational logic | [topics/00-combinational/](topics/00-combinational/) | In progress |
| 1.1 | 2:1 multiplexer (template / golden example) | [topics/00-combinational/01_mux/](topics/00-combinational/01_mux/) | Implemented |
| 2 | Sequential logic | [topics/01-sequential/](topics/01-sequential/) | Planned |
| 3 | FSMs and control | [topics/02-fsm/](topics/02-fsm/) | Planned |
| 4 | Arithmetic / ALU building blocks | [topics/03-arithmetic/](topics/03-arithmetic/) | Planned |
| 5 | Memories and registers files | [topics/04-memories/](topics/04-memories/) | Planned |

See [topics/README.md](topics/README.md) for folder naming rules and how to add a new unit.

---

## Textbook mapping (*Digital Design and Computer Architecture*)

Edition-specific chapter titles vary (e.g. MIPS vs ARM/RISC-V in later parts). Fill this table for **your** edition’s table of contents and keep links stable.

| Book chapter / section (your notes) | Repository folder(s) | Notes |
| ------------------------------------ | ---------------------- | ----- |
| *(e.g. Ch. 2 — Combinational logic)* | `topics/00-combinational/` | |
| *(e.g. Ch. 3 — Sequential logic)* | `topics/01-sequential/` | |
| *(e.g. FSM / controller topics)* | `topics/02-fsm/` | |
| *(e.g. Arithmetic / ALU)* | `topics/03-arithmetic/` | |
| *(e.g. Memories)* | `topics/04-memories/` | |

---

## Roadmap

- **Done:** Repository skeleton, conventions, one runnable combinational example (`01_mux`).
- **Next:** First sequential topic (register / FF with sync reset), then FSM, then arithmetic, then memories—each with the same `rtl/` + `tb/` + `README.md` pattern.
- **Later (optional):** `fpga/` or `labs/vendor/` for synthesis and board bring-up; waveforms (VCD/FST) where helpful.

---

## Learning log and links

- Personal milestones and notes: [docs/learning-log.md](docs/learning-log.md)
- Curated references: [docs/resources.md](docs/resources.md)

---

## License

See [LICENSE](LICENSE).
