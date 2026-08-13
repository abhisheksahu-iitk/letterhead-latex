---
name: legal-document-to-content
description: Extract factual material from supplied PDF, DOCX, Word, or text documents and turn it into a precise, professionally drafted Indian advocate letter or application in this repository's content.tex. Use when a user asks to add, convert, prepare, draft, or incorporate a source document into content.tex or this advocate letterhead.
---

# Legal Document to Content

Work only from the supplied source and the repository's current drafting context. Read `AGENTS.md` and `references/drafting-pattern.md` before drafting.

1. Identify the document type, parties, authority, dates, reference or case numbers, chronology, relief sought, annexures, and every uncertain or illegible item.
2. For PDF or Word input, use the relevant document-reading skill. Render or inspect source pages when visual content affects meaning. Never treat a failed text extraction as proof that the source is empty.
3. Give the user a concise fact-and-gap summary before making material assumptions. If authority to overwrite `content.tex` is implicit in the request, replace its body; otherwise ask before replacing a completed draft.
4. Draft in `content.tex` with the repository commands. Keep facts (`LegalFacts`) distinct from submissions (`LegalGrounds`); make the prayer specific and no broader than the record supports.
5. Preserve source spelling for proper names, identifiers, dates, amounts, and quotations. Mark absent essential information as `[VERIFY: ...]`; do not create legal citations, causes of action, deadlines, admissions, or factual allegations.
6. Compile with `latexmk main.tex`, resolve LaTeX errors, and inspect the rendered PDF. Report the output path and every `[VERIFY: ...]` item.

Use a measured, respectful advocate voice: direct, chronological, and proportionate. Drafting assistance is not a substitute for the advocate's legal judgment or final review.
