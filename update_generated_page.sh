# remove the current version of the web site
rm -rf tags/ projects/ js/ img/ css/ categories/ about/ sitemap.xml robots.txt manifest.json index.* favicon-* browserconfig.xml apple-touch-icon.png 404.html

git commit -a -m"$1"

# switch to the "source" git branch
git checkout source

# copy the generate site to the repository's root folder
cp -r gitpage/public/* .

# switch to the "master" branch again
git checkout master

git add tags/ projects/ js img/ css/ categories/ about/ sitemap.xml robots.txt manifest.json index.* favicon-* browserconfig.xml 404.html

git commit --amend
