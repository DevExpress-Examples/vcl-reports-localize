unit uMainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxClasses, dxReport, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,  cxButtons,
  dxBackend, cxControls, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, dxScrollbarAnnotations,
  Data.DB, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, dxBackend.ConnectionString.JSON.DataSet,
  dxBackend.ConnectionString.JSON, Vcl.StdCtrls, dxmdaset, uData, cxContainer,
  cxLabel, cxRadioGroup, cxGroupBox, dxCore, dxSkinsForm;

type
  TMainForm = class(TForm)
    dxReport1: TdxReport;
    dxBackendDataConnectionManager1: TdxBackendDataConnectionManager;
    btnDisplayDesigner: TcxButton;
    btnDisplayReport: TcxButton;
    dxBackendDataConnectionManager1dxBackendDataSetJSONConnection1: TdxBackendDataSetJSONConnection;
    itmProducts: TdxBackendDataSetCollectionItem;
    itmCategories: TdxBackendDataSetCollectionItem;
    rbtnGroupLocalization: TcxRadioGroup;
    rbtnSelectEnglishLocalization: TcxRadioButton;
    rbtnSelectGermanLocalization: TcxRadioButton;
    btnGroupDisplayDialog: TcxGroupBox;
    dxSkinController1: TdxSkinController;
    procedure FormCreate(Sender: TObject);
    procedure btnDisplayDesignerClick(Sender: TObject);
    procedure btnDisplayReportClick(Sender: TObject);
    procedure rbtnSelectEnglishLocalizationClick(Sender: TObject);
    procedure rbtnSelectGermanLocalizationClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

procedure TMainForm.FormCreate(Sender: TObject);
const
  // Path to a saved example report file
  AFileName = 'ExampleReport.repx';
begin
  // Load example report from a file
  if FileExists(AFileName) then
  begin
    dxReport1.ReportName := 'ExampleReport';
    dxReport1.Layout.LoadFromFile(AFileName);
  end;
end;

procedure TMainForm.btnDisplayDesignerClick(Sender: TObject);
begin
  // Display the DevExpress Report Designer dialog
  dxReport1.ShowDesigner;
end;

procedure TMainForm.btnDisplayReportClick(Sender: TObject);
begin
  // Display the DevExpress Report Viewer dialog
  dxReport1.ShowViewer;
end;

procedure TMainForm.rbtnSelectEnglishLocalizationClick(Sender: TObject);
begin
  // Switch Report UI to English
  dxReport1.Language := 'en-US';
end;

procedure TMainForm.rbtnSelectGermanLocalizationClick(Sender: TObject);
begin
  // Switch Report UI to German
  dxReport1.Language := 'de-DE';
end;

end.
