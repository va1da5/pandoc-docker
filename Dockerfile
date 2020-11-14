FROM archlinux:20200908

WORKDIR /usr/share/pandoc/data/templates

RUN pacman -Sy \
  && pacman -S --noconfirm unzip pandoc pandoc-crossref \
  texlive-core texlive-fontsextra texlive-latexextra texlive-publishers texlive-langextra \
  && pacman -Scc --noconfirm\
  && curl -s -L https://github.com/Wandmalfarbe/pandoc-latex-template/releases/download/v1.6.0/Eisvogel-1.6.0.zip -o Eisvogel.zip \
  && unzip Eisvogel.zip \
  && mv eisvogel.tex eisvogel.latex \
  && rm -rf Eisvogel.zip

WORKDIR /