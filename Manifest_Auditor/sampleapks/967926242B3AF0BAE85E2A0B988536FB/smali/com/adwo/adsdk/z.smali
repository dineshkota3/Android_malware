.class final Lcom/adwo/adsdk/z;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/adwo/adsdk/AdwoAdView;


# direct methods
.method constructor <init>(Lcom/adwo/adsdk/AdwoAdView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adwo/adsdk/z;->a:Lcom/adwo/adsdk/AdwoAdView;

    .line 390
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/adwo/adsdk/z;->a:Lcom/adwo/adsdk/AdwoAdView;

    invoke-virtual {v0}, Lcom/adwo/adsdk/AdwoAdView;->c()V

    .line 393
    return-void
.end method
