for file in notebooks/*.ipynb
do
  fileName="$(basename $file .ipynb)"
  jupyter nbconvert "notebooks/$fileName" --to html --output-dir "docs/notebooks"
done