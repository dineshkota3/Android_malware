.class public Lcom/keji/danti/Lists;
.super Landroid/app/Activity;


# instance fields
.field a:Lcom/keji/danti/a/pc;

.field b:Lcom/keji/danti/Lists;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/keji/danti/Lists;->a:Lcom/keji/danti/a/pc;

    iput-object v0, p0, Lcom/keji/danti/Lists;->b:Lcom/keji/danti/Lists;

    return-void
.end method


# virtual methods
.method public checkLastRun()V
    .locals 6

    const/4 v5, 0x0

    const/4 v1, -0x1

    const-string v0, "book_lastRead_id"

    invoke-static {v0, v1}, Lcom/keji/danti/util/pi;->b(Ljava/lang/String;I)I

    move-result v0

    if-ne v1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/keji/danti/Lists;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/keji/danti/util/pi;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/keji/danti/util/pi;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":string/lt_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v5, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "book_lastRead_datetime"

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/keji/danti/util/pi;->a(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/keji/danti/util/ao;->a(J)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u60a8"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u770b\u7684\u5185\u5bb9\u662f:\n\u300a"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/keji/danti/util/ao;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u300b\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u7ee7\u7eed"

    new-instance v2, Lcom/keji/danti/ph;

    invoke-direct {v2, p0}, Lcom/keji/danti/ph;-><init>(Lcom/keji/danti/Lists;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/keji/danti/pg;

    invoke-direct {v2, p0}, Lcom/keji/danti/pg;-><init>(Lcom/keji/danti/Lists;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/keji/danti/Lists;->b:Lcom/keji/danti/Lists;

    new-instance v0, Lcom/keji/danti/a/pc;

    invoke-direct {v0}, Lcom/keji/danti/a/pc;-><init>()V

    iput-object v0, p0, Lcom/keji/danti/Lists;->a:Lcom/keji/danti/a/pc;

    iget-object v0, p0, Lcom/keji/danti/Lists;->a:Lcom/keji/danti/a/pc;

    invoke-virtual {v0, p0}, Lcom/keji/danti/a/pc;->a(Landroid/content/Context;)Lcom/keji/danti/a/l;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/keji/danti/Lists;->a:Lcom/keji/danti/a/pc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keji/danti/Lists;->a:Lcom/keji/danti/a/pc;

    invoke-virtual {v0}, Lcom/keji/danti/a/pc;->b()V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/keji/danti/MainA;->main:Lcom/keji/danti/MainA;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/keji/danti/MainA;->main:Lcom/keji/danti/MainA;

    iget-object v0, v0, Lcom/keji/danti/MainA;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget-object v0, p0, Lcom/keji/danti/Lists;->b:Lcom/keji/danti/Lists;

    invoke-static {v0}, Lcom/keji/danti/a/su;->a(Landroid/app/Activity;)V

    return-void
.end method
