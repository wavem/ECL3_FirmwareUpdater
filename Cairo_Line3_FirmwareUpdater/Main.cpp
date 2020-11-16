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

	// Common
	UnicodeString t_Str = L"";

	// Notebook Page Setting
	Notebook_Main->PageIndex = 0; // Main

	// Grid Default Setting
	GridDefaultSetting();

	// Init Send Data Buffer
	for(int i = 0 ; i < 8 ; i++) {
		m_SendDataBuf[i] = 0x00;
	}

	// Thread
	m_MCastThread = NULL;

	// Update Info Class
	m_Info = new UpdateInfo[8];

	// ETC
	m_IsReadyToComm = false;
	m_Delay = 0;

	// Init Socket
	WSADATA data;
	WORD version;
	int ret = 0;

	version = MAKEWORD(2, 2);
	ret = WSAStartup(version, &data);
	if(ret != 0) {
		ret = WSAGetLastError();
		if(ret == WSANOTINITIALISED) {
			t_Str.sprintf(L"Socket not initialised (error code : %d)", ret);
			PrintMsg(t_Str);
		} else {
			t_Str.sprintf(L"Socket error (error code : %d)", ret);
			PrintMsg(t_Str);
		}
		return;
	} else {
		PrintMsg(L"Socket init success");
	}

	// Run External FTP Server Program
	RunExternalFTPServer();
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::ExitProgram() {

	// Socket
	if(m_MCast_socket != NULL) {
		closesocket(m_MCast_socket);
		m_MCast_socket = NULL;
	}

	// Thread
	if(m_MCastThread) {
		m_MCastThread->Terminate();
		delete m_MCastThread;
		m_MCastThread = NULL;
	}

	// Close External FTP Program
	if( m_pi.hProcess != 0 ) {
		TerminateProcess( m_pi.hProcess, 0 );
		CloseHandle( m_pi.hProcess );
		CloseHandle( m_pi.hThread );
	}
	ZeroMemory( &m_pi, sizeof( m_pi ) );

	// Socket
	if(m_MCast_socket != NULL) {
		closesocket(m_MCast_socket);
		m_MCast_socket = NULL;
	}

	WSACleanup();
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
	tm_Polling->Enabled = false;
	tm_UpdateDelay->Enabled = true;
	SendUpdateMessage();
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
		grid->Cells[10][i] = L"NG"; // Date
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

		grid->AddAdvProgress(9, i, 0, 100);
		grid->Ints[9][i] = 0;
	}
	grid->Ints[8][1] = 25;
	grid->Ints[8][2] = 75;
	grid->Ints[8][3] = 100;
	grid->Ints[8][4] = 10;
	grid->Ints[8][5] = 99;
	grid->Ints[8][6] = 0;
	grid->Ints[8][7] = 49;

	grid->Ints[9][3] = 73;
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
		//Application->MessageBoxW(L"ftpserv is already running", L"", MB_OK | MB_ICONINFORMATION);
		PrintMsg(L"FTP Server is already running...");
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

void __fastcall TFormMain::btn_ResetClick(TObject *Sender)
{
	Reset(); // Grid Reset
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::Reset() {
	// Progress
	for(int i = 1 ; i < 9 ; i++) {
		grid->Cells[1][i] = L""; // Status
		grid->Cells[4][i] = L""; // Num
		grid->Cells[6][i] = L""; // Version
		grid->Cells[7][i] = L""; // Date
		grid->Ints[8][i] = 0;
		grid->Ints[9][i] = 0;
		grid->Cells[10][i] = L""; // Result
	}
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::btn_SetupClick(TObject *Sender)
{
	m_IsReadyToComm = CreateMulticastSocket();
	if(m_IsReadyToComm == false) {
		if(m_MCast_socket != NULL) {
			closesocket(m_MCast_socket);
			m_MCast_socket = NULL;
		}
		return;
	}

	tm_Polling->Enabled = true;
}
//---------------------------------------------------------------------------

bool __fastcall TFormMain::CreateMulticastSocket() {
	// Common
	UnicodeString tempStr = L"";

	if(m_MCast_socket != NULL) {
		PrintMsg(L"Socket already exist");
		return true; // Um..T.T..
	}

	// Create Socket
	m_MCast_socket = socket(AF_INET, SOCK_DGRAM, IPPROTO_IP);
	if(m_MCast_socket == INVALID_SOCKET) {
		PrintMsg(L"Fail to create multicast socket");
		return false;
	}

	// Set Socket Option : REUSE
	int t_opt_reuse = 1;
	if(setsockopt(m_MCast_socket, SOL_SOCKET, SO_REUSEADDR,(char *)&t_opt_reuse, sizeof(t_opt_reuse)) == SOCKET_ERROR)
	{
		PrintMsg(L"Fail to create multicast socket");
		return false;
	}

	// Bind to the proper port number with the IP address
	ZeroMemory(&m_addr_in, sizeof(m_addr_in));
	m_addr_in.sin_family = AF_INET;
	m_addr_in.sin_addr.s_addr = htonl(INADDR_ANY);
	m_addr_in.sin_port = htons(MULTICAST_PORT);
	if(bind(m_MCast_socket, (struct sockaddr*)&m_addr_in, sizeof(m_addr_in))) {
		PrintMsg(L"Fail to bind multicast socket");
		return false;
	}

	// Join to Multicast Group
	ZeroMemory(&m_ip_mreq, sizeof(m_ip_mreq));
	m_ip_mreq.imr_multiaddr.s_addr = inet_addr(MULTICAST_IP);
	m_ip_mreq.imr_interface.s_addr = inet_addr(LOCAL_IP);
	if(setsockopt(m_MCast_socket, IPPROTO_IP, IP_ADD_MEMBERSHIP, (char *) &m_ip_mreq, sizeof(m_ip_mreq)) == SOCKET_ERROR) {
		PrintMsg(L"Fail to join multicast group");
		return false;
	}

	// Set Socket Option : Disable loopback
	char loopch = 0;
	//if (setsockopt(m_MCast_socket, IPPROTO_IP, IP_MULTICAST_LOOP, (char *)&loopch, sizeof(loopch)) < 0) {
	// 	PrintMsg(L"Fail to set disable loopback");
	//	return false;
	//}


	// Belows are Routine that setting socket buffer size. do not use in this project.
	/*
	int t_optval;
	int t_optlen = sizeof(t_optval);
	if(getsockopt(m_MCast_socket, SOL_SOCKET, SO_RCVBUF, (char*)&t_optval, &t_optlen) == SOCKET_ERROR) {
		PrintMsg(L"Fail to get socket buffer size");
		return false;
	}

	tempStr.sprintf(L"Socket Buff Size : %d", t_optval);
	PrintMsg(tempStr);

	t_optval = 15000;
	if(setsockopt(m_MCast_socket, SOL_SOCKET, SO_RCVBUF, (char*)&t_optval, sizeof(t_optval)) == SOCKET_ERROR) {
		PrintMsg(L"Fail to set socket buffer size");
		return false;
	}

	if(getsockopt(m_MCast_socket, SOL_SOCKET, SO_RCVBUF, (char*)&t_optval, &t_optlen) == SOCKET_ERROR) {
		PrintMsg(L"Fail to get socket buffer size");
		return false;
	}
	tempStr.sprintf(L"Socket Buff Size : %d", t_optval);
	PrintMsg(tempStr);
	*/


	//LOCAL_IP "192.168.0.201"
	//MULTICAST_IP "239.255.93.18"
	//MULTICAST_PORT 50101;

	m_MCastThread = new CMulticastThread(&m_MCast_socket);


	// Success to Create Socket
	PrintMsg(L"Success to create multicast socket");
	return true;
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::ReceiveMsg(TMessage &_msg) {
	unsigned int t_wParam = _msg.WParam;
	int t_lParam = _msg.LParam;

	UnicodeString tempStr = L"";
	UnicodeString *p = NULL;
	p = (UnicodeString*)t_wParam;
	tempStr = *p;
	//tempStr.sprintf(L"W : %08x, L : %08x", t_wParam, t_lParam);
	int t_Idx = memo->Lines->Add(tempStr);
	memo->SetCursor(0, t_Idx);
}
//---------------------------------------------------------------------------


void __fastcall TFormMain::btn_TimerClick(TObject *Sender)
{
	tm_Info->Enabled = !tm_Info->Enabled;
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::tm_InfoTimer(TObject *Sender)
{
	BYTE *t_DataBuf = NULL;



	// Process Received Data
	for(int i = 0 ; i < 8 ; i++) {
		if(m_Info[i].m_isConnected) {
			m_Info[i].m_str_Status = L"Connected";
			if(20 == m_Info[i].m_ConnectionTimeOutCnt++) {
				m_Info[i].m_isConnected = false;
				m_Info[i].m_ConnectionTimeOutCnt = 0;
			}

			t_DataBuf = m_Info[i].m_DataBuf;
			m_Info[i].m_str_CarNum.sprintf(L"%X%X%X%X", t_DataBuf[3], t_DataBuf[4], t_DataBuf[5], t_DataBuf[6]);
			m_Info[i].m_value_FTP = t_DataBuf[7];
			m_Info[i].m_value_FLS = t_DataBuf[8];
			m_Info[i].m_str_Version.sprintf(L"%02X.%02X", t_DataBuf[9], t_DataBuf[10]);
			m_Info[i].m_str_Date.sprintf(L"20%02X.%02X.%02X %02x.%02x.%02X",t_DataBuf[11], t_DataBuf[12], t_DataBuf[13], t_DataBuf[14], t_DataBuf[15], t_DataBuf[16]);

			if(m_Info[i].m_value_FLS == 100) {
				m_Info[i].m_str_Result = L"Complete";
			} else {
				m_Info[i].m_str_Result = L"Complete";
			}
		} else {
			// Disconnected : Reset Grid Row
			m_Info[i].m_str_Status = L"Disconnected";
			m_Info[i].m_str_CarNum = L"";
			m_Info[i].m_value_FTP = 0;
			m_Info[i].m_value_FLS = 0;
			m_Info[i].m_str_Version = L"";
			m_Info[i].m_str_Date = L"";
			m_Info[i].m_str_Result = L"";
		}
	}

	// Print Info into Grid
	for(int i = 0 ; i < 8 ; i++) {
		grid->Cells[1][i + 1] = m_Info[i].m_str_Status;
		grid->Cells[4][i + 1] = m_Info[i].m_str_CarNum;
		grid->Cells[6][i + 1] = m_Info[i].m_str_Version;
		grid->Cells[7][i + 1] = m_Info[i].m_str_Date;
		grid->Ints[8][i + 1] = m_Info[i].m_value_FTP;
		grid->Ints[9][i + 1] = m_Info[i].m_value_FLS;
		grid->Cells[10][i + 1] = m_Info[i].m_str_Result;
	}
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::btn_SendClick(TObject *Sender)
{
	SendUpdateMessage();
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::tm_PollingTimer(TObject *Sender)
{
	// Common
	UnicodeString tempStr = L"";

	if(m_IsReadyToComm == false) {
		PrintMsg(L"Communication not yet ready");
		return;
	}

	unsigned char sendBuf[8] = {0, };
	sendBuf[0] = 0x5A;
	sendBuf[1] = 0x5A;
	sendBuf[2] = 0x01;
	sendBuf[3] = 0x00;
	sendBuf[4] = 0x00;
	sendBuf[5] = 0x00;
	sendBuf[6] = 0x00;
	sendBuf[7] = 0x00;
	int t_sendBufLen = 8;

	struct sockaddr_in multicastAddr;
	multicastAddr.sin_family = AF_INET;
	multicastAddr.sin_addr.s_addr = inet_addr(MULTICAST_IP);
	multicastAddr.sin_port = htons(MULTICAST_PORT);

	int t_sendrst = sendto(m_MCast_socket, sendBuf, 8, 0, (struct sockaddr*)&multicastAddr, sizeof(multicastAddr));
	tempStr.sprintf(L"Send Result(Size) : %d", t_sendrst);
	PrintMsg(tempStr);
}
//---------------------------------------------------------------------------

bool __fastcall TFormMain::SendUpdateMessage() {
	// Common
	UnicodeString tempStr = L"";

	if(m_IsReadyToComm == false) {
		PrintMsg(L"Communication not yet ready");
		return false;
	}

	// Find Update File and Read File Size
	int t_FileSize = 0;
	AnsiString t_folderPath = ".\\";
	AnsiString t_fileName = "vxWorks";
	AnsiString t_dstPath = "";
	t_dstPath = t_folderPath + t_fileName;

	FILE* t_fp = NULL;
	t_fp = fopen(t_dstPath.c_str(), "rb");
	if(t_fp == NULL) {
		PrintMsg(L"Can not open update file");
		Application->MessageBoxW(L"Can not find vxWorks", L"Error", MB_OK | MB_ICONWARNING);
		return false;
	}
	fseek(t_fp, 0, SEEK_END);
	t_FileSize = ftell(t_fp);
	fclose(t_fp); // Leave this, because of the case : Thread die by unknown reasons....
	t_fp = NULL;

	tempStr.sprintf(L"vxWorks File Size : %d", t_FileSize);
	PrintMsg(tempStr);

	// Input File Size Value into Byte Stream
	DWORD t_dw = t_FileSize;
	BYTE t_1 = t_dw >> 24;
	BYTE t_2 = t_dw >> 16;
	BYTE t_3 = t_dw >>  8;
	BYTE t_4 = t_dw & 0x000000FF;

	//tempStr.sprintf(L"BYTE_1 : %02X", t_1);
	//PrintMsg(tempStr);
	//tempStr.sprintf(L"BYTE_2 : %02X", t_2);
	//PrintMsg(tempStr);
	//tempStr.sprintf(L"BYTE_3 : %02X", t_3);
	//PrintMsg(tempStr);
	//tempStr.sprintf(L"BYTE_4 : %02X", t_4);
	//PrintMsg(tempStr);

	// Send Data Routine
	unsigned char sendBuf[8] = {0, };
	sendBuf[0] = 0x5A;
	sendBuf[1] = 0x5A;
	sendBuf[2] = 0x02;
	sendBuf[3] = 0x00;
	sendBuf[4] = t_1;
	sendBuf[5] = t_2;
	sendBuf[6] = t_3;
	sendBuf[7] = t_4;
	int t_sendBufLen = 8;

	struct sockaddr_in multicastAddr;
	multicastAddr.sin_family = AF_INET;
	multicastAddr.sin_addr.s_addr = inet_addr(MULTICAST_IP);
	multicastAddr.sin_port = htons(MULTICAST_PORT);

	int t_sendrst = sendto(m_MCast_socket, sendBuf, 8, 0, (struct sockaddr*)&multicastAddr, sizeof(multicastAddr));
	tempStr.sprintf(L"Send Result(Size) : %d", t_sendrst);
	PrintMsg(tempStr);

	return true;
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::tm_UpdateDelayTimer(TObject *Sender)
{
	if(m_Delay == 1) {
		tm_UpdateDelay->Enabled = false;
		m_Delay = 0;
		tm_Polling->Enabled = true;
	}
	m_Delay++;
}
//---------------------------------------------------------------------------

