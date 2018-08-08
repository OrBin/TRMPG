# TRMPG: torch-rnn man-page generator
Man-page generation, using [jcjohnson/torch-rnn](https://github.com/jcjohnson/torch-rnn).

Docker image is based on [crisbal/docker-torch-rnn](https://github.com/crisbal/docker-torch-rnn).

## Available tags
* `orbin/trmpg:base`
    * Based on `crisbal/torch-rnn:base`
    * Allows usage of torch-rnn in CPU mode
* _Coming soon:_ `orbin/trmpg:cuda6.5`
    * Based on `crisbal/torch-rnn:cuda6.5` 
    * Allows usage of torch-rnn in GPU mode (Cuda 6.5 support)
    * Only run with nvidia-docker https://github.com/NVIDIA/nvidia-docker
* _Coming soon:_ `orbin/trmpg:cuda7.5`
    * Based on `crisbal/torch-rnn:cuda7.5`
    * Allows usage of torch-rnn in GPU mode (Cuda 7.5 support)
    * Only run with nvidia-docker https://github.com/NVIDIA/nvidia-docker


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

