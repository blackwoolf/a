usage () {
  echo usage: ${0##*/} ITEM1 ITEM2
  exit
}

(( $# == 2 )) || usage

for ts in a b c d e f g h k p r s t u w x G L N O S
do
  [ -$ts "$1" ]
  r1=$?
  [ -$ts "$2" ]
  r2=$?
  if (( r1 == r2 ))
  then
    echo $ts same
  else
    echo $ts different
  fi
done
