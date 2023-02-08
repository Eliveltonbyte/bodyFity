unit UnitLogin;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TabControl,
  FMX.Objects, FMX.Layouts, FMX.StdCtrls, FMX.Controls.Presentation, FMX.Edit;

type
  TFrmLogin = class(TForm)
    Layout1: TLayout;
    Image1: TImage;
    TabControl: TTabControl;
    tabLogin: TTabItem;
    TabConta: TTabItem;
    rectLogin: TRectangle;
    Rectangle1: TRectangle;
    Edit1: TEdit;
    Edit2: TEdit;
    rectBtnLogin: TRectangle;
    btnLogin: TSpeedButton;
    Label1: TLabel;
    Rectangle3: TRectangle;
    Rectangle4: TRectangle;
    Edit3: TEdit;
    Edit4: TEdit;
    Rectangle5: TRectangle;
    SpeedButton1: TSpeedButton;
    Label2: TLabel;
    Edit5: TEdit;
    procedure btnLoginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation

{$R *.fmx}

uses UnitPrincipal;

procedure TFrmLogin.btnLoginClick(Sender: TObject);
begin
    if NOT Assigned(FrmPrincipal) then
        application.CreateForm(TFrmPrincipal, FrmPrincipal);

    application.MainForm:= FrmPrincipal;
    FrmPrincipal.show;
    FrmLogin.Close;
end;

end.
