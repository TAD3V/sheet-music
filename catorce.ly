\version "2.22.1"
% automatically converted by musicxml2ly from -
\pointAndClickOff

\header {
    title =  "The Fourth In A Long Line of Pieces"
    subtitle = "These Motifs will be the death of me, quintuplets are annoying and don't fit with anything."
    composer = "Jasper Avtarovski"
    }

#(set-global-staff-size 19.997485714285716)
\paper {
    
    paper-width = 21.01\cm
    paper-height = 29.69\cm
    top-margin = 1.5\cm
    bottom-margin = 1.5\cm
    left-margin = 1.5\cm
    right-margin = 1.5\cm
    indent = 1.616153846153846\cm
    short-indent = 0.7459171597633136\cm
    }
\layout {
    \context { \Score
        skipBars = ##t
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative c' {
    \clef "bass" \time 2/4 \key c \major \transposition c | % 1
    \tempo 4=62
    R2*4 \break | % 5
    R2*2 \break | % 17
    c,16 c r r d d r r
    e e r r f f r r
    g g r r a a r r
    b b r r c c r r
    d d r r e e r r
    f f r r g g r r
    R2*10 \bar "|."
    }

PartPTwoVoiceOne =  \relative c' {
    \clef "treble" \time 2/4 \key c \major | % 1
    R2*4 \break | % 5
    R2*2 \break | % 6
    \times 4/5 {c'16 c c c c d d d d d} | % 7
    \times 4/5 {e16 e e e e f f f f f} | % 7
    \times 4/5 {g g g g g a a a a a} | % 7
    \times 4/5 {b b b b b g g g g g} | % 7
    \times 4/5 {a a a a a b b b b b} | % 7
    \times 4/5 {c c c c c g g g g g} | % 7
    R2*10 \bar "|."
    }

PartPThreeVoiceOne =  \relative c {
    \clef "bass" \time 2/4 \key c \major \transposition c | % 1
    \stemUp c8 -. [ \stemUp cis8 -. ] \once \omit TupletBracket
    \times 2/3  {
        \stemDown d8 -. [ \stemDown es8 -. \stemDown e8 -. ] }
    | % 2
    r16 \stemUp c16 -. [ \stemUp cis16 -. ] r16 \once \omit
    TupletBracket
    \times 2/3  {
        \stemDown d8 -. [ \stemDown es8 -. \stemDown e8 -. ] }
    | % 3
    \stemUp c8 -. [ \stemUp cis8 -. ] \once \omit TupletBracket
    \times 2/3  {
        \stemDown d8 -. [ \stemDown es8 -. \stemDown e8 -. ] }
    | % 4
    r16 \stemUp c16 -. [ \stemUp cis16 -. ] r16 \once \omit
    TupletBracket
    \times 2/3  {
        \stemDown d8 -. [ \stemDown es8 -. \stemDown e8 -. ] }
    \break | % 5
    \stemUp c8 -. [ \stemUp cis8 -. ] \once \omit TupletBracket
    \times 2/3  {
        \stemDown d8 -. [ \stemDown es8 -. \stemDown e8 -. ] }
    | % 6
    r16 \stemUp c16 -. [ \stemUp cis16 -. ] r16 \once \omit
    TupletBracket
    \times 2/3  {
        \stemDown d8 -. [ \stemDown es8 -. \stemDown e8 -. ] }
    | % 7
    R2*10 \break | % 17
    R2*6 \bar "|."
    }

PartPFourVoiceOne =  \relative c' {
    \clef "treble" \time 2/4 \key c \major | % 1
    R2*4 \break | % 5
    R2*2 \break | % 17
    r16 r c c r r d d 
    r r e e r r f f 
    r r g g r r a a 
    r r b b r r c c 
    r r d d r r e e
    r r f f r r g g
    R2*10 \bar "|."
    }

PartPFourVoiceFive =  \relative c' {
    \clef "bass" \time 2/4 \key c \major | % 1
    R2*4 \break | % 5
    R2*12 \break | % 17
    R2*6 \bar "|."
    }

PartPFiveVoiceOne = \drummode { 
% Stems Up notes go here
  <hh bd>8[ hh] <hh sn>[ hh] <hh bd>[ <hh bd>] <hh sn>[ hh]
}

drh = \drummode {
    cymc4.^"crash" hhc16^"h.h." hh hhc8 hho hhc8 hh16 hh
    hhc4 r4 r2
}
drl = \drummode {
    bd4 sn8 bd bd4 << bd ss >>
    bd8 tommh tommh bd toml toml bd tomfh16 tomfh
}
timb = \drummode {
    timh4 ssh timl8 ssh r timh r4
    ssh8 timl r4 cb8 cb
}


% The score definition
\score {
    <<
        
        \new Staff
        <<
            \set Staff.instrumentName = "Electric Bass"
            \set Staff.shortInstrumentName = "El. B."
            
            \context Staff << 
                \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                \context Voice = "PartPOneVoiceOne" {  \PartPOneVoiceOne }
                >>
            >>
        \new Staff
        <<
            \set Staff.instrumentName = "Ukulele"
            \set Staff.shortInstrumentName = "Uk."
            
            \context Staff << 
                \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                \context Voice = "PartPTwoVoiceOne" {  \PartPTwoVoiceOne }
                >>
            >>
        \new Staff
        <<
            \set Staff.instrumentName = "Contrabass"
            \set Staff.shortInstrumentName = "Cb."
            
            \context Staff << 
                \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                \context Voice = "PartPThreeVoiceOne" {  \PartPThreeVoiceOne }
                >>
            >>
        \new PianoStaff
        <<
            \set PianoStaff.instrumentName = "Piano"
            \set PianoStaff.shortInstrumentName = "Pno."
            
            \context Staff = "1" << 
                \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                \context Voice = "PartPFourVoiceOne" {  \PartPFourVoiceOne }
                >> \context Staff = "2" <<
                \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                \context Voice = "PartPFourVoiceFive" {  \PartPFourVoiceFive }
                >>
            >>
        
        >>
        \new DrumStaff \with {
            instrumentName = "timbales"
            drumStyleTable = #timbales-style
            \override StaffSymbol.line-count = #2
            \override BarLine.bar-extent = #'(-1 . 1)
        }
        <<
            \timb
        >>
        \new DrumStaff \with { instrumentName = "drums" }
        <<
            \new DrumVoice { \stemUp \drh }
            \new DrumVoice { \stemDown \drl }
        >>
    \layout {}
    % To create MIDI output, uncomment the following line:
    \midi {\tempo 4 = 62 }
    }

