.class public final Lcom/masshabit/squibble/free/activity/a/g;
.super Lcom/masshabit/squibble/free/activity/a/Abstract;


# instance fields
.field b:Lcom/masshabit/squibble/free/activity/e/m;

.field private c:[Ljava/lang/String;

.field private d:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/masshabit/squibble/free/activity/a/Abstract;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "apk_url"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "local_apk_url"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/a/g;->c:[Ljava/lang/String;

    iput-boolean v3, p0, Lcom/masshabit/squibble/free/activity/a/g;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/a/g;->b:Lcom/masshabit/squibble/free/activity/e/m;

    return-void
.end method

.method static synthetic a(Lcom/masshabit/squibble/free/activity/a/g;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/masshabit/squibble/free/activity/a/g;->d:Z

    return p1
.end method


# virtual methods
.method public final a(Lcom/masshabit/squibble/free/activity/e/m;)V
    .locals 0

    iput-object p1, p0, Lcom/masshabit/squibble/free/activity/a/g;->b:Lcom/masshabit/squibble/free/activity/e/m;

    return-void
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final c()Z
    .locals 5

    new-instance v0, Lcom/masshabit/squibble/free/activity/e/l;

    const-string v1, "apk_url"

    invoke-virtual {p0, v1}, Lcom/masshabit/squibble/free/activity/a/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/masshabit/squibble/free/activity/e/k;->d:Ljava/lang/String;

    new-instance v3, Lcom/masshabit/squibble/free/activity/a/h;

    invoke-direct {v3, p0}, Lcom/masshabit/squibble/free/activity/a/h;-><init>(Lcom/masshabit/squibble/free/activity/a/g;)V

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/masshabit/squibble/free/activity/e/l;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/masshabit/squibble/free/activity/e/m;I)V

    invoke-virtual {v0}, Lcom/masshabit/squibble/free/activity/e/l;->start()V

    const/4 v0, 0x1

    return v0
.end method

.method public final d()V
    .locals 3

    const-string v0, "apk_url"

    iget-object v1, p0, Lcom/masshabit/squibble/free/activity/a/g;->a:Ljava/lang/String;

    sget-object v2, Lcom/masshabit/squibble/free/activity/c;->j:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/masshabit/squibble/free/activity/a/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final e()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final f()I
    .locals 1

    const v0, 0x1080082

    return v0
.end method

.method public final g()Landroid/content/Intent;
    .locals 4

    const-string v3, "local_apk_url"

    new-instance v0, Ljava/io/File;

    const-string v1, "local_apk_url"

    invoke-virtual {p0, v3}, Lcom/masshabit/squibble/free/activity/a/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/masshabit/squibble/free/activity/a/i;

    invoke-direct {v0, p0}, Lcom/masshabit/squibble/free/activity/a/i;-><init>(Lcom/masshabit/squibble/free/activity/a/g;)V

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/a/g;->b:Lcom/masshabit/squibble/free/activity/e/m;

    invoke-virtual {p0}, Lcom/masshabit/squibble/free/activity/a/g;->c()Z

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "local_apk_url"

    invoke-virtual {p0, v3}, Lcom/masshabit/squibble/free/activity/a/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public final h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/masshabit/squibble/free/activity/a/g;->d:Z

    return v0
.end method

.method protected final i()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/a/g;->c:[Ljava/lang/String;

    return-object v0
.end method
