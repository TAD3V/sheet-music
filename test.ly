\header {
  title = "Untitled"
  composer = "Composer"
}

global = { \time 4/4 }

Key = { \key c \major }

Bass = \relative c {
  \Key
  c1 | c | c
}
bass = {
  \global
  \set Staff.instrumentName = "Bass"
  \clef bass
  <<
    \Bass
  >>
}

up = \drummode {
  \voiceOne
  hh4 <hh sn> hh <hh sn>
  hh4 <hh sn> hh <hh sn>
  hh4 <hh sn> hh <hh sn>
}

down = \drummode {
  \voiceTwo
  bd4 s bd s
  bd4 s bd s
  bd4 s bd s
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
    \new DrumStaff \drumContents
  >>

  \layout {}
  \midi {}
}