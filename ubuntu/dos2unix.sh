dos2unix(){
  tr -d '\r' < "$1" > t
    mv -f t "$1"
}
