\version "2.20.0"
\language "deutsch"
\header {
  title = \markup{"No. 8 - " \smaller {\caps "La chanson de la folle au bord de la mer."}}
  composer = "Ch. V. Alkan"
  opus = "25 préludes dans tous les tons majeurs et mineurs, Op. 31"
  tagline = \markup{\lower #3 {\teeny "K. A. with LilyPond"}}
}

upper = \relative c'' {
  \clef treble
  \key as \minor
  \time 6/8
  \tempo "Lentement"

    \stemDown
    R1*6/8
    \repeat volta 2{
    r8 r8_\p
    b es4. ~
    es4 r8 r4 r8
    r8 r b es4. ~
    es4 es8_\markup{\small \italic "legato"}^\markup{\small \italic "Tristement"} as16 ces as8 g16 f
    g b g8 f16 g as ces as8 ces16 des
    es b es4 es16 fes es8 des16 ces
    des fes des8 ces16 b ces es ces8 b16 as
    b8 es,4 as16 ces as8 g16 f
    g b g8 f16 g as ces as8 ces16 des
    es b es4 es16 as es8 des16 ces
    des ges! des8 ces16 b ces es ces as b g
    as2.
    }
    r8 r8 b, es4. ~
    es4 r4 r8 r
    r r b es4. ~ \bar "||"
    es8 r8 es as16 c as8 g16 f
    g16 b des8 es16 f g, b des8 b16 g
    as c es8 f16 g as c, as'8 g16 f
    g b des,8 c16 b c es as,8 g16 f
    g b des8 b16 g as c as8 g16 f \pageBreak
    g b des8 es16 f g, b des8 b16 g
    as c es8 f16 g as_\markup{\small \italic "cres."} c, as'8 g16 f
    g b des,8 c16 b c es as8 g16 f
    g_\markup{\small \italic "cres."} b des,8 c16 b as' c, as'8 g16 f
    g b b, es d f g b b, es d f
    g^\markup{\small \italic "avec emportement"} b b, es d f g b b, es d f
    g b b, es b es b es b es b es
    \tuplet 4/3 {b8 ( es) b ( es )} \tuplet 4/3 {b ( es)  b ( es )}
    b8^\markup{\small \italic "en s'éloignant"} ( es ) b ( es)  b ( es ) ~
    es4 b8 ( es4.^\fermata ) ~  \bar "||"
    es4 es,8^\markup{\small \italic "en mesure"} ( as16 ces as8 g16 f
    g b g8 ) r4 r8 r
    r4 r8 es'16 ( fes es8 des16 ces
    des fes des8 ) r8 r4 r8
    r8 r es, ( as16 ces as8 g16 f
    g16 b g8 f16 g ) r4 r8
    r4 r8 es'16_\markup{\lower #0 {\small \italic "poco rinf."}} ( as es8 des16 ces
    des_\markup{\lower #0 {\small \italic "dim."}} ges des8 ) r8 r4 r8
    R1*6/8
    r8 r b,8 es4. ~
    es4 r8 r4 r8
    r8^\markup{\small \italic "en se perdant"} r8 b8 es4. ~
    es4 r8 r4 r8 r8 r8-\ppp es8 ~ es4. \bar "|."
    
}


lower = \relative c {
  \clef bass
  \key as \minor
  \time 6/8


  <es,, as ces es>4_\p^\markup{\small \italic "soutenu"} \< q8 q4 q8 \!
  \repeat volta 2 {
  <es g b es>2.
  <es as ces es>4 \< q8 q4 q8 \!
  <es g b es>2.
  <es as ces es>4_\markup{\small \italic "très soutenu"} q8 q4 q8
  <es g b es>4 q8 <es as ces es>4 q8
  <es g b es>4 q8 <es as ces es>4 q8
  <es g b es>4 q8 <es as ces es>4 q8
  <es g b es>4 q8 <es as ces es>4 q8
  <es b' des es>4 q8 <es as ces es>4 q8
  <es g b es>4 q8 <es as ces es>4 q8
  <es g b es>4 q8 <es as ces es>4 <es g! b es>8
  <es as ces es>4 \< q8 q4 q8 \!
  }
  <es g b es>2.
  <es as ces es> 4 \< q8 q4 q8 \!
  <es g b es>2.
  <es as c es>4 q8 q4 q8
  <es b' des es>4 q8 q4 q8
  <es as c es>4 q8 q4 q8
  <es b' des es>4 q8 <es as c es>4 q8
  <es b' des es>4 q8 <es as c es>4 q8
  <es b' des es>4 q8 q4 q8
  <es as c es>4 q8 q4 q8
  <es b' des es>4 q8 <es as c es>4 q8
  <es b' des es>4 q8 <es as c es>4 q8
  <es g b es>4 <es as ces es>8  <es g b es>4 <es as ces es>8
  <es g b es>4 <es as ces! es>8 <es g b es>4 <es g! ces es>8
  <es g b es>4 q8 q4 q8
  <es g b es>2. ~
  <es g b es>2. ~
  <es g b es>2._\fermata
  <es as ces es>4 q8 q4 q8
  <es g b es>4 q8 <es as ces es> 4 q8
  <es g b es>4 q8 <es as ces es> 4 q8
  <es g b es>4 q8 <es as ces es> 4 q8
  <es g b es>4 q8 <es as ces es> 4 q8
  <es b' des es>4 q8 <es as ces es>4 q8
  <es g b es>4 q8 <es as ces es> 4 q8
  <es g b es>4 q8 <es as ces es> 4 <es g! b es>8 \bar "||"
  <es as ces es>4 \< q8 q4 q8 \!
  <es g b es>2.
  <es as ces es>4 \< q8 q4 q8 \!
  <es g b es>2.
  << {\voiceOne \stemDown <as ces es>4 \< q8 q4 q8 q2._\fermata \!} \new Voice {\voiceTwo \stemUp <as' ces es>4 q8 q4 q8 q2.^\fermata} >>
  \bar "|."
}

pedT = \markup { \center-align \line {\hspace #0 \musicglyph "pedal.Ped" }}
pedD = #(make-dynamic-script pedT)
pedsempreT = \markup { \center-align \line {\hspace #11 \normal-text \italic \small "Pedale sempre" }}
pedsempreD = #(make-dynamic-script pedsempreT)
augT = \markup { \center-align \line {\hspace #6 \normal-text \italic \small "en augmentant toujours" }}
augD = #(make-dynamic-script augT)
spedT = \markup { \center-align \line {\hspace #11 \normal-text\small\italic"sempre"\musicglyph "pedal.Ped" }}
spedD = #(make-dynamic-script spedT)
endimT =  \markup { \center-align \line {\hspace #7 \normal-text\small\italic "en dim. et" }}
endimD = #(make-dynamic-script endimT)
enralT =  \markup { \center-align \line {\hspace #0 \normal-text\small\italic "en rall. beaucoup" }}
enralD = #(make-dynamic-script enralT)
ralpocoT =  \markup { \center-align \line {\hspace #7 \normal-text\small\italic "rall. poco" }}
ralpocoD = #(make-dynamic-script ralpocoT)
unpedT = \markup { \center-align \line {\hspace #-2 \musicglyph "pedal.*" }}
unpedD = #(make-dynamic-script unpedT)

dynamics = {
 s2.-\pedD
 s s s
 s-\pedsempreD
 s s s s s s s s s s s s s s s s s s s s
 s-\augD s
 s4.-\spedD
 s8 s4-\endimD 
 s2.-\enralD
 s2. \> s2. s8 \! s2-\pp s8
 s2. s s s s s s s s8 s8-\pp s8 s4. s2. s s-\ralpocoD
 s2 s8 s8-\unpedD
}

\score {
  \new PianoStaff \with { instrumentName = \markup{\center-column{"Piano" "ou" "Orgue"}}
                                         \override StaffGrouper.staff-staff-spacing = #'( (basic-distance . 5) (padding . 5))
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
  #(define fonts
    (set-global-fonts
     #:music "gonville"
     #:brace "gonville"
   ))
print-page-number = ##f
ragged-last-bottom = ##f
}