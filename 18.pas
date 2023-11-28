var
  inputString: string;
  count, i: integer;

begin
  write('Введите строку: ');
  readln(inputString);

  count := 0;

  for i := 1 to length(inputString) - 2 do
  begin
    if (inputString[i] = 'a') and (inputString[i+1] = 'b') and (inputString[i+2] = 'a') then
    begin
      count := count + 1;
    end;
  end;

  writeln('Количество вхождений "aba" в строке: ', count);
end.