---
name: testing
description: Automated testing workflow including running tests, generating test coverage, and debugging test failures.
---

# Testing

Automates test execution and debugging workflow.

## Commands

**Run all tests:**
```
/test
```

**Run specific test file:**
```
/test tests/auth.py
```

**Run with coverage:**
```
/test --coverage
```

**Run in watch mode:**
```
/test --watch
```

**Debug failing tests:**
```
/test --debug
```

## Test Frameworks

Supports common test frameworks:
- **Python**: pytest, unittest
- **JavaScript/TypeScript**: Jest, Mocha, Vitest
- **Go**: go test
- **Rust**: cargo test

## Coverage Reports

Generate coverage reports:
- HTML: `htmlcov/` (Python), `coverage/` (JS)
- CLI: Summary in terminal
- Thresholds: Enforce minimum coverage in CI

## Test Organization

```
tests/
├── unit/           # Unit tests
├── integration/    # Integration tests
├── e2e/          # End-to-end tests
└── fixtures/      # Test data
```

## Best Practices

1. **Write tests first** (TDD) when appropriate
2. **One assert per test** - clearer failures
3. **Descriptive test names** - explain what's tested
4. **Isolate tests** - no dependencies between tests
5. **Mock external services** - fast, reliable tests
6. **Test edge cases** - boundary conditions, errors

## Debugging Failed Tests

When a test fails:
1. Run with `--pdb` (Python) or `--inspect` (Node)
2. Print intermediate values
3. Check test setup/teardown
4. Verify test data matches production structure
5. Isolate by running single test case

## CI Integration

Tests should run on:
- Every pull request
- Main branch merges
- Scheduled runs (e.g., nightly)

Example CI command:
```yaml
- run: pytest --cov --cov-report=xml
```
