\version "2.20.0"
\language "deutsch"
\header {
  title = \markup{"No. 19 - " \smaller {\caps "Priere du matin."}}
  composer = "Ch. V. Alkan"
  opus = "25 préludes dans tous les tons majeurs et mineurs, Op. 31"
  tagline = \markup{\lower #3 {\teeny "K. A. with LilyPond"}}
}

upper = \relative c'' {
  \clef treble
  \key a \major
  \time 4/4 %\override Staff.TimeSignature.style = #'single-digit
  \tempo "Vite" 4 = 120
 
  cis,4_\markup{\hspace #-4 \small\italic "avec exaltation"}^\=1( ~ <cis cis'\=1)>2^\sf <cis a>4 | <cis e> <a cis> <a d> <a fis'> | <a~ e'^(>2 <a cis)>4 r4 | 
  e'4^( ~ <e e')>2^\sf <e cis'>4 | <e gis> e <dis gis> <dis fis> | <d!~ h'^(>2 <d e)>4 r4 |
  cis4^\=1( ~ <cis cis'\=1)>2^\sf <cis a>4 | <cis e> <a cis> <a d> <a fis'> | <a~ e'^(>2 <a cis)>4 r4 | 
  <a~ a'^(>2 <a h')>4 r4 | <cis cis'^(>4 <cis' cis')>2^\sf <a cis a'>4 | <gis dis' gis> <gis e'> <gis dis'> \stemDown <gis h> \stemNeutral | \bar "||"
  << {\voiceOne
     a2. a4 h cis d fis e cis a h cis a fis gis e (a2) a4 h cis d fis e a^> dis, d cis fis^> c h a2. fis4 e fis e \slashedGrace gis8 fis4 e2. fis4 e fis e <fis h>^> e2.^\markup{\small\italic "en diminuant toujours"} cis4 a cis e a cis2. a4 e a cis e 
     }
    \new Voice
        {\voiceTwo
     cis,4 cis cis cis d d d d cis a' dis, d cis fis c h a (cis) cis cis d d d d cis cis' a h cis a fis gis e cis cis d cis d cis d cis cis cis d cis d cis d cis cis cis cis cis cis cis cis cis cis cis cis cis cis cis cis
      }
  >> \oneVoice
  <cis a''>1 \arpeggio \tempo "Lentement" \cadenzaOn <a d fis>\breve \bar "|" <a cis e>\breve \bar "|." \cadenzaOff
  
}

lower = \relative c {
  \clef bass
  \key a \major
  \time 4/4 %\override Staff.TimeSignature.style = #'single-digit
  a4~^( <a a')>2^\sf <a e'>4 | <a cis> <a g'> <a fis'> <a d> | <a~ cis^(>2 <a e')>4 r4 | 
  cis~^( <cis cis')>2^\sf <cis gis'>4 | <cis e> <cis gis'> <h h'> <h a'> | \tieDown <e~ a^(>2 <e gis)>4 r4 \tieNeutral |
  a,4~^( <a a')>2^\sf <a e'>4 | <a cis> <a g'> <a fis'> <a d> | <a~ cis^(>2 <a e')>4 r4 | 
  <fis_\=1( d'^\=2(>2 <f\=1) dis'\=2)>4 r4 | \stemDown <e e'(>4 <e' a e')>2^\sf <e a e'>4 |
  <e h' e> <e h' e> <e h' e> <e d'> | \bar "||"
  <a, e'>_\markup{\small\italic {avec la pedale La soutenue}} q q q <a gis'> q q q <a g'> <a g'> <a fis'> <a f'> <a e'> <a e'> <a dis> <a d> <a cis> <a e'> q  q
  <a gis'> q q q <a g'> <a g'> <a fis'> <a f'> <a e'> <a e'> <a dis> <a d> <a cis> <a e'> <a e'> <a gis'> <a a'> <a gis'> <a a'> <a gis'>
  <a a'> <a e'> <a e'> <a gis'> <a a'> <a gis'> <a a'> <a gis'> <a a'> <a e'> q q q q q q q q q q q q q q q1 |
  <d, d'>\breve \bar "|" <a a'>\breve \bar "|."
}

fetlieT = \markup { \center-align \line {\hspace #1 f \normal-text \italic "et très soutenu" }}
fetlieD = #(make-dynamic-script fetlieT)
pedT = \markup { \center-align \line {\hspace #1 \musicglyph "pedal.Ped" }}
pedD = #(make-dynamic-script pedT)
unpedT = \markup { \center-align \line {\hspace #7 \musicglyph "pedal.*" }}
unpedD = #(make-dynamic-script unpedT)

dynamics = {
   s1\fetlieD s1 {s4 \> s4 s4 \! s4} s1 s1
   {s4 \> s4 s4 \! s4} s1 s1 {s4 \> s4 s4 \! s4} {s4 \> s4 s4 \! s4}
   {s4\ff s4 s4 s4 \>} {s4 s4 s4 s4 \!} {s1\mf} s1 s1
   s1 s1 s1 s1 s1
   {s1\p} s1 s1 s1 {s1\pedD}
   s1 s1 s1 {s1\unpedD} s1 s1
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
