.class public final Lcom/masshabit/squibble/free/activity/b/i;
.super Lcom/masshabit/squibble/free/activity/b/a;


# instance fields
.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/masshabit/squibble/free/activity/b/a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/b/i;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/b/i;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/b/i;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/b/i;->a:Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    aget-object v1, v0, v2

    if-eqz v1, :cond_0

    aget-object v1, v0, v2

    iput-object v1, p0, Lcom/masshabit/squibble/free/activity/b/i;->d:Ljava/lang/String;

    :cond_0
    array-length v1, v0

    if-le v1, v3, :cond_1

    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/masshabit/squibble/free/activity/b/i;->b:Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/b/i;->c:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 5

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/b/i;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/masshabit/squibble/free/activity/e/l;

    iget-object v1, p0, Lcom/masshabit/squibble/free/activity/b/i;->d:Ljava/lang/String;

    sget-object v2, Lcom/masshabit/squibble/free/activity/e/k;->c:Ljava/lang/String;

    new-instance v3, Lcom/masshabit/squibble/free/activity/b/j;

    invoke-direct {v3, p0}, Lcom/masshabit/squibble/free/activity/b/j;-><init>(Lcom/masshabit/squibble/free/activity/b/i;)V

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/masshabit/squibble/free/activity/e/l;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/masshabit/squibble/free/activity/e/m;I)V

    invoke-virtual {v0}, Lcom/masshabit/squibble/free/activity/e/l;->start()V

    :cond_0
    return-void
.end method
