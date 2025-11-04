#!/usr/env/bin bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/" && pwd)"

$SCRIPT_DIR/bin/bats --version 2>/dev/null

if [[ $? -eq 0 ]]; then
	echo "Bats is already installed in your local environment. Skipping step."
else
  echo "Bats not found locally, Installing..."

  git submodule update --remote $SCRIPT_DIR/vendor/bats-core
  $SCRIPT_DIR/vendor/bats-core/install.sh ./
fi

$SCRIPT_DIR/bin/shellcheck --version

if [[ $? -eq 0 ]]; then
	echo "ShellCheck is already installed in your local environment. Skipping step."
else
  echo "ShellCheck not found locally, Installing..."

  scversion="stable" # or "v0.4.7", or "latest"
  arch=aarch64
  os_name=darwin
  wget -qO- "https://github.com/koalaman/shellcheck/releases/download/${scversion?}/shellcheck-${scversion?}.${os_name}.${arch}.tar.xz" | tar -xJv
  mv "shellcheck-${scversion}/shellcheck" $SCRIPT_DIR/bin/

  if [[ uname -eq "Darwin" ]]; then
    xattr -d com.apple.quarantine $SCRIPT_DIR/bin/shellcheck
  fi

  chmod +x $SCRIPT_DIR/bin/shellcheck
  $SCRIPT_DIR/bin/shellcheck --version
fi

$SCRIPT_DIR/bin/shfmt --version

if [[ $? -eq 0 ]]; then
  echo "shfmt is already installed in your local environment. Skipping step."
  exit 0
else
  echo "shfmt not found locally, Installing..."

  version=3.12.0
  arch=arm64
  os_name=darwin
  wget -O $SCRIPT_DIR/bin/shfmt "https://github.com/mvdan/sh/releases/download/v${version}/shfmt_v3.12.0_${os_name}_${arch}"

  # if [[ uname -eq "Darwin" ]]; then
  #   xattr -d com.apple.quarantine $SCRIPT_DIR/bin/shfmt
  # fi

  chmod +x $SCRIPT_DIR/bin/shfmt
  $SCRIPT_DIR/bin/shfmt --version
fi
