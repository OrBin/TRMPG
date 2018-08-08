mkdir -p data/man/ && \
cd data/man/ && \
cp -PR /usr/share/man/man1/* . && \
find -type l -delete && \
gzip -d *.gz && \
cat ./* > ../manpages.txt && \
cd ../.. && \
rm -r data/man
