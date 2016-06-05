.class final Lcn/domob/android/ads/h;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private a:Lcn/domob/android/ads/DomobAdView;


# direct methods
.method public constructor <init>(Lcn/domob/android/ads/DomobAdView;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 12
    iput-object p1, p0, Lcn/domob/android/ads/h;->a:Lcn/domob/android/ads/DomobAdView;

    .line 13
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x3

    const/4 v9, 0x0

    const-string v8, "DomobSDK"

    .line 16
    iget-object v0, p0, Lcn/domob/android/ads/h;->a:Lcn/domob/android/ads/DomobAdView;

    if-nez v0, :cond_0

    .line 17
    const-string v0, "DomobSDK"

    const-string v0, "DomobGetDcThread exit because adview is null."

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :goto_0
    return-void

    .line 21
    :cond_0
    const-string v0, "DomobSDK"

    invoke-static {v8, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    const-string v0, "DomobSDK"

    const-string v0, "DomobGetDcThread start"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_1
    iget-object v0, p0, Lcn/domob/android/ads/h;->a:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 28
    :try_start_0
    new-instance v0, Lcn/domob/android/ads/j;

    invoke-direct {v0}, Lcn/domob/android/ads/j;-><init>()V

    .line 29
    iget-object v1, p0, Lcn/domob/android/ads/h;->a:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0, v6, v1}, Lcn/domob/android/ads/j;->a(Landroid/content/Context;Lcn/domob/android/ads/DomobAdView;)Lcn/domob/android/ads/f;

    move-result-object v4

    .line 30
    if-nez v4, :cond_8

    .line 31
    const-string v1, "DomobSDK"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 32
    const-string v1, "DomobSDK"

    const-string v2, "detector is null."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_2
    invoke-virtual {v0}, Lcn/domob/android/ads/j;->a()Lcn/domob/android/ads/d;

    move-result-object v0

    .line 36
    if-eqz v0, :cond_7

    .line 37
    invoke-virtual {v0}, Lcn/domob/android/ads/d;->e()I

    move-result v0

    .line 38
    const/16 v1, 0xc8

    if-lt v0, v1, :cond_5

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_5

    .line 39
    iget-object v0, p0, Lcn/domob/android/ads/h;->a:Lcn/domob/android/ads/DomobAdView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/domob/android/ads/DomobAdView;->a(Lcn/domob/android/ads/DomobAdView;Z)V

    move v0, v3

    .line 66
    :goto_1
    invoke-static {v6}, Lcn/domob/android/ads/DomobAdManager;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 67
    if-nez v1, :cond_3

    .line 68
    const-string v0, "DomobSDK"

    const-string v1, "CID is null, continue detecting!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Lcn/domob/android/ads/h;->a:Lcn/domob/android/ads/DomobAdView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/domob/android/ads/DomobAdView;->a(Lcn/domob/android/ads/DomobAdView;Z)V

    move v0, v9

    .line 73
    :cond_3
    iget-object v1, p0, Lcn/domob/android/ads/h;->a:Lcn/domob/android/ads/DomobAdView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcn/domob/android/ads/DomobAdView;->b(Lcn/domob/android/ads/DomobAdView;Z)V

    .line 74
    if-eqz v0, :cond_b

    .line 75
    const-string v0, "DomobSDK"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 76
    const-string v0, "DomobSDK"

    const-string v1, "request ad without delay."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_4
    iget-object v0, p0, Lcn/domob/android/ads/h;->a:Lcn/domob/android/ads/DomobAdView;

    invoke-static {v0}, Lcn/domob/android/ads/DomobAdView;->a(Lcn/domob/android/ads/DomobAdView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    invoke-static {v6}, Lcn/domob/android/ads/DomobAdManager;->getPublisherId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    .line 84
    const-string v1, "DomobSDK"

    const-string v1, "Please set your publisher ID first!"

    invoke-static {v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 41
    :cond_5
    :try_start_1
    const-string v1, "DomobSDK"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 42
    const-string v1, "DomobSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "connection return error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", try again!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move v0, v9

    .line 44
    goto :goto_1

    :cond_7
    move v0, v9

    .line 47
    goto :goto_1

    .line 50
    :cond_8
    const-string v0, "DomobSDK"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 51
    const-string v0, "DomobSDK"

    const-string v1, "success to get detector."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_9
    invoke-virtual {v4}, Lcn/domob/android/ads/f;->a()I

    move-result v0

    .line 55
    if-nez v0, :cond_d

    move v7, v9

    .line 59
    :goto_3
    if-eq v0, v3, :cond_a

    .line 60
    iget-object v1, p0, Lcn/domob/android/ads/h;->a:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/DomobAdView;->setRequestInterval(I)V

    .line 62
    :cond_a
    iget-object v0, p0, Lcn/domob/android/ads/h;->a:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v4}, Lcn/domob/android/ads/f;->b()Z

    move-result v1

    invoke-virtual {v4}, Lcn/domob/android/ads/f;->c()J

    move-result-wide v2

    invoke-virtual {v4}, Lcn/domob/android/ads/f;->d()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/DomobAdView;->a(ZJJ)V

    .line 63
    iget-object v0, p0, Lcn/domob/android/ads/h;->a:Lcn/domob/android/ads/DomobAdView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/domob/android/ads/DomobAdView;->a(Lcn/domob/android/ads/DomobAdView;Z)V

    move v0, v7

    goto/16 :goto_1

    .line 80
    :cond_b
    iget-object v0, p0, Lcn/domob/android/ads/h;->a:Lcn/domob/android/ads/DomobAdView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/domob/android/ads/DomobAdView;->c(Lcn/domob/android/ads/DomobAdView;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 86
    :cond_c
    const-string v1, "DomobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unkown exception happened!"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_d
    move v7, v3

    goto :goto_3
.end method
