cd ~/
sudo apt update
sudo apt install qemu-user-static file
sudo apt install vim git gcc ssh curl wget gdb sudo zsh python3 python3-pip libffi-dev build-essential libssl-dev libc6-i386 libc6-dbg gcc-multilib make -y
sudo apt install -y qemu-system qemu-kvm
sudo apt install python-is-python3 
sudo dpkg --add-architecture i386
sudo apt update
sudo apt install libc6:i386 -y
python3 -m pip install --upgrade pip
pip3 install unicorn
pip3 install keystone-engine
pip3 install pwntools
pip3 install ropgadget
sudo apt install libcapstone-dev -y
git clone https://github.com/scwuaptx/Pwngdb
#git clone https://github.com/pwndbg/pwndbg
git clone https://github.com/hugsy/gef
git clone https://github.com/NixOS/patchelf
cd pwndbg
./setup.sh
cd ..
echo "source ~/gef/gef.py" >> ~/.gdbinit
#echo "source ~/pwndbg/gdbinit.py" >> ~/.gdbinit
echo "source ~/Pwngdb/pwngdb.py" >> ~/.gdbinit
echo "source ~/Pwngdb/angelheap/gdbinit.py" >> ~/.gdbinit
echo "define hook-run" >> ~/.gdbinit
echo "python" >> ~/.gdbinit
echo "import angelheap" >> ~/.gdbinit
echo "angelheap.init_angelheap()" >> ~/.gdbinit
echo "end" >> ~/.gdbinit
echo "end" >> ~/.gdbinit
sudo apt install ruby-full -y
sudo gem install one_gadget seccomp-tools
sudo wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true
mkdir -p "$HOME/.zsh"
git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"
echo "fpath+=("$HOME/.zsh/pure")\nautoload -U promptinit; promptinit\nprompt pure" >> ~/.zshrc
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
echo "source ~/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
echo "source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc
echo "ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=111'" >> ~/.zshrc
git clone https://github.com/msh1307/init
cd init
./go.sh
