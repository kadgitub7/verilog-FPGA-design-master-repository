# Topics — layout and naming

Each **learning unit** lives in its own folder under a numbered category (e.g. `00-combinational`, `01-sequential`). Inside each unit:

```text
NN_short-name/
  README.md     # Goal, textbook pointer, how to simulate this folder
  rtl/          # Synthesizable Verilog / SystemVerilog
  tb/           # Self-checking testbench (PASS / FAIL, non-zero exit on error)
```

## Rules

1. **One clear DUT** per unit unless the README explains why (e.g. small hierarchy).
2. **Self-checking TB:** use `$fatal` or `$error` (or equivalent) on mismatch; end with an obvious `PASS` message.
3. **Top module** for simulation is the testbench module (e.g. `tb_mux`). The run script passes `--top-module` explicitly.
4. **File extensions:** `.sv` for SystemVerilog (`logic`, interfaces later). Use `.v` only if you stay strictly Verilog-2001.
5. **Naming:** prefix testbench files with `tb_` and match the top module name (`tb_mux.sv` → `module tb_mux`).
6. **Parameters:** prefer parameters over hard-coded widths when teaching reuse.

## Add a new topic

1. Copy the structure from [00-combinational/01_mux/](00-combinational/01_mux/).
2. Update the root [README.md](../README.md) table of contents and textbook mapping if needed.
3. Run `.\scripts\run_verilator.ps1 -TopicPath "topics\..."` from the repo root.
