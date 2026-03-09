# Coding Agent Skills

Collection of skills for Letta Code agents doing development work.

## Included Skills

- **git-operations** - Git workflow automation (commits, branches)
- **code-quality** - Linting, formatting, static analysis
- **testing** - Test execution, coverage, debugging
- **documentation** - API docs, code comments, README generation
- **debugging** - Debugging workflow, log analysis, troubleshooting

## Usage

Load skills in your Letta Code agent:
```
/load-skills skills/
```

Or load individually:
```
/load-skill skills/git-operations.md
/load-skill skills/code-quality.md
```

## Skill Format

Each skill follows Letta Code skill format:
- YAML frontmatter with metadata
- Markdown documentation
- Clear usage examples
- Best practices

## Adding New Skills

1. Create new `.md` file in this directory
2. Follow the skill format (frontmatter + content)
3. Add description of what the skill does
4. Include usage examples
5. Add best practices and gotchas

## Skills Philosophy

Good skills are:
- **Focused**: One clear purpose
- **Actionable**: Clear commands to run
- **Documented**: Examples and best practices
- **Maintainable**: Easy to update as needs change
