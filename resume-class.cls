\ProvidesClass{resume-class}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Dependencies
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e}
\LoadClass{article}

\usepackage[noheadfoot, nomarginpar, hmargin=\dimexpr2\tabcolsep, vmargin=0cm]{geometry} %add "showframe" to check h alignment
\usepackage{nopageno}
\usepackage[hidelinks]{hyperref}
\usepackage{colortbl} % for coloured horizontal lines
\usepackage{enumitem}\setlist{nosep} % Makes lists more compact and the first list's spacing consistent with the rest
\usepackage{titlesec} % Consistent section title formatting
\usepackage{xcolor} % Colors
\usepackage{fontspec} % Fonts
\usepackage{fontawesome5} % Icons
\usepackage{bookmark} % to get rid of some warning lol
\usepackage{graphicx} % to insert photos with advanced options
\usepackage{lipsum} % to generate filler text


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Style
% (Spacing, colours)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\arraystretch}{0.75}  % vertical cell spacing
\setlength{\tabcolsep}{4pt}         % horizonal cell padding, used as a reference through whole document
\setlength{\arrayrulewidth}{1.5pt}  % table borders
\setlength\parindent{0pt}           % pesky indents
\titlespacing{\section}{0pt}{2\tabcolsep}{0pt} % space under sections
\titlespacing{\subsection}{0pt}{2\tabcolsep}{0pt} % ^ subsections
%
% Couldn't figure out how to fill the "rest of the page" after the header. This number will need to be changed if the header changes height.
\newlength{\MagicVFill} \setlength{\MagicVFill}{700.5pt}

\definecolor{MainTheme}{HTML}{2b2b2b}
\definecolor{LightTheme}{HTML}{707070}
\definecolor{LeftTheme}{HTML}{003166}
\definecolor{RightTheme}{HTML}{40B4E5}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Text
% (fonts, headers)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setmainfont{OpenSans}[
  Path = fonts/opensans/,
  Scale = 1.1,
  UprightFont = *-Regular,
  BoldFont = *-Bold,
  ItalicFont = *-LightItalic,
  BoldItalicFont = *-Italic,
  Color = MainTheme
] 
\newfontfamily\RalewayFont{Raleway}[Path = fonts/raleway/,  Scale = MatchUppercase, UprightFont = *-Medium,  BoldFont = *-Bold,    ItalicFont = *-Italic,      BoldItalicFont = *-BoldItalic]
\newfontfamily\RobotoFont{Roboto}  [Path = fonts/roboto/,   Scale = MatchUppercase, UprightFont = *-Regular, BoldFont = *-Bold,    ItalicFont = *-Italic,      BoldItalicFont = *-BoldItalic]
\newfontfamily\OpenSansFont{OpenSans}    [Path = fonts/opensans/, Scale = MatchUppercase, UprightFont = *-Regular, BoldFont = *-Bold,    ItalicFont = *-Italic,      BoldItalicFont = *-BoldItalic]

% Header name
\newcommand{\BigName}[1]{
  {%
    \raggedright
    \color{LeftTheme}
    \fontsize{30pt}{0pt}
    \selectfont
    \fontspec[Path = fonts/opensans/]{OpenSans-Light}
    \uppercase{
      \mbox{#1}%
    }
  }%
}

% Header Linkedin, github, etc
% Args: {link}{text}
\newcommand{\LittleLink}[2] {
  {%
    \raggedright
    \color{MainTheme}
    \selectfont
    \OpenSansFont
    \href{#1}{#2}
  }%
}

% Headings (Experience, projects, skills)
\titleformat{\section}{
  \color{RightTheme}
  \fontsize{16pt}{24pt}
  \selectfont
  \RalewayFont
  \raggedright
  \uppercase
}{}{0pt}{}

% Subeadings (Job 1, job 2, project 1, project 2)
\titleformat{\subsection}[runin]{
  \color{MainTheme}
  \bfseries % Must be high up in this list
  \fontsize{11pt}{12pt}
  \selectfont
  \OpenSansFont
  \raggedright
  \uppercase
}{}{0pt}{}

% Left-aligned subsection title + right-aligned date
\newcommand{\SubsectionPlus}[2]{
  \raggedright
  \subsection{#1}%
  {%
    \raggedleft
    \hfill
    \Date{#2}
  }\\%
}

% Date (tiny boi)
\newcommand{\Date}[1]{
  {%
    \color{LightTheme}
    \itshape
    \fontsize{8pt}{0pt}
    \selectfont
    \RalewayFont
    \mbox{\*#1}%
  }%
}

% Detail line
\newcommand{\Detail}[1]{
  {%
    \raggedright
    \color{MainTheme}
    \itshape
    \selectfont 
    \RalewayFont
    {#1\\}%
  }%
}

% White text for a "last updated" or similar
\definecolor{WhiteTheme}{HTML}{FFFFFF}
\newcommand{\Sneaky}[1]{
  {%
    \raggedright
    \color{WhiteTheme}
    \fontsize{8pt}{0pt}
    \RalewayFont
    \selectfont
    {#1\\}%
  }%
}

