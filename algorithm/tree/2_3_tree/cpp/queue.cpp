#include "node.h"
#define MAX 100

NODE *Queue[MAX] = {0, }; // 큐를 배열로 선언
int Front, Rear; 
// Front 변수의 역할은 Get 함수가 호출되었을 경우 저장되어 있는 데이터를 빼낼 때 사용하는 인덱스
// Rear 변수의 역할은  Put 함수로 데이터를 저장할 때 사용하는 함수이다.


void InitializeQueue(void);
void Put(NODE *);
NODE *Get(void);
int IsQueueEmpty(void);

// 큐 초기화 함수
void InitializeQueue(void)
{
	Front = Rear = 0;
}

void Put(NODE *ptrNode)
{
	Queue[Rear] = ptrNode;
	Rear = (Rear++) % MAX;
}

NODE *Get(void)
{
	NODE *ptrNode;

	if (!IsQueueEmpty())
	{
		ptrNode = Queue[Front];
		Front = (Front++) % MAX;

		return ptrNode;
	}
	else
		printf("Queue is Empty.\n");

	return NULL;
}

int IsQueueEmpty(void)
{
	if (Rear == Front)
		return TRUE;
	else
		return FALSE;
}
