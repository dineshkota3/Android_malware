.class public Lcom/keji/danti/TextDetail;
.super Landroid/app/Activity;


# static fields
.field public static textDetail:Lcom/keji/danti/TextDetail;


# instance fields
.field public text:Lcom/keji/danti/a/ar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/keji/danti/TextDetail;->textDetail:Lcom/keji/danti/TextDetail;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/keji/danti/TextDetail;->text:Lcom/keji/danti/a/ar;

    invoke-virtual {v0, p1, p2, p3}, Lcom/keji/danti/a/ar;->a(IILandroid/content/Intent;)V

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sput-object p0, Lcom/keji/danti/TextDetail;->textDetail:Lcom/keji/danti/TextDetail;

    iget-object v0, p0, Lcom/keji/danti/TextDetail;->text:Lcom/keji/danti/a/ar;

    if-nez v0, :cond_0

    new-instance v0, Lcom/keji/danti/a/ar;

    invoke-direct {v0}, Lcom/keji/danti/a/ar;-><init>()V

    iput-object v0, p0, Lcom/keji/danti/TextDetail;->text:Lcom/keji/danti/a/ar;

    :cond_0
    iget-object v0, p0, Lcom/keji/danti/TextDetail;->text:Lcom/keji/danti/a/ar;

    invoke-virtual {v0, p0}, Lcom/keji/danti/a/ar;->a(Landroid/content/Context;)Lcom/keji/danti/a/l;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/keji/danti/TextDetail;->text:Lcom/keji/danti/a/ar;

    invoke-virtual {v0, p1}, Lcom/keji/danti/a/ar;->a(Landroid/view/Menu;)Z

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/keji/danti/TextDetail;->text:Lcom/keji/danti/a/ar;

    invoke-virtual {v0}, Lcom/keji/danti/a/ar;->f()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/keji/danti/TextDetail;->text:Lcom/keji/danti/a/ar;

    invoke-virtual {v0, p1}, Lcom/keji/danti/a/ar;->a(Landroid/view/MenuItem;)Z

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/keji/danti/TextDetail;->text:Lcom/keji/danti/a/ar;

    invoke-virtual {v0, p1}, Lcom/keji/danti/a/ar;->b(Landroid/view/Menu;)Z

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onStart()V
    .locals 1

    iget-object v0, p0, Lcom/keji/danti/TextDetail;->text:Lcom/keji/danti/a/ar;

    invoke-virtual {v0}, Lcom/keji/danti/a/ar;->d()V

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method
