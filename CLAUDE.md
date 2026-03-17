# CLAUDE.md

## Project Overview

Minetest mod ("Joes-Basics-Mod") that adds charcoal and kindling crafting systems to the game. Small, self-contained mod with two feature modules. Licensed under MIT (2019, Joe H.).

## Repository Structure

```
├── init.lua            # Entry point — loads all feature modules via dofile()
├── src/
│   ├── charcoal.lua    # Charcoal items, blocks, cooking/crafting/fuel recipes
│   └── kindling.lua    # Dry grass, wheat blocks, cooking/fuel recipes
├── depends.txt         # Mod dependency: "default"
├── README.md           # Brief feature list
├── LICENSE             # MIT
└── .gitignore
```

No `textures/` directory — all textures are reused from the `default` mod (e.g. `default_coal_lump.png`, `default_coal_block.png`).

## Dependencies

- **Minetest engine** (any modern version)
- **`default` mod** (declared in `depends.txt`) — provides base items, groups, and textures

## Key Conventions

### Lua Style
- Feature-based modules in `src/`, loaded via `dofile()` from `init.lua`
- snake_case for variables
- Mod namespace: `basics:` (e.g. `basics:charcoal`, `basics:charcoal_block`, `basics:wheat_block`)
- No OOP patterns — purely declarative Minetest API calls

### Minetest API Patterns
- `minetest.register_craftitem()` for simple items
- `minetest.register_node()` for placeable blocks (use `nodebox` drawtype)
- `minetest.register_craft()` with types: `"cooking"`, `"fuel"`, `"shapeless"`, or default shaped
- Use Minetest groups for flexible recipe inputs (e.g. `group:tree`, `group:sapling`)
- Standard groups on nodes: `cracky = 3`, `oddly_breakable_by_hand = 2`

### Adding New Features
1. Create a new `.lua` file in `src/`
2. Add a `dofile()` call in `init.lua` to load it
3. Register items/nodes/crafts using the `basics:` namespace
4. Reuse textures from `default` mod or add a `textures/` directory for custom ones

## Build / Test / Lint

No build step, test framework, or linter is configured. To test:
- Place the mod folder in Minetest's `mods/` directory
- Enable it in the Minetest world configuration
- Launch the game and verify items/recipes in-game

## Git Practices

- Main branch: `master`
- Commit messages: short, descriptive, feature-focused
- 5 total commits (2019); project is stable/dormant
