ls
cp templates/index.html docs/index.html

notebooksLinks=""
for file in notebooks/*.ipynb
do
  fileName="$(basename $file .ipynb)"
  jupyter nbconvert "notebooks/$fileName" --to html --output-dir "docs/notebooks"
  notebooksLinks="${notebooksLinks}<li><a href=\'./notebooks/${fileName}.html\'>${fileName}</a></li>"
done

sed -i "s%NOTEBOOKS%${notebooksLinks}%" docs/index.html