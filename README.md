# TRMPG: torch-rnn man-page generator
Man-page generation, using [jcjohnson/torch-rnn](https://github.com/jcjohnson/torch-rnn).

Docker image is based on [crisbal/docker-torch-rnn](https://github.com/crisbal/docker-torch-rnn).

## Available tags
TODO

## Usage
### CPU Only
1. Run the container

    ```docker run -it orbin/trmpg:base```

2. Train 

    ```
    th train.lua \
    -input_h5 data/manpages.h5 \
    -input_json data/manpages.json \
    -gpu -1
    ```

4. Sample, save and view the generated man-page

    __Note__: the checkpoint numbers are multiples of 1000.
    
    ```./sample_checkpoint.sh <checkpoint number>```

