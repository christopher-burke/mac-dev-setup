# mac-dev-setup

Automated macOS development environment setup using Ansible.

This repository installs Homebrew packages, macOS casks, Python versions, pip packages, and CLI tools to quickly bootstrap a development machine.

---

## Prerequisites

- macOS
- Python 3.x installed (`python3` in your PATH)
- Homebrew installed
- Xcode Command Line Tools (`xcode-select --install`)

---

## Usage

The recommended way to run the playbook is via the provided wrapper script, which creates a temporary virtual environment for Ansible:

```bash
./scripts/run-playbook.sh
```

This will:

1. Create a temporary Python virtual environment
2. Install Ansible 2.20
3. Run the playbook (`playbook.yml`)
4. Clean up the temporary environment automatically

---

## Notes

* **Add `~/bin` to your PATH**: CLI tools installed via `pipx` are symlinked to `~/bin`. To make them immediately usable, add the following to your shell profile (`~/.zshrc`, `~/.bash_profile`, etc.):

```bash
export PATH="$HOME/bin:$PATH"
```

* All package lists and versions are defined in `vars/main.yml`.
* Sensitive variables (API keys, credentials) should **not** be committed; use `vars/secrets.yml` with Ansible Vault if needed.

---

## Directory Structure

```text
mac-dev-setup/
├── inventory/            # Ansible inventory
├── playbook.yml          # Main playbook
├── roles/                # Roles for Homebrew, casks, pip, pyenv
├── vars/                 # Variables (main.yml, secrets.yml)
├── scripts/              # Utility scripts (run-playbook.sh)
├── .gitignore
└── LICENSE
```

---

## License

MIT License
