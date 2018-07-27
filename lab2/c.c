#include <stdio.h>
#include <stdlib.h>

typedef struct node
{
    short id;
    int value;
    struct node * next;
} node;


struct node * dhmiourgia(node *head);
int eisagwghTelos(node *head,int count);
int diagrafhTelos(node *head,int count);
void emfanishStoixeiou(node *head,int count);
void emfanishDieu8hnshsStoixeiou(node *head);
void ektipwshDieu8hnshsListas(node *head);
void emfanishDieu8hnshsPediouStoixeiou(node *head);
void ektupwshMege8ousListas(node *head,int count);
void ektupwshMege8ousStoixeiou(node *head);
void emfanishPlh8ous(int count);

int main()
{
    int epilogi = 0;

    node *head = NULL;
    node *tmp = NULL;
    int count = 0;

    while (epilogi !=11)
    {
        {
            printf("\n1 dhmiourgia lista\n");
            printf("2 eisagwgh stixiou sto telos\n");
            printf("3 diagrafh teleutaiou stoixeiou\n");
            printf("4 ektipwsh sigkekrimenou stoixeiou\n");
            printf("5 ektipwnei ton ari8mo stoixeiwn ths listas\n");
            printf("6 ektipwnei dieu8unsh sigkekrimenou stoixeiou\n");
            printf("7 ektipwsh dieu8unshs listas\n");
            printf("8 ektipwsh dieu8unshs sugkekgrimenou pediou gia sigkekrimeno stoixeio\n");
            printf("9 ektipwsh mege8ous listas se byte\n");
            printf("10 ektipwsh mege8ous stoixeiou se byte\n");
            printf("11 eksodos\n");
            printf("Please enter your choice (1-11): ");
        }
        scanf("%d",&epilogi);
        printf("\n");
        switch(epilogi)
        {
        case 1:
            head = dhmiourgia(head);
            break;
        case 2:
            count = eisagwghTelos(head,count);
            break;
        case 3:
            count = diagrafhTelos(head,count);
            break;
        case 4:
            emfanishStoixeiou(head,count);
            break;
        case 5:
            emfanishPlh8ous(count);
            break;
        case 6:
            emfanishDieu8hnshsStoixeiou(head);
            break;
        case 7:
            ektipwshDieu8hnshsListas(head);
            break;
        case 8:
            emfanishDieu8hnshsPediouStoixeiou(head);
            break;
        case 9:
            ektupwshMege8ousListas(head,count);
            break;
        case 10:
            ektupwshMege8ousStoixeiou(head);
            break;
        }
    }
    while (head != NULL)
    {
        tmp = head;
        head = head->next;
        free(tmp);
    }
    return 0;
}

struct node * dhmiourgia(node *head)
{
    if (head == NULL)
    {
        struct node *head = (struct node *) malloc(sizeof(struct node));
        printf("h lista dhmiourgh8hke\n\n");
        head->next = NULL;
        return head;
    }
    printf("hparxei hdh lista!\n\n");
    return head;
}

int eisagwghTelos(node *head,int count)
{
    if (head != NULL)
    {
        if (count<10)
        {
            while(head->next != NULL)
            {
                head = head->next;
            }
            head->next = (struct node *) malloc(sizeof(struct node));
            head->id = count;
            printf("\ndwse stoixeio gia eisagwgh: ");
            scanf("%d",&head->value);
            head->next->next = NULL;
            return (++count);
        }
        printf("h lista einai gemath!\n\n");
        return (count);
    }
    printf("den hparxei lista!\n\n");
    return (count);
}

int diagrafhTelos(node *head,int count)
{
    if ((head != NULL) && (count!= 0))
    {
        while(head->next->next != NULL)
        {
            head = head->next;
        }
        free(head);
        head=NULL;
        printf("\nto teleutaio stixio diagrafthke\n");
        return (--count);

    }
    printf("den hparxei lista h einai adeia!\n\n");
    return (count);
}

void emfanishStoixeiou(node *head,int count)
{
    int epilogi;
    int i;

    if ((head != NULL) && (count!= 0))
    {
        printf("\npio stoixeio 8es na emfanistei?(0-9): ");
        scanf("%d",&epilogi);
        for(i=0; i<epilogi; i++)
        {
            if (head->next==NULL)
            {
                printf("\nden iparxei stoixeio se auth th 8esh\n");
                return;
            }
            head = head->next;
        }
        printf("\nto stoixeio einai: %d\n",head->value);
        return;
    }
    printf("den hparxei lista h einai adeia!\n\n");
    return;
}

void emfanishPlh8ous(int count)
{
    printf("%d stoixeia iparxoun\n",count);
    return;
}

void emfanishDieu8hnshsStoixeiou(node *head)
{
    int epilogi;
    int i;

    printf("\npiou stoixeiou 8es na emfanistei h 8?(0-9): ");
    scanf("%d",&epilogi);
    for(i=0; i<epilogi; i++)
    {
        if (head->next->next==NULL)
        {
            printf("\nden iparxei stoixeio se auth th 8esh\n");
            return;
        }
        head = head->next;
    }
    if (head->next != NULL) printf("\nto stoixeio einai sth dieu8unsh: %d\n",head);
    else printf("den iparxei stoixeio se auth th 8esh\n");
    return;
}

void ektipwshDieu8hnshsListas(node *head)
{
    if (head != NULL) printf("h dieu8unsh ths listas einai %d\n",head);
    else printf("den iparxei lista\n");
    return;
}

void emfanishDieu8hnshsPediouStoixeiou(node *head)
{
    int epilogi;
    int i;
    int plus;
    char pedio;

    printf("\npiou stoixeiou 8es na emfanistei h dieu8unsh?(0-9): ");
    scanf("%d",&epilogi);
    for(i=0; i<epilogi; i++)
    {
        if (head->next->next==NULL)
        {
            printf("\nden iparxei stoixeio se auth th dieu8unsh\n");
            return;
        }
        head = head->next;
    }
    if (head->next != NULL)
    {
        printf("pio pedio 8eleis?(id = i,value = v) :");
        scanf(" %c",&pedio);
        if(pedio == 'i') plus = 0;
        else if(pedio == 'v') plus = sizeof(head->id);
        printf("\nto stoixeio einai sth dieu8unsh: %d\n",head+plus);
        return;
    }
    printf("den iparxei stoixeio se auth th 8esh\n");
    return;
}

void ektupwshMege8ousListas(node *head,int count)
{
    int mege8os;

    if (head != NULL)
    {
        mege8os = sizeof(node) * count;
        printf("To mege8os ths listas einai %d\n",mege8os);
        return;
    }
    printf("den iparxei lista\n");
    return;
}

void ektupwshMege8ousStoixeiou(node *head)
{
    int epilogi;
    int i;

    printf("\npiou stoixeiou 8es na emfanistei to mege8os?(0-9): ");
    scanf("%d",&epilogi);
    for(i=0; i<epilogi; i++)
    {
        if (head->next->next==NULL)
        {
            printf("\nden iparxei stoixeio se auth th 8esh\n");
            return;
        }
        head = head->next;
    }
    if (head->next != NULL) printf("\nto mege8os tou stoixeiou einai: %d\n",sizeof(node));
    else printf("den iparxei stoixeio se auth th 8esh\n");
    return;
}







