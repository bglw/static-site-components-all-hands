#!/usr/bin/env bash

npm install

[ "$BOOKSHOP_DEV" = 'true' ] && npm run bookbuild

ln -s components site/components

echo "📚 ✅ : Prebuild script finished"

