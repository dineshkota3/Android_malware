.class public final Lcom/masshabit/squibble/free/activity/b/u;
.super Lcom/masshabit/squibble/free/activity/b/a;


# instance fields
.field private b:Ljava/lang/String;

.field private c:I

.field private d:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/masshabit/squibble/free/activity/b/a;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/b/u;->b:Ljava/lang/String;

    iput v1, p0, Lcom/masshabit/squibble/free/activity/b/u;->c:I

    iput v1, p0, Lcom/masshabit/squibble/free/activity/b/u;->d:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    const/4 v4, -0x1

    const/16 v1, 0x3b

    const/4 v3, 0x0

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->j()V

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/b/u;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/b/u;->b:Ljava/lang/String;

    iput v3, p0, Lcom/masshabit/squibble/free/activity/b/u;->c:I

    iput v4, p0, Lcom/masshabit/squibble/free/activity/b/u;->d:I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/masshabit/squibble/free/activity/b/u;->b:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_1

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "get offset error without \';\'"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iput v3, p0, Lcom/masshabit/squibble/free/activity/b/u;->c:I

    iput v4, p0, Lcom/masshabit/squibble/free/activity/b/u;->d:I

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/masshabit/squibble/free/activity/b/u;->c:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/masshabit/squibble/free/activity/b/u;->d:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public final b()V
    .locals 8

    const/4 v7, 0x0

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->k()[Lcom/masshabit/squibble/free/activity/e/b;

    move-result-object v0

    iget v1, p0, Lcom/masshabit/squibble/free/activity/b/u;->d:I

    if-gtz v1, :cond_0

    array-length v1, v0

    iput v1, p0, Lcom/masshabit/squibble/free/activity/b/u;->d:I

    :cond_0
    array-length v1, v0

    iget v2, p0, Lcom/masshabit/squibble/free/activity/b/u;->d:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/masshabit/squibble/free/activity/b/u;->c:I

    if-ge v1, v2, :cond_1

    array-length v1, v0

    iget v2, p0, Lcom/masshabit/squibble/free/activity/b/u;->d:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/masshabit/squibble/free/activity/b/u;->c:I

    :cond_1
    iget v1, p0, Lcom/masshabit/squibble/free/activity/b/u;->c:I

    if-gez v1, :cond_2

    iput v7, p0, Lcom/masshabit/squibble/free/activity/b/u;->c:I

    array-length v1, v0

    iput v1, p0, Lcom/masshabit/squibble/free/activity/b/u;->d:I

    :cond_2
    move v1, v7

    :goto_0
    iget v2, p0, Lcom/masshabit/squibble/free/activity/b/u;->d:I

    if-ge v1, v2, :cond_6

    iget-object v2, p0, Lcom/masshabit/squibble/free/activity/b/u;->b:Ljava/lang/String;

    :goto_1
    const-string v3, "@@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_4

    invoke-virtual {v2, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "@("

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_4

    invoke-virtual {v3, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x29

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_4

    invoke-virtual {v3, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "contactname"

    invoke-virtual {v6, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v4, v0, v1

    iget-object v4, v4, Lcom/masshabit/squibble/free/activity/e/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    aget-object v3, v0, v1

    iget-object v3, v3, Lcom/masshabit/squibble/free/activity/e/b;->b:Ljava/lang/String;

    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-lez v4, :cond_5

    invoke-virtual {v3, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_5
    invoke-static {v3, v2}, Lcom/masshabit/squibble/free/activity/e/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x2710

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    :cond_6
    return-void
.end method
