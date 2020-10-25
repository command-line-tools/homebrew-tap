#URL=`curl -sI -w %{redirect_url} -o /dev/null https://github.com/codesenberg/bombardier/releases/latest/download/bombardier-linux-amd64`
VERSION=`curl --silent "https://api.github.com/repos/codesenberg/bombardier/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")' | cut -c 2-`
URL=`echo https://github.com/codesenberg/bombardier/releases/download/v${VERSION}/bombardier-linux-amd64`

brew bump-formula-pr --no-browse --no-fork --commit --write --url ${URL} --version ${VERSION} bombardier
