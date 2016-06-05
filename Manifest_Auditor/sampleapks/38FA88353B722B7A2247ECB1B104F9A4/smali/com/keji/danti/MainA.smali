.class public Lcom/keji/danti/MainA;
.super Lcom/keji/danti/util/NewTabActiivty;


# static fields
.field public static main:Lcom/keji/danti/MainA;


# instance fields
.field public m:Lcom/keji/danti/a/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/keji/danti/MainA;->main:Lcom/keji/danti/MainA;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/keji/danti/util/NewTabActiivty;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keji/danti/MainA;->m:Lcom/keji/danti/a/n;

    return-void
.end method


# virtual methods
.method public getKernel()Lcom/keji/danti/a/n;
    .locals 1

    iget-object v0, p0, Lcom/keji/danti/MainA;->m:Lcom/keji/danti/a/n;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/keji/danti/util/NewTabActiivty;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/keji/danti/util/pi;->a(Landroid/content/Context;)Lcom/keji/danti/util/pi;

    sput-object p0, Lcom/keji/danti/MainA;->main:Lcom/keji/danti/MainA;

    iget-object v0, p0, Lcom/keji/danti/MainA;->m:Lcom/keji/danti/a/n;

    if-nez v0, :cond_0

    new-instance v0, Lcom/keji/danti/a/n;

    invoke-direct {v0}, Lcom/keji/danti/a/n;-><init>()V

    iput-object v0, p0, Lcom/keji/danti/MainA;->m:Lcom/keji/danti/a/n;

    :cond_0
    iget-object v0, p0, Lcom/keji/danti/MainA;->m:Lcom/keji/danti/a/n;

    invoke-virtual {v0, p0}, Lcom/keji/danti/a/n;->a(Landroid/content/Context;)Lcom/keji/danti/a/l;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/keji/danti/MainA;->m:Lcom/keji/danti/a/n;

    invoke-virtual {v0, v1}, Lcom/keji/danti/a/n;->a(I)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
