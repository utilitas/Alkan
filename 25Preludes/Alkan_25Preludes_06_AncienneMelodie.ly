\version "2.20.0"
\language "deutsch"
\header {
  title = \markup{"No. 6 - " \smaller {\caps "Ancienne melodie de la synagogue"}}
  composer = "Ch. V. Alkan"
  opus = "25 préludes dans tous les tons majeurs et mineurs, Op. 31"
  tagline = \markup{\lower #3 {\teeny "K. A. with LilyPond"}}
}

upper = \relative c'' {
  \clef treble
  \key g \minor
  \time 4/4
  \partial 4
  \tempo "Andante flebile"
  <<  {d,4 \(| g2 b8 g b g | fis16 g fis es! d4 \) } \\ {s4 | d1 |d2 }>>
   r4 r8
  << {d8 \( | g2 b8 g b g | fis16 g fis es! d4 \) } \\ {s8 | cis1 |d2 } >>
  r2 | <g, b d g>2 <b es g b>4 q4 | <d f a d>4.^\fermata
  << {a'8-3^\markup{\small\italic "ad lib."} c16 b a g \tuplet 3/2 {fis8 g a} } \\ {<c,_1~ d~ fis~>8  q2} >>
  <b g'>2^\fermata r4 \bar "||" 
  << {d4 | g2 b8 g b g | fis16 g fis es! d4 } \\ {s4 | <b d>2 <b es>2 | <a d>2 } >>
  r4 r8
  << {d8 | g2 b8 g b g | fis16 g fis es! d4 } \\ {s8 | <h f'>2 <b e>4 <b es>4  | <b! cis>4 a } >>
  r2 | <g b es g>2 <b d f b>4 <b es g b> | <d f a d>4.^\fermata
  << {a'8^\markup{\small\italic "ad lib."} c16 b a g \tuplet 3/2 {fis8 g a} } \\ {<c,~ d~ fis~>8  q2} >>
  <b g'>2^\fermata r4 r8 \bar "|." \tempo "Plus lentement" d8 |
  << {h'2 a4 g8. g16 | a2( g4) d | \acciaccatura a'8 \tuplet 3/2 {g4 fis g} \acciaccatura h8 \tuplet 3/2 {a4 g a}| \acciaccatura h8 d2-\fermata} \\ {s1 | fis,2 (g4) s|s1|\acciaccatura g8 g2} >>
  r4 r8. d16 |
  << {c'2 (h4 a8. a16) | h2( a4 g) | \acciaccatura a8 d4. a8^\markup{\small\italic "ad lib."} c16 b a g \tuplet 3/2 {fis8 g a} g2-\fermata} \\ {d1 | s1 | <c d fis>1_> | b2} >>
  r2
  \time 3/2
\repeat volta 2 {
  << {\tuplet 3/2 {g'4^\markup{\small\italic "sans mouvement"} fis g} b4 a g2 \tuplet 3/2 {g4 fis g} d'2 fis,2-\fermata \bar "||" \cadenzaOn fis 4 fis \tuplet 3/2 {g f e} \tuplet 3/2 {f e d}  \tuplet 3/2 {es! d c} g' (<fis, d'>2-\fermata) }
     \\ 
        {es'1.  es2 <d fis!>1-\fermata s1.  s2. s2} >>\cadenzaOff  \bar "||"
  \time 4/4
  <h' h'>2^\markup{\small\italic "en mesure"} <a a'>4 <g g'>  <a_\=1( fis' a^\=2(>2 <g\=1) g'\=2)>4 d' 
  << {\tuplet 3/2 {g4 fis g} \tuplet 3/2 {a g a}} \\ {\slashedGrace d,8 ~ <g, d'>2 <a d>2} >> 
 \partial 2
 \grace <d~ g~ h>8 <d g d'>2-\fermata | \bar "||"
 \set fontSize = #-3
 \cadenzaOn
 <g d'>4 q4 q2 q4 q4 q2 <g g'>4 <g d'>2-\fermata |
 \cadenzaOff \bar "|"
 << {<a, c>2 <g h>4 <fis a>4 <g h>2 <fis a>4 g | d'4. a8^\markup{\small\italic "ad lib."} c16 b! a g \tuplet 3/2 {fis8 g a}} \\ {d,1 | d1 | \grace <d~ fis~ a>8 <d fis>1} >> 
  \set fontSize = #0
 \partial 2
 <h d g>2-\fermata
 \bar "||" 
 
 \cadenzaOn
 \set fontSize = #-3
 <g'' d'>2 <h g'>1^\fermata
 \cadenzaOff
 }
}


lower = \relative c {
  \clef bass
  \key g \minor
  \time 4/4
  \partial 4
  << {d4 \( | b'2 d8 b d b | a16 b a g fis4 \)} \\ {s4 | g1 |d2  } >>
  r4 r8
  << {d8 \( | e2 g8 e g e | a16 b a g fis4 \) } \\ {s8 | a,1 |d2  } >>
  r2 | <g, d' g>2 <es b' es>4 q4 | <b f' b>4.-\fermata <d d'>8 ~ 2
  <g d'>2_\fermata r4 \bar "||"
   << {s4 | d'2 es2 | d2 } \\ {d,4 | g2 b8 g b g | fis16 g fis es! d4  } >>
   r4 r8
   << {s8 | f'2 \( e4 es4 |es!4-1 fis,4-3\) } \\ {d8  | g2 b!8 g b g | a16-3 b-2 a-3 g-4 d4-5  } >>
  r2 | <es b' es>2 <b f' b>4 <c g' c>4 | <g d' g>4.-\fermata  <d' d'>8 ~ 2
  <g d'>2_\fermata r4 r8 \bar "|." r8 |
  << {d''2 c4 h8. h16 | c2 (h4) s4 |\tuplet 3/2 {h4 a h} \tuplet 3/2 {c h c}|\acciaccatura d8 d2} \\ {g,1 | d2( g4) d4 | g1 |\acciaccatura g8 h2-\fermata} >>
  r2 |
  << {a2 (g4 fis) | d'2 (c4 h) | s1 | d,2} \\ {d1 | g1 | d1^> | g,2-\fermata} >>
  r2 
  \time 3/2
  \repeat volta 2{
  << {\tuplet 3/2 {b'4 a b} cis4 c b2 \tuplet 3/2 {b4 a b} a1-\fermata| fis 4 fis \tuplet 3/2 {g f e} \tuplet 3/2 {f e d} |\tuplet 3/2 {es! d c} g' (<d, a'>2_\fermata)} 
    \\ {es'1. | es2 (d1-\fermata) | s1. | s2. s2|} >> \bar "||"
  \time 4/4
  <<{<h' d>2 <a c>4 <g h>}\\{g1}>>
  <d_\=1( a' c^\=2(>2 <g\=1) h\=2)>4  d 
  << {<h' d>2 <d fis>2} \\ {\slashedGrace d,8 \tuplet 3/2 {g4 fis g} \tuplet 3/2 {a g a}} >> 
  \partial 2
  \clef treble \grace <h g'~ h~>8 <d g h>2_\fermata |
  \set fontSize = #-3
  <h' d>4 q4 q2 q4 q4 q2 q4 q2-\fermata  \clef bass
  \set fontSize = #0
  << {<a, c>2 <g h>4 <fis a>4 <h d>2 <a c>4 <g h>4} \\{d1 | g1}  >>
  \grace <d~ a'~ c~>8 <d a' c>1 | <g, d'>2_\fermata | \clef treble \set fontSize=#-3
  <h'' d>2 <g d'>1-\fermata
  \set fontSize = #0
  }
}

douxT = \markup {\hspace #5  \center-align \line {\normal-text\small\italic "doux et suppliant" }}
douxD = #(make-dynamic-script douxT)
flargT =  \markup {\hspace #9.5  \center-align \line {\dynamic "f" \normal-text\tiny\italic "et largament" }}
flargD = #(make-dynamic-script flargT)
endimT = \markup {\hspace #4  \center-align \line {\normal-text\small\italic "en dim." }}
endimD = #(make-dynamic-script endimT)
dimT = \markup {\hspace #2  \center-align \line {\normal-text\small\italic "dim." }}
dimD = #(make-dynamic-script dimT)
tredouxlieT = \markup {\hspace #7  \center-align \line {\normal-text\small\italic "très doux et très lié" }}
tredouxlieD = #(make-dynamic-script tredouxlieT)
tredouxT = \markup {\hspace #0  \center-align \line {\normal-text\small\italic "très doux" }}
tredouxD = #(make-dynamic-script tredouxT)
pedT = \markup {\hspace #-2.5  \center-align \line {\musicglyph "pedal.Ped" }}
pedD = #(make-dynamic-script pedT)
unpedT = \markup {\hspace #3  \center-align \line {\musicglyph "pedal.*" }}
unpedD = #(make-dynamic-script unpedT)
ppedT = \markup {\hspace #0  \center-align \line {\musicglyph "pedal.Ped" }}
ppedD = #(make-dynamic-script ppedT)
uunpedT = \markup {\hspace #6  \center-align \line {\musicglyph "pedal.*" }}
uunpedD = #(make-dynamic-script uunpedT)

dynamics = {
  \partial 4
  s4-\douxD
  s1 s s s s-\flargD
  s4. s8-\endimD s2 s2\p s4 s4\p s2 s2 \> s1 \! s1 \>
  s1 s2\f \! s4 s4 s4. s8-\dimD s2 s2..\p s8-\tredouxlieD | s1
  s2 \> s2 \! s1 s1 s s
  s s s1.\mf| s1. s1. s2. s2|
  s1-\tredouxD s1 s1 \partial 2 s2-\pedD
  s4\pp s4 s2 s4 s4 s2 s4 s2-\unpedD |
  s1\p s1 | \grace s8 \> s4. \! s8 s4 s4 | \partial 2 s2-\ppedD | s4\pp s2-\uunpedD |
  
}

\score {
  \new PianoStaff \with { instrumentName = \markup{\center-column{"Piano" "ou" "Orgue"}}
                                         \override StaffGrouper.staff-staff-spacing = #'( (basic-distance . 0.1) (padding . 4))
                                         
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

\paper {
 #(define fonts (set-global-fonts #:music "gonville" #:brace "gonville" #:factor (/ staff-height pt 21)))
  
print-page-number = ##f
%system-system-spacing = #'((basic-distance . 0.1) (padding . 5))
ragged-last-bottom = ##f
}