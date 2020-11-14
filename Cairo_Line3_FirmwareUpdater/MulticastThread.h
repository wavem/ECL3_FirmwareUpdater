//---------------------------------------------------------------------------

#ifndef MulticastThreadH
#define MulticastThreadH
//---------------------------------------------------------------------------
#include "Main.h"

enum ThreadWorkingType
{
	THREAD_STOP = 0,
	THREAD_RUNNING = 1,
	THREAD_TERMINATED = 2,
};
//---------------------------------------------------------------------------

class CMulticastThread : public TThread {
private:
	ThreadWorkingType	m_eThreadWork;
	SOCKET	*m_MCast_socket;
	TTime m_StartTime;
	TTime m_CurrentTime;

protected:
public:
	UnicodeString m_msg;
	__fastcall CMulticastThread(SOCKET *p_sock);
	__fastcall ~CMulticastThread();
	void __fastcall Execute();
	void __fastcall Stop();
	void __fastcall Resume();
	void __fastcall DoTerminate();
	ThreadWorkingType __fastcall GetThreadStatus();
	TTime __fastcall GetStartTime();
	TTime __fastcall GetCurrentTime();
};
//---------------------------------------------------------------------------
#endif
