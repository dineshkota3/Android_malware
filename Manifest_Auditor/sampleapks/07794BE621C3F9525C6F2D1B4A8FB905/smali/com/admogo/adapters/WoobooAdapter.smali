.class public Lcom/admogo/adapters/WoobooAdapter;
.super Lcom/admogo/adapters/AdMogoAdapter;
.source "WoobooAdapter.java"

# interfaces
.implements Lcom/wooboo/adlib_android/AdListener;


# instance fields
.field private activity:Landroid/app/Activity;

.field private adView:Lcom/wooboo/adlib_android/WoobooAdView;


# direct methods
.method public constructor <init>(Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)V
    .locals 0
    .param p1, "adMogoLayout"    # Lcom/admogo/AdMogoLayout;
    .param p2, "ration"    # Lcom/admogo/obj/Ration;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/admogo/adapters/AdMogoAdapter;-><init>(Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)V

    .line 30
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 103
    const-string v0, "AdsMOGO SDK"

    const-string v1, "Wooboo Finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void
.end method

.method public handle()V
    .locals 10

    .prologue
    .line 33
    iget-object v0, p0, Lcom/admogo/adapters/WoobooAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/admogo/AdMogoLayout;

    .line 34
    .local v7, "adMogoLayout":Lcom/admogo/AdMogoLayout;
    if-nez v7, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    iget-object v0, v7, Lcom/admogo/AdMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/admogo/adapters/WoobooAdapter;->activity:Landroid/app/Activity;

    .line 39
    iget-object v0, p0, Lcom/admogo/adapters/WoobooAdapter;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 43
    iget-object v9, v7, Lcom/admogo/AdMogoLayout;->extra:Lcom/admogo/obj/Extra;

    .line 44
    .local v9, "extra":Lcom/admogo/obj/Extra;
    iget v0, v9, Lcom/admogo/obj/Extra;->bgRed:I

    iget v1, v9, Lcom/admogo/obj/Extra;->bgGreen:I

    iget v2, v9, Lcom/admogo/obj/Extra;->bgBlue:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    .line 45
    .local v3, "bgColor":I
    iget v0, v9, Lcom/admogo/obj/Extra;->fgRed:I

    iget v1, v9, Lcom/admogo/obj/Extra;->fgGreen:I

    iget v2, v9, Lcom/admogo/obj/Extra;->fgBlue:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    .line 55
    .local v4, "fgColor":I
    :try_start_0
    new-instance v0, Lcom/wooboo/adlib_android/WoobooAdView;

    iget-object v1, p0, Lcom/admogo/adapters/WoobooAdapter;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/admogo/adapters/WoobooAdapter;->ration:Lcom/admogo/obj/Ration;

    iget-object v2, v2, Lcom/admogo/obj/Ration;->key:Ljava/lang/String;

    .line 56
    invoke-static {}, Lcom/admogo/AdMogoTargeting;->getTestMode()Z

    move-result v5

    const/16 v6, 0x258

    invoke-direct/range {v0 .. v6}, Lcom/wooboo/adlib_android/WoobooAdView;-><init>(Landroid/content/Context;Ljava/lang/String;IIZI)V

    .line 55
    iput-object v0, p0, Lcom/admogo/adapters/WoobooAdapter;->adView:Lcom/wooboo/adlib_android/WoobooAdView;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    iget-object v0, p0, Lcom/admogo/adapters/WoobooAdapter;->adView:Lcom/wooboo/adlib_android/WoobooAdView;

    invoke-virtual {v0, p0}, Lcom/wooboo/adlib_android/WoobooAdView;->setAdListener(Lcom/wooboo/adlib_android/AdListener;)V

    .line 63
    iget-object v0, p0, Lcom/admogo/adapters/WoobooAdapter;->adView:Lcom/wooboo/adlib_android/WoobooAdView;

    invoke-virtual {v7, v0}, Lcom/admogo/AdMogoLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 59
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v7}, Lcom/admogo/AdMogoLayout;->rollover()V

    goto :goto_0
.end method

.method public onFailedToReceiveAd(Ljava/lang/Object;)V
    .locals 3
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 71
    const-string v1, "AdsMOGO SDK"

    const-string v2, "WooBoo failure"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v1, p0, Lcom/admogo/adapters/WoobooAdapter;->adView:Lcom/wooboo/adlib_android/WoobooAdView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/wooboo/adlib_android/WoobooAdView;->setAdListener(Lcom/wooboo/adlib_android/AdListener;)V

    .line 73
    iget-object v1, p0, Lcom/admogo/adapters/WoobooAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/admogo/adapters/WoobooAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

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

.method public onReceiveAd(Ljava/lang/Object;)V
    .locals 5
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 84
    const-string v1, "AdsMOGO SDK"

    const-string v2, "WooBoo success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v1, p0, Lcom/admogo/adapters/WoobooAdapter;->adView:Lcom/wooboo/adlib_android/WoobooAdView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/wooboo/adlib_android/WoobooAdView;->setAdListener(Lcom/wooboo/adlib_android/AdListener;)V

    .line 86
    iget-object v1, p0, Lcom/admogo/adapters/WoobooAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/admogo/adapters/WoobooAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admogo/AdMogoLayout;

    .line 88
    .local v0, "adMogoLayout":Lcom/admogo/AdMogoLayout;
    if-nez v0, :cond_1

    .line 96
    .end local v0    # "adMogoLayout":Lcom/admogo/AdMogoLayout;
    :cond_0
    :goto_0
    return-void

    .line 91
    .restart local v0    # "adMogoLayout":Lcom/admogo/AdMogoLayout;
    :cond_1
    iget-object v1, v0, Lcom/admogo/AdMogoLayout;->adMogoManager:Lcom/admogo/AdMogoManager;

    invoke-virtual {v1}, Lcom/admogo/AdMogoManager;->resetRollover()V

    .line 92
    iget-object v1, v0, Lcom/admogo/AdMogoLayout;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/admogo/AdMogoLayout$ViewAdRunnable;

    iget-object v3, p0, Lcom/admogo/adapters/WoobooAdapter;->adView:Lcom/wooboo/adlib_android/WoobooAdView;

    .line 93
    const/16 v4, 0x17

    invoke-direct {v2, v0, v3, v4}, Lcom/admogo/AdMogoLayout$ViewAdRunnable;-><init>(Lcom/admogo/AdMogoLayout;Landroid/view/ViewGroup;I)V

    .line 92
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 94
    invoke-virtual {v0}, Lcom/admogo/AdMogoLayout;->rotateThreadedDelayed()V

    goto :goto_0
.end method
