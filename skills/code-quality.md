---
name: code-quality
description: Automated code quality checks including linting, formatting, and static analysis.
---

# Code Quality

Automates code quality checks and fixes.

## Features

- **Linting**: Check code style and potential issues
- **Formatting**: Auto-format code to project standards
- **Static Analysis**: Catch bugs before runtime
- **Type Checking**: Verify TypeScript types

## Commands

**Lint code:**
```
/lint
```

**Format code:**
```
/format
```

**Run type checks:**
```
/type-check
```

**Full quality check:**
```
/quality-check
```

## Supported Languages

- **Python**: pylint, black, mypy
- **TypeScript/JavaScript**: ESLint, Prettier
- **Go**: gofmt, go vet
- **Rust**: clippy, rustfmt

## Configuration

Check configuration files:
- `.eslintrc.json` - JavaScript/TypeScript
- `.prettierrc` - Code formatting
- `.pylintrc` - Python linting
- `mypy.ini` - Python type checking

## Pre-commit Hooks

建议 adding pre-commit hooks to automatically run:
```bash
pip install pre-commit
pre-commit install
```

## Best Practices

1. Run linting before committing
2. Format code consistently across team
3. Fix high-severity issues immediately
4. Document why certain linter rules are disabled
