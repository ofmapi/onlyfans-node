#!/usr/bin/env bash
# Generate a typed TypeScript client for the OFMAPI OnlyFans API from the
# public OpenAPI 3.1 spec. Output lands in ./src/ofmapi (git-ignored).
#
#   ./generate.sh
#
# Walkthrough with usage examples: https://ofmapi.com/docs/sdk/node
set -euo pipefail

npm install --no-audit --no-fund --save-dev @hey-api/openapi-ts
npm install --no-audit --no-fund @hey-api/client-fetch
npx @hey-api/openapi-ts \
  -i https://ofmapi.com/openapi.json \
  -o src/ofmapi \
  -c @hey-api/client-fetch

echo "generated ./src/ofmapi — see https://ofmapi.com/docs/sdk/node for usage"
