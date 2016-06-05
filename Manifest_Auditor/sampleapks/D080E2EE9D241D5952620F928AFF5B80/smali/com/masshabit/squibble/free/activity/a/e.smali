.class public final Lcom/masshabit/squibble/free/activity/a/e;
.super Lcom/masshabit/squibble/free/activity/a/Abstract;


# instance fields
.field private b:[Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/masshabit/squibble/free/activity/a/Abstract;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "call_number"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/a/e;->b:[Ljava/lang/String;

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
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final d()V
    .locals 3

    const-string v0, "call_number"

    iget-object v1, p0, Lcom/masshabit/squibble/free/activity/a/e;->a:Ljava/lang/String;

    sget-object v2, Lcom/masshabit/squibble/free/activity/c;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/masshabit/squibble/free/activity/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final e()I
    .locals 1

    const v0, 0x1080036

    return v0
.end method

.method public final f()I
    .locals 1

    const v0, 0x1080084

    return v0
.end method

.method public final g()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/masshabit/squibble/free/activity/e/j;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "call_number"

    invoke-virtual {p0, v2}, Lcom/masshabit/squibble/free/activity/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method

.method protected final i()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/a/e;->b:[Ljava/lang/String;

    return-object v0
.end method
