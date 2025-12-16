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
  cxLabel;

type
  TMainForm = class(TForm)
    dxReport1: TdxReport;
    dxBackendDataConnectionManager1: TdxBackendDataConnectionManager;
    btnShowDesigner: TcxButton;
    btnViewReport: TcxButton;
    dxBackendDataConnectionManager1dxBackendDataSetJSONConnection1: TdxBackendDataSetJSONConnection;
    itmProducts: TdxBackendDataSetCollectionItem;
    itmCategories: TdxBackendDataSetCollectionItem;
    cxGrid1: TcxGrid;
    gvCategories: TcxGridDBTableView;
    gvCategoriesCategoryID: TcxGridDBColumn;
    gvCategoriesCategoryName: TcxGridDBColumn;
    gvCategoriesDescription: TcxGridDBColumn;
    gvProducts: TcxGridDBTableView;
    gvProductsProductID: TcxGridDBColumn;
    gvProductsProductName: TcxGridDBColumn;
    gvProductsSupplierID: TcxGridDBColumn;
    gvProductsCategoryID: TcxGridDBColumn;
    gvProductsQuantityPerUnit: TcxGridDBColumn;
    gvProductsUnitPrice: TcxGridDBColumn;
    gvProductsUnitsInStock: TcxGridDBColumn;
    gvProductsUnitsOnOrder: TcxGridDBColumn;
    gvProductsReorderLevel: TcxGridDBColumn;
    gvProductsDiscontinued: TcxGridDBColumn;
    gvProductsEAN13: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1Level2: TcxGridLevel;
    btnSetLanguageUS: TcxButton;
    btnSetLanguageDE: TcxButton;
    lblSelectLanguage: TcxLabel;
    procedure btnShowDesignerClick(Sender: TObject);
    procedure btnViewReportClick(Sender: TObject);
    procedure btnSetLanguageUSClick(Sender: TObject);
    procedure btnSetLanguageDEClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

procedure TMainForm.btnSetLanguageDEClick(Sender: TObject);
begin
  dxReport1.Language := 'de-DE'
end;

procedure TMainForm.btnSetLanguageUSClick(Sender: TObject);
begin
  dxReport1.Language := 'en-US'
end;

procedure TMainForm.btnShowDesignerClick(Sender: TObject);
begin
  dxReport1.ShowDesigner;
end;

procedure TMainForm.btnViewReportClick(Sender: TObject);
begin
  dxReport1.ShowViewer;
end;

end.
