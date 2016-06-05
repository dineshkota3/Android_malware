.class final Lcom/adwo/adsdk/H;
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
    iput-object p1, p0, Lcom/adwo/adsdk/H;->a:Lcom/adwo/adsdk/G;

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/adwo/adsdk/H;->a:Lcom/adwo/adsdk/G;

    invoke-static {v0}, Lcom/adwo/adsdk/G;->b(Lcom/adwo/adsdk/G;)Lcom/adwo/adsdk/T;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/adwo/adsdk/H;->a:Lcom/adwo/adsdk/G;

    invoke-static {v0}, Lcom/adwo/adsdk/G;->b(Lcom/adwo/adsdk/G;)Lcom/adwo/adsdk/T;

    move-result-object v0

    invoke-interface {v0}, Lcom/adwo/adsdk/T;->a()V

    .line 214
    :cond_0
    return-void
.end method
