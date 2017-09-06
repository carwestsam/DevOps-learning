$loop = 1

try{
  while ( $loop -le 3 ){
    throw "some thing wrong"
    echo $loop    
    $loop = $loop + 1
  }
  throw "anothor"
  throw "you"
} catch {
  echo $error.length
}
