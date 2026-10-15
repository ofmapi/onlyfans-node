#!/usr/bin/env bash
# Generate a typed TypeScript client for the OFMAPI OnlyFans API from the
# public OpenAPI 3.1 spec. Output lands in ./src/ofmapi (git-ignored),
# including the fetch client, so there is no runtime package to install.
# Needs Node.js 22.18+.
#
#   ./generate.sh
#
# Walkthrough with usage examples: https://ofmapi.com/docs/sdk/node
set -euo pipefail

# Pinned: Hey API makes breaking changes between minor releases, and the
# generator does not run with TypeScript 7 (npm's default since 7.0).
npm install --no-audit --no-fund --save-dev --save-exact \
  @hey-api/openapi-ts@0.99.0 typescript@6.0.3
npx @hey-api/openapi-ts \
  -i https://ofmapi.com/openapi.json \
  -o src/ofmapi \
  -c @hey-api/client-fetch

echo "generated ./src/ofmapi — see https://ofmapi.com/docs/sdk/node for usage"
