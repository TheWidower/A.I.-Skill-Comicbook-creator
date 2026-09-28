---
name: comic-book-creator
description: Use when turning a prompt, story, prose, script, or concept into a customizable comic book, comic script, page-by-page storyboard, panel-art prompts, or illustrated comic pages.
---

# Comic Book Creator

Turn a user's source text or idea into a coherent, production-ready comic package. Treat customization as a control surface: make choices explicit, use sensible defaults for unspecified details, and preserve the user's intent.

## When to Use

Use for original comics, adaptations of user-provided text, comic scripts, page plans, visual development, cover concepts, panel prompts, and illustrated comic pages. Work in text-only mode when image-generation tools are unavailable or the user requests a script only.

## Workflow

1. **Read the source and identify the goal.** Determine whether the user wants an outline, a finished comic script, image prompts, generated artwork, or a complete package. Preserve the source's essential events, character relationships, tone, and ending unless asked to adapt them.
2. **Set the creative controls.** Use the brief below. Ask only about missing choices that would materially change the result. Otherwise choose defaults and state them briefly; never make the user complete every field before starting.
3. **Shape the story for comics.** Build a clear beginning, escalation, payoff, and ending. Allocate beats to pages, use panel composition and page turns to control pacing, and leave breathing room for emotional or action moments. For an adaptation, retain important source beats and flag any substantial change.
4. **Create the visual continuity guide.** Define repeatable character appearances, costume, scale, palette, props, setting cues, and lettering treatment before creating panel art. Give each character a stable short visual identifier.
5. **Write the page-and-panel script.** Use the output contract below. Make each panel drawable and each line of text concise enough to letter comfortably.
6. **Produce art or a handoff.** If image tools are available and requested, generate a character reference first, then create page or panel art using that reference. Keep dialogue and captions as editable lettering unless the user specifically wants text baked into images. If image tools are unavailable, provide a distinct image prompt for each requested panel/page.
7. **Check the complete package.** Verify continuity, panel order, page count, readable text density, source fidelity, and that all requested customization controls were applied. Summarize assumptions and offer focused revision handles.

## Creative Controls

Offer the controls relevant to the request; users can set any of them or ask for presets.

| Control | Examples |
|---|---|
| Story | source text, premise, theme, key beats, ending, adaptation freedom |
| Format | page count, portrait/landscape, one-shot/issue/strip, digital or print, target trim size |
| Audience | age range, reading level, content boundaries |
| Genre and tone | adventure, comedy, mystery, cozy, dramatic, horror; light, earnest, surreal |
| Visual style | broad medium and traits, such as inked noir, flat-color adventure, watercolor storybook |
| Color and light | palette, contrast, time of day, atmosphere, color or monochrome |
| Layout | panels per page, splash pages, gutters, density, page-turn reveals |
| Text | language, dialogue voice, narration level, lettering style, sound effects |
| Art production | text script, image prompts, generated panels, assembled pages, cover, print-ready handoff |

**Default when unspecified:** create a self-contained short comic with a cover and 6 story pages, portrait layout, 3–5 panels per page, clear all-ages language, one consistent broad visual style, and editable lettering. Adapt page count and tone to the source; state these defaults once. These are defaults, not limits.

## Output Contract

For a complete comic package, include these sections in order. Scale the detail to the requested scope; for a short strip, combine or omit sections that do not help.

1. **Creative brief** — title, logline, audience, format, genre/tone, visual direction, and selected/default controls.
2. **Story map** — one-line purpose or beat for each page, including page-turn reveals where useful.
3. **Design bible** — stable descriptions of the main characters, setting, props, palette, and lettering treatment.
4. **Comic script** — cover plus numbered pages and panels. For each panel, provide:
   - **Visual:** subject, readable action, expression, setting, and useful framing/composition.
   - **Text:** dialogue, caption, and/or sound effect, labeled by type and speaker. Use “(no text)” when silence is intentional.
   - **Continuity note:** only when needed for pose, prop, costume, direction of movement, or an important reveal.
5. **Art prompts / generated art** — one clearly labeled prompt per panel or page requested. Carry forward the design bible and state composition, action, lighting, palette, and reserved space for lettering. Do not rely on text inside generated images to render dialogue accurately.
6. **Revision controls** — concise, concrete ways to change the result, such as “more comic timing,” “fewer panels,” “warmer palette,” or “keep the plot, redesign the cast.”

## Art and Lettering Guidance

- Prefer one scene per panel image. Generate a whole page as a single image only when the image tool can preserve panel borders and reading order reliably; otherwise generate panels and assemble them separately.
- Reuse character-reference images or fixed visual descriptions across panels. Repeat distinguishing traits in prompts when references cannot be passed to the image tool.
- Keep the focal action and silhouette readable at comic-page scale. Reserve clean negative space for speech balloons and captions; keep important faces, hands, and props clear of that space.
- Separate art direction from lettering. Put exact words in the script, not in an image prompt, unless lettering-in-image is an explicit requirement.
- Keep each balloon focused on one speaker and one thought. Split long dialogue into balloons or panels rather than shrinking lettering.
- For assembled pages, check left-to-right/top-to-bottom reading order for the selected language and format. Respect right-to-left reading when requested.
- Provide alt text or a concise visual description for generated pages when requested or when accessibility is part of the brief.

## Miniature Script Example

**Page 1, Panel 1**  
**Visual:** Wide establishing view of a small lighthouse above storm-dark water; one warm window glows near the top.  
**Caption:** “The storm arrived before supper.”

**Page 1, Panel 2**  
**Visual:** Inside the lantern room, keeper Mara turns toward a polishing cloth that has begun to wiggle. Medium shot; keep the lantern lens visible behind her.  
**Mara (dialogue):** “That wasn't the wind.”  
**SFX:** *TIK-tik-tik*

## Common Mistakes

- **Treating “customizable” as a long questionnaire:** show a compact set of meaningful controls, set reasonable defaults, and begin unless a missing choice changes the story or deliverable.
- **Producing a synopsis instead of a comic script:** every page needs a beat and every scripted panel needs drawable visual action and its text.
- **Letting generated art drift:** establish and reuse the design bible/reference before generating multiple scenes.
- **Embedding exact dialogue in image prompts:** keep lettering editable and verify text separately.
- **Overcrowding panels:** shorten dialogue, split actions, or add a page instead of forcing too much into one panel.
- **Changing an adaptation silently:** preserve key source beats or explicitly call out a proposed change.
