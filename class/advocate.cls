%% advocate.cls -- Reusable class for Indian Advocate letterhead documents.
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{class/advocate}[2026/08/07 v1.0 Indian Advocate Letterhead]
\LoadClass[14pt,a4paper]{extarticle}

%% XeLaTeX/LuaLaTeX provide reliable system-font use.
\RequirePackage{iftex}
\ifPDFTeX
  \ClassError{advocate}{Use XeLaTeX or LuaLaTeX to compile this project}{}
\fi
\RequirePackage{fontspec}
\RequirePackage{graphicx}
\RequirePackage{geometry}
\RequirePackage{setspace}
\RequirePackage{enumitem}
\RequirePackage{etoolbox}
%% Header uses a fixed 2.2 cm vbox inside the requested 2.3 cm allocation.
\RequirePackage[nocheck]{fancyhdr}
\RequirePackage{lastpage}
\RequirePackage{hyperref}

%% One source of truth for configuration and page layout.
\InputIfFileExists{config/fonts.tex}{}{\ClassError{advocate}{Missing config/fonts.tex}{}}
\InputIfFileExists{config/geometry.tex}{}{\ClassError{advocate}{Missing config/geometry.tex}{}}
\InputIfFileExists{config/advocate-info.tex}{}{\ClassError{advocate}{Missing config/advocate-info.tex}{}}

%% Optional document metadata. Setters and rendering are intentionally separate.
\newcommand{\AdvDocumentTitle}{}
\newcommand{\AdvReferenceNo}{}
\newcommand{\AdvSubject}{}
\newcommand{\AdvEnclosures}{}
\newcommand{\DocumentTitle}[1]{\gdef\AdvDocumentTitle{#1}}
\newcommand{\ReferenceNo}[1]{\gdef\AdvReferenceNo{#1}}
\newcommand{\Subject}[1]{\gdef\AdvSubject{#1}}
\newcommand{\Enclosures}[1]{\gdef\AdvEnclosures{#1}}
\newcommand{\PrintReferenceNo}{\ifx\AdvReferenceNo\@empty\else\noindent\textbf{Ref. No.:} \AdvReferenceNo\par\fi}
\newcommand{\PrintSubject}{\ifx\AdvSubject\@empty\else\noindent\textbf{Subject:} \AdvSubject\par\fi}
\newcommand{\PrintEnclosures}{\ifx\AdvEnclosures\@empty\else\par\noindent\textbf{Enclosures:} \AdvEnclosures\par\fi}
\AtBeginDocument{\hypersetup{pdftitle={\AdvDocumentTitle}}}
\InputIfFileExists{layout/page-style.tex}{}{\ClassError{advocate}{Missing layout/page-style.tex}{}}

%% Court-document defaults. Templates may use explicit paragraph breaks.
\onehalfspacing
\setlength{\parindent}{0pt}
\setlength{\parskip}{0.5\baselineskip}
\setlength{\emergencystretch}{2em}
%% Quotations and indented material remain 14 pt but use single spacing.
\setlist{before=\singlespacing}
\AtBeginEnvironment{quote}{\singlespacing}
\AtBeginEnvironment{quotation}{\singlespacing}
\raggedbottom

%% Call in the preamble for a local-language filing, e.g.
%% \SetLocalUnicodeFont{Kohinoor Devanagari}
\newcommand{\SetLocalUnicodeFont}[1]{\newfontfamily\AdvocateLocalUnicodeFont{#1}}
\newcommand{\LocalLanguageText}[1]{{\AdvocateLocalUnicodeFont\fontsize{14}{21}\selectfont #1}}
