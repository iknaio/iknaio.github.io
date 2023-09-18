FROM jekyll/jekyll:4.2.0

RUN apk add imagemagick

#ARG UID=1000

#RUN usermod -u $UID jekyll
