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
writeln('Выполнил: студент гр. 1-100205 Трубникова В.А.');
writeln('Вариант 18');

  while i<=3 do
  
  begin
  case i of
  1: begin a:=45; b:=0.17; x:=1.617 end; 
  2: begin a:=30; b:=0.1; x:=2.1; end; 
  3: begin a:=24.3; b:=0.052; x:=2.499; end; 
  end;
  
  if abs(x/0.7/b-a) <= 1e-10 then 
  begin y:=0.1*power(sech(2.52*power(b, 3)+x), 1.8) - exp(a*-0.81*b+x) * power(sh(5.89*b/x), 1.3);
  nf:=2 end // 2-ое условие
  else if x/0.7/b-a > 0 then
  begin y:=0.168*power(b, x/a) * power(arcth(power(x, 3)-0.05*b), 2.9) - logN(8, 5.07*power(b, 4)+x);
  nf:=3 end // 3-ое условие
  else
  begin y:=tg(a+b+2.44*x) + 0.07*power(cosech(4.21*b/sqr(x)), 0.1) + log10(2.54*power(a, 3)-b*x);
  nf:=1 end; // 1-е условие

inc (i);

writeln('Аргументы: ', a, ', ', b, ', ', x, '; Формула: ', nf, '; Функция:', y:12:6);

end
end.