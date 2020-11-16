//---------------------------------------------------------------------------

#pragma hdrstop

#include "MulticastThread.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)

__fastcall CMulticastThread::CMulticastThread(SOCKET *p_sock) {
	m_eThreadWork = THREAD_STOP;
	Priority = tpTimeCritical;
	m_StartTime = Now();
	m_CurrentTime = m_StartTime;
	m_msg = L"";
	m_MCast_socket = p_sock;
}
//---------------------------------------------------------------------------

__fastcall CMulticastThread::~CMulticastThread() {

}
//---------------------------------------------------------------------------

void __fastcall CMulticastThread::Execute() {

	// Common
	UnicodeString t_Str = L"";
	UnicodeString tempStr = L"";
	UnicodeString t_StrList_IP[8];

	t_StrList_IP[0] = IP_DTCa_CCU1;
	t_StrList_IP[1] = IP_DTCa_CCU2;
	t_StrList_IP[2] = IP_MCIa_VCU1;
	t_StrList_IP[3] = IP_MCIa_VCU2;
	t_StrList_IP[4] = IP_MCIb_VCU1;
	t_StrList_IP[5] = IP_MCIb_VCU2;
	t_StrList_IP[6] = IP_DTCb_CCU1;
	t_StrList_IP[7] = IP_DTCb_CCU2;

	unsigned char sendBuf[8] = {0, };
	sendBuf[0] = 0x5A;
	sendBuf[1] = 0x5A;
	sendBuf[2] = 0x5A;
	sendBuf[3] = 0x5A;
	sendBuf[4] = 0x5A;
	sendBuf[5] = 0x5A;
	sendBuf[6] = 0x5A;
	sendBuf[7] = 0x5A;
	int t_sendBufLen = 8;

	struct sockaddr_in multicastAddr;
	multicastAddr.sin_family = AF_INET;
	multicastAddr.sin_addr.s_addr = inet_addr(MULTICAST_IP);
	multicastAddr.sin_port = htons(MULTICAST_PORT);

	m_eThreadWork = THREAD_RUNNING;
	while(!Terminated) {
		if(m_eThreadWork != THREAD_RUNNING) {
			if(m_eThreadWork == THREAD_TERMINATED) break;
			WaitForSingleObject((void*)this->Handle, 500);
			continue;
		}

		unsigned char recv_buff[MCAST_PACKET_SIZE_RCV];
		ZeroMemory( &recv_buff, sizeof(recv_buff));
		int recv_buff_size = sizeof(recv_buff);

		struct sockaddr_in	sender_addr;
		int sender_addr_size = sizeof(sender_addr);

		int recv_size = recvfrom( *m_MCast_socket, recv_buff, recv_buff_size, 0, (SOCKADDR*)&sender_addr, &sender_addr_size);
		if(recv_size < 0)
		{
			t_Str = L"Receive Error ";
			SendMessage(FormMain->Handle, MSG_LOG, (unsigned int)&t_Str, 0x10);
		} else {
			// Continue, If received packet is from mine.
			if(recv_size == 8) continue;

			// Convert IP Address String
			t_Str = inet_ntoa(sender_addr.sin_addr);

			// Set Connection Information
			for(int i = 0 ; i < 8 ; i++) {
				if(t_Str == t_StrList_IP[i]) {
					FormMain->m_Info[i].m_isConnected = true;
					FormMain->m_Info[i].m_ConnectionTimeOutCnt = 0;
					memcpy(FormMain->m_Info[i].m_DataBuf, recv_buff, MCAST_PACKET_SIZE_RCV);
				}
			}

			// Show Received Data
			t_Str += L"  Data : ";
			for(int i = 0 ; i < MCAST_PACKET_SIZE_RCV ; i++) {
				tempStr.sprintf(L"%02x ", recv_buff[i]);
				t_Str += tempStr;
			}
			//t_Str.sprintf(L"%02x %02x %02x %02x", recv_buff[0], recv_buff[1], recv_buff[2], recv_buff[3]);
			SendMessage(FormMain->Handle, MSG_LOG, (unsigned int)&t_Str, 0x10);


			// Show Received Data Size
			int t_sendrst = sendto(*m_MCast_socket, sendBuf, 8, 0, (struct sockaddr*)&multicastAddr, sizeof(multicastAddr));
			t_Str.sprintf(L"Send Size : %d", t_sendrst);
			SendMessage(FormMain->Handle, MSG_LOG, (unsigned int)&t_Str, 0x10);
		}
		//SendMessage(FormMain->Handle, MSG_LOG, (unsigned int)&t_Str, 0x10);

		WaitForSingleObject((void*)this->Handle, 50);
	}
	m_eThreadWork = THREAD_TERMINATED;
}
//---------------------------------------------------------------------------

void __fastcall CMulticastThread::Stop() {
	m_eThreadWork = THREAD_STOP;
}
//---------------------------------------------------------------------------

void __fastcall CMulticastThread::Resume() {
	m_eThreadWork = THREAD_RUNNING;
}
//---------------------------------------------------------------------------

void __fastcall CMulticastThread::DoTerminate() {
	m_eThreadWork = THREAD_TERMINATED;
}
//---------------------------------------------------------------------------

ThreadWorkingType __fastcall CMulticastThread::GetThreadStatus() {
	return m_eThreadWork;
}
//---------------------------------------------------------------------------

TTime __fastcall CMulticastThread::GetStartTime() {
	return m_StartTime;
}
//---------------------------------------------------------------------------

TTime __fastcall CMulticastThread::GetCurrentTime() {
	return m_CurrentTime;
}
//---------------------------------------------------------------------------
