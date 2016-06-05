.class public Lcom/adwo/adsdk/AdwoSplashAdActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lcom/adwo/adsdk/R;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 42
    const/16 v0, 0x3e6

    invoke-virtual {p0, v0}, Lcom/adwo/adsdk/AdwoSplashAdActivity;->setResult(I)V

    .line 45
    invoke-virtual {p0}, Lcom/adwo/adsdk/AdwoSplashAdActivity;->finish()V

    .line 46
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 56
    const/16 v0, 0x3e7

    invoke-virtual {p0, v0}, Lcom/adwo/adsdk/AdwoSplashAdActivity;->setResult(I)V

    .line 58
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-virtual {p0}, Lcom/adwo/adsdk/AdwoSplashAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 21
    invoke-virtual {p0}, Lcom/adwo/adsdk/AdwoSplashAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 23
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/adwo/adsdk/AdwoSplashAdActivity;->setRequestedOrientation(I)V

    .line 25
    const-string v2, "Adwo_PID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 26
    const-string v3, "isTestMode"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 28
    if-nez v2, :cond_0

    .line 29
    invoke-static {v0}, Lcom/adwo/adsdk/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 32
    :goto_0
    invoke-static {v1}, Lcom/adwo/adsdk/i;->a(Z)V

    .line 34
    new-instance v1, Lcom/adwo/adsdk/E;

    invoke-direct {v1, p0, v0}, Lcom/adwo/adsdk/E;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0, v1}, Lcom/adwo/adsdk/AdwoSplashAdActivity;->setContentView(Landroid/view/View;)V

    .line 36
    invoke-virtual {v1, p0}, Lcom/adwo/adsdk/E;->a(Lcom/adwo/adsdk/R;)V

    .line 38
    return-void

    :cond_0
    move-object v0, v2

    goto :goto_0
.end method
