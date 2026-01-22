#include <vcl.h>
#pragma hdrstop

#include "uMainForm.h"

#pragma package(smart_init)
#pragma link "cxButtons"
#pragma link "cxClasses"
#pragma link "cxControls"
#pragma link "cxGraphics"
#pragma link "cxLookAndFeelPainters"
#pragma link "cxLookAndFeels"
#pragma link "dxReport"
#pragma link "dxmdaset"
#pragma link "cxContainer"
#pragma link "cxRadioGroup"
#pragma link "cxGroupBox"
#pragma link "dxBackend"
#pragma link "dxBackend.ConnectionString.JSON"
#pragma link "dxBackend.ConnectionString.JSON.DataSet"
#pragma resource "*.dfm"
TMainForm *MainForm;

__fastcall TMainForm::TMainForm(TComponent* Owner)
	: TForm(Owner)
{
}

void __fastcall TMainForm::FormCreate(TObject *Sender)
{
	// Path to a saved example report file
	const String AFileName = "ExampleReport.repx";

	// Load example report from a file
	if (FileExists(AFileName))
	{
		dxReport1->ReportName = "ExampleReport";
		dxReport1->Layout->LoadFromFile(AFileName);
	}
}

void __fastcall TMainForm::btnDisplayDesignerClick(TObject *Sender)
{
	// Display the DevExpress Report Designer dialog
	dxReport1->ShowDesigner();
}

void __fastcall TMainForm::btnDisplayReportClick(TObject *Sender)
{
	// Display the DevExpress Report Viewer dialog
	dxReport1->ShowViewer();
}

void __fastcall TMainForm::rbtnSelectEnglishLocalizationClick(TObject *Sender)
{
	// Switch Report UI to English
	dxReport1->Language = "en-US";
}

void __fastcall TMainForm::rbtnSelectGermanLocalizationClick(TObject *Sender)
{
	// Switch Report UI to German
	dxReport1->Language = "de-DE";
}
