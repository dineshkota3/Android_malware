.class public Lcom/keji/danti/Background;
.super Landroid/app/Activity;


# static fields
.field public static background:Lcom/keji/danti/Background;


# instance fields
.field public m:Lcom/keji/danti/a/aq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/keji/danti/Background;->background:Lcom/keji/danti/Background;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public getKernel()Lcom/keji/danti/a/aq;
    .locals 1

    iget-object v0, p0, Lcom/keji/danti/Background;->m:Lcom/keji/danti/a/aq;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/16 v0, 0x7b

    if-ne p1, v0, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/keji/danti/Background;->setWallpaper(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "atemp.jpg"

    invoke-virtual {p0, v0}, Lcom/keji/danti/Background;->deleteFile(Ljava/lang/String;)Z

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/16 v1, 0x400

    sput-object p0, Lcom/keji/danti/Background;->background:Lcom/keji/danti/Background;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/keji/danti/Background;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/keji/danti/Background;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/keji/danti/a/aq;

    invoke-direct {v0}, Lcom/keji/danti/a/aq;-><init>()V

    iput-object v0, p0, Lcom/keji/danti/Background;->m:Lcom/keji/danti/a/aq;

    iget-object v0, p0, Lcom/keji/danti/Background;->m:Lcom/keji/danti/a/aq;

    invoke-virtual {v0, p0}, Lcom/keji/danti/a/aq;->a(Landroid/content/Context;)Lcom/keji/danti/a/l;

    return-void
.end method
