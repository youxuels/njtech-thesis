# NJTech Undergraduate Thesis LaTeX Template | 南京工业大学本科毕业设计（论文）LaTeX模板

基于南京工业大学本科毕业设计（论文）Word格式模板制作的LaTeX模板包，严格还原了原Word模板的格式规范。

## 模板特色

- 🎨 **格式还原度高**：页面设置、字体字号、行距缩进等均严格对照原Word模板
- 📄 **封面与声明页保持不变**：第一页封面、第二页声明页内容与原模板完全一致
- 📐 **自动排版**：章节编号、目录、页眉页脚自动生成
- 🧮 **公式支持**：完整支持数学公式排版
- 📊 **表格规范**：三线表格式，符合学术论文规范
- 🔤 **中英双语**：中文摘要与英文摘要自动排版

## 文件说明

```
njtech-thesis/
├── njtech-thesis.cls    # 文档类文件（核心模板）
├── njtech-logo.jpeg     # 校徽图片
├── main.tex             # 主文件（论文内容）
├── .gitignore           # Git忽略文件
└── README.md            # 使用说明
```

## 环境要求

### 必需软件

| 软件 | 说明 |
|------|------|
| **TeX发行版** | [MiKTeX](https://miktex.org/) 或 [TeX Live](https://www.tug.org/texlive/)（推荐2023及以上版本） |
| **XeLaTeX** | TeX发行版自带，用于编译中文文档 |
| **字体** | 宋体、黑体、楷体、仿宋、Times New Roman、Arial、Courier New |

### 字体说明

本模板使用以下字体，需确保系统已安装：

| 用途 | 中文字体 | 英文字体 |
|------|---------|---------|
| 正文 | 宋体 | Times New Roman |
| 标题 | 黑体 | — |
| 楷体引用 | 楷体 | — |
| 代码/等宽 | 仿宋 | Courier New |
| 无衬线 | — | Arial |

> Windows系统通常已预装以上字体，无需额外安装。macOS/Linux用户可能需要手动安装。

## 快速开始

### 1. 克隆仓库

```bash
git clone https://github.com/youxuels/njtech-thesis.git
cd njtech-thesis
```

### 2. 编译论文

使用XeLaTeX编译（需运行**两次**以生成正确的目录和交叉引用）：

```bash
xelatex main.tex
xelatex main.tex
```

或使用latexmk一键编译：

```bash
latexmk -xelatex main.tex
```

### 3. 查看结果

编译成功后生成 `main.pdf`，即为完整论文。

## 使用指南

### 修改封面信息

在 `main.tex` 开头修改以下命令：

```latex
\thesisyear{2026}          % 毕业年份
\thesismonth{6}            % 毕业月份
\thesistitle{你的论文题目}   % 论文题目
\thesismajor{你的专业}       % 专业名称
\thesisclass{你的班级}       % 班级名称
\thesisauthor{你的姓名}      % 作者姓名
\thesisadvisor{导师姓名}     % 导师姓名及职称
\thesisdate{2025.12--2026.6} % 起讫日期
```

### 论文结构

```latex
\begin{document}

\makecover              % 封面（第一页）
\makedeclaration        % 声明页（第二页）
\makefrontmatter        % 前言区（摘要、目录等）

\begin{cnabstract}{中文摘要内容}
关键词1；关键词2；关键词3
\end{cnabstract}

\begin{enabstract}{English abstract content}
keyword1; keyword2; keyword3
\end{enabstract}

\tableofcontents        % 目录
\newpage

\makebody               % 正文区开始

\section{绪论}          % 第一章（自动另起一页）
\subsection{研究背景}    % 1.1
\subsubsection{理论意义} % 1.1.1

\section{理论背景}      % 第二章（自动另起一页）

\section{研究方法}      % 第三章（自动另起一页）

\section{研究分析}      % 第四章（自动另起一页）

\section{结论与展望}    % 第五章（自动另起一页）

\makereference          % 参考文献（自动另起一页）
\begin{enumerate}[label={[\arabic*]}]
  \item 参考文献1
  \item 参考文献2
\end{enumerate}

\makeacknowledgement    % 致谢（自动另起一页）
致谢内容

\end{spacing}
\end{document}
```

### 插入表格

使用 `booktabs` 三线表格式：

```latex
\begin{table}[htbp]
  \centering
  \caption{表格标题}
  \begin{tabular}{lcc}
    \toprule
    项目 & 数值1 & 数值2 \\
    \midrule
    数据1 & 0.123 & 0.456 \\
    数据2 & 0.789 & 0.012 \\
    \bottomrule
  \end{tabular}
\end{table}
```

### 插入图片

```latex
\begin{figure}[htbp]
  \centering
  \includegraphics[width=0.8\textwidth]{图片路径}
  \caption{图片标题}
\end{figure}
```

### 插入公式

```latex
行内公式：$E = mc^2$

独立公式：
$$Y_i = \beta_0 + \beta_1 X_i + \varepsilon_i$$
```

### 替换校徽

如需更换校徽图片，将新图片命名为 `njtech-logo.jpeg` 替换模板目录下的同名文件即可。如使用其他格式（如PNG），需同步修改 `njtech-thesis.cls` 中的文件名。

## 格式规范

本模板严格遵循以下格式规范（与原Word模板一致）：

### 页面设置

| 项目 | 规格 |
|------|------|
| 纸张 | A4（210mm × 297mm） |
| 上边距 | 2.54cm |
| 下边距 | 2.54cm |
| 左边距 | 3.17cm |
| 右边距 | 3.17cm |

### 字体字号

| 内容 | 中文字体 | 字号 | 英文字体 |
|------|---------|------|---------|
| 一级标题 | 黑体 | 小三（15pt） | — |
| 二级标题 | 黑体 | 四号（14pt） | — |
| 三级标题 | 黑体 | 小四（12pt） | — |
| 正文 | 宋体 | 小四（12pt） | Times New Roman |
| 页眉 | 宋体 | 五号（10.5pt） | — |
| 摘要标题 | 黑体 | 小三（15pt） | — |
| 声明标题 | 黑体 | 二号（18pt） | — |

### 行距与缩进

| 内容 | 行距 | 首行缩进 |
|------|------|---------|
| 正文 | 1.5倍 | 0.85cm |
| 声明正文 | 1.25倍 | 0.95cm |

### 章节编号

| 层级 | 编号格式 | 示例 |
|------|---------|------|
| 一级标题 | 第X章 | 第一章 绪论 |
| 二级标题 | X.X | 1.1 研究背景 |
| 三级标题 | X.X.X | 1.1.1 理论意义 |

### 页眉页脚

| 区域 | 内容 |
|------|------|
| 页眉（摘要区） | "摘要" |
| 页眉（正文区） | "南京工业大学本科生毕业设计（论文）" |
| 页脚 | 页码居中 |
| 摘要区页码 | 罗马数字（Ⅰ, Ⅱ, Ⅲ...） |
| 正文区页码 | 阿拉伯数字（1, 2, 3...） |

## 常见问题

### Q1：编译报错 "Font not found"

**原因**：系统缺少所需字体。

**解决**：
- Windows：确保已安装宋体、黑体、楷体、仿宋、Times New Roman
- macOS：安装 [华文字体](https://support.apple.com/zh-cn/HT201374) 或修改 `njtech-thesis.cls` 中的字体设置为macOS自带字体
- Linux：安装 `fonts-wqy-microhei`、`fonts-wqy-zenhei` 等中文字体包

### Q2：编译报错 "Unable to open main.pdf"

**原因**：PDF文件被其他程序（如PDF阅读器）占用。

**解决**：关闭PDF阅读器后重新编译。

### Q3：目录页码不正确

**原因**：LaTeX需要多次编译以生成正确的交叉引用。

**解决**：连续运行 `xelatex main.tex` **两次**。

### Q4：如何修改页边距？

在 `njtech-thesis.cls` 中修改 `\geometry{...}` 部分的参数：

```latex
\geometry{
  top=2.54cm,      % 上边距
  bottom=2.54cm,   % 下边距
  left=3.17cm,     % 左边距
  right=3.17cm,    % 右边距
}
```

### Q5：如何添加附录？

在 `\makeacknowledgement` 之前添加：

```latex
\clearpage
\section*{附录}
\addcontentsline{toc}{section}{附录}
附录内容
```

## 许可证

本项目基于 [MIT License](https://opensource.org/licenses/MIT) 开源。

## 免责声明

本模板为非官方模板，仅供学习交流使用。使用前请确认是否符合你所在学院/学校的论文格式要求，如有差异请自行调整。因使用本模板导致的格式问题，作者不承担责任。

## 致谢

- 模板基于南京工业大学本科毕业设计（论文）Word格式模板制作
- 感谢 [ctex](https://ctex.org/) 宏包提供的中文排版支持
