\header {
  title = "Test"
  composer = "Me"
}

global = { \time 4/4 }

Key = { \key c \major }

Bass = \relative c {
  \Key
  R2*4
  R2*2
  c,16 c r r d d r r
  e e r r f f r r
  g g r r a a r r
  b b r r c c r r
  d d r r e e r r
  f f r r g g r r
  R2*10
}

Uke = \relative c {
  \Key
  R2*4
  R2*2
  \times 4/5 {c'16 c c c c d d d d d}
  \times 4/5 {e16 e e e e f f f f f}
  \times 4/5 {g g g g g a a a a a}
  \times 4/5 {b b b b b g g g g g}
  \times 4/5 {a a a a a b b b b b}
  \times 4/5 {c c c c c g g g g g}
  R2*10
}

DBass = \relative c {
  \Key
  c8 cis 
  \times 2/3 {d es e}
  r16 c cis r
  \times 2/3 {d8 es e}
}

up = \drummode {
  \voiceOne
  hh4 <hh sn> hh <hh sn>
  hh4 <hh sn> hh <hh sn>
  hh4 <hh sn> hh <hh sn>
}

down = \drummode {
  \voiceTwo
  bd8 bd8 s bd4 s
  bd4 s bd s
  bd4 s bd s
}

bass = {
  \global
  \set Staff.instrumentName = "Electric Bass"
  \clef bass
  <<
    \Bass
  >>
}

uke = {
  \global
  \set Staff.instrumentName = "Ukelele"
  \clef treble
  <<
    \Uke
  >>
}

dbass = {
  \global
  \set Staff.instrumentName = "Double Bass"
  \clef bass
  <<
    \DBass
  >>
}

drumContents = {
  \global
  <<
    \set DrumStaff.instrumentName = "Drums"
    \new DrumVoice \up
    \new DrumVoice \down
  >>
}

\score {
  <<
    \new Staff = "bass" \bass
    \new Staff = "uke" \uke
    \new Staff = "dbass" \dbass
    \new DrumStaff \drumContents
  >>

  \layout {}
  \midi {\tempo 4 = 124}
}