# Drafting pattern

Use this baseline unless the source calls for a different procedural format:

```tex
\ReferenceNo{[VERIFY: reference number]}
\Subject{[Concise requested action — party / matter]}

\LetterDate{[date]}
\PrintReferenceNo
\Recipient{[authority]}{[office]}{[city, State -- PIN]}
\PrintSubject

\noindent Respected Sir/Madam,

I appear for [client]. I respectfully submit as follows:

\DraftHeading{Facts}
\begin{LegalFacts}
  \item ...
\end{LegalFacts}

\DraftHeading{Grounds}
\begin{LegalGrounds}
  \item ...
\end{LegalGrounds}

\Prayer{In these circumstances, it is respectfully requested that [specific relief].}
\SignatureBlock

\Enclosures{1. [document].}
\PrintEnclosures
```

For a short letter, prose paragraphs may replace the two lists. Use `\CaseDetails{Case No.}{...}` for a case number or other identifying field, `\Through{...}` for a forwarding authority, and `\MatterCaption{...}{...}` only when a centered caption is appropriate. Do not add a heading merely to fill space.
