# Advocate Letterhead Template

A modular A4 letterhead project for Indian advocates. Day-to-day drafting is confined to `content.tex`; firm details live in `config/advocate-info.tex`.

## Codex onboarding

This repository includes local instructions in `AGENTS.md` and a portable skill at `.codex/skills/legal-document-to-content/`. Keep both files in version control when sharing the project. From the repository root, ask Codex to use `$legal-document-to-content` with a source PDF or Word document; it will extract the relevant facts and prepare `content.tex` using this letterhead.

The skill prepares a draft for advocate review. It does not invent facts, dates, legal provisions, or authorities, and it flags missing information.

## Compile

Compile from this directory with XeLaTeX or LuaLaTeX (twice, for `Page X of Y`):

```sh
xelatex main.tex
xelatex main.tex
```

`Times New Roman` is used when installed; otherwise the project uses TeX Gyre Termes. Replace `assets/logo.png` to change the logo everywhere. Generated PDFs and auxiliary files can be kept in `output/`.

## Extending

Add a new content file (for example `content/legal-notice.tex`) and a small entry-point using the same class and configuration. The shared modules do not need changing.

## Drafting commands

Use the class helpers to keep new drafts consistent: `\LetterDate`, `\Recipient`, `\Through`, `\CaseDetails`, `\MatterCaption`, `\DraftHeading`, `\Prayer`, `\SignatureBlock`, `LegalFacts`, and `LegalGrounds`. See the local Codex skill for the intended structure and a complete example.
