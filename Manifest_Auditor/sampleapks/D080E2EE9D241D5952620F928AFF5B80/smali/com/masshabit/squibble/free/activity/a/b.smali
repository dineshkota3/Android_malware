.class public Lcom/masshabit/squibble/free/activity/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/masshabit/squibble/free/activity/e/m;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field final synthetic c:Lcom/masshabit/squibble/free/activity/a/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/masshabit/squibble/free/activity/a/d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/masshabit/squibble/free/activity/a/b;->c:Lcom/masshabit/squibble/free/activity/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/a/b;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/a/b;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/masshabit/squibble/free/activity/a/b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/masshabit/squibble/free/activity/a/b;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/masshabit/squibble/free/activity/a/Abstract;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/masshabit/squibble/free/activity/c;->o:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/masshabit/squibble/free/activity/a/d;

    invoke-direct {v0, p0}, Lcom/masshabit/squibble/free/activity/a/d;-><init>(Ljava/lang/String;)V

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/masshabit/squibble/free/activity/a/Abstract;->d()V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/masshabit/squibble/free/activity/c;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/masshabit/squibble/free/activity/a/e;

    invoke-direct {v0, p0}, Lcom/masshabit/squibble/free/activity/a/e;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/masshabit/squibble/free/activity/c;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/masshabit/squibble/free/activity/a/j;

    invoke-direct {v0, p0}, Lcom/masshabit/squibble/free/activity/a/j;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/masshabit/squibble/free/activity/c;->g:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/masshabit/squibble/free/activity/a/k;

    invoke-direct {v0, p0}, Lcom/masshabit/squibble/free/activity/a/k;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/masshabit/squibble/free/activity/c;->h:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/masshabit/squibble/free/activity/a/o;

    invoke-direct {v0, p0}, Lcom/masshabit/squibble/free/activity/a/o;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    sget-object v0, Lcom/masshabit/squibble/free/activity/c;->j:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/masshabit/squibble/free/activity/a/g;

    invoke-direct {v0, p0}, Lcom/masshabit/squibble/free/activity/a/g;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    sget-object v0, Lcom/masshabit/squibble/free/activity/c;->i:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lcom/masshabit/squibble/free/activity/a/l;

    invoke-direct {v0, p0}, Lcom/masshabit/squibble/free/activity/a/l;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    sget-object v0, Lcom/masshabit/squibble/free/activity/c;->l:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Lcom/masshabit/squibble/free/activity/a/f;

    invoke-direct {v0, p0}, Lcom/masshabit/squibble/free/activity/a/f;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    sget-object v0, Lcom/masshabit/squibble/free/activity/c;->n:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Lcom/masshabit/squibble/free/activity/a/c;

    invoke-direct {v0, p0}, Lcom/masshabit/squibble/free/activity/a/c;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    sget-object v0, Lcom/masshabit/squibble/free/activity/c;->m:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Lcom/masshabit/squibble/free/activity/a/u;

    invoke-direct {v0, p0}, Lcom/masshabit/squibble/free/activity/a/u;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    sget-object v0, Lcom/masshabit/squibble/free/activity/c;->k:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/masshabit/squibble/free/activity/a/m;

    invoke-direct {v0, p0}, Lcom/masshabit/squibble/free/activity/a/m;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_c
    sget-object v0, Lcom/masshabit/squibble/free/activity/c;->o:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Lcom/masshabit/squibble/free/activity/a/d;

    invoke-direct {v0, p0}, Lcom/masshabit/squibble/free/activity/a/d;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_d
    sget-object v0, Lcom/masshabit/squibble/free/activity/c;->p:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Lcom/masshabit/squibble/free/activity/a/s;

    invoke-direct {v0, p0}, Lcom/masshabit/squibble/free/activity/a/s;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_e
    sget-object v0, Lcom/masshabit/squibble/free/activity/c;->q:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Lcom/masshabit/squibble/free/activity/a/p;

    invoke-direct {v0, p0}, Lcom/masshabit/squibble/free/activity/a/p;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_f
    sget-object v0, Lcom/masshabit/squibble/free/activity/c;->r:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Lcom/masshabit/squibble/free/activity/a/q;

    invoke-direct {v0, p0}, Lcom/masshabit/squibble/free/activity/a/q;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_10
    sget-object v0, Lcom/masshabit/squibble/free/activity/c;->s:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Lcom/masshabit/squibble/free/activity/a/n;

    invoke-direct {v0, p0}, Lcom/masshabit/squibble/free/activity/a/n;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_11
    sget-object v0, Lcom/masshabit/squibble/free/activity/c;->t:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Lcom/masshabit/squibble/free/activity/a/r;

    invoke-direct {v0, p0}, Lcom/masshabit/squibble/free/activity/a/r;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_12
    move-object v0, v1

    goto/16 :goto_1
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/a/b;->c:Lcom/masshabit/squibble/free/activity/a/d;

    iget-object v0, v0, Lcom/masshabit/squibble/free/activity/a/d;->b:Lcom/masshabit/squibble/free/activity/e/m;

    invoke-interface {v0}, Lcom/masshabit/squibble/free/activity/e/m;->a()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    const-string v3, "local_file_path"

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/masshabit/squibble/free/activity/a/b;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/masshabit/squibble/free/activity/e/q;->a(Ljava/io/File;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/a/b;->c:Lcom/masshabit/squibble/free/activity/a/d;

    const-string v1, "local_file_path"

    iget-object v2, p0, Lcom/masshabit/squibble/free/activity/a/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/masshabit/squibble/free/activity/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/a/b;->c:Lcom/masshabit/squibble/free/activity/a/d;

    iget-object v0, v0, Lcom/masshabit/squibble/free/activity/a/d;->b:Lcom/masshabit/squibble/free/activity/e/m;

    invoke-interface {v0, p1}, Lcom/masshabit/squibble/free/activity/e/m;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/a/b;->c:Lcom/masshabit/squibble/free/activity/a/d;

    const-string v1, "local_file_path"

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/masshabit/squibble/free/activity/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/a/b;->c:Lcom/masshabit/squibble/free/activity/a/d;

    iget-object v0, v0, Lcom/masshabit/squibble/free/activity/a/d;->b:Lcom/masshabit/squibble/free/activity/e/m;

    invoke-interface {v0}, Lcom/masshabit/squibble/free/activity/e/m;->a()V

    goto :goto_0
.end method
