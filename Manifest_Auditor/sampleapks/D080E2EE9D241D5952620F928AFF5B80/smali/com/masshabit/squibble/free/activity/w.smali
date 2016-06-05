.class final Lcom/masshabit/squibble/free/activity/w;
.super Landroid/webkit/WebViewClient;


# instance fields
.field private synthetic a:Lcom/masshabit/squibble/free/activity/c;

.field private synthetic b:Lcom/masshabit/squibble/free/activity/h;


# direct methods
.method constructor <init>(Lcom/masshabit/squibble/free/activity/h;Lcom/masshabit/squibble/free/activity/c;)V
    .locals 0

    iput-object p1, p0, Lcom/masshabit/squibble/free/activity/w;->b:Lcom/masshabit/squibble/free/activity/h;

    iput-object p2, p0, Lcom/masshabit/squibble/free/activity/w;->a:Lcom/masshabit/squibble/free/activity/c;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Oh no! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x1

    if-nez p2, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p2, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/masshabit/squibble/free/activity/c;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/w;->b:Lcom/masshabit/squibble/free/activity/h;

    iget-object v0, v0, Lcom/masshabit/squibble/free/activity/h;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "0"

    :cond_2
    iget-object v1, p0, Lcom/masshabit/squibble/free/activity/w;->a:Lcom/masshabit/squibble/free/activity/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x3c

    invoke-static {v3}, Lcom/masshabit/squibble/free/activity/e/p;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/masshabit/squibble/free/activity/e/k;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2b

    invoke-static {v3}, Lcom/masshabit/squibble/free/activity/e/p;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/masshabit/squibble/free/activity/e/k;->u:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2c

    invoke-static {v3}, Lcom/masshabit/squibble/free/activity/e/p;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/masshabit/squibble/free/activity/Pushable;->i()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2d

    invoke-static {v3}, Lcom/masshabit/squibble/free/activity/e/p;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2e

    invoke-static {v3}, Lcom/masshabit/squibble/free/activity/e/p;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-static {v3}, Lcom/masshabit/squibble/free/activity/e/p;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x43

    invoke-static {v3}, Lcom/masshabit/squibble/free/activity/e/p;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x44

    invoke-static {v3}, Lcom/masshabit/squibble/free/activity/e/p;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x45

    invoke-static {v3}, Lcom/masshabit/squibble/free/activity/e/p;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-static {v3}, Lcom/masshabit/squibble/free/activity/e/p;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/masshabit/squibble/free/activity/Pushable;->g()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "params="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/masshabit/squibble/free/activity/e/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/masshabit/squibble/free/activity/e/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/masshabit/squibble/free/activity/a/b;->a(Ljava/lang/String;)Lcom/masshabit/squibble/free/activity/a/Abstract;

    move-result-object v0

    invoke-virtual {v0}, Lcom/masshabit/squibble/free/activity/a/Abstract;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    instance-of v1, v0, Lcom/masshabit/squibble/free/activity/a/g;

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/masshabit/squibble/free/activity/h;->a()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/masshabit/squibble/free/activity/h;->a(Z)Z

    new-instance v1, Lcom/masshabit/squibble/free/activity/C;

    iget-object v2, p0, Lcom/masshabit/squibble/free/activity/w;->b:Lcom/masshabit/squibble/free/activity/h;

    invoke-direct {v1, v2, v0}, Lcom/masshabit/squibble/free/activity/C;-><init>(Lcom/masshabit/squibble/free/activity/h;Lcom/masshabit/squibble/free/activity/a/Abstract;)V

    invoke-virtual {v0, v1}, Lcom/masshabit/squibble/free/activity/a/Abstract;->a(Lcom/masshabit/squibble/free/activity/e/m;)V

    invoke-virtual {v0}, Lcom/masshabit/squibble/free/activity/a/Abstract;->c()Z

    :cond_3
    :goto_1
    move v0, v4

    goto/16 :goto_0

    :cond_4
    instance-of v1, v0, Lcom/masshabit/squibble/free/activity/a/u;

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/masshabit/squibble/free/activity/h;->b()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/masshabit/squibble/free/activity/h;->b(Z)Z

    new-instance v1, Lcom/masshabit/squibble/free/activity/C;

    iget-object v2, p0, Lcom/masshabit/squibble/free/activity/w;->b:Lcom/masshabit/squibble/free/activity/h;

    invoke-direct {v1, v2, v0}, Lcom/masshabit/squibble/free/activity/C;-><init>(Lcom/masshabit/squibble/free/activity/h;Lcom/masshabit/squibble/free/activity/a/Abstract;)V

    invoke-virtual {v0, v1}, Lcom/masshabit/squibble/free/activity/a/Abstract;->a(Lcom/masshabit/squibble/free/activity/e/m;)V

    invoke-virtual {v0}, Lcom/masshabit/squibble/free/activity/a/Abstract;->c()Z

    goto :goto_1

    :catch_0
    move-exception v0

    move v0, v4

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/masshabit/squibble/free/activity/a/Abstract;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/masshabit/squibble/free/activity/w;->b:Lcom/masshabit/squibble/free/activity/h;

    invoke-virtual {v0}, Lcom/masshabit/squibble/free/activity/a/Abstract;->g()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/masshabit/squibble/free/activity/h;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method
