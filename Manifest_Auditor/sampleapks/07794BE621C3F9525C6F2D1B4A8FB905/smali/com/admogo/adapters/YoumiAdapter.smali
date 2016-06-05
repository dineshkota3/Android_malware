.class public Lcom/admogo/adapters/YoumiAdapter;
.super Lcom/admogo/adapters/AdMogoAdapter;
.source "YoumiAdapter.java"

# interfaces
.implements Lnet/youmi/android/AdListener;


# instance fields
.field private AppID:Ljava/lang/String;

.field private AppSecret:Ljava/lang/String;

.field private activity:Landroid/app/Activity;

.field private adView:Lnet/youmi/android/AdView;


# direct methods
.method public constructor <init>(Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)V
    .locals 2
    .param p1, "adMogoLayout"    # Lcom/admogo/AdMogoLayout;
    .param p2, "ration"    # Lcom/admogo/obj/Ration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/admogo/adapters/AdMogoAdapter;-><init>(Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)V

    .line 35
    iput-object v1, p0, Lcom/admogo/adapters/YoumiAdapter;->AppID:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/admogo/adapters/YoumiAdapter;->AppSecret:Ljava/lang/String;

    .line 41
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/admogo/adapters/YoumiAdapter;->ration:Lcom/admogo/obj/Ration;

    iget-object v1, v1, Lcom/admogo/obj/Ration;->key:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 42
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "AppID"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/admogo/adapters/YoumiAdapter;->AppID:Ljava/lang/String;

    .line 43
    const-string v1, "AppSecret"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/admogo/adapters/YoumiAdapter;->AppSecret:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 105
    const-string v0, "AdsMOGO SDK"

    const-string v1, "Youmi Finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-void
.end method

.method public handle()V
    .locals 13

    .prologue
    const/4 v12, -0x2

    .line 48
    iget-object v0, p0, Lcom/admogo/adapters/YoumiAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/admogo/AdMogoLayout;

    .line 50
    .local v6, "adMogoLayout":Lcom/admogo/AdMogoLayout;
    if-nez v6, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    iget-object v0, v6, Lcom/admogo/AdMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/admogo/adapters/YoumiAdapter;->activity:Landroid/app/Activity;

    .line 55
    iget-object v0, p0, Lcom/admogo/adapters/YoumiAdapter;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 59
    iget-object v10, v6, Lcom/admogo/AdMogoLayout;->extra:Lcom/admogo/obj/Extra;

    .line 61
    .local v10, "extra":Lcom/admogo/obj/Extra;
    iget v2, v10, Lcom/admogo/obj/Extra;->cycleTime:I

    .line 62
    .local v2, "refreshTime":I
    const/16 v0, 0x1e

    if-ge v2, v0, :cond_3

    .line 63
    const/16 v2, 0x1e

    .line 69
    :cond_2
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/admogo/adapters/YoumiAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/admogo/adapters/YoumiAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    .line 69
    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 70
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-double v4, v0

    .line 81
    .local v4, "versionCode":D
    :goto_2
    :try_start_1
    iget-object v0, p0, Lcom/admogo/adapters/YoumiAdapter;->AppID:Ljava/lang/String;

    iget-object v1, p0, Lcom/admogo/adapters/YoumiAdapter;->AppSecret:Ljava/lang/String;

    .line 82
    invoke-static {}, Lcom/admogo/AdMogoTargeting;->getTestMode()Z

    move-result v3

    .line 81
    invoke-static/range {v0 .. v5}, Lnet/youmi/android/AdManager;->init(Ljava/lang/String;Ljava/lang/String;IZD)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 88
    iget v0, v10, Lcom/admogo/obj/Extra;->bgRed:I

    iget v1, v10, Lcom/admogo/obj/Extra;->bgGreen:I

    iget v3, v10, Lcom/admogo/obj/Extra;->bgBlue:I

    invoke-static {v0, v1, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    .line 89
    .local v7, "bgColor":I
    iget v0, v10, Lcom/admogo/obj/Extra;->fgRed:I

    iget v1, v10, Lcom/admogo/obj/Extra;->fgGreen:I

    iget v3, v10, Lcom/admogo/obj/Extra;->fgBlue:I

    invoke-static {v0, v1, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v11

    .line 95
    .local v11, "fgColor":I
    new-instance v0, Lnet/youmi/android/AdView;

    iget-object v1, p0, Lcom/admogo/adapters/YoumiAdapter;->activity:Landroid/app/Activity;

    const/16 v3, 0xff

    invoke-direct {v0, v1, v7, v11, v3}, Lnet/youmi/android/AdView;-><init>(Landroid/app/Activity;III)V

    iput-object v0, p0, Lcom/admogo/adapters/YoumiAdapter;->adView:Lnet/youmi/android/AdView;

    .line 96
    iget-object v0, p0, Lcom/admogo/adapters/YoumiAdapter;->adView:Lnet/youmi/android/AdView;

    invoke-virtual {v0, p0}, Lnet/youmi/android/AdView;->setAdListener(Lnet/youmi/android/AdListener;)V

    .line 97
    iget-object v0, p0, Lcom/admogo/adapters/YoumiAdapter;->adView:Lnet/youmi/android/AdView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v12, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v0, v1}, Lcom/admogo/AdMogoLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 64
    .end local v4    # "versionCode":D
    .end local v7    # "bgColor":I
    .end local v11    # "fgColor":I
    :cond_3
    const/16 v0, 0xc8

    if-le v2, v0, :cond_2

    .line 65
    const/16 v2, 0xc8

    goto :goto_1

    .line 71
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 72
    .local v9, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .restart local v4    # "versionCode":D
    goto :goto_2

    .line 84
    .end local v9    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    move-object v8, v0

    .line 85
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v6}, Lcom/admogo/AdMogoLayout;->rollover()V

    goto :goto_0
.end method

.method public onConnectFailed(Lnet/youmi/android/AdView;)V
    .locals 3
    .param p1, "adView"    # Lnet/youmi/android/AdView;

    .prologue
    .line 110
    const-string v1, "AdsMOGO SDK"

    const-string v2, "youMi failure"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lnet/youmi/android/AdView;->setAdListener(Lnet/youmi/android/AdListener;)V

    .line 112
    iget-object v1, p0, Lcom/admogo/adapters/YoumiAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/admogo/adapters/YoumiAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admogo/AdMogoLayout;

    .line 114
    .local v0, "adMogoLayout":Lcom/admogo/AdMogoLayout;
    if-nez v0, :cond_1

    .line 120
    .end local v0    # "adMogoLayout":Lcom/admogo/AdMogoLayout;
    :cond_0
    :goto_0
    return-void

    .line 117
    .restart local v0    # "adMogoLayout":Lcom/admogo/AdMogoLayout;
    :cond_1
    invoke-virtual {v0}, Lcom/admogo/AdMogoLayout;->rollover()V

    goto :goto_0
.end method

.method public onReceiveAd(Lnet/youmi/android/AdView;)V
    .locals 4
    .param p1, "adView"    # Lnet/youmi/android/AdView;

    .prologue
    .line 124
    const-string v1, "AdsMOGO SDK"

    const-string v2, "youMi success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lnet/youmi/android/AdView;->setAdListener(Lnet/youmi/android/AdListener;)V

    .line 126
    iget-object v1, p0, Lcom/admogo/adapters/YoumiAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/admogo/adapters/YoumiAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admogo/AdMogoLayout;

    .line 128
    .local v0, "adMogoLayout":Lcom/admogo/AdMogoLayout;
    if-nez v0, :cond_1

    .line 137
    .end local v0    # "adMogoLayout":Lcom/admogo/AdMogoLayout;
    :cond_0
    :goto_0
    return-void

    .line 131
    .restart local v0    # "adMogoLayout":Lcom/admogo/AdMogoLayout;
    :cond_1
    iget-object v1, v0, Lcom/admogo/AdMogoLayout;->adMogoManager:Lcom/admogo/AdMogoManager;

    invoke-virtual {v1}, Lcom/admogo/AdMogoManager;->resetRollover()V

    .line 132
    iget-object v1, v0, Lcom/admogo/AdMogoLayout;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/admogo/AdMogoLayout$ViewAdRunnable;

    .line 133
    const/16 v3, 0x18

    invoke-direct {v2, v0, p1, v3}, Lcom/admogo/AdMogoLayout$ViewAdRunnable;-><init>(Lcom/admogo/AdMogoLayout;Landroid/view/ViewGroup;I)V

    .line 132
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 134
    invoke-virtual {v0}, Lcom/admogo/AdMogoLayout;->rotateThreadedDelayed()V

    goto :goto_0
.end method
