\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{myarticle-ja}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         全般
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{luatex85}
\LoadClassWithOptions{ltjsarticle}
\ProcessOptions\relax
\RequirePackage{myjapanese}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         目次
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 目次の体裁を整える
\RequirePackage{tocloft}
% 目(subsubsection)まで目次に掲載
\setcounter{tocdepth}{3}
% 目次のタイトルとページの間のドットを中黒に変更
\renewcommand{\cftdot}{\ensuremath{\cdot}}
% ドットの間隔を調整
\renewcommand{\cftdotsep}{2}
% ページ数を中央揃えにする
\renewcommand{\cftpnumalign}{c}
% 部見出し上の行間を章見出しのものに変更
%\renewcommand{\cftbeforepartskip}{1.0em \@plus\p@}
% 節見出し上の行間を変更
\renewcommand{\cftbeforesecskip}{\z@ \@plus.2\p@}
% 目次の見出しのフォントを変更
\renewcommand{\cfttoctitlefont}{\Large\bfseries}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         見出し
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 見出しの体裁を変更
\RequirePackage{titlesec}
\titleformat{\part}[display]{\huge\bfseries}{\Large 第 \thepart 部}{0em}{}
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