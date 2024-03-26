## Building
Pull this repo, then
```
export LD_LIBRARY_PATH=.:$LD_LIBRARY_PATH
```
Then compile the program by `python3 build.py pipe-cages`, for example.

## Running `pipe-cages`
```
./pipe-cages {log2 of write buffer size} {log2 of read buffer size}
```
If no argument provided, the default is 16 for both args

## NOTE!
The `OUTLOOP = 1UL << 4` is just 8, so we will iterate the outer loop for 8 times, 8 * 2^30 bits = 1 GigaByte