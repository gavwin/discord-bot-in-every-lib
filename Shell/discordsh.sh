DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $DIR/../src/import.sh

echo "Ping Pong!"
create_bot $token
