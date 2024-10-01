lint:
  ansible-lint

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
    ansible-doctor roles -r

galaxy-publish:
    ansible-galaxy collection build && \
    tarball=$(ls | grep devxy-) && \
    ansible-galaxy collection install $tarball -p /Users/pjs/.ansible/collections && \
    ansible-galaxy collection publish $tarball && \
    rm $tarball
