AUTHOR=$(git show ${{ github.ref }} | grep Tagger)
DATE=$(git show ${{ github.ref }} | grep Date)
echo "author=${AUTHOR}" >> $GITHUB_ENV
echo "date=${DATE}" >> $GITHUB_ENV