uses GraphABC, A;
 var y,x,t,l,u,c:integer;
 Procedure KeyDown(k: integer);
begin
 case K of
    VK_Down: y += 20;
    VK_Up: y -= 20; 
    VK_Left: x -= 20;  
    VK_Right: x += 20;
    VK_Escape: halt(1); //выход
    VK_A: 
    begin
    if l < 500 then l+=10; // + маштаб
    end;
    VK_Z: 
    begin 
    if l > 20 then l-=10; // - маштаб
    end;
    VK_S: if t < 7 then t+=1; // + глубина
    VK_X: if t > 0 then t-=1; // - глубина
   end;
 Window.Clear; 
    Draw(10+x-l, 354+y, 400+l, pi/3, 1, 0+t);
    Draw(410+x, 354+y, 400+l, pi, 2, 0+t);
    Draw(410+x, 354+y, 400+l, pi-pi/3, 3, 0+t);
 Redraw;
   end;
begin
  SetWindowSize(700,850);
  SetWindowCaption('Фракталы: Снежинка Коха');
    KeyDown(1);
     OnkeyDown += KeyDown;
end.