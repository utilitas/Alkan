\version "2.20.0"
\language "deutsch"
\header {
  title = \markup{"No. 10 - " \smaller {\caps "Dans le style fugue."}}
  composer = "Ch. V. Alkan"
  opus = "25 préludes dans tous les tons majeurs et mineurs, Op. 31"
  tagline = \markup{\lower #3 {\teeny "K. A. with LilyPond"}}
}

upper = \relative c'' {
  \clef treble
  \key a \minor
  \time 4/4 \override Staff.TimeSignature.style = #'single-digit
  \tempo "Très vite"
  R1 | R1 | e,8 e d16 e d c h c h a \clef bass g a g f | e f e d e f d e f g f e f g e f | gis a gis fis gis a fis gis a h a gis a h gis a | \clef treble
 h c h a h c a h c d c h c d e c | d e f d e f g e f g a f d e f d | <e' a>8 q8 <d^1 g-4>16 a'-5 g-4 f-3 <h,^1 e-2> f'-5 e-4 d-3 <g,^1 c-2> d'-5 c-4 h-3 |
 << {a16 h a gis a h gis a h c h a h c a h | a'2-> a-> | a-> a-> |} \\ {e,2 f2 | cis'16 d cis h cis d h cis d e d cis d  e cis d | e f e d e f d e f g f e f g e f} >>
 h, c d h g' f e g a, c h a f' d e f | g, h a g e' c d e f, a g f d' a g f | \bar "||" <e g c>4 <e' g c> <d g h> <g, d' f> | <g c e>8 e' d16 e d c h c h a g a g f |
 e4 <e g c e> <g h d g> <h d g h> | <c e g c>8 e, fis16 e fis g a g a h cis h cis dis | <g, h e>4 <g' h e> <fis h dis> <h, fis 'a> |
 <h e g>8 g' fis16 g fis e dis e dis c h c h a | g4 <g h e g> <h dis fis h> <dis fis h dis> | <e g h e>8 g, a16 g a h c h c d e d e fis |
 <h, d g>4 <g' d' f>-! <g c e>-! <c, g' h>-! | <c f a>-! <f c' e>-! <f h d>-! <h, f' a>-! | <h e gis>-! <e h' d>-! <e a c>-! <c e a>-! | 
 f16 c a f' e c a e' d c a d e c a e' | f c a f' e c a e' d c a d a'\sf c, a a' | fis c a fis' e c a e' dis c a dis e c a e' | fis c a fis' gis c, a gis' a c, a a'  dis,\sf c a dis |
 <gis, h e>8 [ q ] <e' h' e> [ q ] <e a c> [ q ] <c e a> [ q ] | <a c f> [q] <f a d> [q] <d f h> [q] <e g c> [q] | <c e a> [q] <d f h> [q] <a c e> [q] <h d gis> [q] |
 <c e a>4 <c' e a> <h e gis> <e, h' d> | < e a c> <c' e a> <h e gis> <e, h' d> | <e' a c>8 q <g^2 h-4>16 c-5 <g^2 h-4> f-1 <e^2 g-4> a-5 <e^2 g-4> d-1 <c e> f q h, |
 <e a c e>8 q <gis h>16 c q f, <e gis> a q d, <c e> f q h, | <a' a'>8 q g'16 a g f e f e d c d c h | a h a g f g f e d h c d <e, e'>8-! q-! | <a, a'>-! r r4 r2-\fermata \bar "|."
 
}

lower = \relative c {
  \clef bass
  \key a \minor
  \time 4/4 \override Staff.TimeSignature.style = #'single-digit
  
  a'8 a  g16 a g f e f e d c d c h | a h a gis a h gis a h c h a h c a h |
  c8  c' h16 c h a g a g f e f e d | c8 c'4 c,4 c'8 h d | e,8 e'4 e, e'8 d f | gis,8 gis'4 gis, gis'8 fis a | \clef treble
  gis8 h a c h d gis, h | c,8 c' h16 c h a g a g f e f e d | c d c h c d h c d e d c d e c d | e f e d e f d e f g f e f g e f | cis d cis h cis d h cis d e d cis d e cis d | \clef bass
  g, a h g e' d c e f, a g f d' h c h | e, g f e c' a h c d, f e d h' g a h | \bar "||" c,8 c d16 c d e f e f g a g a h | c4 <e,, g c e> <g h d g> <h d g h> |
  <c e g c>8 c' h16 c h a g a g f e f e d | c4 \clef treble <g''' h> <fis a> <a,, fis'> | \clef bass e8 e fis16 e fis g a g a h cis h cis dis |
  e4 <g,, h e g> <h dis fis h> <dis fis h dis> | <e g h e>8 e' d16 e d c h c h a g a g fis | e4 \clef treble <h''' d> <a c> <c,, a'> \clef bass |
  g16 fis g a h g a h c h c d e c, d e | f e f g a f g a h a h c d h, c d | e d e fis gis e fis gis a gis a h c a e c | d a' c d, e a c e, f a c f, e a c e, |
  d a' c d, e a c e, f a c f, c\sf a' c c, | dis a' c dis, e a c e, fis a c fis, e a c e, | dis a' c dis, e a c e, fis a c fis, a\sf c dis a |
  e, dis e fis gis e fis gis a gis a h c a h c | d cis d e f d e f g f e d c h a g | f e d c h c d h e dis e f e d c h | <a a'>8 q h'16 a h c d c d e fis e fis gis |
  <a,, a'>8 q h'16 a h c d c d e fis e fis gis | 
  <a,, a'>4 <c c'> <e e'> <e, e'> | <a a'>4 <c c'> <e e'> <e, e'> | <a' a'>8 q g'16 a g f e f e d c d c h a h a g f g f e d h c d e8 e | <a, a'>8 r r4 r2-\fermata | \bar "|." 
}

resoT = \markup { \center-align \line {\hspace #3.7 \normal-text \italic "résolûment" }}
resoD = #(make-dynamic-script resoT)
cresT = \markup { \center-align \line {\hspace #3.7 \normal-text \italic "cresc." }}
cresD = #(make-dynamic-script cresT)

dynamics = {
  s1-\resoD s1 s1 s1 s1
  s1 s1 s1 s1 s1
  s1 s1\p s1 s1\mf s1
  s1 s1 s1 s1 s1-\cresD
  s1 s1\f s1 s1 s1\p
  s1 s1-\cresD s1 s1\f  s1
  s1 s1\f s1 s1 s1
  s1\ff  s1 s1
}

\score {
  \new PianoStaff \with { instrumentName = \markup{\center-column{"Piano" "ou" "Orgue"}}
                                         \override StaffGrouper.staff-staff-spacing = #'(
                                               (basic-distance . 0)
                                               (padding . 4.7))
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
print-page-number = ##f
ragged-last-bottom = ##f
}
