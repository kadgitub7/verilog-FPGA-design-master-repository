#!/usr/bin/env bash
# Run Verilator on a topic folder (WSL / Linux / macOS).
# Usage (from repo root): ./scripts/run_verilator.sh topics/00-combinational/01_mux

set -euo pipefail

TOPIC_PATH="${1:?Usage: $0 <path/to/topic>}"
REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
ABS_TOPIC="$(cd "$REPO_ROOT" && cd "$TOPIC_PATH" && pwd)"

RTL_DIR="$ABS_TOPIC/rtl"
TB_DIR="$ABS_TOPIC/tb"
OBJ_DIR="$ABS_TOPIC/obj_dir"

if [[ ! -d "$RTL_DIR" || ! -d "$TB_DIR" ]]; then
  echo "Expected rtl/ and tb/ under: $ABS_TOPIC" >&2
  exit 1
fi

TB_MAIN="$(find "$TB_DIR" -maxdepth 1 -name 'tb_*.sv' -print -quit)"
if [[ -z "$TB_MAIN" ]]; then
  echo "No tb_*.sv in $TB_DIR" >&2
  exit 1
fi

TOP_NAME="$(basename "$TB_MAIN" .sv)"

mapfile -t FILES < <(find "$RTL_DIR" "$TB_DIR" -maxdepth 1 -name '*.sv' | sort)
if [[ "${#FILES[@]}" -eq 0 ]]; then
  echo "No .sv files under rtl/ or tb/" >&2
  exit 1
fi

rm -rf "$OBJ_DIR"
cd "$ABS_TOPIC"

verilator --binary --timing -Wall -Wno-DECLFILENAME -j 0 -Mdir "$OBJ_DIR" \
  "${FILES[@]}" --top-module "$TOP_NAME"

EXE="$OBJ_DIR/V${TOP_NAME}"
if [[ ! -x "$EXE" ]]; then
  EXE="$(find "$OBJ_DIR" -maxdepth 1 -name 'V*' -type f -executable -print -quit)"
fi

echo "Running: $EXE"
"$EXE"
