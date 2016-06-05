.class final Lcom/adwo/adsdk/x;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/adwo/adsdk/AdwoAdView;


# direct methods
.method constructor <init>(Lcom/adwo/adsdk/AdwoAdView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adwo/adsdk/x;->a:Lcom/adwo/adsdk/AdwoAdView;

    .line 271
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/adwo/adsdk/x;)Lcom/adwo/adsdk/AdwoAdView;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/adwo/adsdk/x;->a:Lcom/adwo/adsdk/AdwoAdView;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 274
    :try_start_0
    iget-object v0, p0, Lcom/adwo/adsdk/x;->a:Lcom/adwo/adsdk/AdwoAdView;

    invoke-virtual {v0}, Lcom/adwo/adsdk/AdwoAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 275
    invoke-static {}, Lcom/adwo/adsdk/AdwoAdView;->f()B

    move-result v0

    const/4 v1, 0x0

    invoke-static {v2, v0, v1}, Lcom/adwo/adsdk/i;->a(Landroid/content/Context;BB)Lcom/adwo/adsdk/f;

    move-result-object v1

    .line 276
    if-eqz v1, :cond_4

    .line 277
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :try_start_1
    iget-object v0, p0, Lcom/adwo/adsdk/x;->a:Lcom/adwo/adsdk/AdwoAdView;

    invoke-static {v0}, Lcom/adwo/adsdk/AdwoAdView;->a(Lcom/adwo/adsdk/AdwoAdView;)Lcom/adwo/adsdk/b;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adwo/adsdk/x;->a:Lcom/adwo/adsdk/AdwoAdView;

    invoke-static {v0}, Lcom/adwo/adsdk/AdwoAdView;->a(Lcom/adwo/adsdk/AdwoAdView;)Lcom/adwo/adsdk/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adwo/adsdk/b;->d()Lcom/adwo/adsdk/f;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adwo/adsdk/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/adwo/adsdk/x;->a:Lcom/adwo/adsdk/AdwoAdView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/adwo/adsdk/AdwoAdView;->a:Z

    .line 280
    iget-object v0, p0, Lcom/adwo/adsdk/x;->a:Lcom/adwo/adsdk/AdwoAdView;

    invoke-static {v0}, Lcom/adwo/adsdk/AdwoAdView;->b(Lcom/adwo/adsdk/AdwoAdView;)Lcom/adwo/adsdk/AdListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    .line 283
    :try_start_2
    iget-object v0, p0, Lcom/adwo/adsdk/x;->a:Lcom/adwo/adsdk/AdwoAdView;

    invoke-static {v0}, Lcom/adwo/adsdk/AdwoAdView;->b(Lcom/adwo/adsdk/AdwoAdView;)Lcom/adwo/adsdk/AdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/adwo/adsdk/x;->a:Lcom/adwo/adsdk/AdwoAdView;

    invoke-interface {v0, v1}, Lcom/adwo/adsdk/AdListener;->onFailedToReceiveRefreshedAd(Lcom/adwo/adsdk/AdwoAdView;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 277
    :cond_0
    :goto_0
    :try_start_3
    monitor-exit p0

    .line 358
    :goto_1
    return-void

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/adwo/adsdk/x;->a:Lcom/adwo/adsdk/AdwoAdView;

    invoke-static {v0}, Lcom/adwo/adsdk/AdwoAdView;->a(Lcom/adwo/adsdk/AdwoAdView;)Lcom/adwo/adsdk/b;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    move v8, v0

    .line 293
    :goto_2
    iget-object v0, p0, Lcom/adwo/adsdk/x;->a:Lcom/adwo/adsdk/AdwoAdView;

    .line 294
    invoke-static {v0}, Lcom/adwo/adsdk/AdwoAdView;->c(Lcom/adwo/adsdk/AdwoAdView;)I

    move-result v9

    .line 295
    new-instance v0, Lcom/adwo/adsdk/b;

    .line 296
    const/4 v3, 0x0

    .line 297
    invoke-static {}, Lcom/adwo/adsdk/AdwoAdView;->a()I

    move-result v4

    invoke-static {}, Lcom/adwo/adsdk/AdwoAdView;->b()I

    move-result v5

    .line 298
    iget-object v6, p0, Lcom/adwo/adsdk/x;->a:Lcom/adwo/adsdk/AdwoAdView;

    invoke-virtual {v6}, Lcom/adwo/adsdk/AdwoAdView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    float-to-double v6, v6

    .line 295
    invoke-direct/range {v0 .. v7}, Lcom/adwo/adsdk/b;-><init>(Lcom/adwo/adsdk/f;Landroid/content/Context;ZIID)V

    .line 300
    iget-object v1, p0, Lcom/adwo/adsdk/x;->a:Lcom/adwo/adsdk/AdwoAdView;

    invoke-virtual {v1}, Lcom/adwo/adsdk/AdwoAdView;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adwo/adsdk/b;->setBackgroundColor(I)V

    .line 301
    iget-object v1, p0, Lcom/adwo/adsdk/x;->a:Lcom/adwo/adsdk/AdwoAdView;

    invoke-virtual {v1}, Lcom/adwo/adsdk/AdwoAdView;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adwo/adsdk/b;->a(I)V

    .line 302
    invoke-virtual {v0, v9}, Lcom/adwo/adsdk/b;->setVisibility(I)V

    .line 303
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 304
    invoke-static {}, Lcom/adwo/adsdk/AdwoAdView;->a()I

    move-result v2

    invoke-static {}, Lcom/adwo/adsdk/AdwoAdView;->b()I

    move-result v3

    .line 303
    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 306
    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 307
    invoke-virtual {v0, v1}, Lcom/adwo/adsdk/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 308
    iget-object v1, p0, Lcom/adwo/adsdk/x;->a:Lcom/adwo/adsdk/AdwoAdView;

    invoke-static {v1}, Lcom/adwo/adsdk/AdwoAdView;->b(Lcom/adwo/adsdk/AdwoAdView;)Lcom/adwo/adsdk/AdListener;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_2

    .line 311
    :try_start_4
    iget-object v1, p0, Lcom/adwo/adsdk/x;->a:Lcom/adwo/adsdk/AdwoAdView;

    invoke-static {v1}, Lcom/adwo/adsdk/AdwoAdView;->b(Lcom/adwo/adsdk/AdwoAdView;)Lcom/adwo/adsdk/AdListener;

    move-result-object v1

    iget-object v2, p0, Lcom/adwo/adsdk/x;->a:Lcom/adwo/adsdk/AdwoAdView;

    invoke-interface {v1, v2}, Lcom/adwo/adsdk/AdListener;->onReceiveAd(Lcom/adwo/adsdk/AdwoAdView;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 317
    :cond_2
    :goto_3
    :try_start_5
    invoke-static {}, Lcom/adwo/adsdk/AdwoAdView;->g()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/adwo/adsdk/y;

    invoke-direct {v2, p0, v0, v9, v8}, Lcom/adwo/adsdk/y;-><init>(Lcom/adwo/adsdk/x;Lcom/adwo/adsdk/b;IZ)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 277
    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit p0

    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 353
    :catch_0
    move-exception v0

    .line 354
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 356
    iget-object v0, p0, Lcom/adwo/adsdk/x;->a:Lcom/adwo/adsdk/AdwoAdView;

    iput-boolean v10, v0, Lcom/adwo/adsdk/AdwoAdView;->a:Z

    goto/16 :goto_1

    :cond_3
    move v8, v10

    .line 292
    goto :goto_2

    .line 342
    :cond_4
    :try_start_7
    iget-object v0, p0, Lcom/adwo/adsdk/x;->a:Lcom/adwo/adsdk/AdwoAdView;

    invoke-static {v0}, Lcom/adwo/adsdk/AdwoAdView;->b(Lcom/adwo/adsdk/AdwoAdView;)Lcom/adwo/adsdk/AdListener;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move-result-object v0

    if-eqz v0, :cond_5

    .line 344
    :try_start_8
    iget-object v0, p0, Lcom/adwo/adsdk/x;->a:Lcom/adwo/adsdk/AdwoAdView;

    invoke-static {v0}, Lcom/adwo/adsdk/AdwoAdView;->b(Lcom/adwo/adsdk/AdwoAdView;)Lcom/adwo/adsdk/AdListener;

    move-result-object v0

    .line 345
    iget-object v1, p0, Lcom/adwo/adsdk/x;->a:Lcom/adwo/adsdk/AdwoAdView;

    invoke-interface {v0, v1}, Lcom/adwo/adsdk/AdListener;->onFailedToReceiveAd(Lcom/adwo/adsdk/AdwoAdView;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 351
    :cond_5
    :goto_4
    :try_start_9
    iget-object v0, p0, Lcom/adwo/adsdk/x;->a:Lcom/adwo/adsdk/AdwoAdView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/adwo/adsdk/AdwoAdView;->a:Z

    goto/16 :goto_1

    .line 346
    :catch_1
    move-exception v0

    .line 347
    const-string v1, "Adwo SDK"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    .line 285
    :catch_3
    move-exception v0

    goto/16 :goto_0
.end method
