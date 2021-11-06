\version "2.22.1"
% automatically converted by musicxml2ly from -
\pointAndClickOff

\header {
    title =  "8 Bar"
    composer =  "Jasper Avtarovski"
    encodingsoftware =  "MuseScore 3.6.2"
    encodingdate =  "2021-11-06"
    subtitle =  \markup \column {
        \line { "Tried To Do Level One But It Became Level Two (With Some Exceptions) "}
        \line { ""} }
    
    }

#(set-global-staff-size 19.997485714285716)
\paper {
    
    paper-width = 21.01\cm
    paper-height = 29.69\cm
    top-margin = 1.5\cm
    bottom-margin = 1.5\cm
    left-margin = 1.5\cm
    right-margin = 1.5\cm
    indent = 1.6161538461538465\cm
    short-indent = 0.8619487179487181\cm
    }
\layout {
    \context { \Score
        skipBars = ##t
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative es {
    \clef "bass" \numericTimeSignature\time 4/4 \key bes \major
    \transposition c | % 1
    \tempo 4=100 \stemDown es2 \stemDown es'2 | % 2
    \stemUp bes,2 \stemDown bes'2 | % 3
    \stemDown c2. \stemDown g4 | % 4
    as1 \break | % 5
    R1*3 | % 8
    r2 \stemDown bes8 [ \stemDown as8 \stemDown g8 \stemDown f8 ] \break
    | % 9
    es1 | \barNumberCheck #10
    bes1 | % 11
    c1 | % 12
    as1 \break | % 13
    \stemDown es'4. \stemDown f8 \stemDown g4. \stemDown as8 | % 14
    \stemDown bes4 \stemDown c4 \stemDown bes8 [ \stemDown as8 \stemDown
    g8 \stemDown f8 ] | % 15
    \stemDown es2. \stemUp c4 | % 16
    as1 \bar "|."
    }

PartPTwoVoiceOne =  \relative es'' {
    \clef "treble" \numericTimeSignature\time 4/4 \key bes \major | % 1
    R1*4 \break | % 5
    \stemDown es4 \stemDown f4 \stemDown g4 \stemDown as4 | % 6
    \stemDown bes4 \stemDown c4 \stemDown bes8 [ \stemDown as8 \stemDown
    g8 \stemDown f8 ] | % 7
    <g, c es>1 | % 8
    r2 \stemDown bes'8 [ \stemDown as8 \stemDown g8 \stemDown f8 ]
    \break | % 9
    \stemDown es4 \stemDown f4 \stemDown g4 \stemDown es4 |
    \barNumberCheck #10
    \stemDown f4 \stemDown g4 \stemDown g8 [ \stemDown f8 \stemDown es8
    \stemDown d8 ] | % 11
    \stemDown c4 r4 r2 | % 12
    r2 r4 r4 \break | % 13
    R1*2 | % 15
    r4 r4 r4 \stemDown <c es g c>4 | % 16
    <as es' as>1 \bar "|."
    }

PartPTwoVoiceFive =  \relative es {
    \clef "bass" \numericTimeSignature\time 4/4 \key bes \major | % 1
    \stemDown es4 ~ \stemDown <es g>2 ~ ~ \stemDown <es g bes>4 | % 2
    \stemUp bes4 ~ \stemDown <bes f'>2 ~ ~ \stemDown <bes f' bes>4 | % 3
    \stemUp c4 ~ \stemDown <c es>2 ~ ~ \stemDown <c es g>4 | % 4
    <as es' as>1 \break | % 5
    \stemDown <es' bes'>2 ~ ~ \stemDown <es g bes>2 | % 6
    \stemDown <bes bes'>2 ~ ~ \stemDown <bes f' bes>2 | % 7
    \stemDown <c es>2 ~ ~ \stemDown <c es>2 | % 8
    <as es' as>1 \break | % 9
    \stemDown <es' bes'>2 ~ ~ \stemDown <es g bes>2 | \barNumberCheck
    #10
    \stemDown <bes bes'>2 ~ ~ \stemDown <bes f' bes>2 | % 11
    \stemDown <c g'>2 ~ ~ \stemDown <c es g>2 | % 12
    \stemDown <as as'>2 ~ ~ \stemDown <as es' as>2 \break | % 13
    \stemDown es'4 ~ \stemDown <es bes'>4 ~ ~ \stemDown <es g bes>4 ~ ~
    ~ \stemDown <es g bes>4 | % 14
    \stemDown bes'4 ~ \stemDown <f bes>4 ~ ~ \stemDown <bes, f' bes>4 ~
    ~ ~ \stemDown <bes f' bes>4 | % 15
    \stemDown <c es g c>4 ~ ~ ~ \stemDown <c es g bes>4 ~ ~ ~ \stemDown
    <c es g as>4 ~ ~ ~ ~ \stemDown <c es g g>4 | % 16
    <as es' as>1 \bar "|."
    }


% The score definition
\score {
    <<
        
        \new Staff
        <<
            \set Staff.instrumentName = "Electric Bass 1"
            \set Staff.shortInstrumentName = "El. B. 1"
            
            \context Staff << 
                \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                \context Voice = "PartPOneVoiceOne" {  \PartPOneVoiceOne }
                >>
            >>
        \new PianoStaff
        <<
            \set PianoStaff.instrumentName = "Piano"
            \set PianoStaff.shortInstrumentName = "Pno."
            
            \context Staff = "1" << 
                \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                \context Voice = "PartPTwoVoiceOne" {  \PartPTwoVoiceOne }
                >> \context Staff = "2" <<
                \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                \context Voice = "PartPTwoVoiceFive" {  \PartPTwoVoiceFive }
                >>
            >>
        
        >>
    \layout {}
    % To create MIDI output, uncomment the following line:
    %  \midi {\tempo 4 = 100 }
    }

