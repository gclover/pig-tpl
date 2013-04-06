
pig-tpl
=======

pig -x local -p input=data/sample.txt -p output=output tpl.pig
pig -x local -m tpl.params tpl.pig
