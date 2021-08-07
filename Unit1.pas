unit Unit1;

interface

uses
    Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
    System.Classes, Vcl.Graphics,
    Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin;

type
    TArr = array of string;

    TForm1 = class(TForm)
        EncryptButton: TButton;
        DecryptButton: TButton;
        Label1: TLabel;
        Label2: TLabel;
        SpinEdit1: TSpinEdit;
        ResultLabel: TMemo;
    Edit1: TMemo;
        procedure EncryptButtonClick(Sender: TObject);
        procedure DecryptButtonClick(Sender: TObject);
        procedure SpinEdit1Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    private
        { Private declarations }
    public
        { Public declarations }
    end;

var
    Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.DecryptButtonClick(Sender: TObject);
var
    i, A: Integer;
    MyText, ResultText: String;
begin
    MyText := Edit1.Text;
    ResultText := '';
    for i := 1 to High(MyText) do
    begin
        if ((ord(MyText[i]) - SpinEdit1.Value) < 97) and
          (MyText[i] in ['a' .. 'z']) then
        begin
            A := (ord(MyText[i]) - 97);
            A := SpinEdit1.Value - A;
            A := 123 - A;
            ResultText := ResultText + chr(A)
        end
        else if ((ord(MyText[i]) - SpinEdit1.Value) < 65) and
          (MyText[i] in ['A' .. 'Z']) then
        begin
            A := (ord(MyText[i]) - 65);
            A := SpinEdit1.Value - A;
            A := 91 - A;
            ResultText := ResultText + chr(A)
        end
        else if ((ord(MyText[i]) - SpinEdit1.Value) < 1072) and
          (ord(MyText[i]) >= 1072) and (ord(MyText[i]) <= 1103) then
        begin
            A := (ord(MyText[i]) - 1072);
            A := SpinEdit1.Value - A;
            A := 1104 - A;
            ResultText := ResultText + chr(A)
        end
        else if ((ord(MyText[i]) - SpinEdit1.Value) < 1040) and
          (ord(MyText[i]) >= 1040) and (ord(MyText[i]) <= 1071) then
        begin
            A := (ord(MyText[i]) - 1040);
            A := SpinEdit1.Value - A;
            A := 1072 - A;
            ResultText := ResultText + chr(A)
        end
        else if MyText[i] in [',', '.', ' ', '!', '?', ')', '(', #13, #10,'0'..'9']then
            ResultText := ResultText + MyText[i]
        else
            ResultText := ResultText + chr(ord(MyText[i]) - SpinEdit1.Value);
    end;
    ResultLabel.Lines.Add(ResultText);
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
     ResultLabel.Lines.Clear;
end;

procedure TForm1.EncryptButtonClick(Sender: TObject);
var
    i, A: Integer;
    MyText, ResultText: String;
begin
    MyText := Edit1.Text;
    ResultText := '';
    for i := 1 to High(MyText) do
    begin
        if ((ord(MyText[i]) + SpinEdit1.Value) > 122) and
          (MyText[i] in ['a' .. 'z']) then
        begin
            A := (ord(MyText[i]) + SpinEdit1.Value) - 122;
            A := 96 + A;
            ResultText := ResultText + chr(A)
        end
        else if ((ord(MyText[i]) + SpinEdit1.Value) > 90) and
          ((MyText[i] in ['A' .. 'Z'])) then
        begin
            A := (ord(MyText[i]) + SpinEdit1.Value) - 90;
            A := 64 + A;
            ResultText := ResultText + chr(A)
        end
        else if (ord(MyText[i]) >= 1072) and (ord(MyText[i]) <= 1103) and
          ((ord(MyText[i]) + SpinEdit1.Value) > 1103) then
        begin
            A := (ord(MyText[i]) + SpinEdit1.Value) - 1103;
            A := 1071 + A;
            ResultText := ResultText + chr(A)
        end
        else if (ord(MyText[i]) >= 1040) and (ord(MyText[i]) <= 1071) and
          ((ord(MyText[i]) + SpinEdit1.Value) > 1071) then
        begin
            A := (ord(MyText[i]) + SpinEdit1.Value) - 1071;
            A := 1039 + A;
            ResultText := ResultText + chr(A)
        end
        else if MyText[i] in [',', '.', ' ', '!', '?', ')', '(', #10, #13,'0'..'9'] then
            ResultText := ResultText + MyText[i]

        else
            ResultText := ResultText + chr(ord(MyText[i]) + SpinEdit1.Value);
    end;
    ResultLabel.Lines.Add(ResultText);
end;

procedure TForm1.SpinEdit1Change(Sender: TObject);
begin
    ResultLabel.Lines.Clear;
end;

end.
