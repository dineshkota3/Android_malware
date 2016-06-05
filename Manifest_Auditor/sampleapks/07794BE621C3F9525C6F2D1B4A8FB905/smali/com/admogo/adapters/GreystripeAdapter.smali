.class public Lcom/admogo/adapters/GreystripeAdapter;
.super Lcom/admogo/adapters/AdMogoAdapter;
.source "GreystripeAdapter.java"

# interfaces
.implements Lcom/greystripe/android/sdk/BannerListener;


# instance fields
.field private activity:Landroid/app/Activity;

.field private adView:Lcom/greystripe/android/sdk/BannerView;

.field private sdk:Lcom/greystripe/android/sdk/GSSDK;


# direct methods
.method public constructor <init>(Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)V
    .locals 0
    .param p1, "adMogoLayout"    # Lcom/admogo/AdMogoLayout;
    .param p2, "ration"    # Lcom/admogo/obj/Ration;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/admogo/adapters/AdMogoAdapter;-><init>(Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)V

    .line 31
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 104
    const-string v0, "AdsMOGO SDK"

    const-string v1, "Greystripe Finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-void
.end method

.method public handle()V
    .locals 5

    .prologue
    const-string v4, "AdsMOGO SDK"

    .line 34
    iget-object v2, p0, Lcom/admogo/adapters/GreystripeAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admogo/AdMogoLayout;

    .line 35
    .local v0, "adMogoLayout":Lcom/admogo/AdMogoLayout;
    if-nez v0, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    invoke-virtual {v0}, Lcom/admogo/AdMogoLayout;->removeAllViews()V

    .line 41
    iget-object v2, v0, Lcom/admogo/AdMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    iput-object v2, p0, Lcom/admogo/adapters/GreystripeAdapter;->activity:Landroid/app/Activity;

    .line 42
    iget-object v2, p0, Lcom/admogo/adapters/GreystripeAdapter;->activity:Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 46
    :try_start_0
    iget-object v2, p0, Lcom/admogo/adapters/GreystripeAdapter;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/admogo/adapters/GreystripeAdapter;->ration:Lcom/admogo/obj/Ration;

    iget-object v3, v3, Lcom/admogo/obj/Ration;->key:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/greystripe/android/sdk/GSSDK;->initialize(Landroid/content/Context;Ljava/lang/String;)Lcom/greystripe/android/sdk/GSSDK;

    move-result-object v2

    iput-object v2, p0, Lcom/admogo/adapters/GreystripeAdapter;->sdk:Lcom/greystripe/android/sdk/GSSDK;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    invoke-virtual {v0}, Lcom/admogo/AdMogoLayout;->getAdType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 53
    new-instance v2, Lcom/greystripe/android/sdk/BannerView;

    iget-object v3, p0, Lcom/admogo/adapters/GreystripeAdapter;->activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/greystripe/android/sdk/BannerView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/admogo/adapters/GreystripeAdapter;->adView:Lcom/greystripe/android/sdk/BannerView;

    .line 54
    iget-object v2, p0, Lcom/admogo/adapters/GreystripeAdapter;->adView:Lcom/greystripe/android/sdk/BannerView;

    invoke-virtual {v2, p0}, Lcom/greystripe/android/sdk/BannerView;->addListener(Lcom/greystripe/android/sdk/BannerListener;)V

    .line 55
    iget-object v2, p0, Lcom/admogo/adapters/GreystripeAdapter;->adView:Lcom/greystripe/android/sdk/BannerView;

    invoke-virtual {v2}, Lcom/greystripe/android/sdk/BannerView;->refresh()V

    goto :goto_0

    .line 48
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 49
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Lcom/admogo/AdMogoLayout;->rollover()V

    goto :goto_0

    .line 56
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    invoke-virtual {v0}, Lcom/admogo/AdMogoLayout;->getAdType()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    .line 57
    iget-object v2, p0, Lcom/admogo/adapters/GreystripeAdapter;->sdk:Lcom/greystripe/android/sdk/GSSDK;

    iget-object v3, p0, Lcom/admogo/adapters/GreystripeAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcom/greystripe/android/sdk/GSSDK;->displayAd(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 58
    const-string v2, "AdsMOGO SDK"

    const-string v2, "Greystripe Full Screen Success"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {v0}, Lcom/admogo/AdMogoLayout;->CountImpAd()V

    goto :goto_0

    .line 61
    :cond_3
    const-string v2, "AdsMOGO SDK"

    const-string v2, "Greystripe Full Screen failure"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {v0}, Lcom/admogo/AdMogoLayout;->rollover()V

    goto :goto_0
.end method

.method public onFailedToReceiveAd(Lcom/greystripe/android/sdk/BannerView;)V
    .locals 3
    .param p1, "adView"    # Lcom/greystripe/android/sdk/BannerView;

    .prologue
    .line 72
    const-string v1, "AdsMOGO SDK"

    const-string v2, "Greystripe failure"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/greystripe/android/sdk/BannerView;->addListener(Lcom/greystripe/android/sdk/BannerListener;)V

    .line 74
    iget-object v1, p0, Lcom/admogo/adapters/GreystripeAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/admogo/adapters/GreystripeAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admogo/AdMogoLayout;

    .line 76
    .local v0, "adMogoLayout":Lcom/admogo/AdMogoLayout;
    if-nez v0, :cond_1

    .line 81
    .end local v0    # "adMogoLayout":Lcom/admogo/AdMogoLayout;
    :cond_0
    :goto_0
    return-void

    .line 79
    .restart local v0    # "adMogoLayout":Lcom/admogo/AdMogoLayout;
    :cond_1
    invoke-virtual {v0}, Lcom/admogo/AdMogoLayout;->rollover()V

    goto :goto_0
.end method

.method public onReceivedAd(Lcom/greystripe/android/sdk/BannerView;)V
    .locals 4
    .param p1, "adView"    # Lcom/greystripe/android/sdk/BannerView;

    .prologue
    .line 85
    const-string v1, "AdsMOGO SDK"

    const-string v2, "Greystripe success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/greystripe/android/sdk/BannerView;->addListener(Lcom/greystripe/android/sdk/BannerListener;)V

    .line 87
    iget-object v1, p0, Lcom/admogo/adapters/GreystripeAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/admogo/adapters/GreystripeAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admogo/AdMogoLayout;

    .line 89
    .local v0, "adMogoLayout":Lcom/admogo/AdMogoLayout;
    if-nez v0, :cond_1

    .line 97
    .end local v0    # "adMogoLayout":Lcom/admogo/AdMogoLayout;
    :cond_0
    :goto_0
    return-void

    .line 92
    .restart local v0    # "adMogoLayout":Lcom/admogo/AdMogoLayout;
    :cond_1
    iget-object v1, v0, Lcom/admogo/AdMogoLayout;->adMogoManager:Lcom/admogo/AdMogoManager;

    invoke-virtual {v1}, Lcom/admogo/AdMogoManager;->resetRollover()V

    .line 93
    iget-object v1, v0, Lcom/admogo/AdMogoLayout;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/admogo/AdMogoLayout$ViewAdRunnable;

    .line 94
    const/4 v3, 0x7

    invoke-direct {v2, v0, p1, v3}, Lcom/admogo/AdMogoLayout$ViewAdRunnable;-><init>(Lcom/admogo/AdMogoLayout;Landroid/view/ViewGroup;I)V

    .line 93
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 95
    invoke-virtual {v0}, Lcom/admogo/AdMogoLayout;->rotateThreadedDelayed()V

    goto :goto_0
.end method
