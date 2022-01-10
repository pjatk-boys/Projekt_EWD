
# work in progress
for file in notebooks/*.ipynb
do
  fileName="$(basename $file .ipynb)"
  jupyter nbconvert "notebooks/$fileName" --to html --output "docs/notebooks/${fileName}.html"
done