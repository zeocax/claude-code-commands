# claude-code-commands

Custom commands for Claude code to enhance productivity and streamline development workflows.

These commands are still being developed and tested in usage.

## Usage

### Project Level
Create a `.claude` directory in your project root path, then git clone this repository in that directory:
```bash
mkdir .claude
cd .claude
git clone https://github.com/zeocax/claude-code-commands.git commands
```

### User Level
Clone this repository under `~/.claude`:
```bash
cd ~/.claude
git clone https://github.com/zeocax/claude-code-commands.git commands
```

## CLAUDE.md (Project Level)

After cloning, copy the CLAUDE.md template from the project directory to your project root:
```bash
cd ..
cp .claude/commands/project/CLAUDE.markdown ./CLAUDE.md
```

## Thanks to

- [emptyharddrive](https://www.reddit.com/user/emptyharddrive/) for some of the command implementations