#!/bin/bash
sudo apt purge nodejs npm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
## Might need to close and open the terminal for nvm to work
nvm install node
nvm install node
## Easer to update
nvm alias default node
