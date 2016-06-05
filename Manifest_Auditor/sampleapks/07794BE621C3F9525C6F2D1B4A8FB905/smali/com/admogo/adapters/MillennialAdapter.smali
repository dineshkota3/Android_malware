.class public Lcom/admogo/adapters/MillennialAdapter;
.super Lcom/admogo/adapters/AdMogoAdapter;
.source "MillennialAdapter.java"

# interfaces
.implements Lcom/millennialmedia/android/MMAdView$MMAdListener;


# static fields
.field private static interAdView:Lcom/millennialmedia/android/MMAdView;


# instance fields
.field private activity:Landroid/app/Activity;

.field private adView:Lcom/millennialmedia/android/MMAdView;

.field private map:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)V
    .locals 0
    .param p1, "adMogoLayout"    # Lcom/admogo/AdMogoLayout;
    .param p2, "ration"    # Lcom/admogo/obj/Ration;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/admogo/adapters/AdMogoAdapter;-><init>(Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)V

    .line 38
    return-void
.end method


# virtual methods
.method public MMAdClickedToNewBrowser(Lcom/millennialmedia/android/MMAdView;)V
    .locals 2
    .param p1, "adView"    # Lcom/millennialmedia/android/MMAdView;

    .prologue
    .line 122
    const-string v0, "AdsMOGO SDK"

    const-string v1, "Millennial Ad clicked, new browser launched"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void
.end method

.method public MMAdClickedToOverlay(Lcom/millennialmedia/android/MMAdView;)V
    .locals 2
    .param p1, "adView"    # Lcom/millennialmedia/android/MMAdView;

    .prologue
    .line 128
    const-string v0, "AdsMOGO SDK"

    const-string v1, "Millennial Ad Clicked to overlay"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return-void
.end method

.method public MMAdFailed(Lcom/millennialmedia/android/MMAdView;)V
    .locals 3
    .param p1, "adView"    # Lcom/millennialmedia/android/MMAdView;

    .prologue
    .line 133
    const-string v1, "AdsMOGO SDK"

    const-string v2, "Millennial failure"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/millennialmedia/android/MMAdView;->setListener(Lcom/millennialmedia/android/MMAdView$MMAdListener;)V

    .line 135
    iget-object v1, p0, Lcom/admogo/adapters/MillennialAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/admogo/adapters/MillennialAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admogo/AdMogoLayout;

    .line 137
    .local v0, "adMogoLayout":Lcom/admogo/AdMogoLayout;
    if-nez v0, :cond_1

    .line 142
    .end local v0    # "adMogoLayout":Lcom/admogo/AdMogoLayout;
    :cond_0
    :goto_0
    return-void

    .line 140
    .restart local v0    # "adMogoLayout":Lcom/admogo/AdMogoLayout;
    :cond_1
    invoke-virtual {v0}, Lcom/admogo/AdMogoLayout;->rollover()V

    goto :goto_0
.end method

.method public MMAdOverlayLaunched(Lcom/millennialmedia/android/MMAdView;)V
    .locals 2
    .param p1, "adView"    # Lcom/millennialmedia/android/MMAdView;

    .prologue
    .line 146
    const-string v0, "AdsMOGO SDK"

    const-string v1, "Millennial Ad Overlay Launched"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-void
.end method

.method public MMAdRequestIsCaching(Lcom/millennialmedia/android/MMAdView;)V
    .locals 2
    .param p1, "adView"    # Lcom/millennialmedia/android/MMAdView;

    .prologue
    .line 151
    const-string v0, "AdsMOGO SDK"

    const-string v1, "Millennial Ad Request Is Caching"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-void
.end method

.method public MMAdReturned(Lcom/millennialmedia/android/MMAdView;)V
    .locals 5
    .param p1, "adView"    # Lcom/millennialmedia/android/MMAdView;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x6

    const-string v4, "AdsMOGO SDK"

    .line 157
    const-string v1, "AdsMOGO SDK"

    const-string v1, "Millennial success"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    if-eqz p1, :cond_0

    .line 159
    invoke-virtual {p1, v2}, Lcom/millennialmedia/android/MMAdView;->setListener(Lcom/millennialmedia/android/MMAdView$MMAdListener;)V

    .line 161
    :cond_0
    sget-object v1, Lcom/admogo/adapters/MillennialAdapter;->interAdView:Lcom/millennialmedia/android/MMAdView;

    if-eqz v1, :cond_1

    .line 162
    sget-object v1, Lcom/admogo/adapters/MillennialAdapter;->interAdView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v1, v2}, Lcom/millennialmedia/android/MMAdView;->setListener(Lcom/millennialmedia/android/MMAdView$MMAdListener;)V

    .line 164
    :cond_1
    iget-object v1, p0, Lcom/admogo/adapters/MillennialAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admogo/AdMogoLayout;

    .line 165
    .local v0, "adMogoLayout":Lcom/admogo/AdMogoLayout;
    if-nez v0, :cond_3

    .line 184
    :cond_2
    :goto_0
    return-void

    .line 168
    :cond_3
    iget-object v1, v0, Lcom/admogo/AdMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iput-object v1, p0, Lcom/admogo/adapters/MillennialAdapter;->activity:Landroid/app/Activity;

    .line 169
    iget-object v1, p0, Lcom/admogo/adapters/MillennialAdapter;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 172
    iget-object v1, p0, Lcom/admogo/adapters/MillennialAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 173
    invoke-virtual {v0}, Lcom/admogo/AdMogoLayout;->getAdType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 175
    iget-object v1, v0, Lcom/admogo/AdMogoLayout;->adMogoManager:Lcom/admogo/AdMogoManager;

    invoke-virtual {v1}, Lcom/admogo/AdMogoManager;->resetRollover()V

    .line 176
    iget-object v1, v0, Lcom/admogo/AdMogoLayout;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/admogo/AdMogoLayout$ViewAdRunnable;

    .line 177
    invoke-direct {v2, v0, p1, v3}, Lcom/admogo/AdMogoLayout$ViewAdRunnable;-><init>(Lcom/admogo/AdMogoLayout;Landroid/view/ViewGroup;I)V

    .line 176
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 178
    invoke-virtual {v0}, Lcom/admogo/AdMogoLayout;->rotateThreadedDelayed()V

    goto :goto_0

    .line 179
    :cond_4
    invoke-virtual {v0}, Lcom/admogo/AdMogoLayout;->getAdType()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 180
    const-string v1, "AdsMOGO SDK"

    const-string v1, "Full Screen Count Imp."

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-virtual {v0}, Lcom/admogo/AdMogoLayout;->CountImpAd()V

    goto :goto_0
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 191
    const-string v0, "AdsMOGO SDK"

    const-string v1, "Millennial Finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return-void
.end method

.method public handle()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v9, -0x1

    const-string v7, "gender"

    .line 42
    iget-object v5, p0, Lcom/admogo/adapters/MillennialAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admogo/AdMogoLayout;

    .line 43
    .local v0, "adMogoLayout":Lcom/admogo/AdMogoLayout;
    if-nez v0, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    iget-object v5, v0, Lcom/admogo/AdMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    iput-object v5, p0, Lcom/admogo/adapters/MillennialAdapter;->activity:Landroid/app/Activity;

    .line 47
    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    iput-object v5, p0, Lcom/admogo/adapters/MillennialAdapter;->map:Ljava/util/Hashtable;

    .line 49
    invoke-static {}, Lcom/admogo/AdMogoTargeting;->getGender()Lcom/admogo/AdMogoTargeting$Gender;

    move-result-object v2

    .line 50
    .local v2, "gender":Lcom/admogo/AdMogoTargeting$Gender;
    sget-object v5, Lcom/admogo/AdMogoTargeting$Gender;->MALE:Lcom/admogo/AdMogoTargeting$Gender;

    if-ne v2, v5, :cond_7

    .line 51
    iget-object v5, p0, Lcom/admogo/adapters/MillennialAdapter;->map:Ljava/util/Hashtable;

    const-string v6, "gender"

    const-string v6, "male"

    invoke-virtual {v5, v7, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_2
    :goto_1
    invoke-static {}, Lcom/admogo/AdMogoTargeting;->getAge()I

    move-result v1

    .line 57
    .local v1, "age":I
    if-eq v1, v9, :cond_3

    .line 58
    iget-object v5, p0, Lcom/admogo/adapters/MillennialAdapter;->map:Ljava/util/Hashtable;

    const-string v6, "age"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_3
    invoke-static {}, Lcom/admogo/AdMogoTargeting;->getPostalCode()Ljava/lang/String;

    move-result-object v4

    .line 62
    .local v4, "postalCode":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 63
    iget-object v5, p0, Lcom/admogo/adapters/MillennialAdapter;->map:Ljava/util/Hashtable;

    const-string v6, "zip"

    invoke-virtual {v5, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_4
    invoke-static {}, Lcom/admogo/AdMogoTargeting;->getKeywordSet()Ljava/util/Set;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 67
    const-string v5, ","

    invoke-static {}, Lcom/admogo/AdMogoTargeting;->getKeywordSet()Ljava/util/Set;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 69
    .local v3, "keywords":Ljava/lang/String;
    :goto_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 70
    iget-object v5, p0, Lcom/admogo/adapters/MillennialAdapter;->map:Ljava/util/Hashtable;

    const-string v6, "keywords"

    invoke-virtual {v5, v6, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_5
    invoke-virtual {v0}, Lcom/admogo/AdMogoLayout;->getAdType()I

    move-result v5

    if-ne v5, v8, :cond_6

    .line 75
    iget-object v5, p0, Lcom/admogo/adapters/MillennialAdapter;->map:Ljava/util/Hashtable;

    const-string v6, "vendor"

    const-string v7, "adMogo"

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v5, p0, Lcom/admogo/adapters/MillennialAdapter;->map:Ljava/util/Hashtable;

    const-string v6, "height"

    const-string v7, "53"

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v5, p0, Lcom/admogo/adapters/MillennialAdapter;->map:Ljava/util/Hashtable;

    const-string v6, "width"

    const-string v7, "320"

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_6
    invoke-virtual {v0}, Lcom/admogo/AdMogoLayout;->getAdType()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_9

    .line 86
    iget-object v5, p0, Lcom/admogo/adapters/MillennialAdapter;->activity:Landroid/app/Activity;

    const-string v6, "12345"

    invoke-static {v5, v6}, Lcom/millennialmedia/android/MMAdView;->startConversionTrackerWithGoalId(Landroid/content/Context;Ljava/lang/String;)V

    .line 87
    iget-object v5, p0, Lcom/admogo/adapters/MillennialAdapter;->activity:Landroid/app/Activity;

    iget-object v6, p0, Lcom/admogo/adapters/MillennialAdapter;->ration:Lcom/admogo/obj/Ration;

    iget-object v6, v6, Lcom/admogo/obj/Ration;->key:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/admogo/adapters/MillennialAdapter;->showInterstitial(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 52
    .end local v1    # "age":I
    .end local v3    # "keywords":Ljava/lang/String;
    .end local v4    # "postalCode":Ljava/lang/String;
    :cond_7
    sget-object v5, Lcom/admogo/AdMogoTargeting$Gender;->FEMALE:Lcom/admogo/AdMogoTargeting$Gender;

    if-ne v2, v5, :cond_2

    .line 53
    iget-object v5, p0, Lcom/admogo/adapters/MillennialAdapter;->map:Ljava/util/Hashtable;

    const-string v6, "gender"

    const-string v6, "female"

    invoke-virtual {v5, v7, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 68
    .restart local v1    # "age":I
    .restart local v4    # "postalCode":Ljava/lang/String;
    :cond_8
    invoke-static {}, Lcom/admogo/AdMogoTargeting;->getKeywords()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    goto :goto_2

    .line 88
    .restart local v3    # "keywords":Ljava/lang/String;
    :cond_9
    invoke-virtual {v0}, Lcom/admogo/AdMogoLayout;->getAdType()I

    move-result v5

    if-ne v5, v8, :cond_0

    .line 89
    new-instance v5, Lcom/millennialmedia/android/MMAdView;

    iget-object v6, p0, Lcom/admogo/adapters/MillennialAdapter;->activity:Landroid/app/Activity;

    iget-object v7, p0, Lcom/admogo/adapters/MillennialAdapter;->ration:Lcom/admogo/obj/Ration;

    iget-object v7, v7, Lcom/admogo/obj/Ration;->key:Ljava/lang/String;

    .line 90
    const-string v8, "MMBannerAdBottom"

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/millennialmedia/android/MMAdView;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V

    .line 89
    iput-object v5, p0, Lcom/admogo/adapters/MillennialAdapter;->adView:Lcom/millennialmedia/android/MMAdView;

    .line 91
    iget-object v5, p0, Lcom/admogo/adapters/MillennialAdapter;->adView:Lcom/millennialmedia/android/MMAdView;

    const v6, 0x711e41a1

    invoke-virtual {v5, v6}, Lcom/millennialmedia/android/MMAdView;->setId(I)V

    .line 93
    iget-object v5, p0, Lcom/admogo/adapters/MillennialAdapter;->adView:Lcom/millennialmedia/android/MMAdView;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    .line 94
    const/4 v7, -0x2

    invoke-direct {v6, v9, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 93
    invoke-virtual {v0, v5, v6}, Lcom/admogo/AdMogoLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    iget-object v5, p0, Lcom/admogo/adapters/MillennialAdapter;->adView:Lcom/millennialmedia/android/MMAdView;

    iget-object v6, p0, Lcom/admogo/adapters/MillennialAdapter;->map:Ljava/util/Hashtable;

    invoke-virtual {v5, v6}, Lcom/millennialmedia/android/MMAdView;->setMetaValues(Ljava/util/Hashtable;)V

    .line 97
    iget-object v5, p0, Lcom/admogo/adapters/MillennialAdapter;->adView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v5, p0}, Lcom/millennialmedia/android/MMAdView;->setListener(Lcom/millennialmedia/android/MMAdView$MMAdListener;)V

    .line 98
    iget-object v5, p0, Lcom/admogo/adapters/MillennialAdapter;->adView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v5}, Lcom/millennialmedia/android/MMAdView;->callForAd()V

    goto/16 :goto_0
.end method

.method public showInterstitial(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 104
    if-eqz p1, :cond_1

    .line 106
    sget-object v0, Lcom/admogo/adapters/MillennialAdapter;->interAdView:Lcom/millennialmedia/android/MMAdView;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lcom/millennialmedia/android/MMAdView;

    .line 108
    const-string v3, "MMFullScreenAdTransition"

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/admogo/adapters/MillennialAdapter;->map:Ljava/util/Hashtable;

    move-object v1, p1

    move-object v2, p2

    .line 107
    invoke-direct/range {v0 .. v5}, Lcom/millennialmedia/android/MMAdView;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Hashtable;)V

    sput-object v0, Lcom/admogo/adapters/MillennialAdapter;->interAdView:Lcom/millennialmedia/android/MMAdView;

    .line 109
    sget-object v0, Lcom/admogo/adapters/MillennialAdapter;->interAdView:Lcom/millennialmedia/android/MMAdView;

    const v1, 0x711e41a2

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdView;->setId(I)V

    .line 112
    :cond_0
    sget-object v0, Lcom/admogo/adapters/MillennialAdapter;->interAdView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v0, p0}, Lcom/millennialmedia/android/MMAdView;->setListener(Lcom/millennialmedia/android/MMAdView$MMAdListener;)V

    .line 113
    sget-object v0, Lcom/admogo/adapters/MillennialAdapter;->interAdView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->callForAd()V

    .line 116
    :cond_1
    return-void
.end method
