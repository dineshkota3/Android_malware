.class final Lcom/adwo/adsdk/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/adwo/adsdk/G;


# direct methods
.method constructor <init>(Lcom/adwo/adsdk/G;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adwo/adsdk/I;->a:Lcom/adwo/adsdk/G;

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/adwo/adsdk/I;)Lcom/adwo/adsdk/G;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/adwo/adsdk/I;->a:Lcom/adwo/adsdk/G;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 219
    sget-object v0, Lcom/adwo/adsdk/G;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    sget-object v1, Lcom/adwo/adsdk/G;->a:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    .line 220
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 219
    invoke-virtual {v0, v1}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    .line 223
    iget-object v0, p0, Lcom/adwo/adsdk/I;->a:Lcom/adwo/adsdk/G;

    invoke-static {v0}, Lcom/adwo/adsdk/G;->c(Lcom/adwo/adsdk/G;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 224
    iget-object v0, p0, Lcom/adwo/adsdk/I;->a:Lcom/adwo/adsdk/G;

    invoke-static {v0}, Lcom/adwo/adsdk/G;->d(Lcom/adwo/adsdk/G;)Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 225
    iget-object v0, p0, Lcom/adwo/adsdk/I;->a:Lcom/adwo/adsdk/G;

    invoke-static {v0}, Lcom/adwo/adsdk/G;->d(Lcom/adwo/adsdk/G;)Landroid/view/animation/Animation;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 226
    iget-object v0, p0, Lcom/adwo/adsdk/I;->a:Lcom/adwo/adsdk/G;

    invoke-static {v0}, Lcom/adwo/adsdk/G;->d(Lcom/adwo/adsdk/G;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 227
    iget-object v0, p0, Lcom/adwo/adsdk/I;->a:Lcom/adwo/adsdk/G;

    invoke-static {v0}, Lcom/adwo/adsdk/G;->c(Lcom/adwo/adsdk/G;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/adwo/adsdk/I;->a:Lcom/adwo/adsdk/G;

    invoke-static {v1}, Lcom/adwo/adsdk/G;->d(Lcom/adwo/adsdk/G;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 229
    iget-object v0, p0, Lcom/adwo/adsdk/I;->a:Lcom/adwo/adsdk/G;

    invoke-static {v0}, Lcom/adwo/adsdk/G;->e(Lcom/adwo/adsdk/G;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/adwo/adsdk/I;->a:Lcom/adwo/adsdk/G;

    new-instance v1, Lcom/adwo/adsdk/J;

    invoke-direct {v1, p0}, Lcom/adwo/adsdk/J;-><init>(Lcom/adwo/adsdk/I;)V

    invoke-virtual {v0, v1}, Lcom/adwo/adsdk/G;->post(Ljava/lang/Runnable;)Z

    .line 243
    return-void
.end method
