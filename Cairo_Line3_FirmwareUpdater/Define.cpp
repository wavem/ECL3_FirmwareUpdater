//---------------------------------------------------------------------------

#pragma hdrstop

#include "Define.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)

__fastcall UpdateInfo::UpdateInfo() {
	m_str_IP = L"";
	m_str_Status = L"";
	m_str_CarNum = L"";
	m_str_Version = L"";
	m_str_Date = L"";
	m_value_FTP = 0;
	m_value_FLS = 0;
	m_str_Result = L"";
	m_isConnected = false;
	m_ConnectionTimeOutCnt = 0;

	for(int i = 0 ; i < sizeof(m_DataBuf) ; i++) {
		m_DataBuf[i] = 0;
	}
}
//---------------------------------------------------------------------------

void __fastcall UpdateInfo::Reset() {
	m_str_IP = L"";
	m_str_Status = L"";
	m_str_CarNum = L"";
	m_str_Version = L"";
	m_str_Date = L"";
	m_value_FTP = 0;
	m_value_FLS = 0;
	m_str_Result = L"";
	m_isConnected = false;
	m_ConnectionTimeOutCnt = 0;

	for(int i = 0 ; i < sizeof(m_DataBuf) ; i++) {
		m_DataBuf[i] = 0;
	}
}
//---------------------------------------------------------------------------
