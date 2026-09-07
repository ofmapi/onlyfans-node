# OnlyFans API for TypeScript and Node.js (OFMAPI)

Use the OFMAPI OnlyFans API from TypeScript, Node.js, Bun, Deno, browsers,
and edge runtimes: fans and subscribers, messages and PPV, posts and the
vault, earnings and statistics, plus signed webhooks. Generate a typed
client from the OpenAPI 3.1 spec in about a minute, or call the REST
endpoints with `fetch`.

**Status: official SDK planned, not yet published.** There is no
`@ofmapi/onlyfans` package on npm, and the package named `onlyfans` on npm
is unrelated to OFMAPI. Do not install either expecting an OFMAPI client.

## Generate a typed OnlyFans API client

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

## Plain `fetch` works just as well

```ts
const res = await fetch("https://api.ofmapi.com/v1/accounts", {
  headers: { Authorization: `Bearer ${process.env.OFMAPI_KEY}` },
});
console.log(await res.json());
```

Get an API key at https://app.ofmapi.com/api-keys (free during the public
Beta, no card required), connect an OnlyFans account in the dashboard, and
the account appears in that list.

## What OFMAPI is

An independent, unofficial OnlyFans API for agencies and developers: typed
REST endpoints, signed webhooks, and a hosted MCP server (174 tools) for
Claude, ChatGPT, Cursor, and VS Code. There is no official OnlyFans
developer API.

- Website: https://ofmapi.com
- Documentation: https://ofmapi.com/docs
- Interactive API reference (no login): https://ofmapi.com/docs/api
- OpenAPI spec: https://ofmapi.com/openapi.json
- Code examples (Hono webhook receiver for Node, Bun, Deno, Workers): https://github.com/ofmapi/examples
- Status: https://ofmapi.com/status
- Contact and support: https://ofmapi.com/contact

## Roadmap

This repository will hold the official SDK source when it is published.
Watch the repository or the changelog at https://ofmapi.com/changelog.

## License

MIT. See [LICENSE](LICENSE).

---

OFMAPI is an independent organisation, not affiliated with OnlyFans.com or
Fenix International Limited. "OnlyFans" is a registered trademark of Fenix
International Limited.
