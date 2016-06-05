.class public final Lcom/admogo/adapters/InMobiAdapter;
.super Lcom/admogo/adapters/AdMogoAdapter;
.source "InMobiAdapter.java"

# interfaces
.implements Lcom/inmobi/androidsdk/InMobiAdDelegate;


# instance fields
.field private activity:Landroid/app/Activity;

.field public adUnit:I

.field private extra:Lcom/admogo/obj/Extra;


# direct methods
.method public constructor <init>(Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)V
    .locals 1
    .param p1, "adMogoLayout"    # Lcom/admogo/AdMogoLayout;
    .param p2, "ration"    # Lcom/admogo/obj/Ration;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/admogo/adapters/AdMogoAdapter;-><init>(Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admogo/adapters/InMobiAdapter;->extra:Lcom/admogo/obj/Extra;

    .line 41
    const/16 v0, 0x9

    iput v0, p0, Lcom/admogo/adapters/InMobiAdapter;->adUnit:I

    .line 46
    iget-object v0, p1, Lcom/admogo/AdMogoLayout;->extra:Lcom/admogo/obj/Extra;

    iput-object v0, p0, Lcom/admogo/adapters/InMobiAdapter;->extra:Lcom/admogo/obj/Extra;

    .line 47
    return-void
.end method


# virtual methods
.method public adRequestCompleted(Lcom/inmobi/androidsdk/impl/InMobiAdView;)V
    .locals 4
    .param p1, "adView"    # Lcom/inmobi/androidsdk/impl/InMobiAdView;

    .prologue
    .line 70
    const-string v1, "AdsMOGO SDK"

    const-string v2, "InMobi success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v1, p0, Lcom/admogo/adapters/InMobiAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/admogo/adapters/InMobiAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admogo/AdMogoLayout;

    .line 73
    .local v0, "adMogoLayout":Lcom/admogo/AdMogoLayout;
    if-nez v0, :cond_1

    .line 82
    .end local v0    # "adMogoLayout":Lcom/admogo/AdMogoLayout;
    :cond_0
    :goto_0
    return-void

    .line 76
    .restart local v0    # "adMogoLayout":Lcom/admogo/AdMogoLayout;
    :cond_1
    iget-object v1, v0, Lcom/admogo/AdMogoLayout;->adMogoManager:Lcom/admogo/AdMogoManager;

    invoke-virtual {v1}, Lcom/admogo/AdMogoManager;->resetRollover()V

    .line 77
    iget-object v1, v0, Lcom/admogo/AdMogoLayout;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/admogo/AdMogoLayout$ViewAdRunnable;

    .line 78
    const/16 v3, 0x12

    invoke-direct {v2, v0, p1, v3}, Lcom/admogo/AdMogoLayout$ViewAdRunnable;-><init>(Lcom/admogo/AdMogoLayout;Landroid/view/ViewGroup;I)V

    .line 77
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 79
    invoke-virtual {v0}, Lcom/admogo/AdMogoLayout;->rotateThreadedDelayed()V

    .line 80
    invoke-virtual {p1}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->stopReceivingNotifications()V

    goto :goto_0
.end method

.method public adRequestFailed(Lcom/inmobi/androidsdk/impl/InMobiAdView;)V
    .locals 3
    .param p1, "adView"    # Lcom/inmobi/androidsdk/impl/InMobiAdView;

    .prologue
    .line 86
    const-string v1, "AdsMOGO SDK"

    const-string v2, "InMobi failure"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p1}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->stopReceivingNotifications()V

    .line 88
    iget-object v1, p0, Lcom/admogo/adapters/InMobiAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/admogo/adapters/InMobiAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admogo/AdMogoLayout;

    .line 90
    .local v0, "adMogoLayout":Lcom/admogo/AdMogoLayout;
    if-nez v0, :cond_1

    .line 95
    .end local v0    # "adMogoLayout":Lcom/admogo/AdMogoLayout;
    :cond_0
    :goto_0
    return-void

    .line 93
    .restart local v0    # "adMogoLayout":Lcom/admogo/AdMogoLayout;
    :cond_1
    invoke-virtual {v0}, Lcom/admogo/AdMogoLayout;->rollover()V

    goto :goto_0
.end method

.method public age()I
    .locals 1

    .prologue
    .line 99
    invoke-static {}, Lcom/admogo/AdMogoTargeting;->getAge()I

    move-result v0

    return v0
.end method

.method public areaCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method public currentLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return-object v0
.end method

.method public dateOfBirth()Ljava/util/Date;
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return-object v0
.end method

.method public education()Lcom/inmobi/androidsdk/EducationType;
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return-object v0
.end method

.method public ethnicity()Lcom/inmobi/androidsdk/EthnicityType;
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return-object v0
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 190
    const-string v0, "AdsMOGO SDK"

    const-string v1, "InMobi Finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return-void
.end method

.method public gender()Lcom/inmobi/androidsdk/GenderType;
    .locals 2

    .prologue
    .line 129
    invoke-static {}, Lcom/admogo/AdMogoTargeting;->getGender()Lcom/admogo/AdMogoTargeting$Gender;

    move-result-object v0

    .line 130
    .local v0, "gender":Lcom/admogo/AdMogoTargeting$Gender;
    sget-object v1, Lcom/admogo/AdMogoTargeting$Gender;->MALE:Lcom/admogo/AdMogoTargeting$Gender;

    if-ne v1, v0, :cond_0

    .line 131
    sget-object v1, Lcom/inmobi/androidsdk/GenderType;->G_M:Lcom/inmobi/androidsdk/GenderType;

    .line 136
    :goto_0
    return-object v1

    .line 133
    :cond_0
    sget-object v1, Lcom/admogo/AdMogoTargeting$Gender;->FEMALE:Lcom/admogo/AdMogoTargeting$Gender;

    if-ne v1, v0, :cond_1

    .line 134
    sget-object v1, Lcom/inmobi/androidsdk/GenderType;->G_F:Lcom/inmobi/androidsdk/GenderType;

    goto :goto_0

    .line 136
    :cond_1
    sget-object v1, Lcom/inmobi/androidsdk/GenderType;->G_None:Lcom/inmobi/androidsdk/GenderType;

    goto :goto_0
.end method

.method public handle()V
    .locals 5

    .prologue
    .line 52
    iget-object v3, p0, Lcom/admogo/adapters/InMobiAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admogo/AdMogoLayout;

    .line 53
    .local v0, "adMogoLayout":Lcom/admogo/AdMogoLayout;
    if-nez v0, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    iget-object v3, v0, Lcom/admogo/AdMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    iput-object v3, p0, Lcom/admogo/adapters/InMobiAdapter;->activity:Landroid/app/Activity;

    .line 58
    iget-object v3, p0, Lcom/admogo/adapters/InMobiAdapter;->activity:Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 62
    iget-object v3, p0, Lcom/admogo/adapters/InMobiAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 64
    .local v2, "context":Landroid/content/Context;
    iget-object v3, p0, Lcom/admogo/adapters/InMobiAdapter;->activity:Landroid/app/Activity;

    iget v4, p0, Lcom/admogo/adapters/InMobiAdapter;->adUnit:I

    .line 63
    invoke-static {v2, p0, v3, v4}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->requestAdUnitWithDelegate(Landroid/content/Context;Lcom/inmobi/androidsdk/InMobiAdDelegate;Landroid/app/Activity;I)Lcom/inmobi/androidsdk/impl/InMobiAdView;

    move-result-object v1

    .line 65
    .local v1, "adView":Lcom/inmobi/androidsdk/impl/InMobiAdView;
    invoke-virtual {v1}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->loadNewAd()V

    goto :goto_0
.end method

.method public income()I
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public interests()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    return-object v0
.end method

.method public isLocationInquiryAllowed()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 151
    iget-object v0, p0, Lcom/admogo/adapters/InMobiAdapter;->extra:Lcom/admogo/obj/Extra;

    iget v0, v0, Lcom/admogo/obj/Extra;->locationOn:I

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 154
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPublisherProvidingLocation()Z
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public keywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    invoke-static {}, Lcom/admogo/AdMogoTargeting;->getKeywords()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public postalCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    invoke-static {}, Lcom/admogo/AdMogoTargeting;->getPostalCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public searchString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    return-object v0
.end method

.method public siteId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/admogo/adapters/InMobiAdapter;->ration:Lcom/admogo/obj/Ration;

    iget-object v0, v0, Lcom/admogo/obj/Ration;->key:Ljava/lang/String;

    return-object v0
.end method

.method public testMode()Z
    .locals 1

    .prologue
    .line 185
    invoke-static {}, Lcom/admogo/AdMogoTargeting;->getTestMode()Z

    move-result v0

    return v0
.end method
