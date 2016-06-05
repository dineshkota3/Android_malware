.class public final Lcom/masshabit/squibble/free/activity/a/j;
.super Lcom/masshabit/squibble/free/activity/a/Abstract;


# instance fields
.field private b:[Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/masshabit/squibble/free/activity/a/Abstract;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "to_address"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "cc_address"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "bcc_address"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "email_title"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "email_content"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/a/j;->b:[Ljava/lang/String;

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
    .locals 6

    const-string v0, "to_address"

    const-string v0, "UTF-8"

    const-string v0, "}"

    const-string v0, "{"

    :try_start_0
    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/a/j;->a:Ljava/lang/String;

    sget-object v1, Lcom/masshabit/squibble/free/activity/c;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, "to_address"

    invoke-virtual {p0, v3, v1}, Lcom/masshabit/squibble/free/activity/a/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "{"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "}"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v3, "UTF-8"

    invoke-static {v1, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "email_title"

    invoke-virtual {p0, v3, v1}, Lcom/masshabit/squibble/free/activity/a/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "{"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "}"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "email_content"

    invoke-virtual {p0, v1, v0}, Lcom/masshabit/squibble/free/activity/a/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_0

    if-nez v1, :cond_3

    const-string v4, "to_address"

    aget-object v5, v3, v1

    invoke-virtual {p0, v4, v5}, Lcom/masshabit/squibble/free/activity/a/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x1

    if-ne v1, v4, :cond_4

    const-string v4, "cc_address"

    aget-object v5, v3, v1

    invoke-virtual {p0, v4, v5}, Lcom/masshabit/squibble/free/activity/a/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_4
    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    const-string v4, "bcc_address"

    aget-object v5, v3, v1

    invoke-virtual {p0, v4, v5}, Lcom/masshabit/squibble/free/activity/a/j;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method public final e()I
    .locals 1

    const v0, 0x108009b

    return v0
.end method

.method public final f()I
    .locals 1

    const v0, 0x1080029

    return v0
.end method

.method public final g()Landroid/content/Intent;
    .locals 9

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v8, "email_content"

    const-string v7, "cc_address"

    const-string v6, "bcc_address"

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "to_address"

    invoke-virtual {p0, v1}, Lcom/masshabit/squibble/free/activity/a/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "android.intent.extra.EMAIL"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "to_address"

    invoke-virtual {p0, v3}, Lcom/masshabit/squibble/free/activity/a/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "cc_address"

    invoke-virtual {p0, v7}, Lcom/masshabit/squibble/free/activity/a/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "android.intent.extra.CC"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "cc_address"

    invoke-virtual {p0, v7}, Lcom/masshabit/squibble/free/activity/a/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const-string v1, "bcc_address"

    invoke-virtual {p0, v6}, Lcom/masshabit/squibble/free/activity/a/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "android.intent.extra.BCC"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "bcc_address"

    invoke-virtual {p0, v6}, Lcom/masshabit/squibble/free/activity/a/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const-string v1, "email_title"

    invoke-virtual {p0, v1}, Lcom/masshabit/squibble/free/activity/a/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, "android.intent.extra.SUBJECT"

    const-string v2, "email_title"

    invoke-virtual {p0, v2}, Lcom/masshabit/squibble/free/activity/a/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    const-string v1, "email_content"

    invoke-virtual {p0, v8}, Lcom/masshabit/squibble/free/activity/a/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v1, "android.intent.extra.TEXT"

    const-string v2, "email_content"

    invoke-virtual {p0, v8}, Lcom/masshabit/squibble/free/activity/a/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    const-string v1, "message/rfc822"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected final i()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/a/j;->b:[Ljava/lang/String;

    return-object v0
.end method
