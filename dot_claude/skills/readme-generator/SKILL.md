---
name: readme-generator
description: Generates a comprehensive README.md for a repository by exploring the codebase. Use this skill whenever the user asks to create, write, or generate a README for their project, codebase, or repository. Also trigger when the user says "document this project", "create docs", "write a readme", or "READMEを作って" — even if they don't say "README" explicitly, if they want project-level documentation, use this skill.
---

# README Generator

Generate a comprehensive `README.md` by exploring the codebase and extracting accurate information directly from the source.

## Sections to produce

1. **Overview** — What the project does, its purpose, and key features
2. **Getting Started** — Prerequisites and exact commands to build and run
3. **Development** — Local dev setup, hot-reload, test commands
4. **API Reference** — All HTTP endpoints: method, path, parameters, request/response shapes
5. **Architecture** — High-level design, key components, data flow

## Process

### 1. Explore the codebase

Read in parallel to build a complete picture:
- Main entry point (`main.go`, `index.ts`, `app.py`, `server.js`, etc.)
- Dependency/module files (`go.mod`, `package.json`, `requirements.txt`, `Cargo.toml`, etc.)
- Existing documentation (`CLAUDE.md`, `docs/`, any `.md` files in root)
- Configuration files (`.env.example`, `docker-compose.yml`, `Makefile`, etc.)
- Core logic files to understand the domain and data shapes

List the top-level directory structure to avoid missing anything important.

### 2. Extract what you need

From everything read, identify:

- **Repository name** — the exact name of the repository directory or as found in the module/package file (e.g. `go.mod`, `package.json`). This becomes the `# H1` heading.
- **Project purpose** — what problem does it solve, who is it for?
- **Tech stack** — language, runtime version, key libraries
- **Run commands** — how to build, start, and stop the server
- **Dev commands** — hot-reload, test runner, lint
- **API surface** — every route handler: method, path, query params, request body, response JSON shape (infer from handler code if not documented)
- **Key types and data structures** — what flows through the system
- **Architecture** — how files/packages connect, data flow from request to response

### 3. Write the README

Use this exact structure:

```markdown
# <repository-name>

<One-sentence description of what it does.>

## Overview

<2–3 paragraphs: what the project does, why it exists, who uses it.>

## Getting Started

### Prerequisites

- <Runtime> <version>
- <Any required tools>

### Running

```bash
<exact command to build>
<exact command to run>
```

The server listens on port <N>.

## Development

```bash
# Hot reload
<command>

# Run tests
<command>

# Build for production
<command>
```

## API Reference

### GET /example

<Brief description.>

**Query Parameters**

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `param` | string | No | ... |

**Response**

```json
{
  "field": "value"
}
```

---

<Repeat for each endpoint>

## Architecture

<2–3 paragraphs explaining the system: how components fit together, how a request flows end-to-end.>

```
<ASCII diagram if the system has meaningful structure worth showing>
```

**Key components:**

- `file.go` — <what it does>
- `other/` — <what it does>
```

### 4. Write the file

Save to `README.md` in the project root (or wherever the user specifies). If a README already exists, incorporate any accurate existing content rather than discarding it.

**Language:** Write the README in the same language the user used in their request, unless they explicitly ask for a different one (e.g. "英語で作って" → English, "write in Japanese" → Japanese).

## Quality bar

- The `# H1` heading must be the exact repository name (directory name or module name from `go.mod`/`package.json`) — not a descriptive title invented by you
- Every command in the README must be copy-pasteable and actually work based on what you found in the code
- API response shapes should be inferred from actual handler code, not guessed
- Architecture section should explain *why* things are structured the way they are, not just list files
- If you're unsure about something (e.g., default env vars, required runtime version), say so in the README rather than inventing it
