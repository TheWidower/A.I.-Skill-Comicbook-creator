# A.I. Skill — Comic Book Creator

Turn a prompt, story, prose passage, script, or rough concept into a customizable comic-book package. The skill guides an AI agent through story adaptation, page pacing, visual continuity, panel scripting, and—when the agent has suitable image tools—illustration or an art handoff.

> **This repository contains an Agent Skill, not a standalone comic-making application.** It is a `SKILL.md` instruction package for compatible AI agents. The skill itself has no runtime dependencies; actual image generation depends on the tools available to the agent you use.

## What It Can Create

- Original comics from a short idea or a detailed creative brief
- Adaptations of user-provided stories, prose, or scripts
- Page-by-page story maps and panel-by-panel scripts
- Character, setting, palette, prop, and lettering guides for visual continuity
- Individual panel/page image prompts, or generated art when image tools are available
- Covers, short strips, one-shots, and longer issues
- Revision-ready packages with clear controls for changing style, pacing, layout, audience, or story choices

The skill preserves a source's essential events, relationships, tone, and ending unless you request changes. It uses sensible defaults for unspecified choices instead of making you fill in a long questionnaire.

## Installation

### Quick install for any supported AI

On macOS, Linux, or a Bash-compatible terminal, run this from any directory to install the skill in your user-level skill directory:

```bash
curl -fsSL \
  https://raw.githubusercontent.com/TheWidower/A.I.-Skill-Comicbook-creator/feature/easy-install/install.sh \
  | bash
```

The installer uses the cross-agent `skills` CLI and lets you choose from the agent runtimes it supports. It installs globally by default, so the skill is available across your projects. To install for the current project instead, run the command from that project's root and add `--project`:

```bash
curl -fsSL \
  https://raw.githubusercontent.com/TheWidower/A.I.-Skill-Comicbook-creator/feature/easy-install/install.sh \
  | bash -s -- --project
```

If you have cloned this repository, run `./install.sh`; use `./install.sh --project` for the current project, or `./install.sh --agent AGENT_ID` to select a specific supported agent. Repeat `--agent` to target multiple agents. Preview the command with `./install.sh --dry-run`. The installer requires Node.js/npm (`npx`) and Bash. If you prefer not to pipe a remote script to Bash—or are on Windows PowerShell—use the direct CLI or manual instructions below.

### Option 1: Install with the `skills` CLI

The open Agent Skills ecosystem CLI can install this repository's skill into a supported agent. Run this from the project where you want to use it:

```bash
npx skills add TheWidower/A.I.-Skill-Comicbook-creator --skill comic-book-creator
```

The CLI will prompt for the target agent and installation method when needed. By default, it installs for the current project; use `--global` to install for your user account:

```bash
npx skills add TheWidower/A.I.-Skill-Comicbook-creator --skill comic-book-creator --global
```

To list skills available from this repository without installing them:

```bash
npx skills add TheWidower/A.I.-Skill-Comicbook-creator --list
```

To check installed skills later:

```bash
npx skills list
```

The `skills` CLI supports multiple agent runtimes. See its [documentation](https://github.com/antfu/skills-cli) for current options and supported agents.

### Option 2: Install manually

A skill is a folder containing `SKILL.md`. Put the file in a skill directory recognized by your agent. For example, from a project root, use `.agents/skills` (supported by the Agent Skills quickstart and several compatible agents):

```bash
mkdir -p .agents/skills/comic-book-creator
curl -fsSL \
  https://raw.githubusercontent.com/TheWidower/A.I.-Skill-Comicbook-creator/main/SKILL.md \
  -o .agents/skills/comic-book-creator/SKILL.md
```

For GitHub Copilot, a project skill can also live at `.github/skills/comic-book-creator/SKILL.md`:

```bash
mkdir -p .github/skills/comic-book-creator
curl -fsSL \
  https://raw.githubusercontent.com/TheWidower/A.I.-Skill-Comicbook-creator/main/SKILL.md \
  -o .github/skills/comic-book-creator/SKILL.md
```

For a personal installation, use the directory documented by your agent. GitHub Copilot supports `~/.copilot/skills` and `~/.agents/skills`; other agents may use different locations. After copying the file, restart or reload the agent's skills if the current session does not detect it.

> Skill-folder conventions vary by agent and can change. Consult your agent's documentation if it does not discover the skill automatically. The [Agent Skills quickstart](https://agentskills.io/skill-creation/quickstart) and [GitHub Copilot skill guide](https://docs.github.com/en/copilot/how-tos/copilot-cli/customize-copilot/add-skills) describe supported locations and discovery behavior for those environments.

## Usage

After installation, describe the comic you want. Include only the constraints that matter; you can set or revise the creative controls at any time.

### Start a new comic

```text
Create a 6-page middle-grade fantasy comic about a shy lighthouse keeper
who discovers a tiny dragon during a storm. Use expressive ink outlines,
watercolor-like sea blues and warm gold light. Give me a cover, a page-by-page
story map, a character design guide, a panel script, and image prompts.
```

### Adapt existing text

```text
Adapt the story below into a 4-page comic for readers ages 10–14.
Keep the ending and the main character relationships exactly as written.
Use 3–4 panels per page, a quiet mystery tone, and black-and-white ink art.
Return a panel-by-panel script only—no generated images.

[Paste story here]
```

### Make a short strip

```text
Turn this premise into a funny 4-panel comic strip for a general audience:
a cat discovers that the robot vacuum is afraid of the cat.
Keep the dialogue short and end on a visual punchline.
```

### Revise a result

```text
Keep the story and dialogue, but change the art direction to bold flat colors,
reduce each page to 3 panels, and make the character designs easier to keep
consistent across generated images.
```

You can ask for one output stage at a time—such as an outline, a finished script, art prompts, or illustrated pages—or request a complete package. For generated artwork, specify whether you want individual panels or full-page compositions. The skill prefers editable lettering; image models can render exact text unreliably.

## Customization Controls

| Area | Examples of choices |
|---|---|
| **Story** | Premise, theme, key beats, ending, adaptation freedom |
| **Format** | Page count, portrait or landscape, strip, one-shot, issue, digital or print |
| **Audience** | Age range, reading level, content boundaries |
| **Genre and tone** | Adventure, comedy, mystery, cozy, dramatic, horror; light, earnest, surreal |
| **Visual style** | Broad medium and traits: inked noir, flat-color adventure, watercolor storybook |
| **Color and light** | Palette, contrast, time of day, atmosphere, monochrome or color |
| **Layout** | Panels per page, splash pages, density, gutters, page-turn reveals |
| **Text** | Language, dialogue voice, narration, lettering treatment, sound effects |
| **Art output** | Script, prompts, generated panels, assembled pages, cover, print handoff |

If you do not specify a format, the skill defaults to a self-contained short comic with a cover and six story pages, portrait layout, three to five panels per page, clear all-ages language, a consistent broad visual style, and editable lettering. Those are starting points, not limits.

## Sample Comic Output

**Sample request:** “Make a one-page, four-panel cozy fantasy comic for kids about a shy lighthouse keeper who finds a tiny dragon during a storm. Use a warm watercolor-and-ink look.”

### Creative brief

**Title:** *A Little Light*\
**Logline:** A shy lighthouse keeper and a nervous pocket-sized dragon work together to relight the beacon before a boat reaches the rocks.\
**Format:** One portrait page, four panels; middle-grade; cozy storm adventure.\
**Visual direction:** Expressive ink contours, watercolor blues and greys, warm amber light; keep lettering editable.

### Design bible

- **Mara:** Young lighthouse keeper in a mustard-yellow raincoat; thoughtful eyes, careful posture; carries an old brass lantern key.
- **Pip:** Palm-sized teal dragon with a cream belly, oversized ears, and tiny translucent wings; makes small golden sparks when nervous.
- **Setting:** Circular lantern room above a rocky coast. Keep the large glass lens, brass machinery, and stormy sea consistent.

### Page 1 — script

**Panel 1**\
**Visual:** Wide view of the lighthouse on a cliff. Rain slants across the sea; the beacon flickers above the rocks.\
**Caption:** “Mara liked quiet nights.”\
**SFX:** *WHOOOOSH*

**Panel 2**\
**Visual:** In the lantern room, Mara hears a polishing cloth rustle behind the great lens. She leans closer, holding her lantern key.\
**Mara (dialogue):** “Hello? Is someone there?”\
**SFX:** *rrrp… rrrp…*

**Panel 3**\
**Visual:** A tiny dragon peeks out, tangled in the cloth. Its sneeze makes one golden spark. Mara's expression softens; the dark lens behind them has gone out.\
**Pip (dialogue):** “I’m lost.”\
**Mara (dialogue):** “So am I, sometimes.”

**Panel 4**\
**Visual:** Mara shields Pip from the wind while Pip sends a careful stream of gold sparks into the beacon. The lens turns; far below, a boat begins steering away from the rocks.\
**Mara (dialogue):** “Together?”\
**Pip (dialogue):** “Together.”\
**SFX:** *FWOOM*

### Art prompts

1. **Panel 1:** Tall coastal lighthouse on a rocky cliff in slanting rain, one flickering amber beacon, wide establishing shot, expressive ink outlines with watercolor navy and slate-blue washes, leave a clean caption area near the top, no rendered words.
2. **Panel 2:** Inside a circular lantern room, young keeper Mara in a mustard raincoat leans toward a rustling polishing cloth behind a huge glass lens, medium shot, consistent ink-and-watercolor look, reserve open space for two small balloons, no rendered words.
3. **Panel 3:** Palm-sized teal dragon Pip with cream belly and oversized ears peeks from the cloth; a tiny gold spark lights Mara's surprised, kind face, close framing, lantern lens visibly dark behind them, no rendered words.
4. **Panel 4:** Mara gently shields Pip as the dragon's golden sparks relight the large lighthouse lens; beam sweeps over a boat turning away from rocks, hopeful wide composition, warm amber against storm-blue watercolor, keep faces and action clear of reserved lettering space, no rendered words.

**Revision controls:** “Make it funnier,” “change the dragon to red,” “add a splash-page ending,” or “keep the story but redesign the characters.”

*This is a compact illustration of the format. A longer request can add a page map, continuity notes, more detailed lettering direction, and art prompts for every panel.*

## How the Skill Works

The skill first identifies the requested deliverable, then sets or defaults the creative controls, adapts the story to page turns and panel pacing, defines a continuity guide, and writes drawable panels with concise lettering. When image tools are available and requested, it can help create reference art and panel/page images. When they are not available, it can still provide a script and image prompts.

For stronger visual continuity, keep the same design bible and character references across generated panels. Generate panel art separately when a tool struggles to maintain page grids or reading order; add dialogue and captions afterward as editable lettering.

## Troubleshooting

- **The skill does not appear:** confirm `SKILL.md` is inside a folder named `comic-book-creator` under a directory your agent scans; restart the agent or run its skill reload command.
- **The agent gives only a synopsis:** explicitly request a “page-by-page, panel-by-panel comic script” and name the desired page count.
- **Character appearance changes between images:** provide or reuse a character-reference image and repeat the fixed design-bible traits in each art request.
- **Generated lettering is garbled:** ask for blank balloon space and add exact dialogue as editable text after image generation.
- **You only need text:** say “script only; no generated images.”
- **You want a specific look:** describe broad visual traits, medium, palette, contrast, and composition; list any references you want followed.

## Repository Contents

```text
.
├── LICENSE
├── README.md
├── install.sh
└── SKILL.md
```

## License

This repository is licensed under the [MIT License](LICENSE). The license applies to the repository files; generated comics are also subject to the terms of the AI tools or services used to create them.
