FROM gitpod/workspace-full

RUN brew install R
RUN sudo apt-get install libxml2-dev
RUN R CMD BATCH test.r && cat test.r.Rout
