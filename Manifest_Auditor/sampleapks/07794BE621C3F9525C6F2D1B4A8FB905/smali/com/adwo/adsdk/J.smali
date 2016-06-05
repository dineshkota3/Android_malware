.class final Lcom/adwo/adsdk/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/adwo/adsdk/I;


# direct methods
.method constructor <init>(Lcom/adwo/adsdk/I;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adwo/adsdk/J;->a:Lcom/adwo/adsdk/I;

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/adwo/adsdk/J;->a:Lcom/adwo/adsdk/I;

    invoke-static {v0}, Lcom/adwo/adsdk/I;->a(Lcom/adwo/adsdk/I;)Lcom/adwo/adsdk/G;

    move-result-object v0

    invoke-static {v0}, Lcom/adwo/adsdk/G;->a(Lcom/adwo/adsdk/G;)Lcom/adwo/adsdk/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adwo/adsdk/f;->a()V

    .line 236
    return-void
.end method
