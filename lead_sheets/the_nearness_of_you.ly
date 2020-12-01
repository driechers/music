\version "2.18.2"


\header {
  title = "The Nearness of You"
  composer = "N.Washington / H. Carmichael"
}

melody = \relative c' {
  \clef treble
  \key f \major
  \time 4/4

  \partial 4. c8 f g
  \set Score.voltaSpannerDuration = #(ly:make-moment 1/4)
  \repeat volta 2 {
    a2 c4 bes8 a
    g4 bes2 a4
    f2 a4 g
    e g2 f4
    \break
    c1 ~
    c8 d e f \tuplet 3/2 {g4 f e}
  }
  \alternative {
    {
      c'1 ~
      c2 ~c8 c, f g
      \break
    }
    {
      f1 ~
      f2 c8 d e f
      g1 ~
      g4 e8 f g f4 e8
      \break
      a4. e8 ees2 ~
      ees2 ~ ees8 f4 g8
      d'2. d4
      c2. a4
      \break
      g1 ~
      g2 ~ g8 c, f g
      a2 c4 bes8 a
      g4 bes2 a4
      \break
      f2 a4 g
      e g2 f4
      c1 ~
      c8 d e f \tuplet 3/2 {g4 f e}
      \break
      c'1 ~
      c4 a8 bes \tuplet 3/2 {c4 bes a}
      d2. d,4
      e f2 g4
      f1 ~
      f2 ~ f8 r r4
      \bar "|."
    }
  }
}

chExceptionMusic = {
  <g b c' d' f'>1-\markup { \super "7+4" }
}

% Convert music to list and prepend to existing exceptions.
chExceptions = #( append
  ( sequential-music-to-chord-exceptions chExceptionMusic #t)
  ignatzekExceptions)

harmonies = \chordmode {
  \set minorChordModifier = \markup {"-"}
  r4.
  f1
  c2:min f4:7sus4 f:7
  bes1
  bes:dim7

  a2:min aes:7
  g:min c:7
  a:min aes:7
  g:min7 c:7

  f ees:7
  f1:6
  g:min
  c:7

  f2 c:min
  f1:7
  bes
  a2:m7.5- d:7.9-

  %%%%%
  \set chordNameExceptions = #chExceptions
  g1:7.4
  c:7
  f
  c2:min
  f:7sus4

  bes1:
  bes:dim7
  a2:min aes:7
  g:min c:7

  a1:m7.5-
  d:7.9-
  g:min
  c:7.9-

  f2 d:min
  g:min c:7
}

verseI = \lyricmode {
  \set stanza = #"1."
  It's not the pale moon that excites _ me
  that thrills and delights _ me
  oh no, it's just the nearness _ of you
  It's not your
  \repeat unfold 2 { \skip 1 }
}
verseII = \lyricmode {
  \set stanza = #"2."
  (It's not your) sweet conversation _ _ _ _
  that brings this sensation _ _
  oh no, it's just the nearness _ of
  \repeat unfold 2 {
    \skip 1 \skip 1
  }
  you When you're in my arms
  and I feel you so close to me
  All my wildest _ dreams come true

  I need no soft lights to enchant _ me
  if you only _ grant me
  the right to hold you ever _ so tight
  and to feel in the night
  the nearness _ of you
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
