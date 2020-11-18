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

protected:
public:
	__fastcall CMulticastThread(SOCKET *p_sock);
	__fastcall ~CMulticastThread();
	void __fastcall Execute();
	void __fastcall Stop();
	void __fastcall Resume();
	void __fastcall DoTerminate();
	ThreadWorkingType __fastcall GetThreadStatus();
};
//---------------------------------------------------------------------------
#endif
