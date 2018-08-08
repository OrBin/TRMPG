th sample.lua -checkpoint cv/checkpoint_$1.t7 -length 30000 -gpu -1 > generated_man_page_$1.txt
man ./generated_man_page_$1.txt

