\version "2.18.2"


\header {
  title = "White Christmas"
  composer = "Irving Berlin"
}

melody = \relative c' {
  \clef treble
  \key c \major
  \time 4/4

  \set Score.voltaSpannerDuration = #(ly:make-moment 1/4)
  e1
  f4 e dis e
  f1
  fis4 g2.
  \break

  r4 a b c
  d c b a
  g1
  r2 c,4 d
  \break

  e2 e
  e4 a2 g4
  c,2 c
  c4 g'2 f4
  \break

  e1
  f4 e d c
  d1 ~
  d1
  \break

  e1
  f4 e dis e
  f1
  fis4 g2.
  \break

  r4 a b c
  d c b a
  g1
  r2 c,4 d
  \break

  e2 e
  e4 a2 g4
  c1
  r2 c,4 d
  \break

  e2 e
  a4. b,8 b4 b
  c1 ~
  c4 r4 r2
}


harmonies = \chordmode {
  \set minorChordModifier = \markup {"-"}
  c1 ~
  c
  d:min
  g:7

  f
  g:7
  c ~
  c

  c
  c:7
  f
  f:min

  c
  a:min
  d:min
  g:7

  c1 ~
  c
  d:min
  g:7

  f
  g:7
  c ~
  c

  c
  c:7
  f
  f:min

  c
  f2
  g:7
  c1:6 ~
  c:6
}

verseI = \lyricmode {
  I'm dreaming _ of a white Christmas _
  Just like the one's I used to know. Where the
  tree tops glisten _ and children _ listen _ to
  hear sleigh bells in the snow.

  I'm dreaming _ of a white Christmas _
  with every _ Christmas _ card I write. May your
  days be merry _ and bright and may
  all your Christmases _ _ be white.
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
