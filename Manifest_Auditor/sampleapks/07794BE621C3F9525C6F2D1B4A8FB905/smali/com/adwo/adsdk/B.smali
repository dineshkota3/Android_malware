.class final Lcom/adwo/adsdk/B;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/adwo/adsdk/AdwoAdView;


# direct methods
.method constructor <init>(Lcom/adwo/adsdk/AdwoAdView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adwo/adsdk/B;->a:Lcom/adwo/adsdk/AdwoAdView;

    .line 340
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/adwo/adsdk/B;->a:Lcom/adwo/adsdk/AdwoAdView;

    invoke-virtual {v0}, Lcom/adwo/adsdk/AdwoAdView;->c()V

    .line 343
    return-void
.end method
