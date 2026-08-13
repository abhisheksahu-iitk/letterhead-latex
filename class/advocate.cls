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

%% Drafting helpers. These keep routine correspondence structurally consistent
%% while leaving the lawyer in control of the substantive text.
\newcommand{\LetterDate}[1]{\noindent\hfill Date: #1\par}
\newcommand{\Recipient}[3]{\noindent To,\\\relax#1\\\relax#2\\\relax#3\par}
\newcommand{\Through}[1]{\noindent\textit{Through:} #1\par}
\newcommand{\CaseDetails}[2]{\noindent\textbf{#1:} #2\par}
\newcommand{\MatterCaption}[2]{\begin{center}\textbf{#1}\\\relax\textbf{#2}\end{center}}
\newcommand{\DraftHeading}[1]{\par\noindent\textbf{#1}\par}
\newcommand{\Prayer}[1]{\par\noindent\textbf{Prayer}\par #1\par}
\newcommand{\SignatureBlock}{\par\noindent Yours faithfully,\par\vspace{1.5cm}\noindent\textbf{\AdvocateName}\\\AdvocateDesignation}
\newenvironment{LegalFacts}{\begin{enumerate}[label=\arabic*., leftmargin=*]}{\end{enumerate}}
\newenvironment{LegalGrounds}{\begin{enumerate}[label=\roman*., leftmargin=*]}{\end{enumerate}}

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
