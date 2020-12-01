\version "2.18.2"


\header {
  title = "Autumn Leaves"
  composer = "Johnny Mercer"
}

melody = \relative c' {
  \clef treble
  \key g \major
  \time 4/4

  \partial 2. e fis g
  \set Score.voltaSpannerDuration = #(ly:make-moment 1/4)
  \repeat volta 2 {
    c1 ~
    c4 d, e fis
    b2 b~
    \break
    b4 c, d e
    a1 ~
  }
  \alternative {
    {
      a4 b, cis dis
      g1
      \break
      r4 e fis g
    }
    {
      a4 \repeatTie fis a g
      e1 ~
      e4 r4 dis e
      \break
      fis b, fis'2 ~
      fis4 fis e fis
      g1 ~
      g4 g fis g
      \break
      a1 ~
      a4 d, d' c
      b1 ~
      b4 r ais b
      \break
      c c a a
      fis2. c'4
      b2 b~
      b2. e,4
      \break
      a2. g4
      fis2 g4 b,
      e1
      \bar "|."
    }
  }
}


harmonies = \chordmode {
  \set minorChordModifier = \markup {"-"}
  r2~r4
  a1:min7
  d:7
  g:maj7

  c:maj7
  fis:min7.5- ~
  fis4:min7.5-
  b2:7 ~ b4:7
  \repeat percent 2 { e1:min }

  b:7
  \repeat percent 2 { e1:min }

  fis:min7.5-
  b:7.9-
  \repeat percent 2 { e1:min }

  a:min7
  d:7
  \repeat percent 2 { g:maj7 }

  fis:min7.5-
  b:7.9-
  e2:min7 e:7-
  d:min7 d:7-

  c1:maj7
  b:9-
  e:min
}

verseI = \lyricmode {
  \set stanza = #"1."
  The falling _ leaves drift by the window _
  The autumn _ leaves of red and gold
  I see your
  \repeat unfold 2 { \skip 1 }
}
verseII = \lyricmode {
  \set stanza = #"2."
  (I see your) lips the summer _ kisses
  The sun-burned _ _ hands
  \repeat unfold 2 {
    \skip 1 
    \skip 1
    \skip 1
    \skip 1
  }
  I used to hold
  Since you went a way the days grow long
  And soon I'll hear old winter's _ song
  But I miss you most of all my darling _
  When autumn _ leaves start to fall
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
