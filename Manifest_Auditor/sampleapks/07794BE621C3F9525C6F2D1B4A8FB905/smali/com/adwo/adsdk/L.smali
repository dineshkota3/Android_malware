.class final Lcom/adwo/adsdk/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/content/Context;

.field private synthetic b:Lcom/adwo/adsdk/G;


# direct methods
.method public constructor <init>(Lcom/adwo/adsdk/G;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/adwo/adsdk/L;->b:Lcom/adwo/adsdk/G;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p2, p0, Lcom/adwo/adsdk/L;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 86
    iget-object v0, p0, Lcom/adwo/adsdk/L;->b:Lcom/adwo/adsdk/G;

    iget-object v1, p0, Lcom/adwo/adsdk/L;->a:Landroid/content/Context;

    invoke-static {}, Lcom/adwo/adsdk/G;->b()B

    move-result v2

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Lcom/adwo/adsdk/i;->a(Landroid/content/Context;BB)Lcom/adwo/adsdk/f;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adwo/adsdk/G;->a(Lcom/adwo/adsdk/G;Lcom/adwo/adsdk/f;)V

    .line 88
    iget-object v0, p0, Lcom/adwo/adsdk/L;->b:Lcom/adwo/adsdk/G;

    invoke-static {v0}, Lcom/adwo/adsdk/G;->a(Lcom/adwo/adsdk/G;)Lcom/adwo/adsdk/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/adwo/adsdk/L;->b:Lcom/adwo/adsdk/G;

    invoke-virtual {v0}, Lcom/adwo/adsdk/G;->a()V

    .line 98
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/adwo/adsdk/L;->b:Lcom/adwo/adsdk/G;

    invoke-static {v0}, Lcom/adwo/adsdk/G;->b(Lcom/adwo/adsdk/G;)Lcom/adwo/adsdk/T;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/adwo/adsdk/L;->b:Lcom/adwo/adsdk/G;

    invoke-static {v0}, Lcom/adwo/adsdk/G;->b(Lcom/adwo/adsdk/G;)Lcom/adwo/adsdk/T;

    move-result-object v0

    invoke-interface {v0}, Lcom/adwo/adsdk/T;->b()V

    .line 96
    :cond_1
    iget-object p0, p0, Lcom/adwo/adsdk/L;->a:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
