#!/usr/bin/env sh

# For Rust Zero to Production (fnoon branch)
# Uses homebrew's llvm and postgresql@16.
#
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
