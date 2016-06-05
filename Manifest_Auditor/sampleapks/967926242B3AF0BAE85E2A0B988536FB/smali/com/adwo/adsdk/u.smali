.class final Lcom/adwo/adsdk/u;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/adwo/adsdk/j;


# direct methods
.method constructor <init>(Lcom/adwo/adsdk/j;)V
    .locals 0

    .prologue
    .line 562
    iput-object p1, p0, Lcom/adwo/adsdk/u;->a:Lcom/adwo/adsdk/j;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    .prologue
    .line 572
    iget-object v0, p0, Lcom/adwo/adsdk/u;->a:Lcom/adwo/adsdk/j;

    invoke-virtual {v0}, Lcom/adwo/adsdk/j;->a()Landroid/app/Activity;

    move-result-object v0

    mul-int/lit8 v1, p2, 0x64

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setProgress(I)V

    .line 573
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 574
    return-void
.end method

.method public final onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/adwo/adsdk/u;->a:Lcom/adwo/adsdk/j;

    invoke-virtual {v0}, Lcom/adwo/adsdk/j;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 568
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 569
    return-void
.end method
