# free-claude-code-server

Deploys [Free Claude Code](https://github.com/Alishahryar1/free-claude-code)
(`fcc-server`) on Railway as a Docker service.

Free Claude Code is a local proxy/router: it forwards requests from coding
clients (Claude Code, Codex, OpenCode, …) to other model providers. It is
an independent open-source project, not affiliated with Anthropic.

## Railway setup

- **Builder:** Dockerfile (this repo)
- **Port:** Railway injects `PORT`; `fcc-server` reads it (default `8082`).
- **Volume:** mount a Railway Volume at `/root/.fcc` — that is where FCC
  keeps its config, including provider API keys — so keys and settings
  survive restarts and redeploys.
- **Health check:** `GET /health` returns `{"status":"healthy"}`.

After the service is up, open the Admin UI at `/admin` to add a provider
API key (for example a free NVIDIA NIM key) and pick a model. No API keys
or other secrets are stored in this repo.
