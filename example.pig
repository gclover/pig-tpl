
-- Register libraries
register 'lib/*.jar';

-- Define cmdline params
%default input '-';
%default output '-';


a = load '$input' as (f1:int, f2:int, f3:int);
a = foreach a generate f1, f2+1, f3;

store a into '$output';






