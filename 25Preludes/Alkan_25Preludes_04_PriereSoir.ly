\version "2.20.0"
\language "deutsch"
\header {
  title = \markup{"No. 4 - " \smaller {\caps "Priere du soir."}}
  composer = "Ch. V. Alkan"
  opus = "25 préludes dans tous les tons majeurs et mineurs, Op. 31"
  tagline = \markup{\lower #3 {\teeny "K. A. with LilyPond"}}
}

upper = \relative c'' {
  \clef treble
  \key fis \minor
  \time 4/4 %\override Staff.TimeSignature.style = #'single-digit
  \tempo "Assez lentement"
  \stemUp
  cis,4^\markup{\small \italic "avec dévotion"}  cis8 cis cis4 cis4 | cis cis cis8 cis cis4 | cis cis cis a'8   gis | fis2. gis4 |
  e4   e8    e    e4   e4    | e   e    e8    e   e4    | e   e    e    cis'8   h  | a2.   h4    |
  gis4 h8   a8 gis4 h      | gis2. h4                   | gis4 gis8 a  gis4. a8| a2.   h4    |
  gis4 h8  a  gis4 \slashedGrace gis8 h4 | gis2. h4 | gis gis8 a gis4. fis8 |
  fis4  fis8  fis  fis4 fis4 | fis  fis  fis8  fis  fis4| fis  fis   fis  a8     h | cis1 ~ |
  cis1 ~                          | cis4 r4 \clef bass \stemDown <cis,, fis a>4 r4 | q4 r4 r2-\fermata \bar "|."
  
}

lower = \relative c {
  \clef bass
  \key fis \minor
  \time 4/4 %\override Staff.TimeSignature.style = #'single-digit
  <fis a>4^\markup{\hspace #-5 {\dynamic "p" \small\italic "et très soutenu"}} <eis gis> <fis a> <gis h> | <eis gis> <dis fis> <eis gis> <fis a> | <gis h> <fis a> <gis h> <a cis> |
  <h d> <a cis>8 <gis h> <a cis>4 <h d> | <a cis> <gis h> <a cis> <h d> | <gis h> <fis a> <gis h> <a cis> |
  <h d> <a cis> <h d> <cis e> | <d fis> <cis e>8 <h d> <cis e>4 <gis d' fis> | <cis eis> <h d fis> <cis eis> <gis d' fis> |
  <cis eis> <h d> <cis eis > <gis d' fis> | <cis eis> <fis, cis' fis> <h d> <e,! h' e> | <d' fis> <cis e>8 <h d> <cis e>4 <gis d' fis> |
  <cis eis> <h d fis> <cis eis> <gis d' fis> | <cis eis> <h d fis> <cis eis> <gis d' fis> |
  %<cis eis> <h d fis> <cis eis> <gis d' fis> | <cis eis> <h d fis> <cis eis> <gis d' fis> |
  <cis eis> <h d fis~> <cis~ fis> <cis eis!> |
  << {<a cis> <gis h> <a cis> <h d> | <gis h> <fis a> <gis h> <a cis> | <h d> <a cis> <h d> <cis e> | <a cis>}
    \\ {fis1 ~ | fis ~ | fis ~ | fis4}
  >>
  <fis a> <eis gis> <e g> | <dis fis> <d f> \stemUp <cis e> <a cis> | <fis a> r4 <fis, fis'> r4 q4 r4  r2-\fermata \bar "|."
  
}

petlie = \markup { \center-align \line {\hspace #3.7 p \normal-text \italic "et lié" }}
petlieDynamics = #(make-dynamic-script petlie)

dynamics = {
  s1 \< s1 s2 s4 \! \> s4  s4  s4 \< s2 | s1 | s1 | s2 s4 \> s4 | s4 s4 \< s4 s4  |
  s1\p | s1 | s1 | s1 | s1 |
  s1 | s1 | s4\pp \< s4 s2 | s1 | s1 |
  s4 s4 \> s2 | s1 | s4 s4 \! s4\ppp s4| s4 s4 s4 s4|
}

\score {
  \new PianoStaff \with { instrumentName = \markup{\center-column{"Piano" "ou" "Orgue"}}
                                         \override StaffGrouper.staff-staff-spacing = #'(
                                               (basic-distance . 0)
                                               (padding . 5))
    }
  <<
    \new Staff = "upper" \upper
    \new Dynamics = "center" \dynamics
    \new Staff = "lower" \lower
  >>
  \layout {\context {
    \PianoStaff
    \consists #Span_stem_engraver
  } }
  \midi { }
}

\paper{
#(define fonts (set-global-fonts #:music "gonville" #:brace "gonville"))
  
}
