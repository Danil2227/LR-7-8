
var
  str: string;
  len, i: integer;
  xIndex, wIndex: integer;

begin
  writeln('Введите строку:');
  readln(str);

  len := length(str);
  xIndex := 0;
  wIndex := 0;

  for i := 1 to len do
  begin
    if str[i] = 'x' then
    begin
      xIndex := i;
      break;
    end
    else if str[i] = 'w' then
    begin
      wIndex := i;
      break;
    end;
  end;

  if (xIndex = 0) and (wIndex = 0) then
    writeln('В строке нет символов ''x'' и ''w''')
  else if xIndex < wIndex then
    writeln('Символ ''x'' встречается раньше символа ''w''')
  else if wIndex < xIndex then
    writeln('Символ ''w'' встречается раньше символа ''x''')
  else if xIndex > 0 then
    writeln('Символы ''x'' и ''w'' встречаются в одной позиции:', xIndex);

end.