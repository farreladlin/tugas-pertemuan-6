program soal5;
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

function HitungSuku(jenis, k : integer) : longint;
begin
    case jenis of
        1 : HitungSuku := JumlahDuaSuku(k);
        2 : HitungSuku := PangkatDua(k);
        3 : HitungSuku := Kuadrat(k);
        4 : HitungSuku := Deret4(k);
    end;
end;

procedure CetakBaris(jenis, banyak : integer);
var
    i : integer;          
begin
    for i := 1 to banyak do
    begin
        write(HitungSuku(jenis, i));    //cetak suku ke-i
        if i < banyak then
        write(', ');                  //koma hanya di antara suku
    end;
    writeln;                          //pindah baris 
end;

{ ===== Program utama ===== }
begin
clrscr;
  write('Input : ');
  readln(n);                        
  writeln('Output:');

  CetakBaris(1, n);                 //deret a
  CetakBaris(2, n);                 //deret b
  CetakBaris(3, n);                 //deret c
  CetakBaris(4, n);                 //deret d

  readln;                           
end.
