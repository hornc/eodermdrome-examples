# Eodermdrome implementation of +-= decimal-counter-with-output
by Salpynx 2019 CC-0

https://esolangs.org/wiki/+-#.2B-.3D
in
https://esolangs.org/wiki/Eodermdrome

This is a serious implementation of an (eventually) 4 digit decimal counter with output in the graph-rewriting esolang Eodermdrome, in the form of an 'interpreter' for the joke esolang variant +-=.

Input:
* `+` increments the counter
* `-` decrements the counter
* `=` prints the current value of the counter to STDOUT

It is currently incomplete (3rd digit counter output is not fully implemented) and may contain some other bugs, but should be generally usable to prove the counter technique. You have to input over 100 characters to hit the current limit, and at the intended limit of 9999, your CPU is going to be spinning like crazy. There are more efficient ways of counting, but this proves a concept.  

Examples of usage using the Python iterpreter:

    runeo ./plus-minus.eo <<< "+++="
    3

    runeo ./plus-minus.eo <<< "+=+=++=++=---=--=-="
    1 
    2 
    4 
    6 
    3 
    1 
    0

This counts (with output) successfully to 99, and then beyond, showing what is and isn't currently implemented:

    runeo ./plus-minus.eo <<< "+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+="

## TODO
* finish clean output for 100s `100s16` => `116`
* implement the 1000s counter
* refactor down some of the substitutions

