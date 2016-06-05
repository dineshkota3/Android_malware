.class final Lcn/domob/android/ads/DomobAdView$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/DomobAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field a:Z

.field private synthetic b:Lcn/domob/android/ads/DomobAdView;


# direct methods
.method synthetic constructor <init>(Lcn/domob/android/ads/DomobAdView;)V
    .locals 1

    .prologue
    .line 537
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/domob/android/ads/DomobAdView$c;-><init>(Lcn/domob/android/ads/DomobAdView;B)V

    return-void
.end method

.method private constructor <init>(Lcn/domob/android/ads/DomobAdView;B)V
    .locals 0

    .prologue
    .line 537
    iput-object p1, p0, Lcn/domob/android/ads/DomobAdView$c;->b:Lcn/domob/android/ads/DomobAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const-string v5, "DomobSDK"

    .line 542
    :try_start_0
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$c;->b:Lcn/domob/android/ads/DomobAdView;

    .line 543
    iget-boolean v1, p0, Lcn/domob/android/ads/DomobAdView$c;->a:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 544
    invoke-static {v0}, Lcn/domob/android/ads/DomobAdView;->b(Lcn/domob/android/ads/DomobAdView;)I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    .line 545
    const-string v2, "DomobSDK"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 546
    const-string v2, "DomobSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requesting a fresh ad because a request interval passed ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " seconds)."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :cond_0
    invoke-static {v0}, Lcn/domob/android/ads/DomobAdView;->a(Lcn/domob/android/ads/DomobAdView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    :cond_1
    :goto_0
    return-void

    .line 551
    :catch_0
    move-exception v0

    .line 552
    const-string v1, "DomobSDK"

    const-string v1, "exception caught in RefreshThread.run()!"

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
