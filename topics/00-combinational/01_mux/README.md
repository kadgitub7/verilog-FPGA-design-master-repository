# 2:1 multiplexer (golden example)

## Goal

Implement a **parameterized 2:1 mux** and prove it with a **self-checking testbench**. This folder is the reference layout for other topics (`rtl/` + `tb/` + documented run command).

## Textbook

Map this to your *Digital Design and Computer Architecture* chapter on combinational logic and multiplexers (section titles vary by edition).

## Files

- `rtl/mux.sv` — DUT: `WIDTH`-bit inputs `a`, `b`, select `sel`, output `y`.
- `tb/tb_mux.sv` — drives stimulus, compares against expected values, prints `PASS` or fails.

## Run (from repository root)

```powershell
.\scripts\run_verilator.ps1 -TopicPath "topics\00-combinational\01_mux"
```

## Try next

- Widen `WIDTH` to 8 and reuse the same tests with bus values.
- Add a `default` case if you rewrite `assign` as `always_comb` for practice.
