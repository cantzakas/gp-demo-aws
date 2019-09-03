#!/bin/bash

cd $HOME

curl -O https://bootstrap.pypa.io/get-pip.py
python $HOME/get-pip.py --user
rm $HOME/get-pip.py

mv $HOME/.bash_profile $HOME/.bash_profile.old

cat >> $HOME/.bash_profile << 'EOF'
# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

export PATH=$HOME/.local/bin:$HOME/bin:$PATH

EOF

chmod 644 $HOME/.bash_profile
source $HOME/.bash_profile

pip install --upgrade --force-reinstall --user pip
pip install --upgrade --force-reinstall --user boto3
pip install --upgrade --force-reinstall --user awscli

echo "***********************"
echo "* Get AWS CLI version *"
echo "***********************"
aws --version

