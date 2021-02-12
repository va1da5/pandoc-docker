FROM pandoc/crossref

WORKDIR /usr/share/pandoc/data/templates

RUN apk update \
  && apk add bash curl unzip p7zip make texlive \
  texmf-dist-formatsextra texmf-dist-latexextra texmf-dist-fontsextra texmf-dist-publishers 
# add texlive-full for installing full LaTex suite

WORKDIR /
