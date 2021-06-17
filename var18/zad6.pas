program zad6;
var	a, b, x, y: real;
i, nf: integer;

function sec(x:real):real; begin sec:=1/cos(x) end;
function cosec(x:real):real; begin cosec:=1/sin(x) end;
function tg(x:real):real; begin tg:=sin(x)/cos(x) end;
function ctg(x:real):real; begin ctg:=cos(x)/sin(x) end;
function sh(x:real):real; begin sh:=(exp(x)-exp(-x))/2 end;
function sech(x:real):real; begin sech:=2/(exp(x)+exp(-x)) end;
function cosech(x:real):real; begin cosech:=2/(exp(x)-exp(-x)) end;
function ch(x:real):real; begin ch:=(exp(x)+exp(-x))/2 end;
function th(x:real):real; begin th:=(exp(x)-exp(-x))/(exp(x)+exp(-x)) end;
function cth(x:real):real; begin cth:=(exp(x)+exp(-x))/(exp(x)-exp(-x)) end;
function arsh(x:real):real; begin arsh:=ln(x+sqrt(x*x+1)) end;
function arch(x:real):real; begin arch:=ln(x+sqrt(x*x-1)) end;
function arth(x:real):real; begin arth:=0.5*ln((x+1)/(1-x)) end;
function arcth(x:real):real; begin arcth:=0.5*ln((x+1)/(x-1)) end;
function arcctg(x:real):real; begin arcctg:=Pi/2-arctan(x) end;
function arcsin(x:real):real; begin
if x=1 then arcsin:=Pi/2
else if x=-1 then arcsin:=-Pi/2
else arcsin:=arctan(x/sqrt(1-x*x)) end;
function arccos(x:real):real; begin
if x=1 then arccos:=0
else if x=-1 then arccos:=Pi
else arccos:=Pi/2-arctan(x/sqrt(1-x*x)) end;

begin
inc (i);

writeln('Программирование разветвляющихся и циклических вычислительных процессов');
writeln('Выполнил: студент гр. 1-100205 Трубникова В.А.');
writeln('Вариант 18');

  while i<=3 do
  
  begin
  case i of
  1: begin a:=1.633; b:=36.762; x:=6.716 end; 
  2: begin a:=2.3; b:=27.85; x:=7.3; end; 
  3: begin a:=3.473; b:=26.179; x:=8.322; end; 
  end;
  
  if abs(b-3.5*x-a) <= 1e-10 then 
  begin y:=0.164*power(ctg(a/2.48/b+x), 0.2) * sech(a/6.2/b/x) + power(th(x/b), 1.3);
  nf:=2 end // 2-ое условие
  else if b-3.5*x-a > 0 then
  begin y:=0.086*log10(b/0.16/a) * 0.472*power(x, a) - 0.012*arctan(sqr(b)-0.58*x);
  nf:=1 end // 1-ое условие
  else
  begin y:=abs(-2.6*b) - power(cosec(x-b), 1.6) * 0.324*arcctg(b);
  nf:=3 end; // 3-е условие

inc (i);

writeln('Аргументы: ', a, ', ', b, ', ', x, '; Формула: ', nf, '; Функция:', y:12:6);

end
end.