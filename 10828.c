#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>
#include <stdlib.h> //malloc, free, atoi, atof, strtol, strtof 가 정의되어 있는 헤더파일
#include <string.h> //strcmp(비교)

typedef struct sNode
{
    int num;
    struct sNode *next;
} Node;

typedef struct listStack
{
    Node *peek;
    int size;
} listStack;

void createStack(listStack **Stack)
{
    (*Stack) = (listStack *)malloc(sizeof(listStack));
    (*Stack)->peek = NULL;
    (*Stack)->size = 0;
}

Node *createNode(int number)
{
    Node *newNode = (Node *)malloc(sizeof(Node));
    newNode->num = number;
    newNode->next = NULL;
    return newNode;
}

void deleteNode(Node *removeNode)
{
    free(removeNode);
}

void Push(listStack *Stack, Node *newNode)
{
    //when stack is empty
    if (Stack->size == 0)
    {
        Stack->peek = newNode;
    }
    //when stack is not empty
    else
    {
        newNode->next = Stack->peek;
        Stack->peek = newNode;
    }
    Stack->size++;
}

Node *Pop(listStack *Stack)
{
    Node *tempNode;

    //when stack is empty
    if (Stack->size == 0)
    {
        tempNode = NULL;
    }
    //when stack is not empty
    else
    {
        tempNode = Stack->peek;
        Stack->peek = Stack->peek->next;
        Stack->size--;
    }
    return tempNode;
}

void deleteStack(listStack *Stack)
{
    int count = Stack->size;
    Node *tempNode;

    for (int i = 0; i < count; i++)
    {
        tempNode = Pop(Stack);
        deleteNode(tempNode);
    }
    free(Stack->peek);
    free(Stack);
}
int main(void)
{
    listStack *Stack;
    createStack(&Stack);
    int size, tempnum;
    scanf("%d", &size);
    char *s1 = malloc(sizeof(char) * 6);
    for (int h = 0; h < size; h++)
    {
        scanf("%s", s1);
        if (strcmp(s1, "push") == 0)
        {
            scanf("%d", &tempnum);
            Push(Stack, createNode(tempnum));
        }
        else if (strcmp(s1, "pop") == 0)
        {
            if (Stack->size == 0)
                printf("-1\n");
            else
            {
                tempnum = Pop(Stack)->num;
                printf("%d\n", tempnum);
            }
        }
        else if (strcmp(s1, "size") == 0)
        {
            printf("%d\n", Stack->size);
        }
        else if (strcmp(s1, "empty") == 0)
        {
            if (Stack->size == 0)
            {
                printf("1\n");
            }
            else
            {
                printf("0\n");
            }
        }
        else if (strcmp(s1, "top") == 0)
        {
            if (Stack->size != 0)
                printf("%d\n", Stack->peek->num);
            else
                printf("-1\n");
        }
    }

    deleteStack(Stack);
    free(s1);
    return 0;
}