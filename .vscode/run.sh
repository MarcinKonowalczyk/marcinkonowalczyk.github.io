# https://gist.github.com/MarcinKonowalczyk/709e93f08e9d72f8092acd5b8d34c81f
# Example .run.sh
echo "Hello from run script! ^_^"

# Extension, filename and directory parts of the file which triggered this
EXTENSION="${1##*.}"
FILENAME=$(basename -- "$1")
DIR="${1%/*}/"

# The direcotry of the file folder from which this script is running
# https://stackoverflow.com/a/246128/2531987
ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
ROOT="${ROOT%/*}/"

# Debug print
# echo "EXTENSION : ${EXTENSION}"
# echo "FILENAME : ${FILENAME}"
# echo "DIR : ${DIR}"
# echo "ROOT : ${ROOT}"

bundle exec jekyll serve