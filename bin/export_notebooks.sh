cp ./templates/index.html ./docs/index.html

notebooksLinks=""
for file in notebooks/*.ipynb
do
  fileName="$(basename $file .ipynb)"
  jupyter nbconvert "notebooks/$fileName" --to html --output-dir "docs/notebooks"
  notebooksLinks="${notebooksLinks}<a href=\'./${fileName}.html\'>${fileName}</a>"
done

sed -i "s%NOTEBOOKS%${notebooksLinks}%" ./docs/index.html