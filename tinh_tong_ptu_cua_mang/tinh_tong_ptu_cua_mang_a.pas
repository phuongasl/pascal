{Copyright by Phuong}
{Tim tong cua phan tu}
program Suml;
uses crt;
const nmax=100;
type MyArray = array[1..nmax] of integer;
var A: MyArray;
    s, n, i, k: integer;
begin
    clrscr;
    randomize;
    write('Nhap n = ');
    readln(n); {Tao ngau nhien mang gom n so nguyen}
        for i:= 1 to n do A[i]:= random(300) - random(300);
        for i:= 1 to n do write(A[i]:5); {In ra mang vua tao}
    writeln;
    write('Nhap k = ');
    readln(k);
        s:=0;
        for i:=1 to n do
            if A[i] mod k = 0 then s:=s+A[i];
        writeln('Tong can tinh la: ',s);
    readln
end.
