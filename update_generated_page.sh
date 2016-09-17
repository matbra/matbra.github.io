# remove the current version of the web site
rm -rf 404.html css/ fonts/ home/ img/ index.* js/ post/ project/ publication/ robots.txt  sitemap.xml tags/

git commit -a -m"$1"

# switch to the "source" git branch
git checkout source

# copy the generate site to the repository's root folder
cp -r gitpage/public/* .

# switch to the "master" branch again
git checkout master
