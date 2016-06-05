.class final Lcom/adwo/adsdk/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private synthetic a:Lcom/adwo/adsdk/AdwoAdView;

.field private final synthetic b:Lcom/adwo/adsdk/b;

.field private final synthetic c:Lcom/adwo/adsdk/M;


# direct methods
.method constructor <init>(Lcom/adwo/adsdk/AdwoAdView;Lcom/adwo/adsdk/b;Lcom/adwo/adsdk/M;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adwo/adsdk/C;->a:Lcom/adwo/adsdk/AdwoAdView;

    iput-object p2, p0, Lcom/adwo/adsdk/C;->b:Lcom/adwo/adsdk/b;

    iput-object p3, p0, Lcom/adwo/adsdk/C;->c:Lcom/adwo/adsdk/M;

    .line 503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5

    .prologue
    .line 508
    iget-object v0, p0, Lcom/adwo/adsdk/C;->a:Lcom/adwo/adsdk/AdwoAdView;

    new-instance v1, Lcom/adwo/adsdk/E;

    iget-object v2, p0, Lcom/adwo/adsdk/C;->a:Lcom/adwo/adsdk/AdwoAdView;

    iget-object v3, p0, Lcom/adwo/adsdk/C;->b:Lcom/adwo/adsdk/b;

    iget-object v4, p0, Lcom/adwo/adsdk/C;->c:Lcom/adwo/adsdk/M;

    invoke-direct {v1, v2, v3, v4}, Lcom/adwo/adsdk/E;-><init>(Lcom/adwo/adsdk/AdwoAdView;Lcom/adwo/adsdk/b;Lcom/adwo/adsdk/M;)V

    invoke-virtual {v0, v1}, Lcom/adwo/adsdk/AdwoAdView;->post(Ljava/lang/Runnable;)Z

    .line 509
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 512
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 505
    return-void
.end method
