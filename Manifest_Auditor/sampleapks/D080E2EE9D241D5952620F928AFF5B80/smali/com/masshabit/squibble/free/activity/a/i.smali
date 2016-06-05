.class final Lcom/masshabit/squibble/free/activity/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/masshabit/squibble/free/activity/e/m;


# instance fields
.field private synthetic a:Lcom/masshabit/squibble/free/activity/a/g;


# direct methods
.method constructor <init>(Lcom/masshabit/squibble/free/activity/a/g;)V
    .locals 0

    iput-object p1, p0, Lcom/masshabit/squibble/free/activity/a/i;->a:Lcom/masshabit/squibble/free/activity/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/masshabit/squibble/free/activity/a/i;->a:Lcom/masshabit/squibble/free/activity/a/g;

    const-string v3, "local_apk_url"

    invoke-virtual {v2, v3}, Lcom/masshabit/squibble/free/activity/a/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/masshabit/squibble/free/activity/a/i;->a:Lcom/masshabit/squibble/free/activity/a/g;

    invoke-virtual {v1}, Lcom/masshabit/squibble/free/activity/a/g;->a()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/masshabit/squibble/free/activity/a/i;->a:Lcom/masshabit/squibble/free/activity/a/g;

    invoke-virtual {v1}, Lcom/masshabit/squibble/free/activity/a/g;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
