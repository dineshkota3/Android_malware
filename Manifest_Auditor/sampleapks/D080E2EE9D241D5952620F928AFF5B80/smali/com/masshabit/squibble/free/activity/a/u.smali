.class public final Lcom/masshabit/squibble/free/activity/a/u;
.super Lcom/masshabit/squibble/free/activity/a/Abstract;


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/masshabit/squibble/free/activity/a/Abstract;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/a/u;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/masshabit/squibble/free/activity/e/m;)V
    .locals 0

    return-void
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final c()Z
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lcom/masshabit/squibble/free/activity/e/l;

    iget-object v1, p0, Lcom/masshabit/squibble/free/activity/a/u;->b:Ljava/lang/String;

    sget-object v2, Lcom/masshabit/squibble/free/activity/e/k;->f:Ljava/lang/String;

    new-instance v3, Lcom/masshabit/squibble/free/activity/a/v;

    invoke-direct {v3, p0}, Lcom/masshabit/squibble/free/activity/a/v;-><init>(Lcom/masshabit/squibble/free/activity/a/u;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/masshabit/squibble/free/activity/e/l;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/masshabit/squibble/free/activity/e/m;I)V

    invoke-virtual {v0}, Lcom/masshabit/squibble/free/activity/e/l;->start()V

    return v4
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/a/u;->a:Ljava/lang/String;

    sget-object v1, Lcom/masshabit/squibble/free/activity/c;->m:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/a/u;->b:Ljava/lang/String;

    return-void
.end method

.method public final e()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final f()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final g()Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final i()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
