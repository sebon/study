// Ʈ������ ����ϴ� ��� �ڷ��� ���� ����
#ifndef __NODE_H
#define __NODE_H

#include <stdio.h>
#include <stdlib.h>

#define TRUE   1
#define FALSE  0

typedef struct _NODE {
	int Data;
	int Balance;
	struct _NODE *Left;
	struct _NODE *Right;
} NODE;

//NODE *HeadNode, *EndNode;

#endif //__NODE_H