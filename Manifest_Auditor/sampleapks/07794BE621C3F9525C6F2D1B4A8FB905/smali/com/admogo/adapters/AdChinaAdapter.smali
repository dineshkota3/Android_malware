.class public Lcom/admogo/adapters/AdChinaAdapter;
.super Lcom/admogo/adapters/AdMogoAdapter;
.source "AdChinaAdapter.java"

# interfaces
.implements Lcom/adchina/android/ads/AdListener;


# static fields
.field private static adView:Lcom/adchina/android/ads/views/AdView;

.field private static engine:Lcom/adchina/android/ads/AdEngine;


# instance fields
.field private activity:Landroid/app/Activity;

.field private adMogoLayout:Lcom/admogo/AdMogoLayout;

.field private flag:Z

.field private mFullScreenImageView:Lcom/adchina/android/ads/views/FullScreenAdView;


# direct methods
.method public constructor <init>(Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)V
    .locals 1
    .param p1, "adMogoLayout"    # Lcom/admogo/AdMogoLayout;
    .param p2, "ration"    # Lcom/admogo/obj/Ration;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/admogo/adapters/AdMogoAdapter;-><init>(Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/admogo/adapters/AdChinaAdapter;->flag:Z

    .line 50
    return-void
.end method

.method static synthetic access$0(Lcom/admogo/adapters/AdChinaAdapter;)Lcom/admogo/AdMogoLayout;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/admogo/adapters/AdChinaAdapter;->adMogoLayout:Lcom/admogo/AdMogoLayout;

    return-object v0
.end method


# virtual methods
.method public OnRecvSms(Lcom/adchina/android/ads/views/AdView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "adView"    # Lcom/adchina/android/ads/views/AdView;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/admogo/adapters/AdChinaAdapter;->adMogoLayout:Lcom/admogo/AdMogoLayout;

    sget-object v1, Lcom/admogo/adapters/AdChinaAdapter;->adView:Lcom/adchina/android/ads/views/AdView;

    invoke-virtual {v0, v1}, Lcom/admogo/AdMogoLayout;->removeView(Landroid/view/View;)V

    .line 284
    const-string v0, "AdsMOGO SDK"

    const-string v1, "AdChina Finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    return-void
.end method

.method public handle()V
    .locals 15

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 53
    iget-object v11, p0, Lcom/admogo/adapters/AdChinaAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/admogo/AdMogoLayout;

    iput-object v11, p0, Lcom/admogo/adapters/AdChinaAdapter;->adMogoLayout:Lcom/admogo/AdMogoLayout;

    .line 54
    iget-object v11, p0, Lcom/admogo/adapters/AdChinaAdapter;->adMogoLayout:Lcom/admogo/AdMogoLayout;

    if-nez v11, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    iget-object v11, p0, Lcom/admogo/adapters/AdChinaAdapter;->adMogoLayout:Lcom/admogo/AdMogoLayout;

    iget-object v11, v11, Lcom/admogo/AdMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/Activity;

    iput-object v11, p0, Lcom/admogo/adapters/AdChinaAdapter;->activity:Landroid/app/Activity;

    .line 59
    iget-object v11, p0, Lcom/admogo/adapters/AdChinaAdapter;->activity:Landroid/app/Activity;

    if-eqz v11, :cond_0

    .line 64
    invoke-static {v12}, Lcom/adchina/android/ads/AdManager;->setDebugMode(Z)V

    .line 65
    invoke-static {v12}, Lcom/adchina/android/ads/AdManager;->setLogMode(Z)V

    .line 68
    invoke-static {}, Lcom/admogo/AdMogoTargeting;->getAppName()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "appName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 70
    invoke-static {v0}, Lcom/adchina/android/ads/AdManager;->setAppName(Ljava/lang/String;)V

    .line 73
    :cond_2
    invoke-static {}, Lcom/admogo/AdMogoTargeting;->getKeywords()Ljava/lang/String;

    move-result-object v6

    .line 74
    .local v6, "keywords":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 75
    invoke-static {v6}, Lcom/adchina/android/ads/AdManager;->setContentTargeting(Ljava/lang/String;)V

    .line 78
    :cond_3
    invoke-static {}, Lcom/admogo/AdMogoTargeting;->getBirthday()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "birthDay":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 80
    invoke-static {v1}, Lcom/adchina/android/ads/AdManager;->setBirthday(Ljava/lang/String;)V

    .line 83
    :cond_4
    invoke-static {}, Lcom/admogo/AdMogoTargeting;->getPostalCode()Ljava/lang/String;

    move-result-object v8

    .line 84
    .local v8, "postalCode":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 85
    invoke-static {v8}, Lcom/adchina/android/ads/AdManager;->setPostalCode(Ljava/lang/String;)V

    .line 88
    :cond_5
    iget-object v11, p0, Lcom/admogo/adapters/AdChinaAdapter;->activity:Landroid/app/Activity;

    .line 89
    const-string v12, "phone"

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 88
    check-cast v10, Landroid/telephony/TelephonyManager;

    .line 90
    .local v10, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v7

    .line 91
    .local v7, "number":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 92
    invoke-static {v7}, Lcom/adchina/android/ads/AdManager;->setTelephoneNumber(Ljava/lang/String;)V

    .line 100
    :cond_6
    :try_start_0
    iget-object v11, p0, Lcom/admogo/adapters/AdChinaAdapter;->activity:Landroid/app/Activity;

    invoke-static {v11}, Lcom/adchina/android/ads/AdEngine;->initAdEngine(Landroid/content/Context;)Lcom/adchina/android/ads/AdEngine;

    move-result-object v11

    sput-object v11, Lcom/admogo/adapters/AdChinaAdapter;->engine:Lcom/adchina/android/ads/AdEngine;

    .line 101
    invoke-static {}, Lcom/adchina/android/ads/AdEngine;->getAdEngine()Lcom/adchina/android/ads/AdEngine;

    move-result-object v11

    invoke-virtual {v11, p0}, Lcom/adchina/android/ads/AdEngine;->setAdListener(Lcom/adchina/android/ads/AdListener;)V

    .line 103
    iget-object v11, p0, Lcom/admogo/adapters/AdChinaAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v11

    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 104
    .local v3, "display":Landroid/view/Display;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 105
    .local v9, "resolution":Ljava/lang/String;
    invoke-static {v9}, Lcom/adchina/android/ads/AdManager;->setResolution(Ljava/lang/String;)V

    .line 107
    iget-object v11, p0, Lcom/admogo/adapters/AdChinaAdapter;->adMogoLayout:Lcom/admogo/AdMogoLayout;

    invoke-virtual {v11}, Lcom/admogo/AdMogoLayout;->getAdType()I

    move-result v11

    const/4 v12, 0x6

    if-ne v11, v12, :cond_7

    .line 108
    iget-object v11, p0, Lcom/admogo/adapters/AdChinaAdapter;->ration:Lcom/admogo/obj/Ration;

    iget-object v11, v11, Lcom/admogo/obj/Ration;->key:Ljava/lang/String;

    invoke-static {v11}, Lcom/adchina/android/ads/AdManager;->setFullScreenAdspaceId(Ljava/lang/String;)V

    .line 110
    new-instance v11, Lcom/adchina/android/ads/views/FullScreenAdView;

    iget-object v12, p0, Lcom/admogo/adapters/AdChinaAdapter;->activity:Landroid/app/Activity;

    invoke-direct {v11, v12}, Lcom/adchina/android/ads/views/FullScreenAdView;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/admogo/adapters/AdChinaAdapter;->mFullScreenImageView:Lcom/adchina/android/ads/views/FullScreenAdView;

    .line 111
    iget-object v11, p0, Lcom/admogo/adapters/AdChinaAdapter;->mFullScreenImageView:Lcom/adchina/android/ads/views/FullScreenAdView;

    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 112
    const/4 v13, -0x1

    const/4 v14, -0x1

    invoke-direct {v12, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 111
    invoke-virtual {v11, v12}, Lcom/adchina/android/ads/views/FullScreenAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    sget-object v11, Lcom/admogo/adapters/AdChinaAdapter;->engine:Lcom/adchina/android/ads/AdEngine;

    iget-object v12, p0, Lcom/admogo/adapters/AdChinaAdapter;->mFullScreenImageView:Lcom/adchina/android/ads/views/FullScreenAdView;

    invoke-virtual {v11, v12}, Lcom/adchina/android/ads/AdEngine;->setFullScreenAdView(Lcom/adchina/android/ads/views/FullScreenAdView;)V

    .line 115
    sget-object v11, Lcom/admogo/adapters/AdChinaAdapter;->engine:Lcom/adchina/android/ads/AdEngine;

    invoke-virtual {v11}, Lcom/adchina/android/ads/AdEngine;->startFullScreenAd()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 131
    .end local v3    # "display":Landroid/view/Display;
    .end local v9    # "resolution":Ljava/lang/String;
    :catch_0
    move-exception v11

    move-object v4, v11

    .line 132
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    iget-object v11, p0, Lcom/admogo/adapters/AdChinaAdapter;->adMogoLayout:Lcom/admogo/AdMogoLayout;

    invoke-virtual {v11}, Lcom/admogo/AdMogoLayout;->rollover()V

    goto/16 :goto_0

    .line 117
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v3    # "display":Landroid/view/Display;
    .restart local v9    # "resolution":Ljava/lang/String;
    :cond_7
    :try_start_1
    iget-object v11, p0, Lcom/admogo/adapters/AdChinaAdapter;->adMogoLayout:Lcom/admogo/AdMogoLayout;

    invoke-virtual {v11}, Lcom/admogo/AdMogoLayout;->getAdType()I

    move-result v11

    if-ne v11, v13, :cond_8

    .line 118
    sget-object v11, Lcom/admogo/adapters/AdChinaAdapter;->adView:Lcom/adchina/android/ads/views/AdView;

    if-nez v11, :cond_8

    .line 119
    iget-object v11, p0, Lcom/admogo/adapters/AdChinaAdapter;->ration:Lcom/admogo/obj/Ration;

    iget-object v11, v11, Lcom/admogo/obj/Ration;->key:Ljava/lang/String;

    invoke-static {v11}, Lcom/adchina/android/ads/AdManager;->setAdspaceId(Ljava/lang/String;)V

    .line 120
    new-instance v11, Lcom/adchina/android/ads/views/AdView;

    iget-object v12, p0, Lcom/admogo/adapters/AdChinaAdapter;->activity:Landroid/app/Activity;

    invoke-direct {v11, v12}, Lcom/adchina/android/ads/views/AdView;-><init>(Landroid/content/Context;)V

    sput-object v11, Lcom/admogo/adapters/AdChinaAdapter;->adView:Lcom/adchina/android/ads/views/AdView;

    .line 121
    iget-object v11, p0, Lcom/admogo/adapters/AdChinaAdapter;->adMogoLayout:Lcom/admogo/AdMogoLayout;

    iget-object v5, v11, Lcom/admogo/AdMogoLayout;->extra:Lcom/admogo/obj/Extra;

    .line 122
    .local v5, "extra":Lcom/admogo/obj/Extra;
    iget v11, v5, Lcom/admogo/obj/Extra;->bgRed:I

    iget v12, v5, Lcom/admogo/obj/Extra;->bgGreen:I

    iget v13, v5, Lcom/admogo/obj/Extra;->bgBlue:I

    invoke-static {v11, v12, v13}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    .line 123
    .local v2, "color":I
    sget-object v11, Lcom/admogo/adapters/AdChinaAdapter;->adView:Lcom/adchina/android/ads/views/AdView;

    invoke-virtual {v11, v2}, Lcom/adchina/android/ads/views/AdView;->setBackgroundColor(I)V

    .line 124
    sget-object v11, Lcom/admogo/adapters/AdChinaAdapter;->engine:Lcom/adchina/android/ads/AdEngine;

    sget-object v12, Lcom/admogo/adapters/AdChinaAdapter;->adView:Lcom/adchina/android/ads/views/AdView;

    invoke-virtual {v11, v12}, Lcom/adchina/android/ads/AdEngine;->addBannerAdView(Lcom/adchina/android/ads/views/AdView;)V

    .line 125
    sget-object v11, Lcom/admogo/adapters/AdChinaAdapter;->engine:Lcom/adchina/android/ads/AdEngine;

    invoke-virtual {v11}, Lcom/adchina/android/ads/AdEngine;->startBannerAd()V

    .line 126
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/admogo/adapters/AdChinaAdapter;->flag:Z

    goto/16 :goto_0

    .line 127
    .end local v2    # "color":I
    .end local v5    # "extra":Lcom/admogo/obj/Extra;
    :cond_8
    iget-object v11, p0, Lcom/admogo/adapters/AdChinaAdapter;->adMogoLayout:Lcom/admogo/AdMogoLayout;

    invoke-virtual {v11}, Lcom/admogo/AdMogoLayout;->getAdType()I

    move-result v11

    const/4 v12, 0x7

    if-ne v11, v12, :cond_0

    .line 128
    iget-object v11, p0, Lcom/admogo/adapters/AdChinaAdapter;->ration:Lcom/admogo/obj/Ration;

    iget-object v11, v11, Lcom/admogo/obj/Ration;->key:Ljava/lang/String;

    invoke-static {v11}, Lcom/adchina/android/ads/AdManager;->setVideoAdspaceId(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public onFailedToPlayVideoAd()V
    .locals 2

    .prologue
    .line 152
    const-string v0, "AdsMOGO SDK"

    const-string v1, "AdChina onFailedToPlayVideoAd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-void
.end method

.method public onFailedToReceiveAd(Lcom/adchina/android/ads/views/AdView;)V
    .locals 3
    .param p1, "adView"    # Lcom/adchina/android/ads/views/AdView;

    .prologue
    .line 157
    const-string v1, "AdsMOGO SDK"

    const-string v2, "AdChina onFailedToReceiveAd"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-static {}, Lcom/adchina/android/ads/AdEngine;->getAdEngine()Lcom/adchina/android/ads/AdEngine;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/adchina/android/ads/AdEngine;->setAdListener(Lcom/adchina/android/ads/AdListener;)V

    .line 159
    iget-object v1, p0, Lcom/admogo/adapters/AdChinaAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/admogo/adapters/AdChinaAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admogo/AdMogoLayout;

    .line 161
    .local v0, "adMogoLayout":Lcom/admogo/AdMogoLayout;
    if-nez v0, :cond_1

    .line 169
    .end local v0    # "adMogoLayout":Lcom/admogo/AdMogoLayout;
    :cond_0
    :goto_0
    return-void

    .line 164
    .restart local v0    # "adMogoLayout":Lcom/admogo/AdMogoLayout;
    :cond_1
    invoke-virtual {v0}, Lcom/admogo/AdMogoLayout;->rollover()V

    .line 166
    invoke-virtual {p1}, Lcom/adchina/android/ads/views/AdView;->destroyDrawingCache()V

    .line 167
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public onFailedToReceiveFullScreenAd(Lcom/adchina/android/ads/views/FullScreenAdView;)V
    .locals 3
    .param p1, "fullScreenAdView"    # Lcom/adchina/android/ads/views/FullScreenAdView;

    .prologue
    .line 173
    const-string v1, "AdsMOGO SDK"

    const-string v2, "AdChina onFailedToReceiveFullScreenAd"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-static {}, Lcom/adchina/android/ads/AdEngine;->getAdEngine()Lcom/adchina/android/ads/AdEngine;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/adchina/android/ads/AdEngine;->setAdListener(Lcom/adchina/android/ads/AdListener;)V

    .line 175
    iget-object v1, p0, Lcom/admogo/adapters/AdChinaAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/admogo/adapters/AdChinaAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admogo/AdMogoLayout;

    .line 177
    .local v0, "adMogoLayout":Lcom/admogo/AdMogoLayout;
    if-nez v0, :cond_1

    .line 184
    .end local v0    # "adMogoLayout":Lcom/admogo/AdMogoLayout;
    :cond_0
    :goto_0
    return-void

    .line 180
    .restart local v0    # "adMogoLayout":Lcom/admogo/AdMogoLayout;
    :cond_1
    invoke-virtual {v0}, Lcom/admogo/AdMogoLayout;->rollover()V

    .line 181
    invoke-virtual {p1}, Lcom/adchina/android/ads/views/FullScreenAdView;->destroyDrawingCache()V

    .line 182
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public onFailedToReceiveVideoAd()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 188
    const-string v1, "AdsMOGO SDK"

    const-string v2, "AdChina onFailedToReceiveVideoAd"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-static {}, Lcom/adchina/android/ads/AdEngine;->getAdEngine()Lcom/adchina/android/ads/AdEngine;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/adchina/android/ads/AdEngine;->setAdListener(Lcom/adchina/android/ads/AdListener;)V

    .line 190
    iget-object v1, p0, Lcom/admogo/adapters/AdChinaAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 191
    iget-object v1, p0, Lcom/admogo/adapters/AdChinaAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admogo/AdMogoLayout;

    .line 192
    .local v0, "adMogoLayout":Lcom/admogo/AdMogoLayout;
    if-nez v0, :cond_1

    .line 200
    .end local v0    # "adMogoLayout":Lcom/admogo/AdMogoLayout;
    :cond_0
    :goto_0
    return-void

    .line 195
    .restart local v0    # "adMogoLayout":Lcom/admogo/AdMogoLayout;
    :cond_1
    invoke-virtual {v0}, Lcom/admogo/AdMogoLayout;->rollover()V

    .line 196
    sget-object v1, Lcom/admogo/adapters/AdChinaAdapter;->adView:Lcom/adchina/android/ads/views/AdView;

    invoke-virtual {v1}, Lcom/adchina/android/ads/views/AdView;->destroyDrawingCache()V

    .line 197
    sput-object v3, Lcom/admogo/adapters/AdChinaAdapter;->adView:Lcom/adchina/android/ads/views/AdView;

    goto :goto_0
.end method

.method public onFailedToRefreshAd(Lcom/adchina/android/ads/views/AdView;)V
    .locals 0
    .param p1, "adView"    # Lcom/adchina/android/ads/views/AdView;

    .prologue
    .line 206
    return-void
.end method

.method public onPlayVideoAd()V
    .locals 2

    .prologue
    .line 210
    const-string v0, "AdsMOGO SDK"

    const-string v1, "AdChina PlayVideoAd success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    return-void
.end method

.method public onReceiveAd(Lcom/adchina/android/ads/views/AdView;)V
    .locals 4
    .param p1, "adView"    # Lcom/adchina/android/ads/views/AdView;

    .prologue
    .line 216
    const-string v1, "AdsMOGO SDK"

    const-string v2, "AdChina BannerAd success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-static {}, Lcom/adchina/android/ads/AdEngine;->getAdEngine()Lcom/adchina/android/ads/AdEngine;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/adchina/android/ads/AdEngine;->setAdListener(Lcom/adchina/android/ads/AdListener;)V

    .line 218
    iget-object v1, p0, Lcom/admogo/adapters/AdChinaAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 219
    iget-object v1, p0, Lcom/admogo/adapters/AdChinaAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admogo/AdMogoLayout;

    .line 220
    .local v0, "adMogoLayout":Lcom/admogo/AdMogoLayout;
    if-nez v0, :cond_1

    .line 228
    .end local v0    # "adMogoLayout":Lcom/admogo/AdMogoLayout;
    :cond_0
    :goto_0
    return-void

    .line 223
    .restart local v0    # "adMogoLayout":Lcom/admogo/AdMogoLayout;
    :cond_1
    iget-object v1, v0, Lcom/admogo/AdMogoLayout;->adMogoManager:Lcom/admogo/AdMogoManager;

    invoke-virtual {v1}, Lcom/admogo/AdMogoManager;->resetRollover()V

    .line 224
    iget-object v1, v0, Lcom/admogo/AdMogoLayout;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/admogo/AdMogoLayout$ViewAdRunnable;

    .line 225
    const/16 v3, 0x15

    invoke-direct {v2, v0, p1, v3}, Lcom/admogo/AdMogoLayout$ViewAdRunnable;-><init>(Lcom/admogo/AdMogoLayout;Landroid/view/ViewGroup;I)V

    .line 224
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 226
    invoke-virtual {v0}, Lcom/admogo/AdMogoLayout;->rotateThreadedDelayed()V

    goto :goto_0
.end method

.method public onReceiveFullScreenAd(Lcom/adchina/android/ads/views/FullScreenAdView;)V
    .locals 5
    .param p1, "fullScreenAdView"    # Lcom/adchina/android/ads/views/FullScreenAdView;

    .prologue
    .line 232
    const-string v3, "AdsMOGO SDK"

    const-string v4, "AdChina FullScreenAd success"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-static {}, Lcom/adchina/android/ads/AdEngine;->getAdEngine()Lcom/adchina/android/ads/AdEngine;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/adchina/android/ads/AdEngine;->setAdListener(Lcom/adchina/android/ads/AdListener;)V

    .line 234
    iget-object v3, p0, Lcom/admogo/adapters/AdChinaAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 235
    iget-object v3, p0, Lcom/admogo/adapters/AdChinaAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/admogo/AdMogoLayout;

    iput-object v3, p0, Lcom/admogo/adapters/AdChinaAdapter;->adMogoLayout:Lcom/admogo/AdMogoLayout;

    .line 236
    iget-object v3, p0, Lcom/admogo/adapters/AdChinaAdapter;->adMogoLayout:Lcom/admogo/AdMogoLayout;

    if-nez v3, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    new-instance v2, Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/admogo/adapters/AdChinaAdapter;->activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 240
    .local v2, "mCloseButton":Landroid/widget/ImageButton;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 241
    const-string v4, "/com/admogo/assets/close_btn.png"

    .line 240
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 242
    .local v1, "drawableStream":Ljava/io/InputStream;
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .line 243
    .local v0, "adFrameDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 244
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 245
    new-instance v3, Lcom/admogo/adapters/AdChinaAdapter$1;

    invoke-direct {v3, p0}, Lcom/admogo/adapters/AdChinaAdapter$1;-><init>(Lcom/admogo/adapters/AdChinaAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 252
    iget-object v3, p0, Lcom/admogo/adapters/AdChinaAdapter;->adMogoLayout:Lcom/admogo/AdMogoLayout;

    iget-object v4, p0, Lcom/admogo/adapters/AdChinaAdapter;->mFullScreenImageView:Lcom/adchina/android/ads/views/FullScreenAdView;

    invoke-virtual {v3, v4}, Lcom/admogo/AdMogoLayout;->addView(Landroid/view/View;)V

    .line 253
    iget-object v3, p0, Lcom/admogo/adapters/AdChinaAdapter;->adMogoLayout:Lcom/admogo/AdMogoLayout;

    invoke-virtual {v3, v2}, Lcom/admogo/AdMogoLayout;->addView(Landroid/view/View;)V

    .line 254
    iget-object v3, p0, Lcom/admogo/adapters/AdChinaAdapter;->adMogoLayout:Lcom/admogo/AdMogoLayout;

    iget-object v3, v3, Lcom/admogo/AdMogoLayout;->adMogoManager:Lcom/admogo/AdMogoManager;

    invoke-virtual {v3}, Lcom/admogo/AdMogoManager;->resetRollover()V

    .line 255
    iget-object v3, p0, Lcom/admogo/adapters/AdChinaAdapter;->adMogoLayout:Lcom/admogo/AdMogoLayout;

    invoke-virtual {v3}, Lcom/admogo/AdMogoLayout;->CountImpAd()V

    goto :goto_0
.end method

.method public onRefreshAd(Lcom/adchina/android/ads/views/AdView;)V
    .locals 4
    .param p1, "adView"    # Lcom/adchina/android/ads/views/AdView;

    .prologue
    .line 261
    iget-boolean v1, p0, Lcom/admogo/adapters/AdChinaAdapter;->flag:Z

    if-eqz v1, :cond_0

    .line 262
    const-string v1, "AdsMOGO SDK"

    const-string v2, "AdChina onRefreshAd"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/admogo/adapters/AdChinaAdapter;->flag:Z

    .line 264
    invoke-static {}, Lcom/adchina/android/ads/AdEngine;->getAdEngine()Lcom/adchina/android/ads/AdEngine;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/adchina/android/ads/AdEngine;->setAdListener(Lcom/adchina/android/ads/AdListener;)V

    .line 265
    iget-object v1, p0, Lcom/admogo/adapters/AdChinaAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 266
    iget-object v1, p0, Lcom/admogo/adapters/AdChinaAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admogo/AdMogoLayout;

    .line 267
    .local v0, "adMogoLayout":Lcom/admogo/AdMogoLayout;
    if-nez v0, :cond_1

    .line 276
    .end local v0    # "adMogoLayout":Lcom/admogo/AdMogoLayout;
    :cond_0
    :goto_0
    return-void

    .line 270
    .restart local v0    # "adMogoLayout":Lcom/admogo/AdMogoLayout;
    :cond_1
    iget-object v1, v0, Lcom/admogo/AdMogoLayout;->adMogoManager:Lcom/admogo/AdMogoManager;

    invoke-virtual {v1}, Lcom/admogo/AdMogoManager;->resetRollover()V

    .line 271
    iget-object v1, v0, Lcom/admogo/AdMogoLayout;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/admogo/AdMogoLayout$ViewAdRunnable;

    .line 272
    const/16 v3, 0x15

    invoke-direct {v2, v0, p1, v3}, Lcom/admogo/AdMogoLayout$ViewAdRunnable;-><init>(Lcom/admogo/AdMogoLayout;Landroid/view/ViewGroup;I)V

    .line 271
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 273
    invoke-virtual {v0}, Lcom/admogo/AdMogoLayout;->rotateThreadedDelayed()V

    goto :goto_0
.end method
