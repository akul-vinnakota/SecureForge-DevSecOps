# Contributing to SecureForge

## Development Workflow

1. Create a branch for each feature or security improvement.
2. Make focused changes.
3. Add or update tests.
4. Run all available security scans.
5. Update documentation.
6. Submit a pull request.
7. Merge only after all security checks pass.

## Branch Naming

Use descriptive branch names:

- feature/fastapi-foundation
- security/add-secret-scanning
- security/add-container-scanning
- docs/update-architecture
- fix/remediate-security-finding

## Commit Message Format

Use clear, professional commit messages:

- feat: add FastAPI application foundation
- security: add hardcoded secret detection
- test: add health endpoint tests
- fix: remediate vulnerable dependency
- docs: document security pipeline architecture

## Security Requirements

Contributors must not commit real secrets, credentials, customer data, or unauthorized testing material.
