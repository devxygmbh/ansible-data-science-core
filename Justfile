# Variables
venv := "~/venv/ansible-data-science-core"
venv_env := "VIRTUAL_ENV=" + venv + " PATH=" + venv + "/bin:$PATH"


set shell := ["fish", "-c"]

ansible-deps:
  ansible-galaxy install -r requirements.yaml

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

syslibs_check:
  ansible-playbook -C -D test/syslibs.yaml

syslibs_apply:
  ansible-playbook -D test/syslibs.yaml

stop SERVER:
    hcloud server poweroff {{SERVER}}

start SERVER:
    hcloud server poweron {{SERVER}}

ansible-doctor:
    fish -c 'source ~/venv/ansible-ds-core/bin/activate.fish; ansible-doctor --version; ansible-doctor roles -r -f; prettier -w .'

galaxy-publish:
    ansible-galaxy collection build && \
    set tarball (ls | grep devxy-) && \
    ansible-galaxy collection install $tarball -p /Users/pjs/.ansible/collections && \
    ansible-galaxy collection publish --token $GALAXY_TOKEN $tarball && \
    rm $tarball

init-venv:
    uv venv --python 3.12 {{ venv }} && \
    uv pip install --python {{ venv }}/bin/python \
        ansible-doctor[ansible-core] \
        molecule-plugins[docker] \
        cryptography \
        distlib

molecule scenario:
    source ~/venv/ansible-ds-core/bin/activate.fish && cd extensions && molecule test --scenario-name {{scenario}}
