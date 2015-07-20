#
# install docker hisi environment tools
#

mkdir -p ./env_tools
wget --no-check-certificate https://raw.githubusercontent.com/erwinchang/note/master/env_tools/docker-script/functions.sh -O ./env_tools/functions.sh
chmod +x ./env_tools/function.sh

wget --no-check-certificate https://github.com/erwinchang/note/blob/master/env_tools/docker-script/set-env.sh -O ./env_tools/set-env.sh
chmod +x ./env_tools/set-env.sh

cd ./env_tools
./set-env.sh