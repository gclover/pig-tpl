
-- Register libraries
register 'lib/*.jar';

-- Register python UDF 
register 'tpl.py' using jython as exp;

-- Define cmdline params
%default input '-';
%default output '-';


a = load '$input' as (f1:int, f2:int, f3:int);
a = foreach a generate f1, f2+1 as f2, f3;
a = foreach a generate f1, exp.doub(f2), f3;

store a into '$output';






