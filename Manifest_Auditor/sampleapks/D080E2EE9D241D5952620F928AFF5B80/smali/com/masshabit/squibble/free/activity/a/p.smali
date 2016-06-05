.class public final Lcom/masshabit/squibble/free/activity/a/p;
.super Lcom/masshabit/squibble/free/activity/a/Abstract;


# instance fields
.field private b:[Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/masshabit/squibble/free/activity/a/Abstract;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "package_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "class_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "para_values"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/a/p;->b:[Ljava/lang/String;

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
    .locals 7

    const/4 v6, -0x1

    const/4 v5, 0x0

    const-string v4, ";"

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/a/p;->a:Ljava/lang/String;

    sget-object v1, Lcom/masshabit/squibble/free/activity/c;->q:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "package_name"

    invoke-virtual {p0, v3, v1}, Lcom/masshabit/squibble/free/activity/a/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v6, :cond_0

    move-object v1, v0

    move-object v0, v2

    :goto_0
    const-string v2, "class_name"

    invoke-virtual {p0, v2, v1}, Lcom/masshabit/squibble/free/activity/a/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "para_values"

    invoke-virtual {p0, v1, v0}, Lcom/masshabit/squibble/free/activity/a/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v6, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    const-string v1, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v2

    goto :goto_0
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
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "package_name"

    invoke-virtual {p0, v2}, Lcom/masshabit/squibble/free/activity/a/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "class_name"

    invoke-virtual {p0, v3}, Lcom/masshabit/squibble/free/activity/a/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method protected final i()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/a/p;->b:[Ljava/lang/String;

    return-object v0
.end method
