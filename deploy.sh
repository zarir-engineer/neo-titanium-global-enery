
#!/bin/bash

# Exit on error
set -e

echo "🔄 Checking out source branch: feature/sample-01"
git checkout feature/sample-01

echo "🏗 Building site with Jekyll..."
bundle exec jekyll build

echo "📦 Backing up _site to /tmp/gh-deploy..."
rm -rf /tmp/gh-deploy
mkdir -p /tmp/gh-deploy
cp -r _site/* /tmp/gh-deploy/

echo "🚀 Switching to gh-pages branch..."
git checkout gh-pages

echo "🧹 Cleaning gh-pages branch..."
git rm -rf .

echo "📥 Copying site files from /tmp/gh-deploy..."
cp -r /tmp/gh-deploy/* .

echo "🚫 Creating .nojekyll to disable GitHub Jekyll processing..."
touch .nojekyll

echo "✅ Committing and pushing to gh-pages..."
git add .
git commit -m 'Deploy latest build from feature/sample-01'
git push origin gh-pages

echo "✅ Switching back to feature/sample-01"
git checkout feature/sample-01

echo '🎉 Deployment complete! Check your site at:'
echo '👉 https://zarir-engineer.github.io/neo-titanium-global-enery/'
