clear all
clc
s = serial('COM3');
set(s,'BaudRate',9600)
fopen(s)
out=[];
while str2double(fscanf(s)) < 33 %a quantidade de desejada neste caso 33
    out = [out; str2double(fscanf(s))];
end
fclose(s); delete(s);
