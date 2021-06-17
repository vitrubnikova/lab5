program zad1;
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
writeln('Выполнил: студент гр. 1-100205 Трубникова В.А.');
writeln('Вариант 18');

for i:=1 to 3 do
  begin
  begin
  case i of
  1: begin a:=6.8; b:=5.06; x:=251.34 end; 
  2: begin a:=8.5; b:=9.2; x:=177; end; 
  3: begin a:=9.35; b:=11.408; x:=145.14; end; 
  end;

  if abs(0.1*x-b-a) <= 1e-10 then 
  begin y:=power(cosech(b/2.4/x), 1.8) - logN(5, x/a) + power(ctg(a-power(b, 4)/-0.47/x), 2.3);
  nf:=2 end // 2-ое условие
  else if 0.1*x-b-a > 0 then
  begin y:=cth(a/b) - power(sec(1.31*b-a), 1.3) + sin(b-7*a);
  nf:=1 end // 1-ое условие
  else
  begin y:=0.276*exp(b/3.13/a) + power(arcctg(b*3.34*x), 0.2) + 0.52*abs(6.57*a-power(b, 3)-x);
  nf:=3 end // 3-е условие
end;

writeln('Аргументы: ', a, ', ', b, ', ', x, '; Формула: ', nf, '; Функция:', y:12:6);

end
end.