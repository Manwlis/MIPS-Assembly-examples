#include <stdio.h>
#include <stdlib.h>

typedef struct node
{
    short id;
    int value;
    struct node * next;
} node;

int dhmiourgia();
int eisagwghTelos();
int diagrafhTelos();
int emfanishStoixeiou();

int R0=0,R1,R2,R3,R4,R5,R6,R7,R8,R9,R10,R11,R12,R13,R14,R15,R16,R17,R18,R19,R20,R21,R22,R23,R24,R25,R26,R27,R28,R29,R30,R31;



int main()
{
    R14 = (int)dhmiourgia;
    R15 = (int)eisagwghTelos;
    R16 = (int)diagrafhTelos;
    R17 = (int)emfanishStoixeiou;
    node *head = NULL;
    int count = 0;

While_label:
    if( R1 == 5) goto after_loop;

    printf("\n1 dhmiourgia lista\n");
    printf("2 eisagwgh stixiou sto telos\n");
    printf("3 diagrafh teleutaiou stoixeiou\n");
    printf("4 ektipwsh sigkekrimenou stoixeiou\n");
    printf("5 eksodos\n");
    printf("Please enter your choice (1-5): ");
    scanf("%d",&R1);
    printf("\n");

    if(R1!=1) goto if1_label;
    R2 = (int)head;
    (dhmiourgia)((int*)R14);
    head = (struct node *)R2;
    goto afterIf_label;
if1_label:
    if(R1!=2) goto if2_label;
    R2 = (int)head;
    R3 = count;
    (eisagwghTelos)((int*)R15);
    count = R3;
    goto afterIf_label;
if2_label:
    if(R1!=3) goto if3_label;
    R2 = (int)head;
    R3 = count;
    (diagrafhTelos)((int*)R16);
    count = R3;
    goto afterIf_label;
if3_label:
    if(R1!=4) goto afterIf_label;
    R2 = (int)head;
    R3 = count;
    (emfanishStoixeiou)((int*)R17);
afterIf_label:
    goto While_label;
after_loop:
whileFR_label:
    if ((struct node *)R2== NULL) goto afterWhileFR_label;
    R8 = (int)head;
    R2 = (int) ((struct node *)R2)->next;
    free((struct node *)R6);
    goto whileFR_label;
afterWhileFR_label:
    return 0;
}

int dhmiourgia()
{
    if ((struct node *)R2 != NULL) goto afterIfD_label;
    R2 = (int)(struct node *) malloc(sizeof(struct node));
    printf("h lista dhmiourgh8hke\n\n");
    ((struct node *)R2)->next = NULL;
    R20 = R2;
    return R20;
afterIfD_label:
    printf("hparxei hdh lista!\n\n");
    R20 = R2;
    return R20;
}

int eisagwghTelos()
{
    if ((struct node *)R2 == NULL) goto afterIfET_label;
    if (R3>=10) goto afterIfET2_label;
whileET_label:
    if (((struct node *)R2)->next == NULL) goto afterWhile_label;
    R2 = (int)((struct node *)R2)->next;
    goto whileET_label;
afterWhile_label:
    ((struct node *)R2)->next = (struct node *) malloc(sizeof(struct node));
    ((struct node *)R2)->id = R3;
    printf("\ndwse stoixeio gia eisagwgh: ");
    scanf("%d",&R4);
    ((struct node *)R2)->value = R4;
    ((struct node *)R2)->next->next = NULL;
    R3 = R3 + 1;
    return R20;
afterIfET2_label:
    printf("h lista einai gemath!\n\n");
    return R20;
afterIfET_label:
    printf("den hparxei lista!\n\n");
    return R20;
}

int diagrafhTelos()
{
    if((struct node *)R2 == NULL) goto afterIfDT_label;
    if (R3 == 0) goto afterIfDT_label;
whileDT_label:
    if (((struct node *)R2)->next->next ==NULL) goto afterWhileDT_label;
    R10 = (int)((struct node *)R2);
    R2 = (int)((struct node *)R2)->next;
    goto whileDT_label;
afterWhileDT_label:
    free((struct node *)R2);
    ((struct node *)R10)->next = NULL;
    printf("\nto teleutaio stixio diagrafthke\n");
    R3 = R3 - 1;
    return R20;
afterIfDT_label:
    printf("den hparxei lista h einai adeia!\n\n");
    return R20;
}

int emfanishStoixeiou()
{
    if((struct node *)R2 == NULL) goto afterIfES_label;
    if (R3 == 0) goto afterIfES_label;
    printf("\npio stoixeio 8es na emfanistei?(0-9): ");
    scanf("%d",&R4);
    R5=0;
whileES_label:
    if(R5>=R4) goto afterWhileES_label;
    if (((struct node *)R2)->next !=NULL) goto afterIf2ES_label;
    printf("\nden iparxei stoixeio se auth th 8esh\n");
    return R20;
afterIf2ES_label:
    R2 = (int)(((struct node *)R2)->next);
    R5=R5+1;
    goto whileES_label;
afterWhileES_label:
    printf("\nto stoixeio einai: %d\n",((struct node *)R2)->value);
    return R20;
afterIfES_label:
    printf("den hparxei lista h einai adeia!\n\n");
    return R20;
}

