.class final Lcom/adwo/adsdk/v;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/adwo/adsdk/j;


# direct methods
.method constructor <init>(Lcom/adwo/adsdk/j;)V
    .locals 0

    .prologue
    .line 424
    iput-object p1, p0, Lcom/adwo/adsdk/v;->a:Lcom/adwo/adsdk/j;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGeolocationPermissionsHidePrompt()V
    .locals 0

    .prologue
    .line 443
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsHidePrompt()V

    .line 444
    return-void
.end method

.method public final onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 2

    .prologue
    .line 450
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    .line 451
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 452
    return-void
.end method

.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/adwo/adsdk/v;->a:Lcom/adwo/adsdk/j;

    invoke-virtual {v0}, Lcom/adwo/adsdk/j;->a()Landroid/app/Activity;

    move-result-object v0

    .line 436
    mul-int/lit8 v1, p2, 0x64

    .line 435
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setProgress(I)V

    .line 437
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 438
    return-void
.end method

.method public final onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/adwo/adsdk/v;->a:Lcom/adwo/adsdk/j;

    invoke-virtual {v0}, Lcom/adwo/adsdk/j;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 430
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 431
    return-void
.end method
