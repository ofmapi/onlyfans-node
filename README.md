# OFMAPI TypeScript / Node.js SDK

**Status: planned, not yet published.** There is no `@ofmapi/onlyfans`
package on npm, and the package named `onlyfans` on npm is unrelated to
OFMAPI. Do not install either expecting an OFMAPI client.

## Use OFMAPI from TypeScript today

Generate a type-safe client from the public OpenAPI 3.1 spec. The generated
client runs in Node, Bun, Deno, browsers, and edge runtimes.

```bash
npm install -D @hey-api/openapi-ts
npx @hey-api/openapi-ts -i https://ofmapi.com/openapi.json -o src/ofmapi -c @hey-api/client-fetch
npm install @hey-api/client-fetch
```

```ts
import { client } from "@hey-api/client-fetch";
import { listAccountsV1AccountsGet } from "./ofmapi";

client.setConfig({
  baseUrl: "https://api.ofmapi.com",
  headers: { Authorization: `Bearer ${process.env.OFMAPI_KEY}` },
});

const { data, error } = await listAccountsV1AccountsGet();
```

Or run the script in this repository, which does the same thing:

```bash
./generate.sh
```

Full walkthrough: https://ofmapi.com/docs/sdk/node

Plain `fetch` works just as well:

```ts
const res = await fetch("https://api.ofmapi.com/v1/accounts", {
  headers: { Authorization: `Bearer ${process.env.OFMAPI_KEY}` },
});
console.log(await res.json());
```

## What OFMAPI is

A typed REST API over OnlyFans for agencies and developers, plus a hosted
MCP server (174 tools) for Claude, ChatGPT, Cursor, and VS Code. Free
during the public Beta; no card required; documented usage limits apply.

- Website: https://ofmapi.com
- Documentation: https://ofmapi.com/docs
- Interactive API reference (no login): https://ofmapi.com/docs/api
- OpenAPI spec: https://ofmapi.com/openapi.json
- Status: https://ofmapi.com/status

## Roadmap

This repository will hold the official SDK source when it is published.
Watch the repository or the changelog at https://ofmapi.com/changelog.

## License

MIT. See [LICENSE](LICENSE).

---

OFMAPI is an independent organisation, not affiliated with OnlyFans.com or
Fenix International Limited. "OnlyFans" is a registered trademark of Fenix
International Limited.
