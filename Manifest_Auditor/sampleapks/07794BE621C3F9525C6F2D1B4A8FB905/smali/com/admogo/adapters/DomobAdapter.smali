.class public Lcom/admogo/adapters/DomobAdapter;
.super Lcom/admogo/adapters/AdMogoAdapter;
.source "DomobAdapter.java"

# interfaces
.implements Lcn/domob/android/ads/DomobAdListener;


# instance fields
.field private activity:Landroid/app/Activity;

.field private adView:Lcn/domob/android/ads/DomobAdView;


# direct methods
.method public constructor <init>(Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)V
    .locals 0
    .param p1, "adMogoLayout"    # Lcom/admogo/AdMogoLayout;
    .param p2, "ration"    # Lcom/admogo/obj/Ration;

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
    .line 130
    const-string v0, "AdsMOGO SDK"

    const-string v1, "Domob Finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-void
.end method

.method public handle()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, -0x2

    .line 38
    iget-object v8, p0, Lcom/admogo/adapters/DomobAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admogo/AdMogoLayout;

    .line 39
    .local v0, "adMogoLayout":Lcom/admogo/AdMogoLayout;
    if-nez v0, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    iget-object v8, v0, Lcom/admogo/AdMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/Activity;

    iput-object v8, p0, Lcom/admogo/adapters/DomobAdapter;->activity:Landroid/app/Activity;

    .line 47
    iget-object v8, p0, Lcom/admogo/adapters/DomobAdapter;->activity:Landroid/app/Activity;

    if-eqz v8, :cond_0

    .line 50
    new-instance v8, Lcn/domob/android/ads/DomobAdView;

    iget-object v9, p0, Lcom/admogo/adapters/DomobAdapter;->activity:Landroid/app/Activity;

    invoke-direct {v8, v9}, Lcn/domob/android/ads/DomobAdView;-><init>(Landroid/app/Activity;)V

    iput-object v8, p0, Lcom/admogo/adapters/DomobAdapter;->adView:Lcn/domob/android/ads/DomobAdView;

    .line 51
    iget-object v4, v0, Lcom/admogo/AdMogoLayout;->extra:Lcom/admogo/obj/Extra;

    .line 52
    .local v4, "extra":Lcom/admogo/obj/Extra;
    iget v8, v4, Lcom/admogo/obj/Extra;->bgRed:I

    iget v9, v4, Lcom/admogo/obj/Extra;->bgGreen:I

    iget v10, v4, Lcom/admogo/obj/Extra;->bgBlue:I

    invoke-static {v8, v9, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    .line 53
    .local v1, "bgColor":I
    iget v8, v4, Lcom/admogo/obj/Extra;->fgRed:I

    iget v9, v4, Lcom/admogo/obj/Extra;->fgGreen:I

    iget v10, v4, Lcom/admogo/obj/Extra;->fgBlue:I

    invoke-static {v8, v9, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    .line 55
    .local v5, "fgColor":I
    :try_start_0
    iget-object v8, p0, Lcom/admogo/adapters/DomobAdapter;->ration:Lcom/admogo/obj/Ration;

    iget-object v8, v8, Lcom/admogo/obj/Ration;->key:Ljava/lang/String;

    invoke-static {v8}, Lcn/domob/android/ads/DomobAdManager;->setPublisherId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    iget-object v8, p0, Lcom/admogo/adapters/DomobAdapter;->adView:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v8, p0}, Lcn/domob/android/ads/DomobAdView;->setAdListener(Lcn/domob/android/ads/DomobAdListener;)V

    .line 63
    invoke-static {}, Lcom/admogo/AdMogoTargeting;->getGender()Lcom/admogo/AdMogoTargeting$Gender;

    move-result-object v6

    .line 64
    .local v6, "gender":Lcom/admogo/AdMogoTargeting$Gender;
    sget-object v8, Lcom/admogo/AdMogoTargeting$Gender;->FEMALE:Lcom/admogo/AdMogoTargeting$Gender;

    if-ne v6, v8, :cond_5

    .line 65
    const-string v8, "female"

    invoke-static {v8}, Lcn/domob/android/ads/DomobAdManager;->setGender(Ljava/lang/String;)V

    .line 70
    :cond_2
    :goto_1
    invoke-static {}, Lcom/admogo/AdMogoTargeting;->getBirthDate()Ljava/util/GregorianCalendar;

    move-result-object v2

    .line 71
    .local v2, "birthDate":Ljava/util/GregorianCalendar;
    if-eqz v2, :cond_3

    .line 72
    invoke-static {v2}, Lcn/domob/android/ads/DomobAdManager;->setBirthday(Ljava/util/GregorianCalendar;)V

    .line 75
    :cond_3
    invoke-static {}, Lcom/admogo/AdMogoTargeting;->getPostalCode()Ljava/lang/String;

    move-result-object v7

    .line 76
    .local v7, "postalCode":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 77
    invoke-static {v7}, Lcn/domob/android/ads/DomobAdManager;->setPostalCode(Ljava/lang/String;)V

    .line 80
    :cond_4
    iget v8, v4, Lcom/admogo/obj/Extra;->locationOn:I

    if-ne v8, v12, :cond_6

    move v8, v12

    :goto_2
    invoke-static {v8}, Lcn/domob/android/ads/DomobAdManager;->setAllowUseOfLocation(Z)V

    .line 82
    iget-object v8, p0, Lcom/admogo/adapters/DomobAdapter;->adView:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v8, v1}, Lcn/domob/android/ads/DomobAdView;->setBackgroundColor(I)V

    .line 83
    iget-object v8, p0, Lcom/admogo/adapters/DomobAdapter;->adView:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v8, v5}, Lcn/domob/android/ads/DomobAdView;->setPrimaryTextColor(I)V

    .line 84
    iget-object v8, p0, Lcom/admogo/adapters/DomobAdapter;->adView:Lcn/domob/android/ads/DomobAdView;

    iget-object v9, p0, Lcom/admogo/adapters/DomobAdapter;->ration:Lcom/admogo/obj/Ration;

    iget-object v9, v9, Lcom/admogo/obj/Ration;->key2:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcn/domob/android/ads/DomobAdView;->setKeywords(Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcom/admogo/AdMogoTargeting;->getTestMode()Z

    move-result v8

    invoke-static {v8}, Lcn/domob/android/ads/DomobAdManager;->setIsTestMode(Z)V

    .line 86
    iget-object v8, p0, Lcom/admogo/adapters/DomobAdapter;->adView:Lcn/domob/android/ads/DomobAdView;

    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v9, v11, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v8, v9}, Lcom/admogo/AdMogoLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    iget-object v8, p0, Lcom/admogo/adapters/DomobAdapter;->adView:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v8}, Lcn/domob/android/ads/DomobAdView;->requestFreshAd()V

    goto/16 :goto_0

    .line 57
    .end local v2    # "birthDate":Ljava/util/GregorianCalendar;
    .end local v6    # "gender":Lcom/admogo/AdMogoTargeting$Gender;
    .end local v7    # "postalCode":Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v3, v8

    .line 58
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Lcom/admogo/AdMogoLayout;->rollover()V

    goto/16 :goto_0

    .line 66
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v6    # "gender":Lcom/admogo/AdMogoTargeting$Gender;
    :cond_5
    sget-object v8, Lcom/admogo/AdMogoTargeting$Gender;->MALE:Lcom/admogo/AdMogoTargeting$Gender;

    if-ne v6, v8, :cond_2

    .line 67
    const-string v8, "male"

    invoke-static {v8}, Lcn/domob/android/ads/DomobAdManager;->setGender(Ljava/lang/String;)V

    goto :goto_1

    .line 80
    .restart local v2    # "birthDate":Ljava/util/GregorianCalendar;
    .restart local v7    # "postalCode":Ljava/lang/String;
    :cond_6
    const/4 v8, 0x0

    goto :goto_2
.end method

.method public onFailedToReceiveFreshAd(Lcn/domob/android/ads/DomobAdView;)V
    .locals 3
    .param p1, "adView"    # Lcn/domob/android/ads/DomobAdView;

    .prologue
    .line 95
    const-string v1, "AdsMOGO SDK"

    const-string v2, "Domob Failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcn/domob/android/ads/DomobAdView;->setAdListener(Lcn/domob/android/ads/DomobAdListener;)V

    .line 97
    iget-object v1, p0, Lcom/admogo/adapters/DomobAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/admogo/adapters/DomobAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admogo/AdMogoLayout;

    .line 99
    .local v0, "adMogoLayout":Lcom/admogo/AdMogoLayout;
    if-nez v0, :cond_1

    .line 104
    .end local v0    # "adMogoLayout":Lcom/admogo/AdMogoLayout;
    :cond_0
    :goto_0
    return-void

    .line 102
    .restart local v0    # "adMogoLayout":Lcom/admogo/AdMogoLayout;
    :cond_1
    invoke-virtual {v0}, Lcom/admogo/AdMogoLayout;->rollover()V

    goto :goto_0
.end method

.method public onReceivedFreshAd(Lcn/domob/android/ads/DomobAdView;)V
    .locals 4
    .param p1, "adView"    # Lcn/domob/android/ads/DomobAdView;

    .prologue
    .line 108
    const-string v1, "AdsMOGO SDK"

    const-string v2, "Domob Success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcn/domob/android/ads/DomobAdView;->setAdListener(Lcn/domob/android/ads/DomobAdListener;)V

    .line 110
    iget-object v1, p0, Lcom/admogo/adapters/DomobAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/admogo/adapters/DomobAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admogo/AdMogoLayout;

    .line 112
    .local v0, "adMogoLayout":Lcom/admogo/AdMogoLayout;
    if-nez v0, :cond_1

    .line 120
    .end local v0    # "adMogoLayout":Lcom/admogo/AdMogoLayout;
    :cond_0
    :goto_0
    return-void

    .line 115
    .restart local v0    # "adMogoLayout":Lcom/admogo/AdMogoLayout;
    :cond_1
    iget-object v1, v0, Lcom/admogo/AdMogoLayout;->adMogoManager:Lcom/admogo/AdMogoManager;

    invoke-virtual {v1}, Lcom/admogo/AdMogoManager;->resetRollover()V

    .line 116
    iget-object v1, v0, Lcom/admogo/AdMogoLayout;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/admogo/AdMogoLayout$ViewAdRunnable;

    .line 117
    const/16 v3, 0x1d

    invoke-direct {v2, v0, p1, v3}, Lcom/admogo/AdMogoLayout$ViewAdRunnable;-><init>(Lcom/admogo/AdMogoLayout;Landroid/view/ViewGroup;I)V

    .line 116
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 118
    invoke-virtual {v0}, Lcom/admogo/AdMogoLayout;->rotateThreadedDelayed()V

    goto :goto_0
.end method
