\version "2.18.2"


\header {
  title = "Always On My Mind"
  composer = "Wayne Thompson, Mark James, and Johnny Christopher"
}

melody = \relative c' {
  \clef treble
  \key d \major
  \time 4/4

  \set Score.voltaSpannerDuration = #(ly:make-moment 1/4)
  \repeat volta 3 {
	%A
	fis8 d r8 fis16 g a4. g16 fis
	fis8 e e4 r2

	r4 r8 d16 e fis8 e4 d16 cis
	cis8 b4. r2

	r4 r16 d fis g a4. g16 fis
	fis8 e e4 r2

	r4 r8 d16 e fis4. e16 d
	cis8 b4. r2

	%B
	r4 r8 g'16 a b8 b4 a8
	a d, fis4 r2

	r4 r8 e16 fis g8 fis4 e16 d
	d8 b r4 r2

	r4 e8 e fis fis g a
	a1

	r4 e8 e g g fis fis
  }
  \alternative {
    {
	d2 r2
    }
    {
	d2 r2
	%C
	a'1
	d,2 r2

	g8 fis e d g fis4 e16 d
	fis8 e4. r2

	a1
	d,2 r4 e8 fis
	g fis e8. d16 g8 fis e d
	fis8 e4 e8 g fis g fis
    }
    {
	d2 r2
	%normal ending of B
	%D
	r4 e8 e fis fis g a
	a2 r2

	r4 e8 e g g fis e16 d
	d2 r2
	r1
    }
  }
  \bar "|."
}


harmonies = \chordmode {
  \repeat volta 3 {
	%A
	d1
	a/cis
	b2:min d/a
	g a
	d1 a/cis
	b2:min d/a
	gis1:min7.5-

	%B
	g1
	d
	g2 d/fis
	e1:min
	a2 b4:min a:7/cis
	d2 e4:min fis:min
	g2 a:7
  }
  \alternative {
    {
	d2 g4 a
    }
    {
	%C
	d2 g4 a
	d2 a/cis
	b:min d/a
	g d/fis
	e2:m g4/a a:7
	d2 a/cis
	b:min d/a
	g d/fis
	e:min a \break
    }
    {
	d1
	%D
	a2 b4:min cis:min7.5-
	d2 e4:min fis:min
	g2 a:7
	d1
	d1
    }
  }
  \bar "|."
}

verseI = \lyricmode {
  _ _ \set stanza = #"1."
  Maybe _ I didn't _ love _  you
  quite as often _ as I could have
  and maybe _ I didn't _ treat _ you
  quite as good as I should have

  If I made you feel second _ best
  girl I'm sorry _ I was blind _
  you were always _ on my mind
  you were always _ on my mind
  %\repeat unfold 2 { \skip 1 }
}
verseII = \lyricmode {
  _ _ \set stanza = #"2."
  "And maybe" _ I didn't _ hold _ you
  all those lonely _ lonely _ _ times
  and I guess I never _ told _ you
  I'm so happy _ that you're mine

  Little things I should have said and done
  I just never _ took the time _
  "But you were" _ always _ on my mind
  You were always _ on my _ mind

  Tell me
  Tell me that your sweet love hasn't _ died _
  Give me
  Give me one more chance to keep you satisfied _ _ _
  I'll keep you satis
}

verseIII = \lyricmode {
  \set stanza = #"3."
  fied _  _ "(Instrumental solo)"
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _

  Little things I should have said and done
  I just never _ took the time _
  "But you were" _ always _ on my mind
  You were always _ on my _ 
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  mind
  You were always _ on my mind
  You were always _ on my _ mind
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
    \new Lyrics = "lyricsIII" {
      \lyricsto voiceMelody \verseIII
    }
  >>
  \layout {
  }
  \midi { }
}

\paper {
  system-system-spacing.basic-distance = #25
}
