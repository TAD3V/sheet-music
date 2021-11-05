\version "2.22.1"
% automatically converted by musicxml2ly from -
\pointAndClickOff

\header {
    title =  catorce
    encodingsoftware =  "MuseScore 3.6.2"
    encodingdate =  "2021-11-05"
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
    \tempo 4=62 R2*4 \break ^\markup{ \bold {.7} } | % 5
    R2*12 \break | % 17
    R2*16 \bar "|."
    }

PartPTwoVoiceOne =  \relative c' {
    \clef "treble" \time 2/4 \key c \major | % 1
    R2*4 \break | % 5
    R2*12 \break | % 17
    R2*16 \bar "|."
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
    R2*16 \bar "|."
    }

PartPFourVoiceOne =  \relative c' {
    \clef "treble" \time 2/4 \key c \major | % 1
    R2*4 \break | % 5
    R2*12 \break | % 17
    R2*16 \bar "|."
    }

PartPFourVoiceFive =  \relative c' {
    \clef "bass" \time 2/4 \key c \major | % 1
    R2*4 \break | % 5
    R2*12 \break | % 17
    R2*16 \bar "|."
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
    \layout {}
    % To create MIDI output, uncomment the following line:
    %  \midi {\tempo 4 = 62.7 }
    }

