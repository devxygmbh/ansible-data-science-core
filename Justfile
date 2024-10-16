set shell := ["fish", "-c"]

lint-ansible:
    ansible-lint

lint-markdown:
    markdownlint-cli2 *.{md,markdown}

lint-yaml:
    yamllint --strict -f colored .

lint-editorconfig:
    editorconfig-checker

lint-prettier:
    prettier --check .

lint:
    just lint-ansible
    just lint-markdown
    just lint-yaml
    just lint-editorconfig
    just lint-prettier


r_test:
    cd ansible_collections/devxy/core/extensions && \
    source ~/venv/ansible-molecule/bin/activate && \
    pip3 install molecule docker molecule-plugins[docker] 'ansible-core<2.17' && \
    molecule converge

r_check:
  ansible-playbook -C -D test/r.yaml

r_apply:
  ansible-playbook -D test/r.yaml

python_check:
  ansible-playbook -C -D test/python.yaml

python_apply:
  ansible-playbook -D test/python.yaml

quarto_check:
  ansible-playbook -C -D test/quarto.yaml

quarto_apply:
  ansible-playbook -D test/quarto.yaml

system_check:
  ansible-playbook -C -D test/system.yaml

system_apply:
    ansible-playbook -D test/system.yaml

stop SERVER:
    hcloud server poweroff {{SERVER}}

start SERVER:
    hcloud server poweron {{SERVER}}


ansible-doctor:
    source ~/venv/ansible-ds-core/bin/activate.fish && ansible-doctor roles -r

galaxy-publish:
    ansible-galaxy collection build && \
    tarball=$(ls | grep devxy-) && \
    ansible-galaxy collection install $tarball -p /Users/pjs/.ansible/collections && \
    ansible-galaxy collection publish $tarball && \
    rm $tarball

init-venv:
    python3 -m venv ~/venv/ansible-ds-core && \
    fish -c 'source ~/venv/ansible-ds-core/bin/activate.fish; python3 -m pip install ansible-doctor[ansible-core] "ansible-core<2.17" molecule-plugins[docker] cryptography'

molecule scenario:
    source ~/venv/ansible-ds-core/bin/activate.fish && cd extensions && molecule test --scenario-name {{scenario}}
