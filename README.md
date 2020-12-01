# Music
This repository contains source to render the songs that I have worked on or am working on where I could not find a version that I liked.

## Lilypond

ly files can be compiled using lilypond the compilation is very simple:

```
lilypond foo.ly
```

I usually setup my lilypond files to output midi files as well as the default pdfs.

## Chord pro
cho files can also be compiled easily using chordii. I usually use the G option unless I'm playing the song with a guitar. chordPRO tip: (www.chordie.com) provivdes their chord pro files for free. Althogh they aren't always formatted correctly or correct.

```
chordii -G foo.cho > foo.ps
```

If you want to be a crazy hacker you can use netcat to talk to your printer
```
chordii -G foo.cho | nc 192.168.1.20 9100
```
