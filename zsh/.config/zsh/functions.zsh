function paste() {
    local file=${1:-/dev/stdin}
    curl --data-binary @${file} https://paste.rs
    return 0
}

function depaste() {
  local paste_id=$(echo "$1" | cut -d "/" -f 4)
  curl -X DELETE "https://paste.rs/$paste_id"
  return 0
}

function run() {
  local file=$1
  local out=$(echo "$1" | cut -d "." -f 1)

  g++ -std=c++17 -pedantic -Wall -Wextra -o $out $file && ./$out
  return 0
}

function fixpacman() {

  sudo ps aux | grep -E -i 'yay|pacman|yaourt|paru'
  echo "Killing all unecessary processes..."

  sudo rm /var/lib/pacman/db.lck
  echo "Fixing Pacman..."
  
  echo "Done!"
}
