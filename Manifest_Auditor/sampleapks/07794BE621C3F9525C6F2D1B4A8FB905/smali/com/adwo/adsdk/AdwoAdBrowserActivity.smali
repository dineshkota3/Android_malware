.class public Lcom/adwo/adsdk/AdwoAdBrowserActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field private static b:[Ljava/lang/String;


# instance fields
.field private a:Lcom/adwo/adsdk/j;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "explode"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "toptobottom"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 20
    const-string v2, "bottomtotop"

    aput-object v2, v0, v1

    .line 19
    sput-object v0, Lcom/adwo/adsdk/AdwoAdBrowserActivity;->b:[Ljava/lang/String;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/adwo/adsdk/AdwoAdBrowserActivity;->requestWindowFeature(I)Z

    .line 26
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adwo/adsdk/AdwoAdBrowserActivity;->setProgressBarVisibility(Z)V

    .line 31
    const-wide/16 v0, 0x258

    .line 34
    const/4 v2, 0x0

    .line 36
    const/4 v3, 0x1

    .line 37
    const/4 v4, 0x1

    .line 39
    const/4 v5, 0x1

    .line 40
    const/4 v6, 0x0

    .line 42
    invoke-virtual {p0}, Lcom/adwo/adsdk/AdwoAdBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 43
    if-eqz v7, :cond_1

    .line 44
    const-string v0, "transitionTime"

    const-wide/16 v1, 0x258

    invoke-virtual {v7, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 45
    const-string v2, "overlayTransition"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    const-string v2, "shouldResizeOverlay"

    const/4 v3, 0x0

    invoke-virtual {v7, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 47
    const-string v3, "shouldShowTitlebar"

    const/4 v4, 0x0

    invoke-virtual {v7, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 48
    const-string v4, "overlayTitle"

    invoke-virtual {v7, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    const-string v4, "shouldShowBottomBar"

    const/4 v5, 0x1

    invoke-virtual {v7, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 50
    const-string v5, "shouldEnableBottomBar"

    const/4 v6, 0x1

    invoke-virtual {v7, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 51
    const-string v6, "shouldMakeOverlayTransparent"

    .line 52
    const/4 v8, 0x0

    .line 51
    invoke-virtual {v7, v6, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    move v9, v6

    move v8, v5

    move v7, v4

    move v6, v3

    move-wide v3, v0

    .line 54
    :goto_0
    sget-object v0, Lcom/adwo/adsdk/AdwoAdBrowserActivity;->b:[Ljava/lang/String;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v10

    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    mul-double/2addr v10, v12

    double-to-int v1, v10

    aget-object v5, v0, v1

    .line 56
    new-instance v0, Lcom/adwo/adsdk/j;

    move-object v1, p0

    .line 57
    invoke-direct/range {v0 .. v9}, Lcom/adwo/adsdk/j;-><init>(Landroid/app/Activity;IJLjava/lang/String;ZZZZ)V

    .line 56
    iput-object v0, p0, Lcom/adwo/adsdk/AdwoAdBrowserActivity;->a:Lcom/adwo/adsdk/j;

    .line 58
    iget-object v0, p0, Lcom/adwo/adsdk/AdwoAdBrowserActivity;->a:Lcom/adwo/adsdk/j;

    invoke-virtual {p0, v0}, Lcom/adwo/adsdk/AdwoAdBrowserActivity;->setContentView(Landroid/view/View;)V

    .line 60
    invoke-virtual {p0}, Lcom/adwo/adsdk/AdwoAdBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_0

    .line 62
    iget-object v1, p0, Lcom/adwo/adsdk/AdwoAdBrowserActivity;->a:Lcom/adwo/adsdk/j;

    invoke-virtual {v1, v0}, Lcom/adwo/adsdk/j;->a(Ljava/lang/String;)V

    .line 65
    :goto_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adwo/adsdk/AdwoAdBrowserActivity;->setRequestedOrientation(I)V

    .line 67
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/adwo/adsdk/AdwoAdBrowserActivity;->a:Lcom/adwo/adsdk/j;

    const-string v1, "http://www.adwo.com"

    invoke-virtual {v0, v1}, Lcom/adwo/adsdk/j;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move v9, v6

    move v8, v5

    move v7, v4

    move v6, v3

    move-wide v3, v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 75
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 77
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 85
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 86
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 70
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 72
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 80
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 82
    return-void
.end method
