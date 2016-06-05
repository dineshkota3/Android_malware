.class final Lcom/adwo/adsdk/d;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/adwo/adsdk/b;


# direct methods
.method constructor <init>(Lcom/adwo/adsdk/b;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adwo/adsdk/d;->a:Lcom/adwo/adsdk/b;

    .line 635
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 638
    :try_start_0
    iget-object v0, p0, Lcom/adwo/adsdk/d;->a:Lcom/adwo/adsdk/b;

    invoke-static {v0}, Lcom/adwo/adsdk/b;->a(Lcom/adwo/adsdk/b;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 642
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
