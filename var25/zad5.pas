program zad5;
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
writeln('Выполнил: студент гр. 1-100205 Ягубов М.С.');
writeln('Вариант 25');

  while i<=3 do
  
  begin
  case i of
  1: begin a:=7.31; b:=0.756; x:=196.08 end; 
  2: begin a:=8.6; b:=1.2; x:=103.2; end; 
  3: begin a:=13.072; b:=2.04; x:=80.496; end; 
  end;
  
  if abs(a*b-0.1*x) <= 1e-10 then 
  begin y:=power(arctan(b/power(x, 3)), 0.9) + ch(a/power(x, 3)) * power(log10(power(x, 3)/a), 0.9);
  nf:=2 end // 2-ое условие
  else if a*b-0.1*x > 0 then
  begin y:=0.297*arsh(a*b) + 0.592*power(11.911, 3.9*a/b/x) + arcth(a+0.89*b/x);
  nf:=3 end // 3-ое условие
  else
  begin y:=arcsin(b) - power(tg(a/2.63/power(b, 3)/x), 2.4) * 0.64*sec(4.48*a*b/x);
  nf:=1 end; // 1-е условие

inc (i);

writeln('Аргументы: ', a, ', ', b, ', ', x, '; Формула: ', nf, '; Функция:', y:12:6);

end
end.