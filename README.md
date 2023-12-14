# 1Password Copy Vault Items

This shell script automates the process of copying items from one vault to another vault using 1Password CLI (`op` command).

## Note

**This script is created for performing a specific task (SRE-4968). Therefore, you may want to tweak a bit for your purpose.**
e.g. You may not need $EXCLUDE_KEYWORD. 

## Installation

To use this script, simply clone the script to your local machine.

## Usage

1. Sign into 1Password on CLI. (Ref: https://developer.1password.com/docs/cli/v1/get-started/)

2. Define your configuration such as a source vault ID and a destination vault ID in `config.txt`.

3. Run the script. 

```bash
./copy_vault_items.sh
```