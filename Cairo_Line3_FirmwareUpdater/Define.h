//---------------------------------------------------------------------------

#ifndef DefineH
#define DefineH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
//---------------------------------------------------------------------------
#define LOCAL_IP "192.168.0.202"
#define MULTICAST_IP "239.255.93.18"
#define MULTICAST_PORT 50101

#define MSG_LOG	40000
#define MCAST_PACKET_SIZE_RCV 17
#define MCAST_PACKET_SIZE_SND 8

#define IP_DTCa_CCU1 "192.168.0.51"
#define IP_DTCa_CCU2 "192.168.0.52"
#define IP_MCIa_VCU1 "192.168.3.51"
#define IP_MCIa_VCU2 "192.168.3.52"
#define IP_MCIb_VCU1 "192.168.4.51"
#define IP_MCIb_VCU2 "192.168.4.52"
#define IP_DTCb_CCU1 "192.168.7.51"
#define IP_DTCb_CCU2 "192.168.7.52"

//---------------------------------------------------------------------------

class UpdateInfo {
public:

	__fastcall UpdateInfo();
	void __fastcall Reset();

	UnicodeString m_str_IP;
	UnicodeString m_str_Status;
	UnicodeString m_str_CarNum;
	UnicodeString m_str_Version;
	UnicodeString m_str_Date;
	int m_value_FTP;
	int m_value_FLS;
	UnicodeString m_str_Result;

	BYTE m_DataBuf[17];

	bool m_isConnected;
	int m_ConnectionTimeOutCnt;
};

//---------------------------------------------------------------------------





//---------------------------------------------------------------------------
#endif
