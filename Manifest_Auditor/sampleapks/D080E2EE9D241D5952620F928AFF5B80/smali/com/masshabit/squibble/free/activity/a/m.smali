.class public final Lcom/masshabit/squibble/free/activity/a/m;
.super Lcom/masshabit/squibble/free/activity/a/Abstract;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/graphics/Bitmap;

.field private e:Lcom/masshabit/squibble/free/activity/a/Abstract;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/masshabit/squibble/free/activity/a/Abstract;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/a/m;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/a/m;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/a/m;->d:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/a/m;->e:Lcom/masshabit/squibble/free/activity/a/Abstract;

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
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/a/m;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/a/m;->c:Ljava/lang/String;

    sget-object v1, Lcom/masshabit/squibble/free/activity/e/k;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/masshabit/squibble/free/activity/e/n;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/masshabit/squibble/free/activity/a/m;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/a/m;->d:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/masshabit/squibble/free/activity/a/m;->e:Lcom/masshabit/squibble/free/activity/a/Abstract;

    invoke-virtual {v1}, Lcom/masshabit/squibble/free/activity/a/Abstract;->e()I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/a/m;->d:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/a/m;->e:Lcom/masshabit/squibble/free/activity/a/Abstract;

    invoke-virtual {v0}, Lcom/masshabit/squibble/free/activity/a/Abstract;->g()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/masshabit/squibble/free/activity/a/m;->d:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    const-string v1, "android.intent.extra.shortcut.ICON"

    iget-object v2, p0, Lcom/masshabit/squibble/free/activity/a/m;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_2
    iget-object v1, p0, Lcom/masshabit/squibble/free/activity/a/m;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/masshabit/squibble/free/activity/a/m;->d:Landroid/graphics/Bitmap;

    invoke-static {v1, v0, v2}, Lcom/masshabit/squibble/free/activity/e/j;->a(Ljava/lang/String;Landroid/content/Intent;Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/a/m;->d:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public final d()V
    .locals 3

    const-string v0, ";"

    :try_start_0
    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/a/m;->a:Ljava/lang/String;

    sget-object v1, Lcom/masshabit/squibble/free/activity/c;->k:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/masshabit/squibble/free/activity/a/m;->b:Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/masshabit/squibble/free/activity/a/m;->c:Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/masshabit/squibble/free/activity/a/b;->a(Ljava/lang/String;)Lcom/masshabit/squibble/free/activity/a/Abstract;

    move-result-object v0

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/a/m;->e:Lcom/masshabit/squibble/free/activity/a/Abstract;

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/a/m;->e:Lcom/masshabit/squibble/free/activity/a/Abstract;

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/masshabit/squibble/free/activity/a/Abstract;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
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
