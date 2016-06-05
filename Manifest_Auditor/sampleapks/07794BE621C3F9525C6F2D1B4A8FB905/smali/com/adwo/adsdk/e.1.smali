.class final Lcom/adwo/adsdk/e;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/adwo/adsdk/b;


# direct methods
.method constructor <init>(Lcom/adwo/adsdk/b;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adwo/adsdk/e;->a:Lcom/adwo/adsdk/b;

    .line 802
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 804
    iget-object v0, p0, Lcom/adwo/adsdk/e;->a:Lcom/adwo/adsdk/b;

    invoke-static {v0}, Lcom/adwo/adsdk/b;->c(Lcom/adwo/adsdk/b;)Lcom/adwo/adsdk/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adwo/adsdk/f;->a()V

    .line 805
    iget-object v0, p0, Lcom/adwo/adsdk/e;->a:Lcom/adwo/adsdk/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adwo/adsdk/b;->a(Lcom/adwo/adsdk/b;Z)V

    .line 806
    return-void
.end method
