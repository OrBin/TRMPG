FROM crisbal/torch-rnn:base

RUN apt install man -y

COPY create_corpus.sh /root/torch-rnn/
COPY sample_checkpoint.sh /root/torch-rnn/

#WORKDIR /root/torch-rnn

RUN ./create_corpus.sh

RUN python scripts/preprocess.py --input_txt data/manpages.txt \
--output_h5 data/manpages.h5 \
--output_json data/manpages.json \
--encoding bytes


