//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Main.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "cxClasses"
#pragma link "cxControls"
#pragma link "cxGraphics"
#pragma link "cxLookAndFeelPainters"
#pragma link "cxLookAndFeels"
#pragma link "dxBar"
#pragma link "dxRibbon"
#pragma link "dxRibbonCustomizationForm"
#pragma link "dxRibbonSkins"
#pragma link "dxSkinBlack"
#pragma link "dxSkinBlue"
#pragma link "dxSkinBlueprint"
#pragma link "dxSkinCaramel"
#pragma link "dxSkinCoffee"
#pragma link "dxSkinDarkRoom"
#pragma link "dxSkinDarkSide"
#pragma link "dxSkinDevExpressDarkStyle"
#pragma link "dxSkinDevExpressStyle"
#pragma link "dxSkinFoggy"
#pragma link "dxSkinGlassOceans"
#pragma link "dxSkinHighContrast"
#pragma link "dxSkiniMaginary"
#pragma link "dxSkinLilian"
#pragma link "dxSkinLiquidSky"
#pragma link "dxSkinLondonLiquidSky"
#pragma link "dxSkinMcSkin"
#pragma link "dxSkinMetropolis"
#pragma link "dxSkinMetropolisDark"
#pragma link "dxSkinMoneyTwins"
#pragma link "dxSkinOffice2007Black"
#pragma link "dxSkinOffice2007Blue"
#pragma link "dxSkinOffice2007Green"
#pragma link "dxSkinOffice2007Pink"
#pragma link "dxSkinOffice2007Silver"
#pragma link "dxSkinOffice2010Black"
#pragma link "dxSkinOffice2010Blue"
#pragma link "dxSkinOffice2010Silver"
#pragma link "dxSkinOffice2013DarkGray"
#pragma link "dxSkinOffice2013LightGray"
#pragma link "dxSkinOffice2013White"
#pragma link "dxSkinPumpkin"
#pragma link "dxSkinsCore"
#pragma link "dxSkinsDefaultPainters"
#pragma link "dxSkinsdxBarPainter"
#pragma link "dxSkinsdxRibbonPainter"
#pragma link "dxSkinSeven"
#pragma link "dxSkinSevenClassic"
#pragma link "dxSkinSharp"
#pragma link "dxSkinSharpPlus"
#pragma link "dxSkinSilver"
#pragma link "dxSkinSpringTime"
#pragma link "dxSkinStardust"
#pragma link "dxSkinSummer2008"
#pragma link "dxSkinTheAsphaltWorld"
#pragma link "dxSkinValentine"
#pragma link "dxSkinVisualStudio2013Blue"
#pragma link "dxSkinVisualStudio2013Dark"
#pragma link "dxSkinVisualStudio2013Light"
#pragma link "dxSkinVS2010"
#pragma link "dxSkinWhiteprint"
#pragma link "dxSkinXmas2008Blue"
#pragma link "AdvGrid"
#pragma link "AdvObj"
#pragma link "BaseGrid"
#pragma link "AdvSmoothButton"
#pragma link "AdvMemo"
#pragma resource "*.dfm"
TFormMain *FormMain;
//---------------------------------------------------------------------------
__fastcall TFormMain::TFormMain(TComponent* Owner)
	: TForm(Owner)
{
	InitProgram();
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::FormClose(TObject *Sender, TCloseAction &Action)
{
	ExitProgram();
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::InitProgram() {

	// Notebook Page Setting
	Notebook_Main->PageIndex = 0; // Main

	// Grid Default Setting
	GridDefaultSetting();

	// Run External FTP Server Program
	RunExternalFTPServer();
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::ExitProgram() {

	// Close External FTP Program
	if( m_pi.hProcess != 0 ) {
		TerminateProcess( m_pi.hProcess, 0 );
		CloseHandle( m_pi.hProcess );
		CloseHandle( m_pi.hThread );
	}
	ZeroMemory( &m_pi, sizeof( m_pi ) );
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::PrintMsg(UnicodeString _str) {
	int t_Idx = memo->Lines->Add(_str);
	memo->SetCursor(0, t_Idx);
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::MenuBtn_StatusClick(TObject *Sender)
{
	Notebook_Main->PageIndex = 0; // Main
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::MenuBtn_SettingClick(TObject *Sender)
{
	Notebook_Main->PageIndex = 1; // Setting
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::MenuBtn_UpdateClick(TObject *Sender)
{
	// Update Routine
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::MenuBtn_VersionClick(TObject *Sender)
{
	TFormVersion *dlg = new TFormVersion(NULL);
	dlg->ShowModal();
	delete dlg;
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::GridDefaultSetting() {

	//Idx, Status
	for(int i = 1 ; i < 9 ; i++) {
		grid->Cells[0][i] = i;
		grid->Cells[1][i] = L"Disconnected"; // Status
		grid->Cells[4][i] = L"3702"; // Car Num
		grid->Cells[6][i] = L"00.01"; // Version
		grid->Cells[7][i] = L"2020.11.12"; // Date
		grid->Cells[9][i] = L"NG"; // Date
	}

	// Car Name
	grid->Cells[2][1] = L"DTCa";
	grid->Cells[2][2] = L"DTCa";
	grid->Cells[2][3] = L"MCIa";
	grid->Cells[2][4] = L"MCIa";
	grid->Cells[2][5] = L"MCIb";
	grid->Cells[2][6] = L"MCIb";
	grid->Cells[2][7] = L"DTCb";
	grid->Cells[2][8] = L"DTCb";

	// Device Name
	grid->Cells[3][1] = L"CCU1";
	grid->Cells[3][2] = L"CCU2";
	grid->Cells[3][3] = L"VCU1";
	grid->Cells[3][4] = L"VCU2";
	grid->Cells[3][5] = L"VCU1";
	grid->Cells[3][6] = L"VCU2";
	grid->Cells[3][7] = L"CCU1";
	grid->Cells[3][8] = L"CCU2";

	// Device Name
	grid->Cells[5][1] = L"192.168.0.51";
	grid->Cells[5][2] = L"192.168.0.52";
	grid->Cells[5][3] = L"192.168.3.51";
	grid->Cells[5][4] = L"192.168.3.52";
	grid->Cells[5][5] = L"192.168.4.51";
	grid->Cells[5][6] = L"192.168.5.52";
	grid->Cells[5][7] = L"192.168.7.51";
	grid->Cells[5][8] = L"192.168.7.52";

	// Progress
	for(int i = 1 ; i < 9 ; i++) {
		grid->AddAdvProgress(8, i, 0, 100);
		grid->Ints[8][i] = 50;
	}
	grid->Ints[8][1] = 25;
	grid->Ints[8][2] = 75;
	grid->Ints[8][3] = 100;
	grid->Ints[8][4] = 10;
	grid->Ints[8][5] = 99;
	grid->Ints[8][6] = 0;
	grid->Ints[8][7] = 49;
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::btn_TestClick(TObject *Sender)
{
	PrintMsg(L"TEST BUTTON CLICKED");
	grid->Ints[8][6] += 1;

	// Find External FTP Server Program
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::RunExternalFTPServer() {

	UnicodeString t_dirPath = L"\\ftpserv\\";
	UnicodeString t_fileName = L"ftpserv.exe";
	UnicodeString t_path = GetCurrentDir() + t_dirPath + t_fileName;

	// Find Process Routine
	bool ret = false;
	HANDLE hProcess = CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);

	if(hProcess != INVALID_HANDLE_VALUE) {
		PROCESSENTRY32 pe32 = {0};
		pe32.dwSize = sizeof(PROCESSENTRY32);

		if(Process32First(hProcess, &pe32)) {
			do {
				if(UnicodeString(pe32.szExeFile) == t_fileName) {
					ret = true;
					break;
				}

			} while(Process32Next(hProcess, &pe32));
		}
		CloseHandle(hProcess);
	}

	if(ret) {
		Application->MessageBoxW(L"ftpserv is already running", L"", MB_OK | MB_ICONINFORMATION);
	} else {
		//ShellExecute(NULL, L"open", t_fileName.c_str(), NULL, t_dirPath.c_str(), SW_SHOWDEFAULT);
		// ShellExecute 방식 안쓰고 아래 방식으로 간다. (찾아서 닫기 위해서...)
		ZeroMemory( &m_si, sizeof( m_si ) );
		ZeroMemory( &m_pi, sizeof( m_pi ) );
		m_si.cb = sizeof( STARTUPINFO );
		m_si.dwFlags = STARTF_USESHOWWINDOW;

		bool t_bRet = CreateProcess( NULL, t_path.c_str(), NULL, NULL, FALSE, NULL, NULL, NULL, &m_si, &m_pi );
		if(t_bRet) {
			PrintMsg(L"Success to open FTP Server");
		} else {
			PrintMsg(L"Fil to open FTP Server");
		}
	}
}
//---------------------------------------------------------------------------

