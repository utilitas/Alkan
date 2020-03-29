\version "2.20.0"
\language "deutsch"
\header {
  title = \markup{"No. 11 - " \smaller {\caps "Un petit rien."}}
  composer = "Ch. V. Alkan"
  opus = "25 préludes dans tous les tons majeurs et mineurs, Op. 31"
  tagline = \markup{\lower #3 {\teeny "K. A. with LilyPond"}}
}

upper = \relative c'' {
  \clef treble
  \key f \major
  \time 2/2 \override Staff.TimeSignature.style = #'single-digit
  \tempo "Assez vite"

 \stemUp
  a4^\markup{\small {\italic Gentiment}} g8 a b4_\turn c8 d8 \stemDown
  c f c2 h8 b \stemUp
  a c a g f4_\prall e8 f
  g fis g2 gis4
  a4_\markup{\lower #4 " "} g8 a b4_\turn c8 d8 \stemDown
  c a' c,2 h8 b
  a f' a, g \stemUp f4_\prall e8 f
  g a f2 fis4
 \repeat volta 2 {
 g4 f!8 g a4 g8 a
 b d b2 a8 d \stemDown
 b d a d b d g f
 g, c e d e, g c h \stemUp
 g4_\prall fis8 g a4_\prall g8 a
 b( des b2) a8 des! \stemDown
 b des a des b( des g f)
 g,( b e des) e,( g c b)
 \bar "||" \stemUp
 a4_\prall g8 a b4_\turn c8 d8 \stemDown
 c f c2 h8 b \stemUp
 a c a g f4_\prall e8 f
 g fis g2 gis4
 a4_\prall g8 a b4_\turn c8 d8
 c a' c,4. a'8 c, a'
 c, a' a, f' f, c' c, f
 }\alternative {
  {g a f2 fis4}
  {g8 a f2.}
 }
 \bar "|."
}

lower = \relative c {
  \clef bass
  \key f \major
  \time 2/2 \override Staff.TimeSignature.style = #'single-digit

  f8( f' e es d f, c' b)
  a f a c \clef treble f a gis g
  f c f b, \clef bass a c a f
  e dis e c e g c b
  f f' e es d f, c' b
  a c,-5 a'-1 c-5 \clef treble f a d, e 
  f a, c b \clef bass a c, a' f
  b c a c h c a f!
 \repeat volta 2 {
 <e g> c <d^4 f-2> <e^3 g-1> <f^2 a-1> c <e^4 g-2> <f^3 a-1>
 <g^2 b-1> c, <g' b> <fis a> <g b> c, <fis a> c
 <g' b> c, <fis a> c <g' b> c, <as' h> c,
 <g' c> c, <f as> c <e g> c <d f> c
 <e g> c <dis^4 fis-2> <e^3 g-1> <fis!^2 a-1> c <e^4 g-2> <fis^3 a-1>
 <g^2 b-1> c, <g' b> <fis a> <g b>  c, <fis a> c
 <g' b> c, <fis a> c <g' b> c, <b' des> c,
 <e g> c <g' b> c,-5  <c^4 e-2> c-5 <e g> c
 \bar "||"
 f8 f' e es d f, c' b
 a f a c \clef treble f a gis g
 f c f b, \clef bass a c a f
 e dis e c e g c b
 f f' e es d f, c' b \stemDown
 a c,-5 a'-1 c-5  \change Staff="upper" a'-1 \change Staff="lower" c, \change Staff="upper" a' \change Staff="lower" c,
 \change Staff="upper" a' \change Staff="lower" c,  \change Staff="upper" f \change Staff="lower" a, c f, a c,
 }\alternative{
  {b' c a c h c a f!}
  {b_\markup{\italic smorz.} (c a f \stemUp c a f4)}
 }
 \bar "|."
}

petlie = \markup { \center-align \line {\hspace #3.7 p \normal-text \italic "et lié" }}
petlieDynamics = #(make-dynamic-script petlie)
pococresc = \markup { \center-align \line {\hspace #3.7 \normal-text \italic "poco cresc." }}
pococrescDynamics = #(make-dynamic-script pococresc)
espress = \markup { \center-align \line {\hspace #3.7 \normal-text \italic espress. }}
espressDynamics = #(make-dynamic-script espress)

dynamics = {
s1-\petlieDynamics s s s 
s  s s s
s  s s s
s-\pococrescDynamics  s2. s4-\espressDynamics s1 s8 \> s2. s8\!
s1-\pp s s s
s1-\pococrescDynamics s s s s
}

\score {
  \new PianoStaff \with { instrumentName = \markup{\center-column{"Piano" "ou" "Orgue"}}
                                         \override StaffGrouper.staff-staff-spacing = #'(
                                               (basic-distance . 0)
                                               (padding . 4.5))
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
