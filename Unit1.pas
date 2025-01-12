unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ZAbstractConnection, ZConnection, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, StdCtrls, Grids, DBGrids;

type
  TForm1 = class(TForm)
    ZConnection1: TZConnection;
    DataSource1: TDataSource;
    ZQuery1: TZQuery;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    ComboBox1: TComboBox;
    Label7: TLabel;
    Label8: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    DBGrid1: TDBGrid;
    procedure Clecker(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  selecta : integer;
  a : string;

implementation

{$R *.dfm}

procedure TForm1.Clecker(Sender: TObject);
begin
ZQuery1.sql.clear;
ZQuery1.SQL.Add('insert into kustomer values(null,"'+Edit1.Text+'","'+Edit2.Text+'","'+Edit5.Text+'","'+Edit4.Text+'","'+Edit3.Text+'","'+ComboBox1.Text+'")');
ZQuery1.ExecSQL;

ZQuery1.sql.Clear;
ZQuery1.SQL.Add('select * from kustomer');
ZQuery1.Open;
ShowMessage('Data Berhasil Disimpan');
Edit1.Enabled := false;
Edit2.Enabled := false;
Edit3.Enabled := false;
Edit4.Enabled := false;
Edit5.Enabled := false;
ComboBox1.Enabled := false;
button1.Enabled := True;
Button2.Enabled := false;
Button3.Enabled := false;
Button4.Enabled := false;
Button5.Enabled := false;
DBGrid1.Enabled := true;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
Edit1.Enabled := true;
Edit2.Enabled := true;
Edit3.Enabled := true;
Edit4.Enabled := true;
Edit5.Enabled := true;
ComboBox1.Enabled := true;
Button1.Enabled := false;
Button2.Enabled := true;
Button5.Enabled := true;
DBGrid1.Enabled := false;
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
selecta := combobox1.itemindex;
if selecta = 0 then
  Label8.Caption := '10%'
else
  Label8.Caption := '5%';
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
with ZQuery1 do
begin
  sql.Clear;
  sql.add('update kustomer set nik="'+Edit1.Text+'",nama="'+Edit2.Text+'",telp="'+Edit5.Text+'",email="'+Edit4.Text+'",alamat="'+Edit3.Text+'",member="'+ComboBox1.Text+'" where id ="'+a+'"');
  ExecSQL;

  SQL.Clear;
  sql.Add('select * from kustomer');
  open;
end;
ShowMessage('Data Berhasil Dirubah');
Edit1.Enabled := false;
Edit2.Enabled := false;
Edit3.Enabled := false;
Edit4.Enabled := false;
Edit5.Enabled := false;
ComboBox1.Enabled := false;
Button1.Enabled := true;
Button2.Enabled := false;
Button3.Enabled := false;
Button4.Enabled := false;
Button5.Enabled := false;
DBGrid1.Enabled := true;
end;

procedure TForm1.DBGrid1CellClick(Column: TColumn);
begin
edit1.Text := ZQuery1.Fields[1].AsString;
edit2.Text := ZQuery1.Fields[2].AsString;
edit5.Text := ZQuery1.Fields[3].AsString;
edit4.Text := ZQuery1.Fields[4].AsString;
edit3.Text := ZQuery1.Fields[5].AsString;
ComboBox1.text := ZQuery1.Fields[6].AsString;
a:= ZQuery1.Fields[0].AsString;
Button1.Enabled := false;
button3.Enabled := True;
Button2.Enabled := True;
Button4.Enabled := True;
Button5.Enabled := True;
Edit1.Enabled := true;
Edit2.Enabled := true;
Edit3.Enabled := true;
Edit4.Enabled := true;
Edit5.Enabled := true;
ComboBox1.Enabled := true;
DBGrid1.Enabled := false;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
Edit1.Enabled := false;
Edit2.Enabled := false;
Edit3.Enabled := false;
Edit4.Enabled := false;
Edit5.Enabled := false;
ComboBox1.Enabled := false;
Button2.Enabled := false;
Button3.Enabled := false;
Button4.Enabled := false;
Button5.Enabled := false;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
Edit1.Text := '';
Edit2.Text := '';
Edit3.Text := '';
Edit4.Text := '';
Edit5.Text := '';
ComboBox1.Text := '';
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
with ZQuery1 do
begin
  sql.Clear;
  sql.add('delete from kustomer where id = "'+a+'" ');
  execsql;

  sql.Clear;
  sql.add('select * from kustomer');
  open;
end;
ShowMessage('Data Berhasil Dihapus');
Edit1.Enabled := false;
Edit2.Enabled := false;
Edit3.Enabled := false;
Edit4.Enabled := false;
Edit5.Enabled := false;
ComboBox1.Enabled := false;
Button2.Enabled := false;
Button3.Enabled := false;
Button4.Enabled := false;
Button5.Enabled := false;
Button1.Enabled := true;
DBGrid1.Enabled := true;
end;

end.
