#!/usr/bin/env sh

# For Rust Zero to Production (fnoon branch)
# Uses homebrew's llvm, lld, and postgresql@16.

# Note: The upstream repo has a local .cargo/config.toml file which overrides
# the global config. I had to modify it to get things working on my M2 Macbook.
# (The preferred linker is no longer a part of the llvm package, but has its own
# lld package.)

# Usage:
#   cd ~/src/github/fnoon/zero-to-production
#   source ./fnoon/env.sh  # this file
#   [ensure Docker daemon is running]
#   ./scripts/init_db.sh
#   ./scripts/init_redis.sh
#   cargo build

export PATH="/opt/homebrew/opt/postgresql@16/bin:$PATH"
#export LDFLAGS="-L/opt/homebrew/opt/postgresql@16/lib"
#export CPPFLAGS="-I/opt/homebrew/opt/postgresql@16/include"
