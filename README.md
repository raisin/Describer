# Introduction
describer.rb takes a ruby file as input and generates the following for the ruby code in the file.

1. A Tokenization
2. AST Nodes
3. YARV Instructions

# Instructions
1. Place the input file in the sample_code folder.
2. Run `ruby describer.rb 'sample_code/sample_code.rb'`.

# Compiling the LaTeX slides
On MacOSX

1. Install [MacTex](https://tug.org/mactex/mactex-download.html) or other LaTeX program.
2. Download a LaTeX editor such as [Texmaker](http://www.xm1math.net/texmaker/download.html#macosx)
3. Open Texmaker and select Quick Build PDFLaTeX.
4. Select Tools PDFLaTeX (or press F6).
5. The pdf file of all the slides should be generated in the slides directory.
