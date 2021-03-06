This is a small latex framework for drawing fretboards. Run render.sh and all
files in the drawings directory will get rendered into an svg in the \_out
directory. The \_out directory is fully rendered, take a look at how the files turn out.

example.tex has the closest thing to documentation right now.

``` tex
\def\frets{15} % Number of frets to draw, markers get put at 3, 5, 7, 9, 15, 17 and double markers on 12
% \def\dontprintnut{1} % define if you would like to not have anything printed on the 0 fret (the nut)

% \Ukelele{}
% \BaritoneUkelele{}
\Guitar{}
% Inside guitar, you can define new instruments like this:
%   \def\strings{6}
%   \def\tuning{1/E, 2/B, 3/G, 4/D, 5/A, 6/E}
%   \def\rootNote{\getname{E}} % Highest string, same as 1 in \tuning


\drawLines{} % drawLines is mandatory
\drawDots{} % draw the fret markers
\drawNumbers{} % draw numbers over frets
% \drawTuning{} % draw the instrument tuning on the nut

\def\n{G} % You can define variables to use
% Example: \drawMajorTriad{\n}

% CAGED: draw labels for CAGED for the given scale. You have on option between five layers to draw on Label1-Label5
\drawCShapeLabel{\n}{Label5}
\drawAShapeLabel{\n}{Label4}
\drawGShapeLabel{\n}{Label3}
\drawEShapeLabel{\n}{Label2}
\drawDShapeLabel{\n}{Label1}

% \drawNote{B} % Draw the note. Only these notes are selectable ever: A, Bb, B, C, Db, D, Eb, E, F, Gb, G, Ab
% \drawNoteAs{B}{M}{znode} % Draw note with specifications. B is the note, M is what to write, znode is how to write it. (znode is black, hnode is grey, bnode is blue)

% \drawChord{G}{{1,5,8}} % Draw all notes in the chord, #1 is the root, {1,5,8} are the notes you would like. {1,5,8} is a major triad.
% \drawMajorTriad{C} % Draw all the notes from the major triad
% \drawMinorTriad{D} % Draw all the notes from the minor triad
% \drawSeventh{D} % Draw all the notes from the seventh chord
% \drawSixth{D} % Draw all the notes from the Sixth chord

% \drawPentatonic{\n} % Draw all relative notes in the pentatonic as numbers (i, ii, iii, v, vi). i is noted as M (major), vi is noted as m (minor)
\drawScale{\n} % Draw all relative notes in the major scale as numbers (i, ii, iii, iv, v, vi, vii). i is notes as M (major), vi is noted as m (minor)
% \drawMajorBlues{G} % Draw all relative notes in the major blues scale as numbers (i, ii, b3, iii, v, vi). i is notes as M (major), vi is noted as m (minor), biii is noted as b3
```
