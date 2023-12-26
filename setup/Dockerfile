FROM greyltc/archlinux
ARG TAGS
WORKDIR /usr/local/bin
RUN pacman -Syu --noconfirm && pacman -S ansible sudo vi --noconfirm
COPY . .

