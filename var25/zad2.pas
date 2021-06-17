program zad2;
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
writeln('Программирование разветвляющихся и циклических вычислительных процессов');
writeln('Выполнил: студент гр. 1-100205 Ягубов М.С.');
writeln('Вариант 25');

for i:=1 to 3 do
  begin
  begin
  case i of
  1: begin a:=4.524; b:=59.67; x:=1.44 end; 
  2: begin a:=7.8; b:=39; x:=2; end; 
  3: begin a:=13.182; b:=22.23; x:=2.76; end; 
  end;

  if abs(0.4*b-a*x) <= 1e-10 then 
  begin y:=0.492*power(arsh(a+5.7*b-power(x, 4)), 0.5) + 0.21*th(sqr(a)/-2.98/b) - power(cth(power(x, 4)/4.49/a), 2.9);
  nf:=2 end // 2-ое условие
  else if 0.4*b-a*x > 0 then
  begin y:=cosec(b+sqr(x)) + 0.345*power(sh(5.17*power(x, 3)/a), 0.1) + arctan(b-0.06*x);
  nf:=1 end // 1-ое условие
  else
  begin y:=ch(2.65*x/sqr(a)) - 0.128*sqr(arth(a/b)) * power(x, a-0.53*b);
  nf:=3 end // 3-е условие
end;

writeln('Аргументы: ', a, ', ', b, ', ', x, '; Формула: ', nf, '; Функция:', y:12:6);

end
end.