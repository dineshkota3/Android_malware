.class final Lcom/adwo/adsdk/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/adwo/adsdk/j;


# direct methods
.method constructor <init>(Lcom/adwo/adsdk/j;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adwo/adsdk/o;->a:Lcom/adwo/adsdk/j;

    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 418
    iget-object v0, p0, Lcom/adwo/adsdk/o;->a:Lcom/adwo/adsdk/j;

    iget-object v0, v0, Lcom/adwo/adsdk/j;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/adwo/adsdk/o;->a:Lcom/adwo/adsdk/j;

    invoke-static {v1}, Lcom/adwo/adsdk/j;->d(Lcom/adwo/adsdk/j;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 419
    return-void
.end method
