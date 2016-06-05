.class final Lcom/adwo/adsdk/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/adwo/adsdk/z;

.field private final synthetic b:Lcom/adwo/adsdk/b;

.field private final synthetic c:I

.field private final synthetic d:Z


# direct methods
.method constructor <init>(Lcom/adwo/adsdk/z;Lcom/adwo/adsdk/b;IZ)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adwo/adsdk/A;->a:Lcom/adwo/adsdk/z;

    iput-object p2, p0, Lcom/adwo/adsdk/A;->b:Lcom/adwo/adsdk/b;

    iput p3, p0, Lcom/adwo/adsdk/A;->c:I

    iput-boolean p4, p0, Lcom/adwo/adsdk/A;->d:Z

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 270
    :try_start_0
    iget-object v0, p0, Lcom/adwo/adsdk/A;->a:Lcom/adwo/adsdk/z;

    invoke-static {v0}, Lcom/adwo/adsdk/z;->a(Lcom/adwo/adsdk/z;)Lcom/adwo/adsdk/AdwoAdView;

    move-result-object v0

    iget-object v1, p0, Lcom/adwo/adsdk/A;->b:Lcom/adwo/adsdk/b;

    invoke-virtual {v0, v1}, Lcom/adwo/adsdk/AdwoAdView;->addView(Landroid/view/View;)V

    .line 271
    iget v0, p0, Lcom/adwo/adsdk/A;->c:I

    if-nez v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/adwo/adsdk/A;->b:Lcom/adwo/adsdk/b;

    .line 273
    invoke-virtual {v0}, Lcom/adwo/adsdk/b;->b()V

    .line 274
    iget-boolean v0, p0, Lcom/adwo/adsdk/A;->d:Z

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/adwo/adsdk/A;->a:Lcom/adwo/adsdk/z;

    invoke-static {v0}, Lcom/adwo/adsdk/z;->a(Lcom/adwo/adsdk/z;)Lcom/adwo/adsdk/AdwoAdView;

    move-result-object v0

    iget-object v1, p0, Lcom/adwo/adsdk/A;->b:Lcom/adwo/adsdk/b;

    invoke-static {v0, v1}, Lcom/adwo/adsdk/AdwoAdView;->b(Lcom/adwo/adsdk/AdwoAdView;Lcom/adwo/adsdk/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    :goto_0
    iget-object v0, p0, Lcom/adwo/adsdk/A;->a:Lcom/adwo/adsdk/z;

    invoke-static {v0}, Lcom/adwo/adsdk/z;->a(Lcom/adwo/adsdk/z;)Lcom/adwo/adsdk/AdwoAdView;

    move-result-object v0

    iput-boolean v2, v0, Lcom/adwo/adsdk/AdwoAdView;->a:Z

    .line 287
    :goto_1
    return-void

    .line 277
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/adwo/adsdk/A;->a:Lcom/adwo/adsdk/z;

    invoke-static {v0}, Lcom/adwo/adsdk/z;->a(Lcom/adwo/adsdk/z;)Lcom/adwo/adsdk/AdwoAdView;

    move-result-object v0

    iget-object v1, p0, Lcom/adwo/adsdk/A;->b:Lcom/adwo/adsdk/b;

    invoke-static {v0, v1}, Lcom/adwo/adsdk/AdwoAdView;->c(Lcom/adwo/adsdk/AdwoAdView;Lcom/adwo/adsdk/b;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 282
    :catch_0
    move-exception v0

    .line 283
    :try_start_2
    const-string v1, "Adwo SDK"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 285
    iget-object v0, p0, Lcom/adwo/adsdk/A;->a:Lcom/adwo/adsdk/z;

    invoke-static {v0}, Lcom/adwo/adsdk/z;->a(Lcom/adwo/adsdk/z;)Lcom/adwo/adsdk/AdwoAdView;

    move-result-object v0

    iput-boolean v2, v0, Lcom/adwo/adsdk/AdwoAdView;->a:Z

    goto :goto_1

    .line 280
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/adwo/adsdk/A;->a:Lcom/adwo/adsdk/z;

    invoke-static {v0}, Lcom/adwo/adsdk/z;->a(Lcom/adwo/adsdk/z;)Lcom/adwo/adsdk/AdwoAdView;

    move-result-object v0

    iget-object v1, p0, Lcom/adwo/adsdk/A;->b:Lcom/adwo/adsdk/b;

    invoke-static {v0, v1}, Lcom/adwo/adsdk/AdwoAdView;->a(Lcom/adwo/adsdk/AdwoAdView;Lcom/adwo/adsdk/b;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 284
    :catchall_0
    move-exception v0

    .line 285
    iget-object v1, p0, Lcom/adwo/adsdk/A;->a:Lcom/adwo/adsdk/z;

    invoke-static {v1}, Lcom/adwo/adsdk/z;->a(Lcom/adwo/adsdk/z;)Lcom/adwo/adsdk/AdwoAdView;

    move-result-object v1

    iput-boolean v2, v1, Lcom/adwo/adsdk/AdwoAdView;->a:Z

    .line 286
    throw v0
.end method
