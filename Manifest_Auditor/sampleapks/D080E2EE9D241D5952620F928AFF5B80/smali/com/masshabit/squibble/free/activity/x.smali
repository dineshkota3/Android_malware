.class final Lcom/masshabit/squibble/free/activity/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/masshabit/squibble/free/activity/h;


# direct methods
.method constructor <init>(Lcom/masshabit/squibble/free/activity/h;)V
    .locals 0

    iput-object p1, p0, Lcom/masshabit/squibble/free/activity/x;->a:Lcom/masshabit/squibble/free/activity/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/x;->a:Lcom/masshabit/squibble/free/activity/h;

    invoke-virtual {v0}, Lcom/masshabit/squibble/free/activity/h;->finish()V

    move v0, v6

    :goto_0
    iget-object v1, p0, Lcom/masshabit/squibble/free/activity/x;->a:Lcom/masshabit/squibble/free/activity/h;

    invoke-static {v1}, Lcom/masshabit/squibble/free/activity/h;->a(Lcom/masshabit/squibble/free/activity/h;)[Z

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/masshabit/squibble/free/activity/x;->a:Lcom/masshabit/squibble/free/activity/h;

    invoke-static {v1}, Lcom/masshabit/squibble/free/activity/h;->a(Lcom/masshabit/squibble/free/activity/h;)[Z

    move-result-object v1

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/masshabit/squibble/free/activity/x;->a:Lcom/masshabit/squibble/free/activity/h;

    invoke-static {v1}, Lcom/masshabit/squibble/free/activity/h;->b(Lcom/masshabit/squibble/free/activity/h;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    const-string v2, "@@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1

    invoke-virtual {v1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "@("

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_1

    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x29

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_1

    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "contactname"

    invoke-virtual {v5, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/masshabit/squibble/free/activity/x;->a:Lcom/masshabit/squibble/free/activity/h;

    invoke-static {v3}, Lcom/masshabit/squibble/free/activity/h;->c(Lcom/masshabit/squibble/free/activity/h;)[Lcom/masshabit/squibble/free/activity/e/b;

    move-result-object v3

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/masshabit/squibble/free/activity/e/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/masshabit/squibble/free/activity/x;->a:Lcom/masshabit/squibble/free/activity/h;

    invoke-static {v2}, Lcom/masshabit/squibble/free/activity/h;->c(Lcom/masshabit/squibble/free/activity/h;)[Lcom/masshabit/squibble/free/activity/e/b;

    move-result-object v2

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/masshabit/squibble/free/activity/e/b;->b:Ljava/lang/String;

    const/16 v3, 0x3b

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-static {v2, v1}, Lcom/masshabit/squibble/free/activity/e/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0x2710

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    :cond_4
    return-void
.end method
