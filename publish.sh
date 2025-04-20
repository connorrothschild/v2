#!/bin/sh

# Make sure we're on the master branch
git checkout master

# Generate the site
echo "Generating site with Hugo..."
hugo

# Create a temporary directory for the gh-pages content
mkdir -p temp_gh_pages
cd temp_gh_pages

# Initialize a new git repository
git init
git remote add origin git@github.com:connorrothschild/v2.git  # Replace with your repo URL

# Create a new gh-pages branch from scratch
git checkout --orphan gh-pages

# Copy the new generated site
cp -r ../public/* .

# Commit and push
git add --all
git commit -m "Update site with latest changes ($(date))"
git push -f origin gh-pages  # Force push to overwrite remote branch

# Clean up
cd ..
rm -rf temp_gh_pages

echo "Site published to gh-pages branch"