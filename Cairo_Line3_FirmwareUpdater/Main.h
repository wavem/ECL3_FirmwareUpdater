//---------------------------------------------------------------------------

#ifndef MainH
#define MainH
//---------------------------------------------------------------------------
#include "Define.h"
#include "Version.h"
#include "MulticastThread.h"
#include <tlhelp32.h>
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include "cxClasses.hpp"
#include "cxControls.hpp"
#include "cxGraphics.hpp"
#include "cxLookAndFeelPainters.hpp"
#include "cxLookAndFeels.hpp"
#include "dxBar.hpp"
#include "dxRibbon.hpp"
#include "dxRibbonCustomizationForm.hpp"
#include "dxRibbonSkins.hpp"
#include "dxSkinBlack.hpp"
#include "dxSkinBlue.hpp"
#include "dxSkinBlueprint.hpp"
#include "dxSkinCaramel.hpp"
#include "dxSkinCoffee.hpp"
#include "dxSkinDarkRoom.hpp"
#include "dxSkinDarkSide.hpp"
#include "dxSkinDevExpressDarkStyle.hpp"
#include "dxSkinDevExpressStyle.hpp"
#include "dxSkinFoggy.hpp"
#include "dxSkinGlassOceans.hpp"
#include "dxSkinHighContrast.hpp"
#include "dxSkiniMaginary.hpp"
#include "dxSkinLilian.hpp"
#include "dxSkinLiquidSky.hpp"
#include "dxSkinLondonLiquidSky.hpp"
#include "dxSkinMcSkin.hpp"
#include "dxSkinMetropolis.hpp"
#include "dxSkinMetropolisDark.hpp"
#include "dxSkinMoneyTwins.hpp"
#include "dxSkinOffice2007Black.hpp"
#include "dxSkinOffice2007Blue.hpp"
#include "dxSkinOffice2007Green.hpp"
#include "dxSkinOffice2007Pink.hpp"
#include "dxSkinOffice2007Silver.hpp"
#include "dxSkinOffice2010Black.hpp"
#include "dxSkinOffice2010Blue.hpp"
#include "dxSkinOffice2010Silver.hpp"
#include "dxSkinOffice2013DarkGray.hpp"
#include "dxSkinOffice2013LightGray.hpp"
#include "dxSkinOffice2013White.hpp"
#include "dxSkinPumpkin.hpp"
#include "dxSkinsCore.hpp"
#include "dxSkinsDefaultPainters.hpp"
#include "dxSkinsdxBarPainter.hpp"
#include "dxSkinsdxRibbonPainter.hpp"
#include "dxSkinSeven.hpp"
#include "dxSkinSevenClassic.hpp"
#include "dxSkinSharp.hpp"
#include "dxSkinSharpPlus.hpp"
#include "dxSkinSilver.hpp"
#include "dxSkinSpringTime.hpp"
#include "dxSkinStardust.hpp"
#include "dxSkinSummer2008.hpp"
#include "dxSkinTheAsphaltWorld.hpp"
#include "dxSkinValentine.hpp"
#include "dxSkinVisualStudio2013Blue.hpp"
#include "dxSkinVisualStudio2013Dark.hpp"
#include "dxSkinVisualStudio2013Light.hpp"
#include "dxSkinVS2010.hpp"
#include "dxSkinWhiteprint.hpp"
#include "dxSkinXmas2008Blue.hpp"
#include <Vcl.ExtCtrls.hpp>
#include "AdvGrid.hpp"
#include "AdvObj.hpp"
#include "BaseGrid.hpp"
#include <Vcl.Grids.hpp>
#include "AdvSmoothButton.hpp"
#include "AdvMemo.hpp"
#include <IdBaseComponent.hpp>
#include <IdCmdTCPServer.hpp>
#include <IdComponent.hpp>
#include <IdCustomTCPServer.hpp>
#include <IdExplicitTLSClientServerBase.hpp>
#include <IdFTPServer.hpp>
#include <IdTCPServer.hpp>
//---------------------------------------------------------------------------
class CMulticastThread;
class UpdateInfo;
class TFormMain : public TForm
{
__published:	// IDE-managed Components
	TdxRibbonTab *RibbonMenuTab_01_Menu;
	TdxRibbon *RibbonMenu;
	TdxBarManager *dxBarMgr;
	TdxBar *dxBarMgrBar1;
	TdxBarLargeButton *MenuBtn_Update;
	TdxBarLargeButton *MenuBtn_Version;
	TdxBarLargeButton *MenuBtn_Setting;
	TNotebook *Notebook_Main;
	TPanel *_pnBase_01_Update;
	TPanel *__pnBase_Main;
	TPanel *_pnBase_02_Setting;
	TAdvStringGrid *grid;
	TAdvSmoothButton *btn_Test;
	TAdvMemo *memo;
	TdxBar *dxBarMgrBar2;
	TdxBarLargeButton *MenuBtn_Status;
	TAdvSmoothButton *btn_Reset;
	TAdvSmoothButton *btn_Setup;
	TTimer *tm_Info;
	TAdvSmoothButton *btn_Timer;
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
	void __fastcall MenuBtn_VersionClick(TObject *Sender);
	void __fastcall MenuBtn_UpdateClick(TObject *Sender);
	void __fastcall MenuBtn_SettingClick(TObject *Sender);
	void __fastcall btn_TestClick(TObject *Sender);
	void __fastcall MenuBtn_StatusClick(TObject *Sender);
	void __fastcall btn_ResetClick(TObject *Sender);
	void __fastcall btn_SetupClick(TObject *Sender);
	void __fastcall btn_TimerClick(TObject *Sender);
	void __fastcall tm_InfoTimer(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TFormMain(TComponent* Owner);



public: // START FIRMWARE UPDATER PROGRAM : Variable
	// For Using External Process
	STARTUPINFO m_si;
	PROCESS_INFORMATION m_pi;

	// For Socket
	SOCKET m_MCast_socket;
	struct ip_mreq m_ip_mreq;
	struct sockaddr_in m_addr_in;
	CMulticastThread *m_MCastThread;

	UpdateInfo *m_Info;
	BYTE m_SendDataBuf[8];

public: // START FIRMWARE UPDATER PROGRAM : Func
	void __fastcall InitProgram();
	void __fastcall ExitProgram();
	void __fastcall PrintMsg(UnicodeString _str);
	void __fastcall GridDefaultSetting();
	void __fastcall RunExternalFTPServer();
	void __fastcall Reset();

	// Socket
	bool __fastcall CreateMulticastSocket();

	// Message Handler
	void __fastcall ReceiveMsg(TMessage &_msg);


BEGIN_MESSAGE_MAP
	MESSAGE_HANDLER(MSG_LOG, TMessage, ReceiveMsg)
END_MESSAGE_MAP(TForm)
};
//---------------------------------------------------------------------------
extern PACKAGE TFormMain *FormMain;
//---------------------------------------------------------------------------
#endif
