.class public Lcom/admogo/adapters/AppMediaAdapter;
.super Lcom/admogo/adapters/AdMogoAdapter;
.source "AppMediaAdapter.java"

# interfaces
.implements Lcn/appmedia/ad/AdViewListener;


# instance fields
.field private activity:Landroid/app/Activity;

.field private bannerAdView:Lcn/appmedia/ad/BannerAdView;


# direct methods
.method public constructor <init>(Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)V
    .locals 0
    .param p1, "adMogoLayout"    # Lcom/admogo/AdMogoLayout;
    .param p2, "ration"    # Lcom/admogo/obj/Ration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/admogo/adapters/AdMogoAdapter;-><init>(Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)V

    .line 35
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 66
    const-string v0, "AdsMOGO SDK"

    const-string v1, "AppMedia finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void
.end method

.method public handle()V
    .locals 7

    .prologue
    .line 39
    iget-object v4, p0, Lcom/admogo/adapters/AppMediaAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admogo/AdMogoLayout;

    .line 40
    .local v0, "adMogoLayout":Lcom/admogo/AdMogoLayout;
    if-nez v0, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    iget-object v4, v0, Lcom/admogo/AdMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    iput-object v4, p0, Lcom/admogo/adapters/AppMediaAdapter;->activity:Landroid/app/Activity;

    .line 44
    iget-object v4, p0, Lcom/admogo/adapters/AppMediaAdapter;->activity:Landroid/app/Activity;

    if-eqz v4, :cond_0

    .line 47
    new-instance v2, Lcom/admogo/obj/Extra;

    invoke-direct {v2}, Lcom/admogo/obj/Extra;-><init>()V

    .line 49
    .local v2, "extra":Lcom/admogo/obj/Extra;
    :try_start_0
    iget-object v4, p0, Lcom/admogo/adapters/AppMediaAdapter;->ration:Lcom/admogo/obj/Ration;

    iget-object v4, v4, Lcom/admogo/obj/Ration;->key:Ljava/lang/String;

    invoke-static {v4}, Lcn/appmedia/ad/AdManager;->setAid(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0}, Lcom/admogo/AdMogoLayout;->getAdType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 51
    new-instance v4, Lcn/appmedia/ad/BannerAdView;

    iget-object v5, p0, Lcom/admogo/adapters/AppMediaAdapter;->activity:Landroid/app/Activity;

    iget v6, v2, Lcom/admogo/obj/Extra;->cycleTime:I

    invoke-direct {v4, v5, v6}, Lcn/appmedia/ad/BannerAdView;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/admogo/adapters/AppMediaAdapter;->bannerAdView:Lcn/appmedia/ad/BannerAdView;

    .line 52
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 53
    const/4 v4, -0x1

    const/4 v5, -0x2

    .line 52
    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 54
    .local v3, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v4, p0, Lcom/admogo/adapters/AppMediaAdapter;->bannerAdView:Lcn/appmedia/ad/BannerAdView;

    invoke-virtual {v0, v4, v3}, Lcom/admogo/AdMogoLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    iget-object v4, p0, Lcom/admogo/adapters/AppMediaAdapter;->bannerAdView:Lcn/appmedia/ad/BannerAdView;

    invoke-virtual {v4, p0}, Lcn/appmedia/ad/BannerAdView;->setAdListener(Lcn/appmedia/ad/AdViewListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 58
    .end local v3    # "params":Landroid/view/ViewGroup$LayoutParams;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 59
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Lcom/admogo/AdMogoLayout;->rollover()V

    goto :goto_0

    .line 56
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lcom/admogo/AdMogoLayout;->getAdType()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onReceiveAdFailure(Lcn/appmedia/ad/BannerAdView;)V
    .locals 3
    .param p1, "arg0"    # Lcn/appmedia/ad/BannerAdView;

    .prologue
    .line 72
    const-string v1, "AdsMOGO SDK"

    const-string v2, "AppMedia failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v1, p0, Lcom/admogo/adapters/AppMediaAdapter;->bannerAdView:Lcn/appmedia/ad/BannerAdView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcn/appmedia/ad/BannerAdView;->setAdListener(Lcn/appmedia/ad/AdViewListener;)V

    .line 74
    iget-object v1, p0, Lcom/admogo/adapters/AppMediaAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/admogo/adapters/AppMediaAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

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

.method public onReceiveAdSuccess(Lcn/appmedia/ad/BannerAdView;)V
    .locals 5
    .param p1, "arg0"    # Lcn/appmedia/ad/BannerAdView;

    .prologue
    .line 85
    const-string v1, "AdsMOGO SDK"

    const-string v2, "AppMedia success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v1, p0, Lcom/admogo/adapters/AppMediaAdapter;->bannerAdView:Lcn/appmedia/ad/BannerAdView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcn/appmedia/ad/BannerAdView;->setAdListener(Lcn/appmedia/ad/AdViewListener;)V

    .line 87
    iget-object v1, p0, Lcom/admogo/adapters/AppMediaAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/admogo/adapters/AppMediaAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

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
    iget-object v3, p0, Lcom/admogo/adapters/AppMediaAdapter;->bannerAdView:Lcn/appmedia/ad/BannerAdView;

    const/16 v4, 0x24

    invoke-direct {v2, v0, v3, v4}, Lcom/admogo/AdMogoLayout$ViewAdRunnable;-><init>(Lcom/admogo/AdMogoLayout;Landroid/view/ViewGroup;I)V

    .line 93
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 95
    invoke-virtual {v0}, Lcom/admogo/AdMogoLayout;->rotateThreadedDelayed()V

    goto :goto_0
.end method
