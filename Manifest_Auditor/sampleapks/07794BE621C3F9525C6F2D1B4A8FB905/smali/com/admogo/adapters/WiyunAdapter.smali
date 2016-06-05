.class public Lcom/admogo/adapters/WiyunAdapter;
.super Lcom/admogo/adapters/AdMogoAdapter;
.source "WiyunAdapter.java"

# interfaces
.implements Lcom/wiyun/ad/AdView$AdListener;


# instance fields
.field private activity:Landroid/app/Activity;

.field private adView:Lcom/wiyun/ad/AdView;


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
    .line 110
    const-string v0, "AdsMOGO SDK"

    const-string v1, "Wiyun Finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return-void
.end method

.method public handle()V
    .locals 9

    .prologue
    const/4 v8, -0x2

    .line 34
    iget-object v5, p0, Lcom/admogo/adapters/WiyunAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admogo/AdMogoLayout;

    .line 35
    .local v0, "adMogoLayout":Lcom/admogo/AdMogoLayout;
    if-nez v0, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    iget-object v5, v0, Lcom/admogo/AdMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    iput-object v5, p0, Lcom/admogo/adapters/WiyunAdapter;->activity:Landroid/app/Activity;

    .line 40
    iget-object v5, p0, Lcom/admogo/adapters/WiyunAdapter;->activity:Landroid/app/Activity;

    if-eqz v5, :cond_0

    .line 43
    new-instance v5, Lcom/wiyun/ad/AdView;

    iget-object v6, p0, Lcom/admogo/adapters/WiyunAdapter;->activity:Landroid/app/Activity;

    invoke-direct {v5, v6}, Lcom/wiyun/ad/AdView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/admogo/adapters/WiyunAdapter;->adView:Lcom/wiyun/ad/AdView;

    .line 45
    :try_start_0
    iget-object v5, p0, Lcom/admogo/adapters/WiyunAdapter;->adView:Lcom/wiyun/ad/AdView;

    iget-object v6, p0, Lcom/admogo/adapters/WiyunAdapter;->ration:Lcom/admogo/obj/Ration;

    iget-object v6, v6, Lcom/admogo/obj/Ration;->key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/wiyun/ad/AdView;->setResId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    iget-object v5, p0, Lcom/admogo/adapters/WiyunAdapter;->adView:Lcom/wiyun/ad/AdView;

    invoke-virtual {v5, p0}, Lcom/wiyun/ad/AdView;->setListener(Lcom/wiyun/ad/AdView$AdListener;)V

    .line 52
    iget-object v5, p0, Lcom/admogo/adapters/WiyunAdapter;->adView:Lcom/wiyun/ad/AdView;

    invoke-static {}, Lcom/admogo/AdMogoTargeting;->getTestMode()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/wiyun/ad/AdView;->setTestMode(Z)V

    .line 53
    iget-object v5, p0, Lcom/admogo/adapters/WiyunAdapter;->adView:Lcom/wiyun/ad/AdView;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/wiyun/ad/AdView;->setTestAdType(I)V

    .line 55
    iget-object v3, v0, Lcom/admogo/AdMogoLayout;->extra:Lcom/admogo/obj/Extra;

    .line 56
    .local v3, "extra":Lcom/admogo/obj/Extra;
    iget v5, v3, Lcom/admogo/obj/Extra;->bgRed:I

    iget v6, v3, Lcom/admogo/obj/Extra;->bgGreen:I

    iget v7, v3, Lcom/admogo/obj/Extra;->bgBlue:I

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    .line 57
    .local v1, "bgColor":I
    iget v5, v3, Lcom/admogo/obj/Extra;->fgRed:I

    iget v6, v3, Lcom/admogo/obj/Extra;->fgGreen:I

    iget v7, v3, Lcom/admogo/obj/Extra;->fgBlue:I

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    .line 59
    .local v4, "fgColor":I
    iget-object v5, p0, Lcom/admogo/adapters/WiyunAdapter;->adView:Lcom/wiyun/ad/AdView;

    invoke-virtual {v5, v1}, Lcom/wiyun/ad/AdView;->setBackgroundColor(I)V

    .line 60
    iget-object v5, p0, Lcom/admogo/adapters/WiyunAdapter;->adView:Lcom/wiyun/ad/AdView;

    invoke-virtual {v5, v4}, Lcom/wiyun/ad/AdView;->setTextColor(I)V

    .line 61
    iget-object v5, p0, Lcom/admogo/adapters/WiyunAdapter;->adView:Lcom/wiyun/ad/AdView;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5, v6}, Lcom/admogo/AdMogoLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    iget-object v5, p0, Lcom/admogo/adapters/WiyunAdapter;->adView:Lcom/wiyun/ad/AdView;

    invoke-virtual {v5}, Lcom/wiyun/ad/AdView;->requestAd()V

    goto :goto_0

    .line 47
    .end local v1    # "bgColor":I
    .end local v3    # "extra":Lcom/admogo/obj/Extra;
    .end local v4    # "fgColor":I
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 48
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Lcom/admogo/AdMogoLayout;->rollover()V

    goto :goto_0
.end method

.method public onAdClicked()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public onAdLoadFailed()V
    .locals 3

    .prologue
    .line 73
    const-string v1, "AdsMOGO SDK"

    const-string v2, "WiYun failure"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v1, p0, Lcom/admogo/adapters/WiyunAdapter;->adView:Lcom/wiyun/ad/AdView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/wiyun/ad/AdView;->setListener(Lcom/wiyun/ad/AdView$AdListener;)V

    .line 75
    iget-object v1, p0, Lcom/admogo/adapters/WiyunAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/admogo/adapters/WiyunAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admogo/AdMogoLayout;

    .line 77
    .local v0, "adMogoLayout":Lcom/admogo/AdMogoLayout;
    if-nez v0, :cond_1

    .line 82
    .end local v0    # "adMogoLayout":Lcom/admogo/AdMogoLayout;
    :cond_0
    :goto_0
    return-void

    .line 80
    .restart local v0    # "adMogoLayout":Lcom/admogo/AdMogoLayout;
    :cond_1
    invoke-virtual {v0}, Lcom/admogo/AdMogoLayout;->rollover()V

    goto :goto_0
.end method

.method public onAdLoaded()V
    .locals 5

    .prologue
    .line 86
    const-string v1, "AdsMOGO SDK"

    const-string v2, "Wiyun success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v1, p0, Lcom/admogo/adapters/WiyunAdapter;->adView:Lcom/wiyun/ad/AdView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/wiyun/ad/AdView;->setListener(Lcom/wiyun/ad/AdView$AdListener;)V

    .line 88
    iget-object v1, p0, Lcom/admogo/adapters/WiyunAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/admogo/adapters/WiyunAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admogo/AdMogoLayout;

    .line 90
    .local v0, "adMogoLayout":Lcom/admogo/AdMogoLayout;
    if-nez v0, :cond_1

    .line 98
    .end local v0    # "adMogoLayout":Lcom/admogo/AdMogoLayout;
    :cond_0
    :goto_0
    return-void

    .line 93
    .restart local v0    # "adMogoLayout":Lcom/admogo/AdMogoLayout;
    :cond_1
    iget-object v1, v0, Lcom/admogo/AdMogoLayout;->adMogoManager:Lcom/admogo/AdMogoManager;

    invoke-virtual {v1}, Lcom/admogo/AdMogoManager;->resetRollover()V

    .line 94
    iget-object v1, v0, Lcom/admogo/AdMogoLayout;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/admogo/AdMogoLayout$ViewAdRunnable;

    iget-object v3, p0, Lcom/admogo/adapters/WiyunAdapter;->adView:Lcom/wiyun/ad/AdView;

    .line 95
    const/16 v4, 0x16

    invoke-direct {v2, v0, v3, v4}, Lcom/admogo/AdMogoLayout$ViewAdRunnable;-><init>(Lcom/admogo/AdMogoLayout;Landroid/view/ViewGroup;I)V

    .line 94
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 96
    invoke-virtual {v0}, Lcom/admogo/AdMogoLayout;->rotateThreadedDelayed()V

    goto :goto_0
.end method

.method public onExitButtonClicked()V
    .locals 2

    .prologue
    .line 102
    const-string v0, "AdsMOGO SDK"

    const-string v1, "WiYun onExitButtonClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void
.end method
