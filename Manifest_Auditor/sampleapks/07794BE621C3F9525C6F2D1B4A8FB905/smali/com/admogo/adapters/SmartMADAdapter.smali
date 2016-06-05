.class public Lcom/admogo/adapters/SmartMADAdapter;
.super Lcom/admogo/adapters/AdMogoAdapter;
.source "SmartMADAdapter.java"

# interfaces
.implements Lcom/madhouse/android/ads/AdListener;


# instance fields
.field private AdSpaceID:Ljava/lang/String;

.field private AppID:Ljava/lang/String;

.field private activity:Landroid/app/Activity;

.field private adView:Lcom/madhouse/android/ads/AdView;


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

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/admogo/adapters/AdMogoAdapter;-><init>(Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)V

    .line 31
    iput-object v1, p0, Lcom/admogo/adapters/SmartMADAdapter;->AppID:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lcom/admogo/adapters/SmartMADAdapter;->AdSpaceID:Ljava/lang/String;

    .line 38
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/admogo/adapters/SmartMADAdapter;->ration:Lcom/admogo/obj/Ration;

    iget-object v1, v1, Lcom/admogo/obj/Ration;->key:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 39
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "AppID"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/admogo/adapters/SmartMADAdapter;->AppID:Ljava/lang/String;

    .line 40
    const-string v1, "AdSpaceID"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/admogo/adapters/SmartMADAdapter;->AdSpaceID:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 138
    const-string v0, "AdsMOGO SDK"

    const-string v1, "SmartMAD Finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void
.end method

.method public handle()V
    .locals 12

    .prologue
    const/4 v11, -0x2

    .line 44
    iget-object v0, p0, Lcom/admogo/adapters/SmartMADAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/admogo/AdMogoLayout;

    .line 45
    .local v7, "adMogoLayout":Lcom/admogo/AdMogoLayout;
    if-nez v7, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    iget-object v0, v7, Lcom/admogo/AdMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/admogo/adapters/SmartMADAdapter;->activity:Landroid/app/Activity;

    .line 50
    iget-object v0, p0, Lcom/admogo/adapters/SmartMADAdapter;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 54
    invoke-static {}, Lcom/admogo/AdMogoTargeting;->getGender()Lcom/admogo/AdMogoTargeting$Gender;

    move-result-object v10

    .line 55
    .local v10, "gender":Lcom/admogo/AdMogoTargeting$Gender;
    if-eqz v10, :cond_2

    .line 56
    invoke-virtual {v10}, Lcom/admogo/AdMogoTargeting$Gender;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/madhouse/android/ads/AdManager;->setUserGender(Ljava/lang/String;)V

    .line 59
    :cond_2
    invoke-static {}, Lcom/admogo/AdMogoTargeting;->getBirthDate()Ljava/util/GregorianCalendar;

    move-result-object v8

    .line 60
    .local v8, "birthDate":Ljava/util/GregorianCalendar;
    if-eqz v8, :cond_3

    .line 61
    invoke-static {}, Lcom/admogo/AdMogoTargeting;->getAge()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/madhouse/android/ads/AdManager;->setUserAge(Ljava/lang/String;)V

    .line 65
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/admogo/adapters/SmartMADAdapter;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/admogo/adapters/SmartMADAdapter;->AppID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/madhouse/android/ads/AdManager;->setApplicationId(Landroid/content/Context;Ljava/lang/String;)V

    .line 73
    new-instance v0, Lcom/madhouse/android/ads/AdView;

    iget-object v1, p0, Lcom/admogo/adapters/SmartMADAdapter;->activity:Landroid/app/Activity;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/admogo/adapters/SmartMADAdapter;->AdSpaceID:Ljava/lang/String;

    const/16 v5, 0x258

    .line 74
    invoke-static {}, Lcom/admogo/AdMogoTargeting;->getTestMode()Z

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/madhouse/android/ads/AdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;IZ)V

    .line 73
    iput-object v0, p0, Lcom/admogo/adapters/SmartMADAdapter;->adView:Lcom/madhouse/android/ads/AdView;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    iget-object v0, p0, Lcom/admogo/adapters/SmartMADAdapter;->adView:Lcom/madhouse/android/ads/AdView;

    invoke-virtual {v0, p0}, Lcom/madhouse/android/ads/AdView;->setListener(Lcom/madhouse/android/ads/AdListener;)V

    .line 81
    iget-object v0, p0, Lcom/admogo/adapters/SmartMADAdapter;->adView:Lcom/madhouse/android/ads/AdView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v11, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v0, v1}, Lcom/admogo/AdMogoLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 77
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v7}, Lcom/admogo/AdMogoLayout;->rollover()V

    goto :goto_0
.end method

.method public onAdEvent(Lcom/madhouse/android/ads/AdView;I)V
    .locals 0
    .param p1, "adView"    # Lcom/madhouse/android/ads/AdView;
    .param p2, "event"    # I

    .prologue
    .line 131
    return-void
.end method

.method public onAdStatus(I)V
    .locals 5
    .param p1, "status"    # I

    .prologue
    const/4 v3, 0x0

    const/16 v4, 0x1a

    const-string v2, "AdsMOGO SDK"

    .line 98
    const-string v1, "AdsMOGO SDK"

    const-string v1, "SmartMAD on Ad Status"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v1, p0, Lcom/admogo/adapters/SmartMADAdapter;->adView:Lcom/madhouse/android/ads/AdView;

    invoke-virtual {v1, v3}, Lcom/madhouse/android/ads/AdView;->setListener(Lcom/madhouse/android/ads/AdListener;)V

    .line 100
    iget-object v1, p0, Lcom/admogo/adapters/SmartMADAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admogo/AdMogoLayout;

    .line 101
    .local v0, "adMogoLayout":Lcom/admogo/AdMogoLayout;
    if-nez v0, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v1, p0, Lcom/admogo/adapters/SmartMADAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    const/16 v1, 0xc8

    if-eq p1, v1, :cond_2

    .line 106
    const-string v1, "AdsMOGO SDK"

    const-string v1, "Smart failure"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iput-object v3, p0, Lcom/admogo/adapters/SmartMADAdapter;->adView:Lcom/madhouse/android/ads/AdView;

    .line 108
    invoke-virtual {v0}, Lcom/admogo/AdMogoLayout;->rollover()V

    goto :goto_0

    .line 110
    :cond_2
    const-string v1, "AdsMOGO SDK"

    const-string v1, "Smart success"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {v0}, Lcom/admogo/AdMogoLayout;->getAdType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 112
    iget-object v1, v0, Lcom/admogo/AdMogoLayout;->adMogoManager:Lcom/admogo/AdMogoManager;

    invoke-virtual {v1}, Lcom/admogo/AdMogoManager;->resetRollover()V

    .line 113
    iget-object v1, v0, Lcom/admogo/AdMogoLayout;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/admogo/AdMogoLayout$ViewAdRunnable;

    .line 114
    iget-object v3, p0, Lcom/admogo/adapters/SmartMADAdapter;->adView:Lcom/madhouse/android/ads/AdView;

    invoke-direct {v2, v0, v3, v4}, Lcom/admogo/AdMogoLayout$ViewAdRunnable;-><init>(Lcom/admogo/AdMogoLayout;Landroid/view/ViewGroup;I)V

    .line 113
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 115
    invoke-virtual {v0}, Lcom/admogo/AdMogoLayout;->rotateThreadedDelayed()V

    goto :goto_0

    .line 116
    :cond_3
    invoke-virtual {v0}, Lcom/admogo/AdMogoLayout;->getAdType()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 117
    iget-object v1, v0, Lcom/admogo/AdMogoLayout;->adMogoManager:Lcom/admogo/AdMogoManager;

    invoke-virtual {v1}, Lcom/admogo/AdMogoManager;->resetRollover()V

    .line 118
    iget-object v1, v0, Lcom/admogo/AdMogoLayout;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/admogo/AdMogoLayout$ViewAdRunnable;

    .line 119
    iget-object v3, p0, Lcom/admogo/adapters/SmartMADAdapter;->adView:Lcom/madhouse/android/ads/AdView;

    invoke-direct {v2, v0, v3, v4}, Lcom/admogo/AdMogoLayout$ViewAdRunnable;-><init>(Lcom/admogo/AdMogoLayout;Landroid/view/ViewGroup;I)V

    .line 118
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
