.class public Lcom/admogo/adapters/SmaatoAdapter;
.super Lcom/admogo/adapters/AdMogoAdapter;
.source "SmaatoAdapter.java"

# interfaces
.implements Lcom/smaato/SOMA/AdListener;


# instance fields
.field private AdSpaceId:I

.field private PublisherId:I

.field private activity:Landroid/app/Activity;

.field private adView:Lcom/smaato/SOMA/SOMABanner;

.field private flag:Z


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

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/admogo/adapters/AdMogoAdapter;-><init>(Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)V

    .line 35
    iput v1, p0, Lcom/admogo/adapters/SmaatoAdapter;->PublisherId:I

    .line 36
    iput v1, p0, Lcom/admogo/adapters/SmaatoAdapter;->AdSpaceId:I

    .line 42
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/admogo/adapters/SmaatoAdapter;->ration:Lcom/admogo/obj/Ration;

    iget-object v1, v1, Lcom/admogo/obj/Ration;->key:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 43
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "PublisherId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/admogo/adapters/SmaatoAdapter;->PublisherId:I

    .line 44
    const-string v1, "AdSpaceId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/admogo/adapters/SmaatoAdapter;->AdSpaceId:I

    .line 45
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 153
    const-string v0, "AdsMOGO SDK"

    const-string v1, "Smaato finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return-void
.end method

.method public handle()V
    .locals 13

    .prologue
    .line 48
    iget-object v9, p0, Lcom/admogo/adapters/SmaatoAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admogo/AdMogoLayout;

    .line 49
    .local v0, "adMogoLayout":Lcom/admogo/AdMogoLayout;
    if-nez v0, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    iget-object v9, v0, Lcom/admogo/AdMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/Activity;

    iput-object v9, p0, Lcom/admogo/adapters/SmaatoAdapter;->activity:Landroid/app/Activity;

    .line 54
    iget-object v9, p0, Lcom/admogo/adapters/SmaatoAdapter;->activity:Landroid/app/Activity;

    if-eqz v9, :cond_0

    .line 62
    sget-object v7, Lcom/smaato/SOMA/AdDownloader$MediaType;->TXT:Lcom/smaato/SOMA/AdDownloader$MediaType;

    .line 63
    .local v7, "mediaType":Lcom/smaato/SOMA/AdDownloader$MediaType;
    const/4 v8, 0x0

    .line 64
    .local v8, "random":I
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    mul-double/2addr v9, v11

    double-to-int v8, v9

    .line 66
    packed-switch v8, :pswitch_data_0

    .line 78
    :goto_1
    :try_start_0
    new-instance v9, Lcom/smaato/SOMA/SOMABanner;

    iget-object v10, p0, Lcom/admogo/adapters/SmaatoAdapter;->activity:Landroid/app/Activity;

    invoke-direct {v9, v10}, Lcom/smaato/SOMA/SOMABanner;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/admogo/adapters/SmaatoAdapter;->adView:Lcom/smaato/SOMA/SOMABanner;

    .line 79
    iget-object v9, p0, Lcom/admogo/adapters/SmaatoAdapter;->adView:Lcom/smaato/SOMA/SOMABanner;

    iget v10, p0, Lcom/admogo/adapters/SmaatoAdapter;->PublisherId:I

    invoke-virtual {v9, v10}, Lcom/smaato/SOMA/SOMABanner;->setPublisherId(I)V

    .line 80
    iget-object v9, p0, Lcom/admogo/adapters/SmaatoAdapter;->adView:Lcom/smaato/SOMA/SOMABanner;

    iget v10, p0, Lcom/admogo/adapters/SmaatoAdapter;->AdSpaceId:I

    invoke-virtual {v9, v10}, Lcom/smaato/SOMA/SOMABanner;->setAdSpaceId(I)V

    .line 81
    iget-object v9, p0, Lcom/admogo/adapters/SmaatoAdapter;->adView:Lcom/smaato/SOMA/SOMABanner;

    invoke-virtual {v9, v7}, Lcom/smaato/SOMA/SOMABanner;->setMediaType(Lcom/smaato/SOMA/AdDownloader$MediaType;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    iget-object v9, p0, Lcom/admogo/adapters/SmaatoAdapter;->adView:Lcom/smaato/SOMA/SOMABanner;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/smaato/SOMA/SOMABanner;->setAutoRefresh(Z)V

    .line 91
    iget-object v9, p0, Lcom/admogo/adapters/SmaatoAdapter;->adView:Lcom/smaato/SOMA/SOMABanner;

    sget-object v10, Lcom/smaato/SOMA/SOMABanner$AnimationType;->RANDOM_ANIMATION:Lcom/smaato/SOMA/SOMABanner$AnimationType;

    invoke-virtual {v9, v10}, Lcom/smaato/SOMA/SOMABanner;->setAnimationType(Lcom/smaato/SOMA/SOMABanner$AnimationType;)V

    .line 93
    iget-object v4, v0, Lcom/admogo/AdMogoLayout;->extra:Lcom/admogo/obj/Extra;

    .line 94
    .local v4, "extra":Lcom/admogo/obj/Extra;
    iget v9, v4, Lcom/admogo/obj/Extra;->bgRed:I

    iget v10, v4, Lcom/admogo/obj/Extra;->bgGreen:I

    iget v11, v4, Lcom/admogo/obj/Extra;->bgBlue:I

    invoke-static {v9, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    .line 95
    .local v2, "bgColor":I
    iget v9, v4, Lcom/admogo/obj/Extra;->fgRed:I

    iget v10, v4, Lcom/admogo/obj/Extra;->fgGreen:I

    iget v11, v4, Lcom/admogo/obj/Extra;->fgBlue:I

    invoke-static {v9, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    .line 96
    .local v5, "fgColor":I
    iget-object v9, p0, Lcom/admogo/adapters/SmaatoAdapter;->adView:Lcom/smaato/SOMA/SOMABanner;

    invoke-virtual {v9, v5}, Lcom/smaato/SOMA/SOMABanner;->setFontColor(I)V

    .line 97
    iget-object v9, p0, Lcom/admogo/adapters/SmaatoAdapter;->adView:Lcom/smaato/SOMA/SOMABanner;

    invoke-virtual {v9, v2}, Lcom/smaato/SOMA/SOMABanner;->setSOMABackgroundColor(I)V

    .line 100
    invoke-static {}, Lcom/admogo/AdMogoTargeting;->getGender()Lcom/admogo/AdMogoTargeting$Gender;

    move-result-object v6

    .line 101
    .local v6, "gender":Lcom/admogo/AdMogoTargeting$Gender;
    sget-object v9, Lcom/admogo/AdMogoTargeting$Gender;->FEMALE:Lcom/admogo/AdMogoTargeting$Gender;

    if-ne v6, v9, :cond_4

    .line 102
    iget-object v9, p0, Lcom/admogo/adapters/SmaatoAdapter;->adView:Lcom/smaato/SOMA/SOMABanner;

    const-string v10, "female"

    invoke-virtual {v9, v10}, Lcom/smaato/SOMA/SOMABanner;->setGender(Ljava/lang/String;)V

    .line 106
    :cond_2
    :goto_2
    invoke-static {}, Lcom/admogo/AdMogoTargeting;->getAge()I

    move-result v1

    .line 107
    .local v1, "age":I
    if-lez v1, :cond_3

    .line 108
    iget-object v9, p0, Lcom/admogo/adapters/SmaatoAdapter;->adView:Lcom/smaato/SOMA/SOMABanner;

    invoke-virtual {v9, v1}, Lcom/smaato/SOMA/SOMABanner;->setAge(I)V

    .line 110
    :cond_3
    iget-object v9, p0, Lcom/admogo/adapters/SmaatoAdapter;->adView:Lcom/smaato/SOMA/SOMABanner;

    invoke-virtual {v9, p0}, Lcom/smaato/SOMA/SOMABanner;->addAdListener(Lcom/smaato/SOMA/AdListener;)V

    .line 111
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/admogo/adapters/SmaatoAdapter;->flag:Z

    .line 112
    iget-object v9, p0, Lcom/admogo/adapters/SmaatoAdapter;->adView:Lcom/smaato/SOMA/SOMABanner;

    invoke-virtual {v9}, Lcom/smaato/SOMA/SOMABanner;->asyncLoadNewBanner()V

    goto/16 :goto_0

    .line 68
    .end local v1    # "age":I
    .end local v2    # "bgColor":I
    .end local v4    # "extra":Lcom/admogo/obj/Extra;
    .end local v5    # "fgColor":I
    .end local v6    # "gender":Lcom/admogo/AdMogoTargeting$Gender;
    :pswitch_0
    sget-object v7, Lcom/smaato/SOMA/AdDownloader$MediaType;->TXT:Lcom/smaato/SOMA/AdDownloader$MediaType;

    .line 69
    goto :goto_1

    .line 71
    :pswitch_1
    sget-object v7, Lcom/smaato/SOMA/AdDownloader$MediaType;->IMG:Lcom/smaato/SOMA/AdDownloader$MediaType;

    .line 72
    goto :goto_1

    .line 74
    :pswitch_2
    sget-object v7, Lcom/smaato/SOMA/AdDownloader$MediaType;->SKY:Lcom/smaato/SOMA/AdDownloader$MediaType;

    goto :goto_1

    .line 83
    :catch_0
    move-exception v9

    move-object v3, v9

    .line 84
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Lcom/admogo/AdMogoLayout;->rollover()V

    goto/16 :goto_0

    .line 103
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v2    # "bgColor":I
    .restart local v4    # "extra":Lcom/admogo/obj/Extra;
    .restart local v5    # "fgColor":I
    .restart local v6    # "gender":Lcom/admogo/AdMogoTargeting$Gender;
    :cond_4
    sget-object v9, Lcom/admogo/AdMogoTargeting$Gender;->MALE:Lcom/admogo/AdMogoTargeting$Gender;

    if-ne v6, v9, :cond_2

    .line 104
    iget-object v9, p0, Lcom/admogo/adapters/SmaatoAdapter;->adView:Lcom/smaato/SOMA/SOMABanner;

    const-string v10, "male"

    invoke-virtual {v9, v10}, Lcom/smaato/SOMA/SOMABanner;->setGender(Ljava/lang/String;)V

    goto :goto_2

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onFailedToReceiveAd(Lcom/smaato/SOMA/AdDownloader;Lcom/smaato/SOMA/ErrorCode;)V
    .locals 3
    .param p1, "arg0"    # Lcom/smaato/SOMA/AdDownloader;
    .param p2, "arg1"    # Lcom/smaato/SOMA/ErrorCode;

    .prologue
    .line 120
    const-string v1, "AdsMOGO SDK"

    const-string v2, "Smaato onFailedToReceiveAd"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v1, p0, Lcom/admogo/adapters/SmaatoAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/admogo/adapters/SmaatoAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admogo/AdMogoLayout;

    .line 124
    .local v0, "adMogoLayout":Lcom/admogo/AdMogoLayout;
    if-nez v0, :cond_1

    .line 130
    .end local v0    # "adMogoLayout":Lcom/admogo/AdMogoLayout;
    :cond_0
    :goto_0
    return-void

    .line 127
    .restart local v0    # "adMogoLayout":Lcom/admogo/AdMogoLayout;
    :cond_1
    invoke-virtual {v0}, Lcom/admogo/AdMogoLayout;->rollover()V

    goto :goto_0
.end method

.method public onReceiveAd(Lcom/smaato/SOMA/AdDownloader;Lcom/smaato/SOMA/SOMAReceivedBanner;)V
    .locals 5
    .param p1, "arg0"    # Lcom/smaato/SOMA/AdDownloader;
    .param p2, "arg1"    # Lcom/smaato/SOMA/SOMAReceivedBanner;

    .prologue
    .line 134
    iget-boolean v1, p0, Lcom/admogo/adapters/SmaatoAdapter;->flag:Z

    if-eqz v1, :cond_0

    .line 135
    const-string v1, "AdsMOGO SDK"

    const-string v2, "Smaato success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v1, p0, Lcom/admogo/adapters/SmaatoAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 138
    iget-object v1, p0, Lcom/admogo/adapters/SmaatoAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admogo/AdMogoLayout;

    .line 139
    .local v0, "adMogoLayout":Lcom/admogo/AdMogoLayout;
    if-nez v0, :cond_1

    .line 149
    .end local v0    # "adMogoLayout":Lcom/admogo/AdMogoLayout;
    :cond_0
    :goto_0
    return-void

    .line 142
    .restart local v0    # "adMogoLayout":Lcom/admogo/AdMogoLayout;
    :cond_1
    iget-object v1, v0, Lcom/admogo/AdMogoLayout;->adMogoManager:Lcom/admogo/AdMogoManager;

    invoke-virtual {v1}, Lcom/admogo/AdMogoManager;->resetRollover()V

    .line 143
    iget-object v1, v0, Lcom/admogo/AdMogoLayout;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/admogo/AdMogoLayout$ViewAdRunnable;

    .line 144
    iget-object v3, p0, Lcom/admogo/adapters/SmaatoAdapter;->adView:Lcom/smaato/SOMA/SOMABanner;

    const/16 v4, 0x23

    invoke-direct {v2, v0, v3, v4}, Lcom/admogo/AdMogoLayout$ViewAdRunnable;-><init>(Lcom/admogo/AdMogoLayout;Landroid/view/ViewGroup;I)V

    .line 143
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 145
    invoke-virtual {v0}, Lcom/admogo/AdMogoLayout;->rotateThreadedDelayed()V

    .line 147
    .end local v0    # "adMogoLayout":Lcom/admogo/AdMogoLayout;
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/admogo/adapters/SmaatoAdapter;->flag:Z

    goto :goto_0
.end method
