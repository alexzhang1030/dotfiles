#!/bin/bash

input_type() {
  curPath=$(cd `dirname $0`; pwd)
  layout=$(${curPath}/get_current_shurufa)
  if [[ $layout == *"ABC"* ]];then
     echo "🇺🇸 "
  else
     echo "🇨🇳 "
  fi
}

me() {
  echo "Alex"
}

arr=(
"`input_type`"
"`me`"
)

res=""

arrLength=${#arr[@]}
for ((i=0;i<${arrLength};i++))
do
  out=${arr[i]}
  [[ $i != $((arrLength - 1)) ]] && out="${out} | "
  res="$res$out"
done

echo $res
