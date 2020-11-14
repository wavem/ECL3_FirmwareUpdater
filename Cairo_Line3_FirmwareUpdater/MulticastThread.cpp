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
	int t_IdxCnt = 0;

	m_eThreadWork = THREAD_RUNNING;
	while(!Terminated) {
		if(m_eThreadWork != THREAD_RUNNING) {
			if(m_eThreadWork == THREAD_TERMINATED) break;
			WaitForSingleObject((void*)this->Handle, 500);
			continue;
		}

		unsigned char recv_buff[MCAST_PACKET_SIZE];
		ZeroMemory( &recv_buff, sizeof(recv_buff));
		int recv_buff_size = sizeof(recv_buff);

		struct sockaddr_in	sender_addr;
		int sender_addr_size = sizeof(sender_addr);

		int recv_size = recvfrom( *m_MCast_socket, recv_buff, recv_buff_size, 0, (SOCKADDR*)&sender_addr, &sender_addr_size);
		if(recv_size < 0)
		{
			t_Str = L"Receive Error ";
		} else {
			//m_CurrentTime = Now();
			//t_Str = m_CurrentTime.TimeString() + L" ";
			//SendMessage(FormMain->Handle, MSG_LOG, (unsigned int)&t_Str, 0x10);
			//t_Str.sprintf(L"Idx : %d, Size : %d, ", t_IdxCnt++, recv_size);
			//SendMessage(FormMain->Handle, MSG_LOG, (unsigned int)&t_Str, 0x10);
			t_Str = inet_ntoa(sender_addr.sin_addr);


			t_Str += L"  Data : ";
			for(int i = 0 ; i < MCAST_PACKET_SIZE ; i++) {
				tempStr.sprintf(L"%02x ", recv_buff[i]);
				t_Str += tempStr;
			}
			//t_Str.sprintf(L"%02x %02x %02x %02x", recv_buff[0], recv_buff[1], recv_buff[2], recv_buff[3]);
		}
		SendMessage(FormMain->Handle, MSG_LOG, (unsigned int)&t_Str, 0x10);

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
