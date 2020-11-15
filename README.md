# Markdown to PDF Using PanDoc

This repo will help you to build a dedicated container image with PanDoc and Latex for creating professional looking PDF file from Markdown files.

## Build

```bash
docker build -t pandoc .
```

## Usage

```bash
# start the container
docker run --rm -it -v "${PWD}:/${PWD##*/}" -w "/${PWD##*/}" --user=$(id -u) pandoc

# generate fancy PDF file from Markdown file
pandoc some-file.md \
-o some-file.pdf \
--from markdown+yaml_metadata_block+raw_html \
--template eisvogel \
--table-of-contents \
--toc-depth 6 \
--number-sections \
--top-level-division=chapter \
--filter pandoc-crossref \
--highlight-style tango
```

## PanDoc Templates

- [Pandoc Starter Pack](https://github.com/jez/pandoc-starter)
- [Eisvogel](https://github.com/Wandmalfarbe/pandoc-latex-template)
- [Offensive Security Exam Report Template in Markdown](https://github.com/noraj/OSCP-Exam-Report-Template-Markdown)

## References

- [Pandoc User’s Guide](https://pandoc.org/MANUAL.html)
- [Pandoc Extras](https://pandoc.org/extras.html)
- [pandoc-crossref](https://lierdakil.github.io/pandoc-crossref/)
- [Pandoc Syntax Highlighting Examples](https://www.garrickadenbuie.com/blog/pandoc-syntax-highlighting-examples/)
- [Workflow With Pandoc Markdown Example [video]](https://www.youtube.com/watch?v=lMIlNsi3eAY&ab_channel=BrodieRobertson)
- [Customizing pandoc to generate beautiful pdf and epub from markdown](https://learnbyexample.github.io/customizing-pandoc/)
