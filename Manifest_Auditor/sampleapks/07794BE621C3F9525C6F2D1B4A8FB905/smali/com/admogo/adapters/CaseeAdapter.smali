.class public Lcom/admogo/adapters/CaseeAdapter;
.super Lcom/admogo/adapters/AdMogoAdapter;
.source "CaseeAdapter.java"

# interfaces
.implements Lcom/casee/adsdk/CaseeAdView$AdListener;


# instance fields
.field private activity:Landroid/app/Activity;

.field private adView:Lcom/casee/adsdk/CaseeAdView;


# direct methods
.method public constructor <init>(Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)V
    .locals 0
    .param p1, "adMogoLayout"    # Lcom/admogo/AdMogoLayout;
    .param p2, "ration"    # Lcom/admogo/obj/Ration;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/admogo/adapters/AdMogoAdapter;-><init>(Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)V

    .line 31
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 115
    const-string v0, "AdsMOGO SDK"

    const-string v1, "Casee Finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void
.end method

.method public handle()V
    .locals 13

    .prologue
    .line 34
    iget-object v0, p0, Lcom/admogo/adapters/CaseeAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/admogo/AdMogoLayout;

    .line 35
    .local v10, "adMogoLayout":Lcom/admogo/AdMogoLayout;
    if-nez v10, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    iget-object v0, v10, Lcom/admogo/AdMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/admogo/adapters/CaseeAdapter;->activity:Landroid/app/Activity;

    .line 40
    iget-object v0, p0, Lcom/admogo/adapters/CaseeAdapter;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 43
    iget-object v12, v10, Lcom/admogo/AdMogoLayout;->extra:Lcom/admogo/obj/Extra;

    .line 44
    .local v12, "extra":Lcom/admogo/obj/Extra;
    iget v0, v12, Lcom/admogo/obj/Extra;->bgRed:I

    iget v1, v12, Lcom/admogo/obj/Extra;->bgGreen:I

    iget v2, v12, Lcom/admogo/obj/Extra;->bgBlue:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    .line 45
    .local v7, "bgColor":I
    iget v0, v12, Lcom/admogo/obj/Extra;->fgRed:I

    iget v1, v12, Lcom/admogo/obj/Extra;->fgGreen:I

    iget v2, v12, Lcom/admogo/obj/Extra;->fgBlue:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    .line 48
    .local v8, "fgColor":I
    :try_start_0
    invoke-static {}, Lcom/admogo/AdMogoTargeting;->getTestMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49
    iget-object v0, p0, Lcom/admogo/adapters/CaseeAdapter;->ration:Lcom/admogo/obj/Ration;

    const-string v1, "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"

    iput-object v1, v0, Lcom/admogo/obj/Ration;->key:Ljava/lang/String;

    .line 52
    :cond_2
    new-instance v0, Lcom/casee/adsdk/CaseeAdView;

    iget-object v1, p0, Lcom/admogo/adapters/CaseeAdapter;->activity:Landroid/app/Activity;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/admogo/adapters/CaseeAdapter;->ration:Lcom/admogo/obj/Ration;

    iget-object v4, v4, Lcom/admogo/obj/Ration;->key:Ljava/lang/String;

    .line 53
    invoke-static {}, Lcom/admogo/AdMogoTargeting;->getTestMode()Z

    move-result v5

    const v6, 0xc3500

    .line 54
    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/casee/adsdk/CaseeAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;ZIIIZ)V

    .line 52
    iput-object v0, p0, Lcom/admogo/adapters/CaseeAdapter;->adView:Lcom/casee/adsdk/CaseeAdView;

    .line 55
    iget-object v0, p0, Lcom/admogo/adapters/CaseeAdapter;->adView:Lcom/casee/adsdk/CaseeAdView;

    invoke-virtual {v0, p0}, Lcom/casee/adsdk/CaseeAdView;->setListener(Lcom/casee/adsdk/CaseeAdView$AdListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    move-object v11, v0

    .line 57
    .local v11, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v10}, Lcom/admogo/AdMogoLayout;->rollover()V

    goto :goto_0
.end method

.method public onFailedToReceiveAd(Lcom/casee/adsdk/CaseeAdView;)V
    .locals 4
    .param p1, "adView"    # Lcom/casee/adsdk/CaseeAdView;

    .prologue
    const/4 v3, 0x0

    .line 67
    const-string v1, "AdsMOGO SDK"

    const-string v2, "Casee Failed To Receive Ad"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-virtual {p1, v3}, Lcom/casee/adsdk/CaseeAdView;->setListener(Lcom/casee/adsdk/CaseeAdView$AdListener;)V

    .line 69
    iget-object v1, p0, Lcom/admogo/adapters/CaseeAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    invoke-virtual {p1, v3}, Lcom/casee/adsdk/CaseeAdView;->setListener(Lcom/casee/adsdk/CaseeAdView$AdListener;)V

    .line 71
    iget-object v1, p0, Lcom/admogo/adapters/CaseeAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admogo/AdMogoLayout;

    .line 72
    .local v0, "adMogoLayout":Lcom/admogo/AdMogoLayout;
    if-nez v0, :cond_1

    .line 78
    .end local v0    # "adMogoLayout":Lcom/admogo/AdMogoLayout;
    :cond_0
    :goto_0
    return-void

    .line 75
    .restart local v0    # "adMogoLayout":Lcom/admogo/AdMogoLayout;
    :cond_1
    invoke-virtual {v0}, Lcom/admogo/AdMogoLayout;->rollover()V

    goto :goto_0
.end method

.method public onFailedToReceiveRefreshAd(Lcom/casee/adsdk/CaseeAdView;)V
    .locals 2
    .param p1, "AdView"    # Lcom/casee/adsdk/CaseeAdView;

    .prologue
    .line 82
    const-string v0, "AdsMOGO SDK"

    const-string v1, "Casee Failed To Receive Refresh Ad"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return-void
.end method

.method public onReceiveAd(Lcom/casee/adsdk/CaseeAdView;)V
    .locals 4
    .param p1, "adView"    # Lcom/casee/adsdk/CaseeAdView;

    .prologue
    .line 88
    const-string v1, "AdsMOGO SDK"

    const-string v2, "Casee success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/casee/adsdk/CaseeAdView;->setListener(Lcom/casee/adsdk/CaseeAdView$AdListener;)V

    .line 90
    iget-object v1, p0, Lcom/admogo/adapters/CaseeAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/admogo/adapters/CaseeAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admogo/AdMogoLayout;

    .line 92
    .local v0, "adMogoLayout":Lcom/admogo/AdMogoLayout;
    if-nez v0, :cond_1

    .line 100
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
    iget-object v1, v0, Lcom/admogo/AdMogoLayout;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/admogo/AdMogoLayout$ViewAdRunnable;

    .line 97
    const/16 v3, 0x19

    invoke-direct {v2, v0, p1, v3}, Lcom/admogo/AdMogoLayout$ViewAdRunnable;-><init>(Lcom/admogo/AdMogoLayout;Landroid/view/ViewGroup;I)V

    .line 96
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 98
    invoke-virtual {v0}, Lcom/admogo/AdMogoLayout;->rotateThreadedDelayed()V

    goto :goto_0
.end method

.method public onReceiveRefreshAd(Lcom/casee/adsdk/CaseeAdView;)V
    .locals 2
    .param p1, "adView"    # Lcom/casee/adsdk/CaseeAdView;

    .prologue
    .line 104
    const-string v0, "AdsMOGO SDK"

    const-string v1, "Casee Receive Refresh Ad"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-void
.end method
