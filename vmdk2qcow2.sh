#!/bin/bash
# artefact-version: vmdk2qcow2/1.0
[ "${1:-}" = "--version" ] && { echo "vmdk2qcow2/1.0"; exit 0; }
# author: Pietro | audited 2026-06-18 (Claude) | created 2018-01-20
files=(*s0??.vmdk); qemu-img convert -f vmdk -O qcow2 ${files[@]} ${files%-s001.vmdk}.qcow2;

