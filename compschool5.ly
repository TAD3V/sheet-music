\header {
  title = "Untitled"
  composer = "Composer"
}

%%%%%%%%%%%% Keys'n'thangs %%%%%%%%%%%%%%%%%

global = { \time 6/8 \tempo "Andante" 8. = 120}

Key = { \key c \major }
Tempo = { \tempo "Andante" 4 = 120 }

%% ------ Piano ------
rhUpper = \relative c'' {
  \voiceOne
  \Key
  
}
rhLower = \relative c' {
  \voiceTwo
  \Key

}

lhUpper = \relative c' {
  \voiceOne
  \Key

}
lhLower = \relative c {
  \voiceTwo
  \Key

}

PianoRH = {
  \clef treble
  \global
  \set Staff.midiInstrument = #"acoustic grand"
  <<
    \new Voice = "one" \rhUpper
    \new Voice = "two" \rhLower
  >>
}
PianoLH = {
  \clef bass
  \global
  \set Staff.midiInstrument = #"acoustic grand"
  <<
    \new Voice = "one" \lhUpper
    \new Voice = "two" \lhLower
  >>
}

piano = {
  <<
    \set PianoStaff.instrumentName = #"Piano"
    \new Staff = "upper" \PianoRH
    \new Staff = "lower" \PianoLH
  >>
}

\score {
  <<
    \new PianoStaff \piano
  >>

  \layout {}
  \midi {}
}