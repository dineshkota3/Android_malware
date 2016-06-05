.class public Lcom/admogo/adapters/MdotMAdapter;
.super Lcom/admogo/adapters/AdMogoAdapter;
.source "MdotMAdapter.java"

# interfaces
.implements Lcom/mdotm/android/ads/MdotMView$MdotMActionListener;


# instance fields
.field private activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)V
    .locals 0
    .param p1, "adMogoLayout"    # Lcom/admogo/AdMogoLayout;
    .param p2, "ration"    # Lcom/admogo/obj/Ration;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/admogo/adapters/AdMogoAdapter;-><init>(Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)V

    .line 34
    return-void
.end method


# virtual methods
.method public adRequestCompletedSuccessfully(Lcom/mdotm/android/ads/MdotMView;)V
    .locals 4
    .param p1, "adView"    # Lcom/mdotm/android/ads/MdotMView;

    .prologue
    .line 71
    const-string v1, "AdsMOGO SDK"

    const-string v2, "MdotM success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/mdotm/android/ads/MdotMView;->setListener(Lcom/mdotm/android/ads/MdotMView$MdotMActionListener;)V

    .line 73
    iget-object v1, p0, Lcom/admogo/adapters/MdotMAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/admogo/adapters/MdotMAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admogo/AdMogoLayout;

    .line 75
    .local v0, "adMogoLayout":Lcom/admogo/AdMogoLayout;
    if-nez v0, :cond_1

    .line 84
    .end local v0    # "adMogoLayout":Lcom/admogo/AdMogoLayout;
    :cond_0
    :goto_0
    return-void

    .line 78
    .restart local v0    # "adMogoLayout":Lcom/admogo/AdMogoLayout;
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/mdotm/android/ads/MdotMView;->setVisibility(I)V

    .line 79
    iget-object v1, v0, Lcom/admogo/AdMogoLayout;->adMogoManager:Lcom/admogo/AdMogoManager;

    invoke-virtual {v1}, Lcom/admogo/AdMogoManager;->resetRollover()V

    .line 80
    iget-object v1, v0, Lcom/admogo/AdMogoLayout;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/admogo/AdMogoLayout$ViewAdRunnable;

    .line 81
    const/16 v3, 0xc

    invoke-direct {v2, v0, p1, v3}, Lcom/admogo/AdMogoLayout$ViewAdRunnable;-><init>(Lcom/admogo/AdMogoLayout;Landroid/view/ViewGroup;I)V

    .line 80
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 82
    invoke-virtual {v0}, Lcom/admogo/AdMogoLayout;->rotateThreadedDelayed()V

    goto :goto_0
.end method

.method public adRequestFailed(Lcom/mdotm/android/ads/MdotMView;)V
    .locals 3
    .param p1, "adView"    # Lcom/mdotm/android/ads/MdotMView;

    .prologue
    .line 87
    const-string v1, "AdsMOGO SDK"

    const-string v2, "MdotM failure"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/mdotm/android/ads/MdotMView;->setListener(Lcom/mdotm/android/ads/MdotMView$MdotMActionListener;)V

    .line 89
    iget-object v1, p0, Lcom/admogo/adapters/MdotMAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/admogo/adapters/MdotMAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admogo/AdMogoLayout;

    .line 91
    .local v0, "adMogoLayout":Lcom/admogo/AdMogoLayout;
    if-nez v0, :cond_1

    .line 96
    .end local v0    # "adMogoLayout":Lcom/admogo/AdMogoLayout;
    :cond_0
    :goto_0
    return-void

    .line 94
    .restart local v0    # "adMogoLayout":Lcom/admogo/AdMogoLayout;
    :cond_1
    invoke-virtual {v0}, Lcom/admogo/AdMogoLayout;->rollover()V

    goto :goto_0
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 100
    const-string v0, "AdsMOGO SDK"

    const-string v1, "MdotM Finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void
.end method

.method public handle()V
    .locals 10

    .prologue
    .line 38
    iget-object v7, p0, Lcom/admogo/adapters/MdotMAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admogo/AdMogoLayout;

    .line 39
    .local v0, "adMogoLayout":Lcom/admogo/AdMogoLayout;
    if-nez v0, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/admogo/adapters/MdotMAdapter;->ration:Lcom/admogo/obj/Ration;

    iget-object v6, v7, Lcom/admogo/obj/Ration;->key:Ljava/lang/String;

    .line 45
    .local v6, "ration_key":Ljava/lang/String;
    invoke-static {v6}, Lcom/mdotm/android/ads/MdotMManager;->setPublisherId(Ljava/lang/String;)V

    .line 46
    const-string v7, "AdsMOGO SDK"

    invoke-static {v7}, Lcom/mdotm/android/ads/MdotMManager;->setMediationLayerName(Ljava/lang/String;)V

    .line 47
    const/16 v7, 0x113

    invoke-static {v7}, Lcom/mdotm/android/ads/MdotMManager;->setMediationLayerVersion(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    iget-object v7, v0, Lcom/admogo/AdMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/Activity;

    iput-object v7, p0, Lcom/admogo/adapters/MdotMAdapter;->activity:Landroid/app/Activity;

    .line 56
    iget-object v7, p0, Lcom/admogo/adapters/MdotMAdapter;->activity:Landroid/app/Activity;

    if-eqz v7, :cond_0

    .line 59
    new-instance v5, Lcom/mdotm/android/ads/MdotMView;

    iget-object v7, p0, Lcom/admogo/adapters/MdotMAdapter;->activity:Landroid/app/Activity;

    invoke-direct {v5, v7, p0}, Lcom/mdotm/android/ads/MdotMView;-><init>(Landroid/content/Context;Lcom/mdotm/android/ads/MdotMView$MdotMActionListener;)V

    .line 61
    .local v5, "mdotm":Lcom/mdotm/android/ads/MdotMView;
    invoke-virtual {v5, p0}, Lcom/mdotm/android/ads/MdotMView;->setListener(Lcom/mdotm/android/ads/MdotMView$MdotMActionListener;)V

    .line 62
    iget-object v3, v0, Lcom/admogo/AdMogoLayout;->extra:Lcom/admogo/obj/Extra;

    .line 63
    .local v3, "extra":Lcom/admogo/obj/Extra;
    iget v7, v3, Lcom/admogo/obj/Extra;->bgRed:I

    iget v8, v3, Lcom/admogo/obj/Extra;->bgGreen:I

    iget v9, v3, Lcom/admogo/obj/Extra;->bgBlue:I

    invoke-static {v7, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    .line 64
    .local v1, "bgColor":I
    iget v7, v3, Lcom/admogo/obj/Extra;->fgRed:I

    iget v8, v3, Lcom/admogo/obj/Extra;->fgGreen:I

    iget v9, v3, Lcom/admogo/obj/Extra;->fgBlue:I

    invoke-static {v7, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    .line 66
    .local v4, "fgColor":I
    invoke-virtual {v5, v1}, Lcom/mdotm/android/ads/MdotMView;->setBackgroundColor(I)V

    .line 67
    invoke-virtual {v5, v4}, Lcom/mdotm/android/ads/MdotMView;->setTextColor(I)V

    goto :goto_0

    .line 50
    .end local v1    # "bgColor":I
    .end local v3    # "extra":Lcom/admogo/obj/Extra;
    .end local v4    # "fgColor":I
    .end local v5    # "mdotm":Lcom/mdotm/android/ads/MdotMView;
    .end local v6    # "ration_key":Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 51
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Lcom/admogo/AdMogoLayout;->rollover()V

    goto :goto_0
.end method
