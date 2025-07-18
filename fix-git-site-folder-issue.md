
# Fixing Git Checkout Error: `_site` Will Be Overwritten

If you run into this error while deploying your Jekyll site:

```
error: Your local changes to the following files would be overwritten by checkout:
    _site/index.html
    ...
Please commit your changes or stash them before you switch branches.
Aborting
```

It means Git is trying to switch branches, but `_site/` is being **tracked** by Git — which it shouldn't be.

## ✅ Step-by-step Fix

### 1. Remove `_site` from Git tracking

```bash
git rm -r --cached _site
```

### 2. Add `_site/` to `.gitignore`

If not already present, add this line:

```bash
echo "_site/" >> .gitignore
```

### 3. Commit the change

```bash
git add .gitignore
git commit -m "Ignore _site folder (built output)"
```

Now Git will ignore `_site/`, and your deployment scripts should work properly.

---

## 🧠 Why This Happens

- `_site/` is your **build output** folder.
- It should **not** be version-controlled.
- Your deploy script likely checks out a branch (like `gh-pages`) after building.
- Git stops you from switching branches when tracked files have changes that will be lost.

---

## Optional: Add These to `.gitignore` Too

```gitignore
_site/
.jekyll-cache/
.sass-cache/
vendor/
```

Keep your repo clean and happy 🎉
