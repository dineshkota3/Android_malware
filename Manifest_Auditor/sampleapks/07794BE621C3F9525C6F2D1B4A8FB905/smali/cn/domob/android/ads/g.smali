.class final Lcn/domob/android/ads/g;
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
    iput-object p1, p0, Lcn/domob/android/ads/g;->a:Lcn/domob/android/ads/DomobAdView;

    .line 13
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const-string v6, "DomobSDK"

    .line 16
    iget-object v0, p0, Lcn/domob/android/ads/g;->a:Lcn/domob/android/ads/DomobAdView;

    if-nez v0, :cond_0

    .line 17
    const-string v0, "DomobSDK"

    const-string v0, "GetAdThread exit because adview is null!"

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :goto_0
    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/g;->a:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 23
    :try_start_0
    new-instance v1, Lcn/domob/android/ads/DomobAdBuilder;

    const/4 v2, 0x0

    iget-object v3, p0, Lcn/domob/android/ads/g;->a:Lcn/domob/android/ads/DomobAdView;

    invoke-direct {v1, v2, v0, v3}, Lcn/domob/android/ads/DomobAdBuilder;-><init>(Lcn/domob/android/ads/DomobAdEngine;Landroid/content/Context;Lcn/domob/android/ads/DomobAdView;)V

    .line 35
    new-instance v2, Lcn/domob/android/ads/j;

    invoke-direct {v2}, Lcn/domob/android/ads/j;-><init>()V

    .line 38
    iget-object v3, p0, Lcn/domob/android/ads/g;->a:Lcn/domob/android/ads/DomobAdView;

    invoke-static {v3}, Lcn/domob/android/ads/DomobAdView;->f(Lcn/domob/android/ads/DomobAdView;)Lcn/domob/android/ads/DomobAdEngine$RecvHandler;

    move-result-object v3

    iget-object v4, p0, Lcn/domob/android/ads/g;->a:Lcn/domob/android/ads/DomobAdView;

    invoke-static {v0, v4}, Lcn/domob/android/ads/DomobAdManager;->a(Landroid/content/Context;Landroid/view/View;)I

    move-result v4

    iget-object v5, p0, Lcn/domob/android/ads/g;->a:Lcn/domob/android/ads/DomobAdView;

    invoke-static {v0, v5}, Lcn/domob/android/ads/DomobAdManager;->b(Landroid/content/Context;Landroid/view/View;)I

    move-result v5

    .line 37
    invoke-virtual {v2, v3, v1, v4, v5}, Lcn/domob/android/ads/j;->a(Lcn/domob/android/ads/DomobAdEngine$RecvHandler;Lcn/domob/android/ads/DomobAdBuilder;II)Lcn/domob/android/ads/DomobAdEngine;

    move-result-object v1

    .line 39
    if-nez v1, :cond_1

    .line 40
    iget-object v1, p0, Lcn/domob/android/ads/g;->a:Lcn/domob/android/ads/DomobAdView;

    invoke-static {v1}, Lcn/domob/android/ads/DomobAdView;->g(Lcn/domob/android/ads/DomobAdView;)V

    .line 42
    invoke-virtual {v2}, Lcn/domob/android/ads/j;->a()Lcn/domob/android/ads/d;

    move-result-object v1

    .line 43
    if-eqz v1, :cond_1

    .line 44
    invoke-virtual {v1}, Lcn/domob/android/ads/d;->e()I

    move-result v1

    .line 45
    const/16 v2, 0xc8

    if-lt v1, v2, :cond_2

    const/16 v2, 0x12c

    if-ge v1, v2, :cond_2

    .line 46
    const-string v1, "DomobSDK"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    const-string v1, "DomobSDK"

    const-string v2, "connection is OK, continue ad request next time."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_1
    :goto_1
    iget-object v1, p0, Lcn/domob/android/ads/g;->a:Lcn/domob/android/ads/DomobAdView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcn/domob/android/ads/DomobAdView;->b(Lcn/domob/android/ads/DomobAdView;Z)V

    .line 59
    iget-object v1, p0, Lcn/domob/android/ads/g;->a:Lcn/domob/android/ads/DomobAdView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcn/domob/android/ads/DomobAdView;->c(Lcn/domob/android/ads/DomobAdView;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    :catch_0
    move-exception v1

    .line 61
    invoke-static {v0}, Lcn/domob/android/ads/DomobAdManager;->getPublisherId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 62
    const-string v0, "DomobSDK"

    const-string v0, "Please set your publisher ID first!"

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 50
    :cond_2
    :try_start_1
    const-string v2, "DomobSDK"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 51
    const-string v2, "DomobSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "connection return error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", try detector next time."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_3
    iget-object v1, p0, Lcn/domob/android/ads/g;->a:Lcn/domob/android/ads/DomobAdView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcn/domob/android/ads/DomobAdView;->a(Lcn/domob/android/ads/DomobAdView;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 64
    :cond_4
    const-string v0, "DomobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unkown exception happened!"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
