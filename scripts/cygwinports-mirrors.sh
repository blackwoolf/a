# Cygwin ports

warn ()
{
  printf '\e[36m%s\e[m\n' "$*"
}

log ()
{
  warn $*
  eval $*
}

wget sourceware.org/mirrors.html
set '/^<li>/!d; /http:/!d; s/[^"]*"//; s/".*//; s./$..'
sed "$1" mirrors.html > mirrors.lst

while read ee
do
  if log wget --spider -t1 -T1 -q $ee
  then
    ff+=(${ee}/cygwinports)
  fi
done < mirrors.lst

for gg in ${ff[*]}
do
  echo "${#gg} $gg"
done |
sort

rm mirrors.html mirrors.lst
