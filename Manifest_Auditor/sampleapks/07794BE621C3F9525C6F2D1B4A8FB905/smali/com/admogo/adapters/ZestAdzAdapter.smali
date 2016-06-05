.class public Lcom/admogo/adapters/ZestAdzAdapter;
.super Lcom/admogo/adapters/AdMogoAdapter;
.source "ZestAdzAdapter.java"

# interfaces
.implements Lcom/zestadz/android/ZestADZAdView$ZestADZListener;


# instance fields
.field private activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)V
    .locals 0
    .param p1, "adMogoLayout"    # Lcom/admogo/AdMogoLayout;
    .param p2, "ration"    # Lcom/admogo/obj/Ration;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/admogo/adapters/AdMogoAdapter;-><init>(Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)V

    .line 27
    return-void
.end method


# virtual methods
.method public AdFailed(Lcom/zestadz/android/ZestADZAdView;)V
    .locals 3
    .param p1, "adView"    # Lcom/zestadz/android/ZestADZAdView;

    .prologue
    .line 77
    const-string v1, "AdsMOGO SDK"

    const-string v2, "ZestADZ failure"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/zestadz/android/ZestADZAdView;->setListener(Lcom/zestadz/android/ZestADZAdView$ZestADZListener;)V

    .line 79
    iget-object v1, p0, Lcom/admogo/adapters/ZestAdzAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/admogo/adapters/ZestAdzAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admogo/AdMogoLayout;

    .line 81
    .local v0, "adMogoLayout":Lcom/admogo/AdMogoLayout;
    if-nez v0, :cond_1

    .line 86
    .end local v0    # "adMogoLayout":Lcom/admogo/AdMogoLayout;
    :cond_0
    :goto_0
    return-void

    .line 84
    .restart local v0    # "adMogoLayout":Lcom/admogo/AdMogoLayout;
    :cond_1
    invoke-virtual {v0}, Lcom/admogo/AdMogoLayout;->rollover()V

    goto :goto_0
.end method

.method public AdReturned(Lcom/zestadz/android/ZestADZAdView;)V
    .locals 4
    .param p1, "adView"    # Lcom/zestadz/android/ZestADZAdView;

    .prologue
    .line 62
    const-string v1, "AdsMOGO SDK"

    const-string v2, "ZestADZ success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/zestadz/android/ZestADZAdView;->setListener(Lcom/zestadz/android/ZestADZAdView$ZestADZListener;)V

    .line 64
    iget-object v1, p0, Lcom/admogo/adapters/ZestAdzAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/admogo/adapters/ZestAdzAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admogo/AdMogoLayout;

    .line 66
    .local v0, "adMogoLayout":Lcom/admogo/AdMogoLayout;
    if-nez v0, :cond_1

    .line 74
    .end local v0    # "adMogoLayout":Lcom/admogo/AdMogoLayout;
    :cond_0
    :goto_0
    return-void

    .line 69
    .restart local v0    # "adMogoLayout":Lcom/admogo/AdMogoLayout;
    :cond_1
    iget-object v1, v0, Lcom/admogo/AdMogoLayout;->adMogoManager:Lcom/admogo/AdMogoManager;

    invoke-virtual {v1}, Lcom/admogo/AdMogoManager;->resetRollover()V

    .line 70
    iget-object v1, v0, Lcom/admogo/AdMogoLayout;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/admogo/AdMogoLayout$ViewAdRunnable;

    .line 71
    const/16 v3, 0x14

    invoke-direct {v2, v0, p1, v3}, Lcom/admogo/AdMogoLayout$ViewAdRunnable;-><init>(Lcom/admogo/AdMogoLayout;Landroid/view/ViewGroup;I)V

    .line 70
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    invoke-virtual {v0}, Lcom/admogo/AdMogoLayout;->rotateThreadedDelayed()V

    goto :goto_0
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 90
    const-string v0, "AdsMOGO SDK"

    const-string v1, "ZestAdz Finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-void
.end method

.method public handle()V
    .locals 4

    .prologue
    .line 31
    iget-object v3, p0, Lcom/admogo/adapters/ZestAdzAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admogo/AdMogoLayout;

    .line 32
    .local v0, "adMogoLayout":Lcom/admogo/AdMogoLayout;
    if-nez v0, :cond_1

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/admogo/adapters/ZestAdzAdapter;->ration:Lcom/admogo/obj/Ration;

    iget-object v3, v3, Lcom/admogo/obj/Ration;->key:Ljava/lang/String;

    invoke-static {v3}, Lcom/zestadz/android/AdManager;->setadclientId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 46
    :try_start_1
    iget-object v3, v0, Lcom/admogo/AdMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    iput-object v3, p0, Lcom/admogo/adapters/ZestAdzAdapter;->activity:Landroid/app/Activity;

    .line 47
    iget-object v3, p0, Lcom/admogo/adapters/ZestAdzAdapter;->activity:Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 51
    new-instance v1, Lcom/zestadz/android/ZestADZAdView;

    iget-object v3, p0, Lcom/admogo/adapters/ZestAdzAdapter;->activity:Landroid/app/Activity;

    invoke-direct {v1, v3}, Lcom/zestadz/android/ZestADZAdView;-><init>(Landroid/app/Activity;)V

    .line 52
    .local v1, "adView":Lcom/zestadz/android/ZestADZAdView;
    invoke-virtual {v1, p0}, Lcom/zestadz/android/ZestADZAdView;->setListener(Lcom/zestadz/android/ZestADZAdView$ZestADZListener;)V

    .line 53
    invoke-virtual {v1}, Lcom/zestadz/android/ZestADZAdView;->displayAd()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 54
    .end local v1    # "adView":Lcom/zestadz/android/ZestADZAdView;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 55
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Lcom/admogo/AdMogoLayout;->rollover()V

    goto :goto_0

    .line 40
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 41
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Lcom/admogo/AdMogoLayout;->rollover()V

    goto :goto_0
.end method
