#!/bin/bash
#commands.sh
hfst-lexc chv.lexc -o chv.lexc.hfst;
hfst-fst2strings chv.lexc.hfst ;
hfst-fst2txt chv.lexc.hfst ;
hfst-fst2txt chv.lexc.hfst | python3 att2dot.py  | dot -Tpng -ochv.transducerlexc.png;
