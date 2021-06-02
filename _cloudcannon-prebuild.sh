#!/usr/bin/env bash

npm install

[ "$BOOKSHOP_DEV" = 'true' ] && npm run bookbuild

rm -rf site/components
cp -R components site/components

echo "📚 ✅ : Prebuild script finished"

