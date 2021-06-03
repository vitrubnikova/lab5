program lr5_2;

var a,b,x,y:real;
  i, n:integer;

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
function arcth(x:real):real; begin arcth:=0.5*ln((x+1)/(x-1)) end;
function arth(x:real):real; begin arth:=0.5*ln((x+1)/(1-x)) end;
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
  writeln('Выполнил: студент гр. 1-100205 Трубникова В.А.');
  writeln('Вариант 18');
  writeln('| Аргументы | Функция | Формула |');
  writeln('| A | B | X |    Y    |    N    |');
for i:=1 to 3 do
  begin
  begin
  case i of
  1: begin a:=3.036; b:=7.222; x:=2.44; end;
  2: begin a:=4.6; b:=4.6; x:=2; end;
  3: begin a:=9.154; b:=4.094; x:=1.8; end;
  end;
  if abs(0.5*b-a/x)<=1e-10 then
    begin y:=0.236*power(cosech(b/a), 1.6) - arcth(power(a, 3)/b-0.81*x) * 0.61*power(b, a+b-2.41*x);
    n:=2 end
  else if (0.5*b-a/x)>0 then
    begin y:=arcctg(3.24*a/power(b, 4)/x) * power(arch(sqr(a)*b+2*x), 1.4) + 0.03*cth(a);
    n:=1 end
  else
    begin y:=0.372*ctg(sqr(a)-2.35*b*x) + exp(b) - logN(3, power(a, 4)*b);
    n:=3 end
  end;
  writeln('| ', a, ' ', b, ' ', x, y:12:6, ' ', n);
  end;
end.