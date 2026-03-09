---
name: documentation
description: Automated documentation generation and maintenance for code comments, API docs, and README files.
---

# Documentation

Automates documentation creation and updates.

## Commands

**Generate API docs:**
```
/docs api
```

**Generate code comments:**
```
/docs comments src/
```

**Update README:**
```
/docs readme
```

**Generate full docs:**
```
/docs all
```

## Documentation Types

### Code Comments
- Function/class docstrings
- Inline comments for complex logic
- Type annotations

### API Documentation
- Endpoint descriptions
- Request/response schemas
- Usage examples
- Error responses

### User Documentation
- README.md
- CONTRIBUTING.md
- CHANGELOG.md
- API reference

## Supported Formats

- **Python**: Sphinx, MkDocs
- **TypeScript**: TypeDoc
- **OpenAPI**: Swagger/OpenAPI Spec
- **Markdown**: Standard documentation

## Best Practices

1. **Keep docs in sync with code**
2. **Document public APIs** (not internals)
3. **Include examples** for complex functions
4. **Use consistent style** across project
5. **Update CHANGELOG** for breaking changes
6. **Document edge cases and gotchas**

## Comment Standards

### Python Docstrings
```python
def process_data(data: Dict[str, Any]) -> List[Result]:
    """
    Process input data and return results.

    Args:
        data: Input data dictionary

    Returns:
        List of processed results

    Raises:
        ValueError: If data is invalid
    """
    pass
```

### TypeScript JSDoc
```typescript
/**
 * Processes input data and returns results
 * @param data - Input data dictionary
 * @returns List of processed results
 * @throws {Error} If data is invalid
 */
function processData(data: Record<string, any>): Result[] {
  return [];
}
```

## Auto-generated Content

- API references from type definitions
- Usage examples from test files
- Dependency graphs
- Architecture diagrams

## Review Checklist

- [ ] All public functions documented
- [ ] Examples included for complex APIs
- [ ] Error cases documented
- [ ] README reflects current state
- [ ] Breaking changes in CHANGELOG
- [ ] Installation instructions tested
