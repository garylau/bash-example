set -eo pipefail

echo "+++ :hammer: Example tests"

echo "Downloading artifacts ..."

buildkite-agent artifact download "artifacts/*" artifacts/

ls -lart artifacts

echo -e "\033[33mCongratulations!\033[0m You've successfully run your first build on Buildkite! 👍

\033[33m$(cat artifacts/thumbsup.txt)\033[0m

If you have any questions or need help email support@buildkite.com, we'd be happy to help!

\033[31m<3\033[0m Buildkite
"


echo "+++ :frame_with_picture: Inline image uploaded as a build artifact"

function inline_image {
  printf '\033]1338;url='"$1"';alt='"$2"'\a\n'
}

inline_image 'https://www.youareawesomebook.co.uk/wp-content/themes/you-are-awesome/assets/img/You-Are-Awesome-Header@1x.png' 'awesome'
