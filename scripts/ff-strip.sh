# strip metadata and chapters

usage () {
  echo usage: $0 FILE
  exit
}

warn () {
  printf '\e[36m%s\e[m\n' "$*"
}

log () {
  unset PS4
  qq=$(( set -x
         : "$@" )2>&1)
  warn "${qq:2}"
  eval "${qq:2}"
}

(( $# )) || usage
arg_in=${1}
arg_out=strip.${1/*.}

# "-analyzeduration" doesnt do anything other than remove the warning
log ffmpeg -i "$arg_in" -c copy -map_metadata -1 -map_chapters -1 \
  -v warning -stats "$arg_out"
