.class final Lcn/domob/android/ads/m;
.super Landroid/widget/ViewFlipper;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;)V

    .line 12
    return-void
.end method


# virtual methods
.method public final onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    const/4 v2, 0x3

    const-string v1, "DomobSDK"

    .line 15
    if-eqz p1, :cond_1

    invoke-super {p0}, Landroid/widget/ViewFlipper;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 16
    const-string v0, "DomobSDK"

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    const-string v0, "DomobSDK"

    const-string v0, "onWindowFocusChanged, start flipping."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :cond_0
    invoke-virtual {p0}, Lcn/domob/android/ads/m;->startFlipping()V

    .line 26
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ViewFlipper;->onWindowFocusChanged(Z)V

    .line 27
    return-void

    .line 21
    :cond_1
    const-string v0, "DomobSDK"

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 22
    const-string v0, "DomobSDK"

    const-string v0, "onWindowFocusChanged, stop flipping."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :cond_2
    invoke-virtual {p0}, Lcn/domob/android/ads/m;->stopFlipping()V

    goto :goto_0
.end method

.method protected final onWindowVisibilityChanged(I)V
    .locals 3
    .param p1, "v"    # I

    .prologue
    const/4 v2, 0x3

    const-string v1, "DomobSDK"

    .line 30
    if-nez p1, :cond_1

    invoke-super {p0}, Landroid/widget/ViewFlipper;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 31
    const-string v0, "DomobSDK"

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    const-string v0, "DomobSDK"

    const-string v0, "onWindowFocusChanged, start flipping."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcn/domob/android/ads/m;->startFlipping()V

    .line 41
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ViewFlipper;->onWindowVisibilityChanged(I)V

    .line 42
    return-void

    .line 36
    :cond_1
    const-string v0, "DomobSDK"

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 37
    const-string v0, "DomobSDK"

    const-string v0, "onWindowFocusChanged, stop flipping."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_2
    invoke-virtual {p0}, Lcn/domob/android/ads/m;->stopFlipping()V

    goto :goto_0
.end method
