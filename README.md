# Advocate Letterhead Template

A modular A4 letterhead project for Indian advocates. Day-to-day drafting is confined to `templates/application.tex`; firm details live in `config/advocate-info.tex`.

## Compile

Compile from this directory with XeLaTeX or LuaLaTeX (twice, for `Page X of Y`):

```sh
xelatex main.tex
xelatex main.tex
```

`Times New Roman` is used when installed; otherwise the project uses TeX Gyre Termes. Replace `assets/logo.png` to change the logo everywhere. Generated PDFs and auxiliary files can be kept in `output/`.

## Extending

Add a new file under `templates/` (for example `legal-notice.tex`) and a small entry-point using the same class and configuration. The shared modules do not need changing.
