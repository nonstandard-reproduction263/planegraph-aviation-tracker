# Contributing to Planegraph

Thank you for your interest in contributing to Planegraph. This project is primarily developed by a solo maintainer, but contributions are welcome.

## How to Contribute

### Reporting Issues

If you find a bug or have a feature request, please open a GitHub issue with a clear description, steps to reproduce (for bugs), and any relevant logs or screenshots.

### Pull Requests

1. Fork the repository and create a feature branch from `main`.
2. Follow the existing code patterns and conventions documented in `AGENTS.md`.
3. Ensure `npm run build` passes for frontend changes and `python -m compileall services/` passes for backend changes.
4. Run the Playwright e2e tests (`cd frontend && npx playwright test`) if your changes touch the frontend.
5. Write a clear commit message describing the change.
6. Open a PR against `main`.

### Development Setup

The full stack runs on an Intel N100 edge box with Ubuntu 24.04. For development:

- Python 3.11+ with asyncpg, FastAPI, uvicorn
- Node.js 24+ with Vite, React 19, TypeScript
- PostgreSQL 16 with PostGIS
- Docker Compose for infrastructure services (PostgreSQL, ultrafeeder)

See `docs/deployment/` for the complete setup guide.

### Code Style

- **Python**: Type hints required, NumPy-style docstrings, follow patterns in surrounding files
- **TypeScript**: Strict mode, CSS Modules for styling, functional React components
- **SQL**: Lowercase keywords, snake_case identifiers, migrations numbered sequentially

## Code of Conduct

Please be respectful and constructive in all interactions. See [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md) for details.

## License

By contributing, you agree that your contributions will be licensed under the [MIT License](LICENSE).
