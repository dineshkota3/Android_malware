.class Lcom/admogo/AdMogoLayout$InitRunnable;
.super Ljava/lang/Object;
.source "AdMogoLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/admogo/AdMogoLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InitRunnable"
.end annotation


# instance fields
.field private adMogoLayoutReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/admogo/AdMogoLayout;",
            ">;"
        }
    .end annotation
.end field

.field private ad_Type:I

.field private keyAdMogo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/admogo/AdMogoLayout;Ljava/lang/String;I)V
    .locals 1
    .param p1, "adMogoLayout"    # Lcom/admogo/AdMogoLayout;
    .param p2, "keyAdMogo"    # Ljava/lang/String;
    .param p3, "ad_Type"    # I

    .prologue
    .line 546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 548
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 549
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 548
    iput-object v0, p0, Lcom/admogo/AdMogoLayout$InitRunnable;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    .line 550
    iput-object p2, p0, Lcom/admogo/AdMogoLayout$InitRunnable;->keyAdMogo:Ljava/lang/String;

    .line 551
    iput p3, p0, Lcom/admogo/AdMogoLayout$InitRunnable;->ad_Type:I

    .line 552
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const-string v9, "AdsMOGO SDK"

    .line 555
    iget-object v4, p0, Lcom/admogo/AdMogoLayout$InitRunnable;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/admogo/AdMogoLayout;

    .line 556
    .local v1, "adMogoLayout":Lcom/admogo/AdMogoLayout;
    if-eqz v1, :cond_0

    .line 557
    iget-object v4, v1, Lcom/admogo/AdMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 558
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 618
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    :goto_0
    return-void

    .line 561
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_1
    iget-object v4, v1, Lcom/admogo/AdMogoLayout;->adMogoManager:Lcom/admogo/AdMogoManager;

    if-nez v4, :cond_2

    .line 562
    new-instance v4, Lcom/admogo/AdMogoManager;

    .line 563
    new-instance v5, Ljava/lang/ref/WeakReference;

    .line 564
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 563
    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 565
    iget-object v6, p0, Lcom/admogo/AdMogoLayout$InitRunnable;->keyAdMogo:Ljava/lang/String;

    iget v7, p0, Lcom/admogo/AdMogoLayout$InitRunnable;->ad_Type:I

    invoke-direct {v4, v5, v6, v7}, Lcom/admogo/AdMogoManager;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/String;I)V

    .line 562
    iput-object v4, v1, Lcom/admogo/AdMogoLayout;->adMogoManager:Lcom/admogo/AdMogoManager;

    .line 568
    :cond_2
    # getter for: Lcom/admogo/AdMogoLayout;->hasWindow:Z
    invoke-static {v1}, Lcom/admogo/AdMogoLayout;->access$0(Lcom/admogo/AdMogoLayout;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 569
    const/4 v4, 0x0

    invoke-static {v1, v4}, Lcom/admogo/AdMogoLayout;->access$1(Lcom/admogo/AdMogoLayout;Z)V

    goto :goto_0

    .line 573
    :cond_3
    sget-object v4, Lcom/admogo/AdMogoTargeting;->countryCode:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 576
    const-string v4, "phone"

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 575
    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 577
    .local v3, "telephony":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 578
    .local v2, "imei":Ljava/lang/String;
    if-eqz v2, :cond_4

    const-string v4, "000000000000000"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 579
    :cond_4
    invoke-static {v8}, Lcom/admogo/AdMogoLayout;->access$2(Z)V

    .line 581
    :cond_5
    # getter for: Lcom/admogo/AdMogoLayout;->isEmulator:Z
    invoke-static {}, Lcom/admogo/AdMogoLayout;->access$3()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 582
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    .line 583
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 582
    invoke-static {v4}, Lcom/admogo/AdMogoLayout;->access$4(Ljava/lang/String;)V

    .line 596
    .end local v2    # "imei":Ljava/lang/String;
    .end local v3    # "telephony":Landroid/telephony/TelephonyManager;
    :cond_6
    :goto_1
    iget-object v4, v1, Lcom/admogo/AdMogoLayout;->adMogoManager:Lcom/admogo/AdMogoManager;

    # getter for: Lcom/admogo/AdMogoLayout;->countryCode:Ljava/lang/String;
    invoke-static {}, Lcom/admogo/AdMogoLayout;->access$5()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/admogo/AdMogoManager;->setLocation(Ljava/lang/String;)V

    .line 597
    iget-object v4, v1, Lcom/admogo/AdMogoLayout;->adMogoManager:Lcom/admogo/AdMogoManager;

    invoke-virtual {v4}, Lcom/admogo/AdMogoManager;->fetchConfig()V

    .line 598
    iget-object v4, v1, Lcom/admogo/AdMogoLayout;->adMogoManager:Lcom/admogo/AdMogoManager;

    invoke-virtual {v4}, Lcom/admogo/AdMogoManager;->getExtra()Lcom/admogo/obj/Extra;

    move-result-object v4

    iput-object v4, v1, Lcom/admogo/AdMogoLayout;->extra:Lcom/admogo/obj/Extra;

    .line 600
    iget-object v4, v1, Lcom/admogo/AdMogoLayout;->extra:Lcom/admogo/obj/Extra;

    if-nez v4, :cond_9

    .line 601
    const-string v4, "AdsMOGO SDK"

    const-string v4, "Stop Show Ads"

    invoke-static {v9, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 585
    .restart local v2    # "imei":Ljava/lang/String;
    .restart local v3    # "telephony":Landroid/telephony/TelephonyManager;
    :cond_7
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v4

    .line 586
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 585
    invoke-static {v4}, Lcom/admogo/AdMogoLayout;->access$4(Ljava/lang/String;)V

    .line 587
    # getter for: Lcom/admogo/AdMogoLayout;->countryCode:Ljava/lang/String;
    invoke-static {}, Lcom/admogo/AdMogoLayout;->access$5()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 588
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    .line 589
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 588
    invoke-static {v4}, Lcom/admogo/AdMogoLayout;->access$4(Ljava/lang/String;)V

    goto :goto_1

    .line 593
    .end local v2    # "imei":Ljava/lang/String;
    .end local v3    # "telephony":Landroid/telephony/TelephonyManager;
    :cond_8
    sget-object v4, Lcom/admogo/AdMogoTargeting;->countryCode:Ljava/lang/String;

    invoke-static {v4}, Lcom/admogo/AdMogoLayout;->access$4(Ljava/lang/String;)V

    goto :goto_1

    .line 605
    :cond_9
    iget-object v4, v1, Lcom/admogo/AdMogoLayout;->extra:Lcom/admogo/obj/Extra;

    iget v4, v4, Lcom/admogo/obj/Extra;->locationOn:I

    if-ne v4, v8, :cond_a

    .line 606
    const-string v4, "AdsMOGO SDK"

    const-string v4, "location is ON"

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    # getter for: Lcom/admogo/AdMogoLayout;->isEmulator:Z
    invoke-static {}, Lcom/admogo/AdMogoLayout;->access$3()Z

    move-result v4

    if-nez v4, :cond_a

    .line 609
    sget-object v4, Lcom/admogo/AdMogoTargeting;->countryCode:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 610
    sget-object v4, Lcom/admogo/AdMogoLayout;->twice_schedulera:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v5, Lcom/admogo/AdMogoLayout$getAdByCountryCode;

    .line 611
    # getter for: Lcom/admogo/AdMogoLayout;->countryCode:Ljava/lang/String;
    invoke-static {}, Lcom/admogo/AdMogoLayout;->access$5()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v1, v0, v6}, Lcom/admogo/AdMogoLayout$getAdByCountryCode;-><init>(Lcom/admogo/AdMogoLayout;Landroid/content/Context;Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    .line 612
    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 610
    invoke-interface {v4, v5, v6, v7, v8}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 615
    :cond_a
    # invokes: Lcom/admogo/AdMogoLayout;->rotateAd()V
    invoke-static {v1}, Lcom/admogo/AdMogoLayout;->access$6(Lcom/admogo/AdMogoLayout;)V

    goto/16 :goto_0
.end method
