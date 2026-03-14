#!/usr/bin/env bash
set -e

# 1. Create a temporary venv
python3 -m venv .ansible-venv
source .ansible-venv/bin/activate

# 2. Upgrade pip inside the venv
pip install --upgrade pip setuptools wheel

# 3. Install Ansible (specific version if needed)
pip install ansible

# 4. Run your playbook
ansible-playbook playbook.yml -i inventory/localhost

# 5. Deactivate and remove the temporary environment
deactivate
rm -rf .ansible-venv

echo "Playbook run complete and temporary environment removed."