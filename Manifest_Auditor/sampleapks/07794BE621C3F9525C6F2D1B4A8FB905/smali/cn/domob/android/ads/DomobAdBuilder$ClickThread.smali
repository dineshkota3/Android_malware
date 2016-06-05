.class public Lcn/domob/android/ads/DomobAdBuilder$ClickThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/DomobAdBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClickThread"
.end annotation


# instance fields
.field private a:Lorg/json/JSONObject;

.field private b:Lcn/domob/android/ads/DomobAdBuilder;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcn/domob/android/ads/DomobAdBuilder;)V
    .locals 0
    .param p1, "j"    # Lorg/json/JSONObject;
    .param p2, "b"    # Lcn/domob/android/ads/DomobAdBuilder;

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 164
    iput-object p1, p0, Lcn/domob/android/ads/DomobAdBuilder$ClickThread;->a:Lorg/json/JSONObject;

    .line 165
    iput-object p2, p0, Lcn/domob/android/ads/DomobAdBuilder$ClickThread;->b:Lcn/domob/android/ads/DomobAdBuilder;

    .line 166
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    const-string v2, "DomobSDK"

    .line 170
    :try_start_0
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdBuilder$ClickThread;->b:Lcn/domob/android/ads/DomobAdBuilder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/domob/android/ads/DomobAdBuilder$ClickThread;->b:Lcn/domob/android/ads/DomobAdBuilder;

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdBuilder;->a:Lcn/domob/android/ads/DomobAdEngine;

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdBuilder$ClickThread;->b:Lcn/domob/android/ads/DomobAdBuilder;

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdBuilder;->a:Lcn/domob/android/ads/DomobAdEngine;

    iget-object v1, p0, Lcn/domob/android/ads/DomobAdBuilder$ClickThread;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/DomobAdEngine;->a(Lorg/json/JSONObject;)V

    .line 172
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdBuilder$ClickThread;->b:Lcn/domob/android/ads/DomobAdBuilder;

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdBuilder;->b:Lcn/domob/android/ads/DomobAdView;

    if-eqz v0, :cond_1

    .line 173
    const-string v0, "DomobSDK"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    const-string v0, "DomobSDK"

    const-string v1, "performClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdBuilder$ClickThread;->b:Lcn/domob/android/ads/DomobAdBuilder;

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdBuilder;->b:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->performClick()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :cond_1
    :goto_0
    return-void

    .line 180
    :catch_0
    move-exception v0

    .line 181
    const-string v1, "DomobSDK"

    const-string v1, "failed to report click!"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
