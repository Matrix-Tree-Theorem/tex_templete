\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mybook-ja}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         全般
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{luatex85}
\LoadClassWithOptions{ltjsbook}
\ProcessOptions\relax
\RequirePackage{myjapanese}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         目次
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 目次の体裁を整える
\RequirePackage{tocloft}
% 目(subsubsection)まで目次に掲載
\setcounter{tocdepth}{3}
% 目次の見出しのフォントを変更
\renewcommand{\cfttoctitlefont}{\Huge\bfseries}
% 目次のタイトルとページの間のドットを中黒に変更
\renewcommand{\cftdot}{\ensuremath{\cdot}}
% ドットの間隔を調整
\renewcommand{\cftdotsep}{2}
% ページ数を中央揃えにする
\renewcommand{\cftpnumalign}{c}
% 部見出し上の行間を章見出しのものに変更
\renewcommand{\cftbeforepartskip}{1.0em \@plus\p@}
% 章見出し上の行間を節見出しのものに変更
\renewcommand{\cftbeforechapskip}{\z@ \@plus.2\p@}
% 章見出しのフォントを変更
\renewcommand{\cftchapnumwidth}{4.5em}
\renewcommand{\cftsecindent}{0em}
\renewcommand{\cftsubsecindent}{2.3em}
\renewcommand{\cftsubsubsecindent}{5.5em}
\renewcommand{\cftparaindent}{8.5em}
\renewcommand{\cftsubparaindent}{10.5em}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         見出し
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 見出しのフォントやサイズを変更
\RequirePackage{titlesec}
\titleformat{\part}[display]{\centering\HUGE\bfseries}{\huge 第 \thepart 部}{0em}{}
\titleformat{\chapter}[display]{\Huge\bfseries}{\LARGE 第 \thechapter 章}{0em}{}
\titleformat*{\section}{\Large\bfseries}
\titleformat*{\subsection}{\large\bfseries}
\titleformat*{\subsubsection}{\bfseries}
\titleformat*{\paragraph}{\bfseries}
\titleformat*{\subparagraph}{\bfseries}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         本文
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         索引
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 目次に追加しないように, theindex環境を変更(ltjsbook.clsを参照)
\renewenvironment{theindex}{% 
    \if@twocolumn
      \onecolumn\@restonecolfalse
    \else
      \clearpage\@restonecoltrue
    \fi
    \columnseprule.4pt \columnsep 2\zw
    \ifx\multicols\@undefined
      \twocolumn[\@makeschapterhead{\indexname}]%
    \else
      \ifdim\textwidth<\fullwidth
        \setlength{\evensidemargin}{\oddsidemargin}
        \setlength{\textwidth}{\fullwidth}
        \setlength{\linewidth}{\fullwidth}
        \begin{multicols}{3}[\chapter*{\indexname}]%
      \else
        \begin{multicols}{2}[\chapter*{\indexname}]%
      \fi
    \fi
    \@mkboth{\indexname}{}%
    \plainifnotempty % \thispagestyle{plain}
    \parindent\z@
    \parskip\z@ \@plus .3\jsc@mpt\relax
    \let\item\@idxitem
    \raggedright
    \footnotesize\narrowbaselines
  }{
    \ifx\multicols\@undefined
      \if@restonecol\onecolumn\fi
    \else
      \end{multicols}
    \fi
    \clearpage
  }