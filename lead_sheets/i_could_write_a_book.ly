\version "2.18.2"


\header {
  title = "I Could Write a Book"
  composer = "Rodgers / Hart"
}

melody = \relative c' {
  \clef treble
  \key c \major
  \time 4/4

  \partial 2 e f
  \set Score.voltaSpannerDuration = #(ly:make-moment 1/4)
  \repeat volta 2 {
    g2 b2
    a4 g e d
    e1 ~
    e4 g e d
    \break
    e g e d
    e c'2 e,4
    g1 ~ g2 a4 b
    \break
  }
  \alternative {
    {
      c2 c
      c4 d2 b4
      a2 a2
      g e4 fis
      \break
      g2 g
      g4 a2 fis4
      g1 ~
      g4 r e f
      \break
    }
    {
      c'2 c
      c4 d2 b4
      bes2 bes2
      a g4 f
      \break
      e2 e
      d4 c'2 b4
      c1
      \bar "|."
    }
  }
}


harmonies = \chordmode {
  \set minorChordModifier = \markup {"-"}
  r2
  c2:maj7 a:min7
  d:min7 g:7
  c1:maj7 ~
  c2:maj7 g:7

  c:maj7 g:7
  c:maj7~c4:maj7 cis:dim7
  d1:min7 
  g1:7

  c2/e aes/ees:7
  d:min7~d4:min7 g:7
  a2:min7 d:7.9-
  g:maj7~g4:maj7 b4:7

  e1:min
  a2:min7 d:7
  d1:min7
  g:7

  a2:min a:m7+
  a:min7 a:min6
  g:min7 c:7
  f:maj7 f4:min7 bes4

  c2:maj7 a:7
  d:min7 g:7
  c1:6
}

verseI = \lyricmode {
  \set stanza = #"1."
  If they asked me, I could write a book
  About _ the way you walk and whisper _ and look
  I could write a preface _ on how we met
  So the world would never _ forget _ And the
  \repeat unfold 2 { \skip 1 }
}
verseII = \lyricmode {
  \set stanza = #"2."
  (And the) simple _ secret _ of the plot
  is just to tell them that I love you, a lot
  Then the
  \repeat unfold 2 {
    \skip 1 \skip 1
    \skip 1 \skip 1
    \skip 1 \skip 1
    \skip 1 \skip 1
    \skip 1
  }
  world discovers _ _ as my book ends
  How to make two lovers _ of friends
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
    \new Lyrics = "lyricsII" {
      \lyricsto voiceMelody \verseII
    }
  >>
  \layout {
  }
  \midi { }
}

\paper {
  system-system-spacing.basic-distance = #25
}
