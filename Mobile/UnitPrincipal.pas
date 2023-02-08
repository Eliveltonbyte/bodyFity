unit UnitPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.Ani, FMX.ListBox;

type
  TFrmPrincipal = class(TForm)
    Layout1: TLayout;
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    Layout2: TLayout;
    recDashTreino: TRectangle;
    Label3: TLabel;
    Rectangle1: TRectangle;
    Rectangle2: TRectangle;
    Layout3: TLayout;
    Label4: TLabel;
    Image2: TImage;
    FloatAnimation1: TFloatAnimation;
    recDashPontos: TRectangle;
    Label6: TLabel;
    Layout4: TLayout;
    Label7: TLabel;
    Image4: TImage;
    FloatAnimation3: TFloatAnimation;
    Rectangle3: TRectangle;
    Rectangle4: TRectangle;
    Label5: TLabel;
    Rectangle5: TRectangle;
    Label8: TLabel;
    Image3: TImage;
    Label9: TLabel;
    lbTreinos: TListBox;
    procedure FormShow(Sender: TObject);
    procedure lbTreinosItemClick(const Sender: TCustomListBox;
      const Item: TListBoxItem);
  private
    procedure CarregarTreinos;
    procedure AddTreino(id_treino: integer; titulo, subTitulo: string);

    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.fmx}

uses Frame.Treino, UnitTreinoDetalhe;

procedure TFrmPrincipal. AddTreino(id_treino: integer; titulo, subTitulo: string);
var
  item: TListBoxItem;
  frame: TFrameTreino;
begin
  item :=  TListBoxItem.Create(lbTreinos);
  item.Selectable := false;
  item.Text := '';
  item.Height := 90;
  item.Tag := id_treino;

  //Frame...
  frame := TFrameTreino.Create(item);
  frame.lblTitulo.Text := titulo;
  frame.lblSubtitulo.Text := subtitulo;

  item.AddObject(frame);
  lbTreinos.AddObject(item);

end;

procedure TFrmPrincipal.CarregarTreinos;
begin
    AddTreino(1,'Segunda-feira', 'Abdômen e Pernas');
    AddTreino(2,'Terça-feira', 'Tríceps,Abdômen e Pernas');
    AddTreino(3,'Quarta-feira', 'Lombar e Abdômen');
    AddTreino(4,'Quinta-feira', 'Tríceps,Abdômen e Pernas');
    AddTreino(5,'Sexta-feira', 'Abdômen e Pernas');
    AddTreino(6,'Sábado', 'Tríceps,Abdômen e Pernas');
    AddTreino(7,'Domingo', 'Abdômen e Pernas');
end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
  CarregarTreinos;
end;

procedure TFrmPrincipal.lbTreinosItemClick(const Sender: TCustomListBox;
  const Item: TListBoxItem);
begin
    if NOT Assigned(FrmTreinoDetalhe) then
      Application.CreateForm(TFrmTreinoDetalhe, FrmTreinoDetalhe);

      FrmTreinoDetalhe.show;

end;

end.
