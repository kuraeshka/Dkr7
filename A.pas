﻿Unit A;
uses GraphABC;
procedure Draw(x, y, l, u, c: Real; t : Integer);
procedure Draw2(Var x, y: Real; l, u : Real; t : Integer);
begin
    Draw(x, y, l, u, c, t);
    x := x + l*cos(u);
    y := y - l*sin(u);
end;
begin
    if t > 0 then
    begin
      if c=3 then
        begin
        l := l/3;
        Draw2(x, y, l, u, t-1);
        Draw2(x, y, l, u-pi/3, t-1);
        Draw2(x, y, l, u+pi/3, t-1);
        Draw2(x, y, l, u, t-1);
        end
        else 
        begin
        l := l/3;
        Draw2(x, y, l, u, t-1);
        Draw2(x, y, l, u+pi/3, t-1);
        Draw2(x, y, l, u-pi/3, t-1);
        Draw2(x, y, l, u, t-1);
        end;
    end
    else
        Line(Round(x), Round(y), Round(x+cos(u)*l), Round(y-sin(u)*l))
end;
BEGIN
end.