.class public Lcom/admogo/adapters/AdTouchAdapter;
.super Lcom/admogo/adapters/AdMogoAdapter;
.source "AdTouchAdapter.java"

# interfaces
.implements Lcom/energysource/szj/embeded/AdListener;


# instance fields
.field private activity:Landroid/app/Activity;

.field private adView:Lcom/energysource/szj/embeded/AdView;


# direct methods
.method public constructor <init>(Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)V
    .locals 0
    .param p1, "adMogolLayout"    # Lcom/admogo/AdMogoLayout;
    .param p2, "ration"    # Lcom/admogo/obj/Ration;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/admogo/adapters/AdMogoAdapter;-><init>(Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)V

    .line 29
    return-void
.end method


# virtual methods
.method public failedReceiveAd(Lcom/energysource/szj/embeded/AdView;)V
    .locals 3
    .param p1, "adView"    # Lcom/energysource/szj/embeded/AdView;

    .prologue
    .line 61
    const-string v1, "AdsMOGO SDK"

    const-string v2, "AdTouch failure"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/energysource/szj/embeded/AdManager;->setAdListener(Lcom/energysource/szj/embeded/AdListener;)V

    .line 63
    iget-object v1, p0, Lcom/admogo/adapters/AdTouchAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/admogo/adapters/AdTouchAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admogo/AdMogoLayout;

    .line 65
    .local v0, "adMogoLayout":Lcom/admogo/AdMogoLayout;
    if-nez v0, :cond_1

    .line 70
    .end local v0    # "adMogoLayout":Lcom/admogo/AdMogoLayout;
    :cond_0
    :goto_0
    return-void

    .line 68
    .restart local v0    # "adMogoLayout":Lcom/admogo/AdMogoLayout;
    :cond_1
    invoke-virtual {v0}, Lcom/admogo/AdMogoLayout;->rollover()V

    goto :goto_0
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 95
    const-string v0, "AdsMOGO SDK"

    const-string v1, "AdTouch Finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void
.end method

.method public handle()V
    .locals 7

    .prologue
    .line 32
    iget-object v2, p0, Lcom/admogo/adapters/AdTouchAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admogo/AdMogoLayout;

    .line 33
    .local v0, "adMogolLayout":Lcom/admogo/AdMogoLayout;
    if-nez v0, :cond_1

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    iget-object v2, v0, Lcom/admogo/AdMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    iput-object v2, p0, Lcom/admogo/adapters/AdTouchAdapter;->activity:Landroid/app/Activity;

    .line 38
    iget-object v2, p0, Lcom/admogo/adapters/AdTouchAdapter;->activity:Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 42
    :try_start_0
    iget-object v2, p0, Lcom/admogo/adapters/AdTouchAdapter;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/admogo/adapters/AdTouchAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/energysource/szj/embeded/AdManager;->initAd(Landroid/app/Activity;Ljava/lang/String;)Z

    .line 43
    new-instance v2, Lcom/energysource/szj/embeded/AdView;

    iget-object v3, p0, Lcom/admogo/adapters/AdTouchAdapter;->activity:Landroid/app/Activity;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/energysource/szj/embeded/AdView;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/admogo/adapters/AdTouchAdapter;->adView:Lcom/energysource/szj/embeded/AdView;

    .line 44
    invoke-static {}, Lcom/energysource/szj/embeded/AdManager;->openPermissionJudge()V

    .line 45
    const/16 v2, 0x66

    const/16 v3, 0x3e8

    const/16 v4, 0x51

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/energysource/szj/embeded/AdManager;->addAd(IIIII)V

    .line 46
    invoke-static {p0}, Lcom/energysource/szj/embeded/AdManager;->setAdListener(Lcom/energysource/szj/embeded/AdListener;)V

    .line 47
    invoke-static {}, Lcom/energysource/szj/embeded/AdManager;->openAllAdView()V

    .line 48
    iget-object v2, p0, Lcom/admogo/adapters/AdTouchAdapter;->adView:Lcom/energysource/szj/embeded/AdView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Lcom/admogo/AdMogoLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 51
    .local v1, "localIllegalArgumentException":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Lcom/admogo/AdMogoLayout;->rollover()V

    goto :goto_0
.end method

.method public receiveAd(Lcom/energysource/szj/embeded/AdView;)V
    .locals 4
    .param p1, "adView"    # Lcom/energysource/szj/embeded/AdView;

    .prologue
    .line 74
    const-string v1, "AdsMOGO SDK"

    const-string v2, "AdTouch success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/energysource/szj/embeded/AdManager;->setAdListener(Lcom/energysource/szj/embeded/AdListener;)V

    .line 76
    iget-object v1, p0, Lcom/admogo/adapters/AdTouchAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/admogo/adapters/AdTouchAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admogo/AdMogoLayout;

    .line 78
    .local v0, "adMogoLayout":Lcom/admogo/AdMogoLayout;
    if-nez v0, :cond_1

    .line 87
    .end local v0    # "adMogoLayout":Lcom/admogo/AdMogoLayout;
    :cond_0
    :goto_0
    return-void

    .line 81
    .restart local v0    # "adMogoLayout":Lcom/admogo/AdMogoLayout;
    :cond_1
    iget-object v1, v0, Lcom/admogo/AdMogoLayout;->adMogoManager:Lcom/admogo/AdMogoManager;

    invoke-virtual {v1}, Lcom/admogo/AdMogoManager;->resetRollover()V

    .line 82
    iget-object v1, v0, Lcom/admogo/AdMogoLayout;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/admogo/AdMogoLayout$ViewAdRunnable;

    .line 83
    const/16 v3, 0x1c

    invoke-direct {v2, v0, p1, v3}, Lcom/admogo/AdMogoLayout$ViewAdRunnable;-><init>(Lcom/admogo/AdMogoLayout;Landroid/view/ViewGroup;I)V

    .line 82
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 84
    invoke-virtual {v0}, Lcom/admogo/AdMogoLayout;->rotateThreadedDelayed()V

    goto :goto_0
.end method
