\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{njtech-thesis}[2026/05/12 NJTech Undergraduate Thesis Template]

\LoadClass[a4paper,12pt]{article}

\RequirePackage[UTF8]{ctex}
\RequirePackage{geometry}
\RequirePackage{graphicx}
\RequirePackage{setspace}
\RequirePackage{titlesec}
\RequirePackage{titletoc}
\RequirePackage{fancyhdr}
\RequirePackage{caption}
\RequirePackage{booktabs}
\RequirePackage{enumitem}
\RequirePackage{amsmath,amssymb}
\RequirePackage{xcolor}
\RequirePackage{tabularx}
\RequirePackage{array}
\RequirePackage{multirow}
\RequirePackage{indentfirst}
\RequirePackage{type1cm}
\RequirePackage{hyperref}

\geometry{
  a4paper,
  top=2.54cm,
  bottom=2.54cm,
  left=3.17cm,
  right=3.17cm,
  headheight=16pt,
  headsep=1.0cm,
  footskip=1.75cm
}

\setlength{\parindent}{0.85cm}
\setlength{\parskip}{0pt}

\setmainfont{Times New Roman}
\setsansfont{Arial}
\setmonofont{Courier New}

\setCJKmainfont[BoldFont=黑体,ItalicFont=楷体]{宋体}
\setCJKsansfont{黑体}
\setCJKmonofont{仿宋}

\newcommand{\cjkd}[1]{{\kaishu #1}}
\newcommand{\cjkf}[1]{{\fangsong #1}}

\newcommand{\@thesisyear}{2026}
\newcommand{\@thesismonth}{6}
\newcommand{\@thesistitle}{}
\newcommand{\@thesismajor}{}
\newcommand{\@thesisclass}{}
\newcommand{\@thesisauthor}{}
\newcommand{\@thesisadvisor}{}
\newcommand{\@thesisdate}{}

\newcommand{\thesisyear}[1]{\renewcommand{\@thesisyear}{#1}}
\newcommand{\thesismonth}[1]{\renewcommand{\@thesismonth}{#1}}
\newcommand{\thesistitle}[1]{\renewcommand{\@thesistitle}{#1}}
\newcommand{\thesismajor}[1]{\renewcommand{\@thesismajor}{#1}}
\newcommand{\thesisclass}[1]{\renewcommand{\@thesisclass}{#1}}
\newcommand{\thesisauthor}[1]{\renewcommand{\@thesisauthor}{#1}}
\newcommand{\thesisadvisor}[1]{\renewcommand{\@thesisadvisor}{#1}}
\newcommand{\thesisdate}[1]{\renewcommand{\@thesisdate}{#1}}

\newcommand{\erhao}{\fontsize{18pt}{27pt}\selectfont}
\newcommand{\xiaosan}{\fontsize{15pt}{22.5pt}\selectfont}
\newcommand{\sihao}{\fontsize{14pt}{21pt}\selectfont}
\newcommand{\xiaosi}{\fontsize{12pt}{18pt}\selectfont}
\newcommand{\wuhao}{\fontsize{10.5pt}{15.75pt}\selectfont}

\titleformat{\section}
  {\clearpage\centering\heiti\xiaosan}
  {第\chinese{section}章\quad}
  {0em}
  {}

\titleformat{\subsection}
  {\heiti\sihao}
  {\arabic{section}.\arabic{subsection}}
  {1em}
  {}

\titleformat{\subsubsection}
  {\heiti\xiaosi}
  {\arabic{section}.\arabic{subsection}.\arabic{subsubsection}}
  {1em}
  {}

\titlespacing*{\section}{0pt}{0pt}{0pt}
\titlespacing*{\subsection}{0pt}{0pt}{0pt}
\titlespacing*{\subsubsection}{0pt}{0pt}{0pt}

\renewcommand{\maketitle}{}

\newcommand{\makecover}{%
  \thispagestyle{empty}
  \begin{center}
    \vspace*{0.5cm}
    \includegraphics[width=7.09cm]{njtech-logo.jpeg}
    \vskip 1.5cm
    {\xiaosan\@thesisyear\quad 届毕业设计（论文）}
    \vskip 2.5cm
    \begin{tabular}{>{\centering\arraybackslash}m{3cm}>{\centering\arraybackslash}m{8cm}}
      \sihao 题\quad 目： & \sihao \@thesistitle \\[0.8cm]
      \sihao 专\quad 业： & \sihao \@thesismajor \\[0.8cm]
      \sihao 班\quad 级： & \sihao \@thesisclass \\[0.8cm]
      \sihao 姓\quad 名： & \sihao \@thesisauthor \\[0.8cm]
      \sihao 指导老师： & \sihao \@thesisadvisor \\[0.8cm]
      \sihao 起讫日期： & \sihao \@thesisdate \\
    \end{tabular}
    \vfill
    {\sihao \@thesisyear 年\@thesismonth 月}
    \vskip 1cm
  \end{center}
  \newpage
}

\newcommand{\makedeclaration}{%
  \thispagestyle{empty}
  \begin{center}
    {\erhao\heiti 南京工业大学本科毕业设计（论文）原创性声明}
  \end{center}
  \vskip 0.5cm
  \begin{spacing}{1.25}
    \songti\xiaosi
    本人郑重声明：所呈交的毕业设计（论文），是本人在导师的指导下，独立进行研究工作所取得的成果。除文中已经注明引用的内容外，本论文不包含任何其他个人或集体已经发表或撰写过的作品成果。对本文的研究做出重要贡献的个人和集体，均已在文中以明确方式标明。本人完全意识到本声明的法律结果由本人承担。
  \end{spacing}
  \vskip 2cm
  \begin{spacing}{1.25}
    \songti\xiaosi
    \hspace{2cm}论文作者签名：\hfill 日期：\quad 年\quad 月\quad 日\hspace{2cm}
  \end{spacing}
  \vfill
  \begin{center}
    {\erhao\heiti 南京工业大学本科毕业设计（论文）使用授权声明}
  \end{center}
  \vskip 0.5cm
  \begin{spacing}{1.25}
    \songti\xiaosi
    本学位论文作者完全了解学校有关保留、使用毕业设计（论文）的规定，同意学校保留并向国家有关部门或机构送交论文的复印件和电子版，允许论文被查阅和借阅。本人授权南京工业大学教务处可以将本毕业设计（论文）的全部或部分内容编入有关数据库进行检索，可以采用影印、缩印或扫描等复制手段保存和汇编毕业设计（论文）。
  \end{spacing}
  \vskip 1cm
  \begin{spacing}{1.25}
    \songti\xiaosi
    \hspace{1.5cm}论文作者签名：\hfill 导师签名：\hspace{2cm}
    \vskip 0.5cm
    \hspace{1.5cm}日期：\quad 年\quad 月\quad 日\hfill 日期：\quad 年\quad 月\quad 日\hspace{2cm}
  \end{spacing}
  \newpage
}

\newenvironment{cnabstract}[1]{%
  \section*{摘\quad 要}
  \addcontentsline{toc}{section}{摘\quad 要}
  \begin{spacing}{1.5}
    \xiaosi
    #1
  \end{spacing}
  \vskip 0.5cm
  \noindent\textbf{关键词：}
}{%
  \newpage
}

\newenvironment{enabstract}[1]{%
  \section*{Abstract}
  \addcontentsline{toc}{section}{Abstract}
  \begin{spacing}{1.5}
    \xiaosi
    #1
  \end{spacing}
  \vskip 0.5cm
  \noindent\textbf{Keywords:}
}{%
  \newpage
}

\renewcommand{\tableofcontents}{%
  \section*{目\quad 录}
  \addcontentsline{toc}{section}{目\quad 录}
  \@starttoc{toc}
}

\newcommand{\makebody}{%
  \setcounter{page}{1}
  \pagestyle{fancy}
  \fancyhf{}
  \fancyhead[C]{\songti\wuhao 南京工业大学本科生毕业设计（论文）}
  \fancyfoot[C]{\thepage}
  \renewcommand{\headrulewidth}{0.4pt}
  \renewcommand{\footrulewidth}{0pt}
  \setlength{\parindent}{0.85cm}
  \setlength{\parskip}{0pt}
  \begin{spacing}{1.5}
}

\newcommand{\makefrontmatter}{%
  \pagenumbering{Roman}
  \pagestyle{fancy}
  \fancyhf{}
  \fancyhead[C]{\songti\wuhao 摘要}
  \fancyfoot[C]{\thepage}
  \renewcommand{\headrulewidth}{0.4pt}
  \renewcommand{\footrulewidth}{0pt}
}

\newcommand{\makereference}{%
  \clearpage
  \section*{参考文献}
  \addcontentsline{toc}{section}{参考文献}
}

\newcommand{\makeacknowledgement}{%
  \clearpage
  \section*{致谢}
  \addcontentsline{toc}{section}{致谢}
}

\captionsetup[figure]{font=small,justification=centering}
\captionsetup[table]{font=small,justification=centering}

\renewcommand{\figurename}{图}
\renewcommand{\tablename}{表}

\endinput
