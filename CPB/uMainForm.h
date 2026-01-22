//---------------------------------------------------------------------------

#ifndef uMainFormH
#define uMainFormH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include "cxButtons.hpp"
#include "cxClasses.hpp"
#include "cxControls.hpp"
#include "cxGraphics.hpp"
#include "cxLookAndFeelPainters.hpp"
#include "cxLookAndFeels.hpp"
#include "dxReport.hpp"
#include <Data.DB.hpp>
#include <Vcl.Menus.hpp>
#include "dxmdaset.hpp"
#include "uData.h"
#include "cxContainer.hpp"
#include "cxRadioGroup.hpp"
#include "cxGroupBox.hpp"
#include "dxBackend.ConnectionString.JSON.DataSet.hpp"
#include "dxBackend.ConnectionString.JSON.hpp"
#include "dxBackend.hpp"
//---------------------------------------------------------------------------
class TMainForm : public TForm
{
__published:	// IDE-managed Components
	TcxGroupBox *btnGroupDisplayDialog;
	TcxButton *btnDisplayReport;
	TcxButton *btnDisplayDesigner;
	TcxRadioGroup *rbtnGroupLocalization;
	TcxRadioButton *rbtnSelectEnglishLocalization;
	TcxRadioButton *rbtnSelectGermanLocalization;
	TdxReport *dxReport1;
	TdxBackendDataConnectionManager *dxBackendDataConnectionManager1;
	TdxBackendDataSetJSONConnection *dxBackendDataConnectionManager1dxBackendDataSetJSONConnection1;
	TdxBackendDataSetCollectionItem *itmProducts;
	TdxBackendDataSetCollectionItem *itmCategories;
	void __fastcall FormCreate(TObject *Sender);
	void __fastcall btnDisplayDesignerClick(TObject *Sender);
	void __fastcall btnDisplayReportClick(TObject *Sender);
	void __fastcall rbtnSelectEnglishLocalizationClick(TObject *Sender);
	void __fastcall rbtnSelectGermanLocalizationClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TMainForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TMainForm *MainForm;
//---------------------------------------------------------------------------
#endif
