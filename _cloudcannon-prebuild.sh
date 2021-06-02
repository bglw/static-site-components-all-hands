#!/usr/bin/env bash

npm install

[ "$BOOKSHOP_DEV" = 'true' ] && npm run bookbuild

ls -s components site/components

echo "📚 ✅ : Prebuild script finished"

