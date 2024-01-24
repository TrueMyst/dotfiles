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
  local check_processes=$(pgrep -c 'pacman|pamac|yay')

    if [ $check_processes -eq 0 ]; then
        sudo rm /var/lib/pacman/db.lck
        echo "Lock file deleted successfully!"
    else
        echo "Other processes using package management found:"
        ps aux | grep -E 'pacman|pamac|yay|paru'
        echo "Terminating the processes and deleting the lock file..."
        sudo pkill -9 -f 'pacman|pamac|yay'
        sudo rm /var/lib/pacman/db.lck
        echo "Lock file deleted after terminating processes!"
    fi

  echo "Fixing Pacman..."
  echo "Done!"
}
