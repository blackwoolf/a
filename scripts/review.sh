# get reviews

[ $OSTYPE = cygwin ] && xdg-open () {
  cygstart "$1"
}

usage () {
  echo usage: $0 ARTIST
  exit
}

(( $# )) || usage
ARTIST=$*

xdg-open "allmusic.com/search/all/$ARTIST"
xdg-open "metacritic.com/search/all/${ARTIST// /+}/results"
xdg-open "pitchfork.com/search/?query=$ARTIST"
xdg-open "albumoftheyear.org/search.php?q=${ARTIST// /+}"
