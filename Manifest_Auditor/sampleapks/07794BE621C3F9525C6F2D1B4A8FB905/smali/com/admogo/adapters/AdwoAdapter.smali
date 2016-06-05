.class public Lcom/admogo/adapters/AdwoAdapter;
.super Lcom/admogo/adapters/AdMogoAdapter;
.source "AdwoAdapter.java"

# interfaces
.implements Lcom/adwo/adsdk/AdListener;


# instance fields
.field private activity:Landroid/app/Activity;

.field private adMogoLayout:Lcom/admogo/AdMogoLayout;

.field private adView:Lcom/adwo/adsdk/AdwoAdView;


# direct methods
.method public constructor <init>(Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)V
    .locals 0
    .param p1, "adMogoLayout"    # Lcom/admogo/AdMogoLayout;
    .param p2, "ration"    # Lcom/admogo/obj/Ration;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/admogo/adapters/AdMogoAdapter;-><init>(Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)V

    .line 32
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 108
    const-string v0, "AdsMOGO SDK"

    const-string v1, "Adwo Finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void
.end method

.method public handle()V
    .locals 9

    .prologue
    .line 36
    iget-object v0, p0, Lcom/admogo/adapters/AdwoAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admogo/AdMogoLayout;

    iput-object v0, p0, Lcom/admogo/adapters/AdwoAdapter;->adMogoLayout:Lcom/admogo/AdMogoLayout;

    .line 37
    iget-object v0, p0, Lcom/admogo/adapters/AdwoAdapter;->adMogoLayout:Lcom/admogo/AdMogoLayout;

    if-nez v0, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/admogo/adapters/AdwoAdapter;->adMogoLayout:Lcom/admogo/AdMogoLayout;

    iget-object v0, v0, Lcom/admogo/AdMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/admogo/adapters/AdwoAdapter;->activity:Landroid/app/Activity;

    .line 41
    iget-object v0, p0, Lcom/admogo/adapters/AdwoAdapter;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/admogo/adapters/AdwoAdapter;->adMogoLayout:Lcom/admogo/AdMogoLayout;

    invoke-virtual {v0}, Lcom/admogo/AdMogoLayout;->getAdType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 46
    new-instance v8, Lcom/admogo/obj/Extra;

    invoke-direct {v8}, Lcom/admogo/obj/Extra;-><init>()V

    .line 47
    .local v8, "extra":Lcom/admogo/obj/Extra;
    iget v0, v8, Lcom/admogo/obj/Extra;->bgRed:I

    iget v1, v8, Lcom/admogo/obj/Extra;->bgGreen:I

    .line 48
    iget v2, v8, Lcom/admogo/obj/Extra;->bgBlue:I

    .line 47
    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    .line 58
    .local v4, "bgColor":I
    new-instance v0, Lcom/adwo/adsdk/AdwoAdView;

    iget-object v1, p0, Lcom/admogo/adapters/AdwoAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 59
    iget-object v2, p0, Lcom/admogo/adapters/AdwoAdapter;->ration:Lcom/admogo/obj/Ration;

    iget-object v2, v2, Lcom/admogo/obj/Ration;->key:Ljava/lang/String;

    const v3, 0x400080

    .line 60
    invoke-static {}, Lcom/admogo/AdMogoTargeting;->getTestMode()Z

    move-result v5

    const/16 v6, 0x258

    invoke-direct/range {v0 .. v6}, Lcom/adwo/adsdk/AdwoAdView;-><init>(Landroid/content/Context;Ljava/lang/String;IIZI)V

    .line 58
    iput-object v0, p0, Lcom/admogo/adapters/AdwoAdapter;->adView:Lcom/adwo/adsdk/AdwoAdView;

    .line 61
    iget-object v0, p0, Lcom/admogo/adapters/AdwoAdapter;->adView:Lcom/adwo/adsdk/AdwoAdView;

    invoke-virtual {v0, p0}, Lcom/adwo/adsdk/AdwoAdView;->setListener(Lcom/adwo/adsdk/AdListener;)V

    .line 62
    iget-object v0, p0, Lcom/admogo/adapters/AdwoAdapter;->adMogoLayout:Lcom/admogo/AdMogoLayout;

    iget-object v1, p0, Lcom/admogo/adapters/AdwoAdapter;->adView:Lcom/adwo/adsdk/AdwoAdView;

    invoke-virtual {v0, v1}, Lcom/admogo/AdMogoLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 64
    .end local v4    # "bgColor":I
    .end local v8    # "extra":Lcom/admogo/obj/Extra;
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 65
    .local v7, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/admogo/adapters/AdwoAdapter;->adMogoLayout:Lcom/admogo/AdMogoLayout;

    invoke-virtual {v0}, Lcom/admogo/AdMogoLayout;->rollover()V

    goto :goto_0
.end method

.method public onFailedToReceiveAd(Lcom/adwo/adsdk/AdwoAdView;)V
    .locals 3
    .param p1, "arg0"    # Lcom/adwo/adsdk/AdwoAdView;

    .prologue
    .line 71
    const-string v1, "AdsMOGO SDK"

    const-string v2, "AdWo failure"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v1, p0, Lcom/admogo/adapters/AdwoAdapter;->adView:Lcom/adwo/adsdk/AdwoAdView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/adwo/adsdk/AdwoAdView;->setListener(Lcom/adwo/adsdk/AdListener;)V

    .line 73
    iget-object v1, p0, Lcom/admogo/adapters/AdwoAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/admogo/adapters/AdwoAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admogo/AdMogoLayout;

    .line 75
    .local v0, "adMogoLayout":Lcom/admogo/AdMogoLayout;
    if-nez v0, :cond_1

    .line 80
    .end local v0    # "adMogoLayout":Lcom/admogo/AdMogoLayout;
    :cond_0
    :goto_0
    return-void

    .line 78
    .restart local v0    # "adMogoLayout":Lcom/admogo/AdMogoLayout;
    :cond_1
    invoke-virtual {v0}, Lcom/admogo/AdMogoLayout;->rollover()V

    goto :goto_0
.end method

.method public onFailedToReceiveRefreshedAd(Lcom/adwo/adsdk/AdwoAdView;)V
    .locals 0
    .param p1, "arg0"    # Lcom/adwo/adsdk/AdwoAdView;

    .prologue
    .line 84
    return-void
.end method

.method public onReceiveAd(Lcom/adwo/adsdk/AdwoAdView;)V
    .locals 4
    .param p1, "adView"    # Lcom/adwo/adsdk/AdwoAdView;

    .prologue
    .line 88
    const-string v1, "AdsMOGO SDK"

    const-string v2, "AdWo success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/adwo/adsdk/AdwoAdView;->setListener(Lcom/adwo/adsdk/AdListener;)V

    .line 90
    iget-object v1, p0, Lcom/admogo/adapters/AdwoAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/admogo/adapters/AdwoAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admogo/AdMogoLayout;

    .line 92
    .local v0, "adMogoLayout":Lcom/admogo/AdMogoLayout;
    if-nez v0, :cond_1

    .line 101
    .end local v0    # "adMogoLayout":Lcom/admogo/AdMogoLayout;
    :cond_0
    :goto_0
    return-void

    .line 95
    .restart local v0    # "adMogoLayout":Lcom/admogo/AdMogoLayout;
    :cond_1
    iget-object v1, v0, Lcom/admogo/AdMogoLayout;->adMogoManager:Lcom/admogo/AdMogoManager;

    invoke-virtual {v1}, Lcom/admogo/AdMogoManager;->resetRollover()V

    .line 96
    invoke-virtual {p1}, Lcom/adwo/adsdk/AdwoAdView;->finalize()V

    .line 97
    iget-object v1, v0, Lcom/admogo/AdMogoLayout;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/admogo/AdMogoLayout$ViewAdRunnable;

    .line 98
    const/16 v3, 0x21

    invoke-direct {v2, v0, p1, v3}, Lcom/admogo/AdMogoLayout$ViewAdRunnable;-><init>(Lcom/admogo/AdMogoLayout;Landroid/view/ViewGroup;I)V

    .line 97
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 99
    invoke-virtual {v0}, Lcom/admogo/AdMogoLayout;->rotateThreadedDelayed()V

    goto :goto_0
.end method
