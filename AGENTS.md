# Advocate Letterhead project

## Purpose

Prepare accurate, professional advocate correspondence on this XeLaTeX letterhead. Treat every source document as evidence: preserve names, dates, figures, case numbers, quotations, and the requested relief exactly. Do not invent missing facts, citations, procedural history, or legal advice; use a clear `[VERIFY: ...]` marker instead.

## Working rules

- Edit `content.tex` for routine drafting. Leave `main.tex`, the class, and advocate identity details untouched unless the request concerns them.
- Read the complete source material before drafting. For a PDF or Word document, use the appropriate document/PDF-reading workflow and visually inspect pages where layout, tables, stamps, handwriting, or signatures may affect meaning.
- Use `\LetterDate`, `\Recipient`, `\PrintSubject`, `\DraftHeading`, `LegalFacts`, `LegalGrounds`, `\Prayer`, and `\SignatureBlock` where they fit. Keep factual chronology and legal submissions separate.
- Escape LaTeX special characters in imported text: `\&`, `\%`, `\#`, `\_`, `\$`, `\{`, `\}`; use typographic quotes rather than raw double quotes when possible.
- Preserve the user's requested language. Use `\LocalLanguageText{...}` only after setting a suitable local Unicode font in the preamble.
- Compile with `latexmk main.tex` (or XeLaTeX twice) after changes. Fix errors and review the generated PDF for overflow, awkward page breaks, and header/footer collisions.

## Review standard

Write with controlled, courteous advocacy: identify the client and authority, state facts chronologically, connect each request to stated grounds, and express a precise prayer. A draft is ready only after factual completeness, internal consistency, and rendering are checked.
