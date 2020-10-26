#URL=`curl -sI -w %{redirect_url} -o /dev/null https://github.com/codesenberg/bombardier/releases/latest/download/bombardier-linux-amd64`
VERSION=`curl --silent "https://api.github.com/repos/codesenberg/bombardier/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")' | cut -c 2-`
URL=`echo https://github.com/codesenberg/bombardier/releases/download/v${VERSION}/bombardier-linux-amd64`

! brew livecheck --tap=command-line-tools/tap -q --newer-only bombardier | grep -q "No newer upstream versions." && \
    brew bump-formula-pr --no-browse --no-fork --commit --write --force --url ${URL} --version ${VERSION} bombardier

exit 0