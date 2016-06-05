.class final Lcn/domob/android/ads/DomobAdView$e;
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
    name = "e"
.end annotation


# instance fields
.field private synthetic a:Lcn/domob/android/ads/DomobAdView;


# direct methods
.method synthetic constructor <init>(Lcn/domob/android/ads/DomobAdView;)V
    .locals 1

    .prologue
    .line 956
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/domob/android/ads/DomobAdView$e;-><init>(Lcn/domob/android/ads/DomobAdView;B)V

    return-void
.end method

.method private constructor <init>(Lcn/domob/android/ads/DomobAdView;B)V
    .locals 0

    .prologue
    .line 956
    iput-object p1, p0, Lcn/domob/android/ads/DomobAdView$e;->a:Lcn/domob/android/ads/DomobAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 958
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$e;->a:Lcn/domob/android/ads/DomobAdView;

    if-eqz v0, :cond_1

    .line 959
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$e;->a:Lcn/domob/android/ads/DomobAdView;

    invoke-static {v0}, Lcn/domob/android/ads/DomobAdView;->i(Lcn/domob/android/ads/DomobAdView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 961
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$e;->a:Lcn/domob/android/ads/DomobAdView;

    invoke-static {v0}, Lcn/domob/android/ads/DomobAdView;->j(Lcn/domob/android/ads/DomobAdView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/domob/android/ads/DomobAdManager;->isTestMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$e;->a:Lcn/domob/android/ads/DomobAdView;

    invoke-static {v0}, Lcn/domob/android/ads/DomobAdView;->j(Lcn/domob/android/ads/DomobAdView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/domob/android/ads/DomobAdManager;->isTestAllowed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 964
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$e;->a:Lcn/domob/android/ads/DomobAdView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/DomobAdView;->setVisibility(I)V

    .line 971
    :cond_1
    :goto_0
    return-void

    .line 968
    :cond_2
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$e;->a:Lcn/domob/android/ads/DomobAdView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/DomobAdView;->setVisibility(I)V

    goto :goto_0
.end method
