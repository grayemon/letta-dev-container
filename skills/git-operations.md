---
name: git-operations
description: Git workflow automation for common operations like staging files, creating commits, and managing branches.
---

# Git Operations

Automates common Git workflows for development.

## Usage

When asked to commit changes, this skill:
1. Checks git status for changes
2. Runs git diff to review modifications
3. Sages appropriate files
4. Creates commits with conventional commit messages

## Commands

**Commit changes:**
```
/commit "feat: add user authentication"
```

**Stage all and commit:**
```
/commit "fix: resolve login bug" --all
```

## Best Practices

- Use conventional commits (feat:, fix:, docs:, refactor:, test:, etc.)
- Keep commits focused on single changes
- Write clear, descriptive messages
- Avoid committing sensitive files (.env, secrets)

## Git Status Check

Before committing, always:
1. Run `git status` to see what changed
2. Review `git diff` to verify changes
3. Ensure no secrets are being committed
4. Stage only files that should be committed
