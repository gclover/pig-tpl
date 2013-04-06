-- -p  
-- INPUT : 
-- OUTPUT :


register 'lib/*.jar';


a = load '$INPUT' as (f1:int, f2:int, f3:int);
a = foreach a generate f1, f2+1, f3;

store a into '$OUTPUT';






