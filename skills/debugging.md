---
name: debugging
description: Debugging workflow assistance including log analysis, error tracking, and interactive debugging sessions.
---

# Debugging

Assists with debugging and troubleshooting code.

## Commands

**Debug current issue:**
```
/debug
```

**Analyze error:**
```
/debug analyze error.log
```

**Start debug session:**
```
/debug session
```

**Search for similar issues:**
```
/debug search "error message"
```

## Debugging Workflow

1. **Identify the problem**
   - Reproduce the issue
   - Note exact error messages
   - Understand expected vs actual behavior

2. **Gather information**
   - Check logs
   - Review recent changes
   - Check environment variables
   - Verify dependencies

3. **Form hypotheses**
   - Most likely cause first
   - Test hypothesis
   - Refine if wrong

4. **Fix and verify**
   - Apply fix
   - Test thoroughly
   - Add regression tests
   - Document the fix

## Common Issues

### Import Errors
- Check `requirements.txt` or `package.json`
- Verify virtual environment is active
- Check PYTHONPATH or NODE_PATH

### Runtime Errors
- Print statements for values
- Use debugger breakpoints
- Check type mismatches
- Verify null/undefined values

### Performance Issues
- Profile the code
- Check database queries
- Look for N+1 problems
- Identify hot paths

## Log Analysis

**Key things to check:**
- Timestamps and sequence
- Error codes and stack traces
- Warnings that precede errors
- External API failures
- Database connection issues

## Tools

**Python:**
- `pdb` - Built-in debugger
- `ipdb` - Enhanced pdb
- `logging` - Structured logging

**Node.js:**
- `node --inspect` - Built-in inspector
- `debugger` statements
- `console.log` with timestamps

## Best Practices

1. **Reproduce locally first** before looking at production
2. **Isolate the problem** - minimize to smallest failing case
3. **Change one thing at a time** - systematic approach
4. **Document findings** - note what worked/didn't
5. **Add tests** - prevent regression
6. **Learn from bugs** - improve code quality

## Getting Help

When stuck:
1. Search project documentation
2. Check similar code patterns
3. Review git history for context
4. Ask team for help (with details)

## Debug Session Template

```
Problem: [Brief description]

Steps to reproduce:
1.
2.
3.

Expected behavior:
Actual behavior:

Error message:
[Paste error]

Hypothesis:
[Your best guess]

Test result:
[What happened when you tested hypothesis]
```
