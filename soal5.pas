program DeretBilangan;
uses crt;

var
    n, i : integer;   


function JumlahDuaSuku(k : integer) : longint;
var
    a, b, t, j : longint;  
begin
    a := 1;                 
    b := 1;                 
    for j := 3 to k do      //mulai dari suku ke-3 sampai suku ke-k
    begin
        t := a + b;           //suku baru = jumlah dua suku sebelumnya 
        a := b;               //geser: a jadi suku sebelumnya yang baru 
        b := t;               //geser: b jadi suku baru 
    end;
    JumlahDuaSuku := b;     //kembalikan nilai suku ke-k 
end;

function PangkatDua(k : integer) : longint;
var
    j : integer;
    h : longint;           
begin
    h := 1;                
    for j := 2 to k do
        h := h * 2;          //tiap suku berikutnya dua kali suku sebelumnya 
    PangkatDua := h;        //kembalikan nilai suku ke-k 
end;


function Kuadrat(k : integer) : longint;
begin
    Kuadrat := k * k;       //bilangan dikali dirinya sendiri 
end;

function Deret4(k : integer) : longint;
begin
    Deret4 := k * (k + 1);
end;

{ ===== Program utama ===== }
begin
    clrscr;
    write('Input : ');
    readln(n);              
    writeln('Output:');

    //Deret a: jumlah dua suku sebelumnya
    for i := 1 to n do
    begin
        write(JumlahDuaSuku(i));      //panggil fungsi untuk suku ke-i
        if i < n then write(', ');    //koma hanya di antara suku, bukan setelah suku terakhir
    end;
    writeln;                       

    //Deret b: pangkat 2 
    for i := 1 to n do
    begin
        write(PangkatDua(i));
        if i < n then write(', ');
    end;
    writeln;

    //Deret c: kuadrat
    for i := 1 to n do
    begin
        write(Kuadrat(i));
        if i < n then write(', ');
    end;
    writeln;

    //Deret d: k x (k+1)
    for i := 1 to n do
    begin
        write(Deret4(i));
        if i < n then write(', ');
    end;
    writeln;

    readln;                  
end.