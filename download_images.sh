for i in {1..1024}
do 
  curl -sL https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/$i.png > pokemons/$i.png
  echo "Downloaded image number $1"
  magick ./pokemons/$i.png -resize 400% ./pokemons/$i.png
  echo "Resized image number" $i

  echo ""
  echo ""
  echo "--------------------"
  echo "Done!"
  echo "--------------------"

done
