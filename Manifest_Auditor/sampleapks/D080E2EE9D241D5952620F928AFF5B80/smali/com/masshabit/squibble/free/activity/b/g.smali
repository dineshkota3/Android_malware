.class public final Lcom/masshabit/squibble/free/activity/b/g;
.super Lcom/masshabit/squibble/free/activity/b/a;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/masshabit/squibble/free/activity/b/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 6

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/b/g;->a:Ljava/lang/String;

    sget-object v1, Lcom/masshabit/squibble/free/activity/e/k;->h:Ljava/lang/String;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x2a

    invoke-static {v3}, Lcom/masshabit/squibble/free/activity/e/p;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x32

    invoke-static {v2}, Lcom/masshabit/squibble/free/activity/e/p;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/masshabit/squibble/free/activity/e/k;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x39

    invoke-static {v2}, Lcom/masshabit/squibble/free/activity/e/p;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x24

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lcom/masshabit/squibble/free/activity/e/k;->w:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/masshabit/squibble/free/activity/e/k;->x:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Lcom/masshabit/squibble/free/activity/e/k;->y:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Lcom/masshabit/squibble/free/activity/e/k;->z:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    sget-object v5, Lcom/masshabit/squibble/free/activity/e/k;->A:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    sget-object v5, Lcom/masshabit/squibble/free/activity/e/k;->B:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x6

    sget-object v5, Lcom/masshabit/squibble/free/activity/e/k;->C:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x7

    sget-object v5, Lcom/masshabit/squibble/free/activity/e/k;->D:Ljava/lang/String;

    aput-object v5, v3, v4

    const/16 v4, 0x8

    sget-object v5, Lcom/masshabit/squibble/free/activity/e/k;->E:Ljava/lang/String;

    aput-object v5, v3, v4

    const/16 v4, 0x9

    sget-object v5, Lcom/masshabit/squibble/free/activity/e/k;->F:Ljava/lang/String;

    aput-object v5, v3, v4

    const/16 v4, 0xa

    sget-object v5, Lcom/masshabit/squibble/free/activity/e/k;->G:Ljava/lang/String;

    aput-object v5, v3, v4

    const/16 v4, 0xb

    sget-object v5, Lcom/masshabit/squibble/free/activity/e/k;->H:Ljava/lang/String;

    aput-object v5, v3, v4

    const/16 v4, 0xc

    sget-object v5, Lcom/masshabit/squibble/free/activity/e/k;->I:Ljava/lang/String;

    aput-object v5, v3, v4

    const/16 v4, 0xd

    sget-object v5, Lcom/masshabit/squibble/free/activity/e/k;->J:Ljava/lang/String;

    aput-object v5, v3, v4

    const/16 v4, 0xe

    sget-object v5, Lcom/masshabit/squibble/free/activity/e/k;->K:Ljava/lang/String;

    aput-object v5, v3, v4

    const/16 v4, 0xf

    sget-object v5, Lcom/masshabit/squibble/free/activity/e/k;->i:Ljava/lang/String;

    aput-object v5, v3, v4

    const/16 v4, 0x10

    sget-object v5, Lcom/masshabit/squibble/free/activity/e/k;->j:Ljava/lang/String;

    aput-object v5, v3, v4

    const/16 v4, 0x11

    sget-object v5, Lcom/masshabit/squibble/free/activity/e/k;->k:Ljava/lang/String;

    aput-object v5, v3, v4

    const/16 v4, 0x12

    sget-object v5, Lcom/masshabit/squibble/free/activity/e/k;->l:Ljava/lang/String;

    aput-object v5, v3, v4

    const/16 v4, 0x13

    sget-object v5, Lcom/masshabit/squibble/free/activity/e/k;->m:Ljava/lang/String;

    aput-object v5, v3, v4

    const/16 v4, 0x14

    sget-object v5, Lcom/masshabit/squibble/free/activity/e/k;->n:Ljava/lang/String;

    aput-object v5, v3, v4

    const/16 v4, 0x15

    sget-object v5, Lcom/masshabit/squibble/free/activity/e/k;->o:Ljava/lang/String;

    aput-object v5, v3, v4

    const/16 v4, 0x16

    sget-object v5, Lcom/masshabit/squibble/free/activity/e/k;->p:Ljava/lang/String;

    aput-object v5, v3, v4

    const/16 v4, 0x17

    sget-object v5, Lcom/masshabit/squibble/free/activity/e/k;->q:Ljava/lang/String;

    aput-object v5, v3, v4

    const/16 v4, 0x18

    sget-object v5, Lcom/masshabit/squibble/free/activity/e/k;->r:Ljava/lang/String;

    aput-object v5, v3, v4

    const/16 v4, 0x19

    sget-object v5, Lcom/masshabit/squibble/free/activity/e/k;->s:Ljava/lang/String;

    aput-object v5, v3, v4

    const/16 v4, 0x1a

    sget-object v5, Lcom/masshabit/squibble/free/activity/e/k;->t:Ljava/lang/String;

    aput-object v5, v3, v4

    const/16 v4, 0x1b

    sget-object v5, Lcom/masshabit/squibble/free/activity/e/k;->u:Ljava/lang/String;

    aput-object v5, v3, v4

    const/16 v4, 0x1c

    sget-object v5, Lcom/masshabit/squibble/free/activity/e/k;->v:Ljava/lang/String;

    aput-object v5, v3, v4

    const/16 v4, 0x1d

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->b()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x1e

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->c()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x1f

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->d()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x20

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->e()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x21

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->f()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x22

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->g()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x23

    sget-object v5, Lcom/masshabit/squibble/free/activity/e/k;->L:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "params="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/masshabit/squibble/free/activity/e/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/masshabit/squibble/free/activity/e/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
