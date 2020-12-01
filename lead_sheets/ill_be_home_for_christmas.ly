\version "2.18.2"


\header {
  title = "I'll Be Home For Christmas"
  composer = "Walter Kent"
}

melody = \relative c' {
  \clef treble
  \key c \major
  \time 4/4

  \set Score.voltaSpannerDuration = #(ly:make-moment 1/4)
  c'2. b4
  d2. c4
  g2 g~
  g1

  a2. g4
  bes2. a4
  d,1~d2.
  r4

  d2. e4
  g2. f4
  e2. g4
  c2. b4

  d2 d
  b2. b4
  a1~
  a2. r4

  c2. b4
  d2. c4
  g2 g~
  g1

  a2. g4
  bes2. a4
  f1~
  f

  d'2. c4
  d2. c4
  g1
  a2. a4

  d2 e
  c d
  c1 ~
  c
}


harmonies = \chordmode {
  c1
  c:dim
  d2:min7 g:7
  d2:min7 g4:7/e g:7

  a1:min7
  g2:min6 a:7
  d:min g:min6
  d4:min g:min6 d:dim a:7

  d1:min
  f2:min6 g:7
  c2. g4
  a1:min

  a2:min7 d:7
  a:min7 d:9-
  g:7 cis:dim
  d4:min d:min7 g2:7

  c1
  c:dim
  d2:min7 g:7
  d2:min7 g4:7/e g:7

  a1:min7
  g2:min6 a:7
  d1:min~
  d:min

  d:min7
  f:min6
  g4:7 c g:aug g:min6
  a1:7

  d2:min f:maj7
  d4:min7 f:min6 g2:7
  c1 ~
  c1
}

verseI = \lyricmode {
  I'll be home for Christ -- mas
  You can count on me
  Please have snow and mis -- tle -- toe
  And presents _ on the tree
  Christ -- mas Eve will find me
  Where the love light gleams
  I'll be home for Christ -- mas
  if on -- ly in my dreams
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff {
        \context Voice = "voiceMelody" { \melody }
    }
    \new Lyrics = "lyricsI" {
      \lyricsto voiceMelody \verseI
    }
  >>
  \layout {
  }
  \midi { }
}

\paper {
  system-system-spacing.basic-distance = #20
}
