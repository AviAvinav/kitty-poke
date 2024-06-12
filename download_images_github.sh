echo "Creating directory pokemons..."
mkdir -p pokemons
echo "Downloading images..."
for i in {1..777}
do 

  if [ "$i" -ge 0 ] && [ "$i" -le 9 ]; then
  curl -sL https://raw.githubusercontent.com/HybridShivam/Pokemon/master/assets/images/00$i.png > pokemons/$i.png
elif [ "$i" -ge 10 ] && [ "$i" -le 99 ]; then
  curl -sL https://raw.githubusercontent.com/HybridShivam/Pokemon/master/assets/images/0$i.png > pokemons/$i.png
else
  curl -sL https://raw.githubusercontent.com/HybridShivam/Pokemon/master/assets/images/$i.png > pokemons/$i.png
fi

done

echo "Downloaded images!"
echo "Resizing images..."

for i in {1..777}
do
  magick ./pokemons/$i.png -resize 30% ./pokemons/$i.png
done

echo "Done!"
