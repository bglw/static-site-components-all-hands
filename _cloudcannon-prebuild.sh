#!/usr/bin/env bash

npm install

[ "$BOOKSHOP_DEV" = 'true' ] && npm run bookbuild

echo "📚 ✅ : Prebuild script finished"
