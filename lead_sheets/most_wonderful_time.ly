\version "2.18.2"


\header {
  title = "It's The Most Wonderful Time Of The Year"
  composer = "Andy Williams"
}

melody = \relative c' {
  \clef treble
  \key c \major
  \time 3/4

  R2. R R r4 e f
  g2. g4 c a g2.~g4 f e c2.~c2.~c2. r4 d4 e f d d
  d e f g e e e f g a f a c2.~c2. r4 b a g2.
  g4 c a g2.~g4 f d <c g'>2.~<c g'>2.~<c g'>2. r4 e f
  g2. g4 c a g2.~g4 f d c2.~c2. R2. r4 d e f d d
  d e f g e e e f g a f a c2.~c2. r4 b f g2.
  g4 c a g2.~g4 f d bes'2.~bes2.~bes2.

  r4 c bes a a a a b a g g g g c g f f f
  f a g e2. r4 c c aes' aes aes aes bes aes g g g g aes g
  f f f f ees f g2.~g2. r4 e f
  g2. g4 c a g2.~g4 f d c2.~c2.~c2. r4 d e f d d
  d e f g e e e f g a f a c2.~c2. r4 b a g2.
  g4 c a g2.~g4 r4 f g2. g4 d'c g2. r4 e f g2. g4 e' c
  g2. b2 d4 c2.~c2.~c2.~c4 r2
}


harmonies = \chordmode {
  c2. a:min d:min7 g:9
  c a:min7 d:min7 g:7 c a:min7 d:min7 g:7 d:min7
  g:7 c:7 a:min7 f~f fis:dim7~fis:dim7 c
  a:min7 d:min7 g:7 c:7 a:min7 d:min7 g:7
  c:9 a:min7 d:min11 g:7 c:6.9 a:min11 d:min11 g:9 d:min7
  g:7 e:min7 a:min7 f:6~f:6 fis:dim7~fis:dim7 c:9
  a:min7 d:min7 g:7 g:min7~g:min7 c:7
  ~c:7 f:6 fis:dim7 e:min7 a:min7 d:min7
  g:7 c:maj7 ~ c:maj7 f:min7 bes:7 ees:maj7 aes:maj7
  d:min7.5- aes:dim7 g:9 d:min7/g g:11
  c a:min7 d:min11 g:7 c a:min d:min7 g:7 d:min7
  g:7 c a:min7 f~f fis:dim7~fis:dim7 c
  a:min7 d:min7 g:7 c a:min7 d:min7 g:7 c a:min7
  d:min7 g:7 c aes f:min c
}

verseI = \lyricmode {
  It's the most wonderful _ _ time of the year
  With the kids jingle _ belling _ and everyone _ _ telling _ you be a good cheer
  It's the most wonderful _ _ time of the year

  It's the hap hapiest _ _ sea son of all
  With those holiday _ _  greetings _ and gay happy _ meetings _ when friends come to call
  It's the hap hapiest _ _ sea son of all

  There'll be parties _ for hosting, _ marshmalows _ _ for toasting _ and caroling _ _ out in the snow
  There'll be scary _ ghost stories _ and tales of the glories _ of Christmases _ _ long long a go

  It's the most wonderful _ _ time of the year
  There'll be much mistletoeing _ _ _ and hearts will be glowing _ when loved ones are near
  It's the most wonderful _ _ time the most wonderful _ _ time
  It's the most wonderful _ _ time of the year
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

