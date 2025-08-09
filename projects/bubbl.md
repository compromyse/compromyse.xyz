name = BUBBL
description = An Operating System for The x86 Architecture.
languages = C / C++ / ASM
url = /projects/bubbl
template = project.html
link = https://github.com/compromyse/bubbl
linklabel = SOURCE
priority = 3
---

## Building

#### Dependencies: Nix with flakes enabled and (optionally) direnv

After entering the devshell (with direnv or `nix develop`),

```sh
mkdir build && cd build
cmake -G Ninja ..
ninja
```

## Running

```sh
ninja run # or run-headless or run-gdb
```
