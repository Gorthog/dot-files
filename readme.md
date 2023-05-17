creates Brewfile in the current directory from currently-installed packages
```
brew bundle dump
```

install everything from the Brewfile
```
brew bundle
```

collect fisher plugins
```
echo (fisher ls) > fisher
```

install qalc
```
set latest (http https://api.github.com/repos/Qalculate/qalculate-gtk/releases/latest | fx .tag_name | string sub -s 2)
http -d https://github.com/Qalculate/qalculate-gtk/releases/download/v$latest/qalculate-$latest-(uname -m).tar.xz | tar zxf -
sudo cp qalculate-$latest/qalc /usr/local/bin
rm -rf qalculate-$latest
```

install docker
```
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
```

docker compose
```
mkdir -p ~/.docker/cli-plugins/
set latest (http https://api.github.com/repos/docker/compose/releases/latest | fx .tag_name)
http -d -p=b https://github.com/docker/compose/releases/download/$latest/docker-compose-linux-(uname -m) -o ~/.docker/cli-plugins/docker-compose
chmod +x ~/.docker/cli-plugins/docker-compose
# test installation
docker compose version
```

run docker without sudo
```
sudo groupadd docker
sudo usermod -aG docker (whoami)
newgrp docker
```

auto run docker on wsl start
```
printf '[boot]\ncommand = "service docker start"' | sudo tee -a /etc/wsl.conf
```

install jwt-cli on ubuntu
```
sudo apt install build-essential
brew install rust
cargo install jwt-cli
```

