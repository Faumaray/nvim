\NeedsTeXFormat{LaTeX2e}
\ProvidesPackage{PSUTITitle}[2022/10/02 Psuti Title file]
\LoadClass[14pt,a4paper]{extreport}
\RequirePackage{setspace}
\RequirePackage{geometry}
 \geometry{
 total={210mm,297mm},
 left=20mm,
 right=20mm,
 bottom=20mm,
 top=20mm,
 }
\RequirePackage[T2A,T1]{fontenc}
\RequirePackage[varg]{txfonts}
\RequirePackage{fontspec}
\RequirePackage[english,russian]{babel}
\setmainfont{Times New Roman}
% Outline numbering
\setcounter{secnumdepth}{0}
% Page layout (geometry)
\setstretch{1.25}
% Pages styles
\newcommand{\tab}[1]{\hspace*{#1}}
\let\@department\@empty
\let\@discipline\@empty
\let\@project\@empty
\let\@projectname\@empty
\let\@supervisor\@empty
\let\@group\@empty
\newcommand*{\department}[1]{\gdef\@department{#1}}
\newcommand*{\discipline}[1]{\gdef\@discipline{#1}}
\newcommand*{\project}[1]{\gdef\@project{#1}}
\newcommand*{\projectname}[1]{\gdef\@projectname{#1}}
\newcommand*{\supervisor}[1]{\gdef\@supervisor{#1}}
\newcommand*{\group}[1]{\gdef\@group{#1}}

\renewcommand\maketitle{
 \begin{titlepage}
   \begin{center}
    
    МИНИСТЕРСТВО ЦИФРОВОГО РАЗВИТИЯ, СВЯЗИ И МАССОВЫХ КОММУНИКАЦИЙ РОССИЙСКОЙ ФЕДЕРАЦИИ\\
    Федеральное государственное бюджетное образовательное учреждение высшего образования\\
    «Поволжский государственный университет телекоммуникаций и информатики»
  \end{center}
  \vspace{24pt}
  {\raggedright\textbf{Кафедра}\tab{4cm}\@department\par
  \par}
  \vspace{12pt}
  {\raggedright\textbf{Дисциплина}\tab{3.2cm}\@discipline\par
  \par}
  \vspace{120pt}
  {\centering\bfseries
  \@project\par
  \par}
  {\centering\bfseries
  \@projectname\par
  \par}
  \vspace{96pt}
  {\raggedleft
  Проверил: \@supervisor
  \par}
  {\raggedleft
  Выполнил: ст. гр. \@group
  \par}
  {\raggedleft\@author
  \par}
  \vspace{180pt}
  {\centering
  Самара 2022
  \par}
 \end{titlepage}
}\endinput
