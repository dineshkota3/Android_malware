.class final Lcom/madhouse/android/ads/fff;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic _:Lcom/madhouse/android/ads/AdView;


# direct methods
.method constructor <init>(Lcom/madhouse/android/ads/AdView;)V
    .locals 0

    iput-object p1, p0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    invoke-virtual {v0}, Lcom/madhouse/android/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    invoke-static {v1}, Lcom/madhouse/android/ads/AdView;->___(Lcom/madhouse/android/ads/AdView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    invoke-static {v2}, Lcom/madhouse/android/ads/AdView;->____(Lcom/madhouse/android/ads/AdView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    invoke-static {v3}, Lcom/madhouse/android/ads/AdView;->_____(Lcom/madhouse/android/ads/AdView;)I

    move-result v3

    iget-object v4, p0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    invoke-static {v4}, Lcom/madhouse/android/ads/AdView;->$(Lcom/madhouse/android/ads/AdView;)I

    move-result v4

    iget-object v5, p0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    invoke-static {v5}, Lcom/madhouse/android/ads/AdView;->$$(Lcom/madhouse/android/ads/AdView;)Ljava/lang/String;

    move-result-object v5

    sget-boolean v6, Lcom/madhouse/android/ads/eee;->_:Z

    iget-object v7, p0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    invoke-static {v7}, Lcom/madhouse/android/ads/AdView;->$$$(Lcom/madhouse/android/ads/AdView;)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/madhouse/android/ads/eeeee;->_(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;)Lcom/madhouse/android/ads/__;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    iget-object v2, v0, Lcom/madhouse/android/ads/__;->___:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/madhouse/android/ads/AdView;->_(Lcom/madhouse/android/ads/AdView;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/madhouse/android/ads/__;->____:Ljava/lang/String;

    invoke-static {v1}, Lcom/madhouse/android/ads/f;->__(Ljava/lang/String;)I

    move-result v5

    iget-object v1, v0, Lcom/madhouse/android/ads/__;->_____:Ljava/lang/String;

    invoke-static {v1}, Lcom/madhouse/android/ads/f;->__(Ljava/lang/String;)I

    move-result v6

    iget-object v1, v0, Lcom/madhouse/android/ads/__;->_:Ljava/lang/String;

    invoke-static {v1}, Lcom/madhouse/android/ads/f;->__(Ljava/lang/String;)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v1, p0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    invoke-static {v1}, Lcom/madhouse/android/ads/AdView;->$$$$(Lcom/madhouse/android/ads/AdView;)Lcom/madhouse/android/ads/AdListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    invoke-static {v1}, Lcom/madhouse/android/ads/AdView;->$$$$(Lcom/madhouse/android/ads/AdView;)Lcom/madhouse/android/ads/AdListener;

    move-result-object v1

    const/16 v2, 0xc8

    invoke-interface {v1, v2}, Lcom/madhouse/android/ads/AdListener;->onAdStatus(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_e

    :cond_0
    :goto_1
    :try_start_2
    monitor-enter p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v1, v0, Lcom/madhouse/android/ads/__;->__:Ljava/lang/String;

    invoke-static {v1}, Lcom/madhouse/android/ads/f;->__(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_2
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    invoke-static {v0, v8}, Lcom/madhouse/android/ads/AdView;->_(Lcom/madhouse/android/ads/AdView;Z)V

    goto :goto_0

    :pswitch_0
    :try_start_5
    iget-object v1, p0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    invoke-static {v1}, Lcom/madhouse/android/ads/AdView;->_(Lcom/madhouse/android/ads/AdView;)Lcom/madhouse/android/ads/____;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/madhouse/android/ads/__;->___:Ljava/lang/String;

    iget-object v2, p0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    invoke-static {v2}, Lcom/madhouse/android/ads/AdView;->_(Lcom/madhouse/android/ads/AdView;)Lcom/madhouse/android/ads/____;

    move-result-object v2

    iget-object v2, v2, Lcom/madhouse/android/ads/____;->___:Lcom/madhouse/android/ads/__;

    iget-object v2, v2, Lcom/madhouse/android/ads/__;->___:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/madhouse/android/ads/eee;->_:Z

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    invoke-static {v0}, Lcom/madhouse/android/ads/AdView;->$$$$(Lcom/madhouse/android/ads/AdView;)Lcom/madhouse/android/ads/AdListener;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_6
    iget-object v0, p0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    invoke-static {v0}, Lcom/madhouse/android/ads/AdView;->$$$$(Lcom/madhouse/android/ads/AdView;)Lcom/madhouse/android/ads/AdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    invoke-static {v1}, Lcom/madhouse/android/ads/AdView;->$$$$$(Lcom/madhouse/android/ads/AdView;)Lcom/madhouse/android/ads/AdView;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Lcom/madhouse/android/ads/AdListener;->onAdEvent(Lcom/madhouse/android/ads/AdView;I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_d
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_1
    :goto_3
    :try_start_7
    iget-object v0, p0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/madhouse/android/ads/AdView;->_(Lcom/madhouse/android/ads/AdView;Z)V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    invoke-static {v1}, Lcom/madhouse/android/ads/AdView;->_(Lcom/madhouse/android/ads/AdView;)Lcom/madhouse/android/ads/____;

    move-result-object v1

    if-nez v1, :cond_4

    move v4, v9

    :goto_4
    iget-object v1, p0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    invoke-static {v1}, Lcom/madhouse/android/ads/AdView;->a(Lcom/madhouse/android/ads/AdView;)I

    move-result v3

    new-instance v2, Lcom/madhouse/android/ads/____;

    iget-object v1, p0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    invoke-static {v1}, Lcom/madhouse/android/ads/AdView;->aa(Lcom/madhouse/android/ads/AdView;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/madhouse/android/ads/____;-><init>(Lcom/madhouse/android/ads/__;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lcom/madhouse/android/ads/____;->setVisibility(I)V

    iget-object v0, p0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    invoke-static {v0}, Lcom/madhouse/android/ads/AdView;->$$$$(Lcom/madhouse/android/ads/AdView;)Lcom/madhouse/android/ads/AdListener;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_3

    :try_start_8
    iget-object v0, p0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    invoke-static {v0}, Lcom/madhouse/android/ads/AdView;->$$$$(Lcom/madhouse/android/ads/AdView;)Lcom/madhouse/android/ads/AdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    invoke-static {v1}, Lcom/madhouse/android/ads/AdView;->$$$$$(Lcom/madhouse/android/ads/AdView;)Lcom/madhouse/android/ads/AdView;

    move-result-object v1

    const/4 v7, 0x1

    invoke-interface {v0, v1, v7}, Lcom/madhouse/android/ads/AdListener;->onAdEvent(Lcom/madhouse/android/ads/AdView;I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_c
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_3
    :goto_5
    :try_start_9
    invoke-static {}, Lcom/madhouse/android/ads/AdView;->___()Landroid/os/Handler;

    move-result-object v7

    new-instance v0, Lcom/madhouse/android/ads/ffff;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/madhouse/android/ads/ffff;-><init>(Lcom/madhouse/android/ads/fff;Lcom/madhouse/android/ads/____;IZII)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    :cond_4
    move v4, v8

    goto :goto_4

    :pswitch_1
    iget-object v1, p0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    invoke-static {v1}, Lcom/madhouse/android/ads/AdView;->_____(Lcom/madhouse/android/ads/AdView;)I

    move-result v1

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/madhouse/android/ads/AdView;->_(I)V

    :cond_5
    iget-object v1, p0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    invoke-static {v1}, Lcom/madhouse/android/ads/AdView;->a(Lcom/madhouse/android/ads/AdView;)I

    move-result v1

    new-instance v2, Lcom/madhouse/android/ads/eeee;

    iget-object v3, p0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    invoke-static {v3}, Lcom/madhouse/android/ads/AdView;->aa(Lcom/madhouse/android/ads/AdView;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/madhouse/android/ads/eeee;-><init>(Lcom/madhouse/android/ads/__;Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/madhouse/android/ads/eeee;->setVisibility(I)V

    iget-object v0, p0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    invoke-static {v0}, Lcom/madhouse/android/ads/AdView;->$$$$(Lcom/madhouse/android/ads/AdView;)Lcom/madhouse/android/ads/AdListener;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_6

    :try_start_a
    iget-object v0, p0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    invoke-static {v0}, Lcom/madhouse/android/ads/AdView;->$$$$(Lcom/madhouse/android/ads/AdView;)Lcom/madhouse/android/ads/AdListener;

    move-result-object v0

    iget-object v3, p0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    invoke-static {v3}, Lcom/madhouse/android/ads/AdView;->$$$$$(Lcom/madhouse/android/ads/AdView;)Lcom/madhouse/android/ads/AdView;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Lcom/madhouse/android/ads/AdListener;->onAdEvent(Lcom/madhouse/android/ads/AdView;I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_b
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_6
    :goto_6
    :try_start_b
    invoke-static {}, Lcom/madhouse/android/ads/AdView;->___()Landroid/os/Handler;

    move-result-object v0

    new-instance v3, Lcom/madhouse/android/ads/fffff;

    invoke-direct {v3, p0, v2, v1}, Lcom/madhouse/android/ads/fffff;-><init>(Lcom/madhouse/android/ads/fff;Lcom/madhouse/android/ads/eeee;I)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_2

    :sswitch_1
    :try_start_c
    iget-object v0, p0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    invoke-static {v0}, Lcom/madhouse/android/ads/AdView;->$$$$(Lcom/madhouse/android/ads/AdView;)Lcom/madhouse/android/ads/AdListener;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    move-result-object v0

    if-eqz v0, :cond_7

    :try_start_d
    iget-object v0, p0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    invoke-static {v0}, Lcom/madhouse/android/ads/AdView;->$$$$(Lcom/madhouse/android/ads/AdView;)Lcom/madhouse/android/ads/AdListener;

    move-result-object v0

    const/16 v1, 0x190

    invoke-interface {v0, v1}, Lcom/madhouse/android/ads/AdListener;->onAdStatus(I)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a

    :cond_7
    :goto_7
    :try_start_e
    iget-object v0, p0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/madhouse/android/ads/AdView;->_(Lcom/madhouse/android/ads/AdView;Z)V

    goto/16 :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    invoke-static {v0}, Lcom/madhouse/android/ads/AdView;->$$$$(Lcom/madhouse/android/ads/AdView;)Lcom/madhouse/android/ads/AdListener;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    move-result-object v0

    if-eqz v0, :cond_8

    :try_start_f
    iget-object v0, p0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    invoke-static {v0}, Lcom/madhouse/android/ads/AdView;->$$$$(Lcom/madhouse/android/ads/AdView;)Lcom/madhouse/android/ads/AdListener;

    move-result-object v0

    const/16 v1, 0x191

    invoke-interface {v0, v1}, Lcom/madhouse/android/ads/AdListener;->onAdStatus(I)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_9

    :cond_8
    :goto_8
    :try_start_10
    iget-object v0, p0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/madhouse/android/ads/AdView;->_(Lcom/madhouse/android/ads/AdView;Z)V

    goto/16 :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/madhouse/android/ads/AdView;->__(Lcom/madhouse/android/ads/AdView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    invoke-static {v0}, Lcom/madhouse/android/ads/AdView;->$$$$(Lcom/madhouse/android/ads/AdView;)Lcom/madhouse/android/ads/AdListener;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    move-result-object v0

    if-eqz v0, :cond_9

    :try_start_11
    iget-object v0, p0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    invoke-static {v0}, Lcom/madhouse/android/ads/AdView;->$$$$(Lcom/madhouse/android/ads/AdView;)Lcom/madhouse/android/ads/AdListener;

    move-result-object v0

    const/16 v1, 0x191

    invoke-interface {v0, v1}, Lcom/madhouse/android/ads/AdListener;->onAdStatus(I)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8

    :cond_9
    :goto_9
    :try_start_12
    iget-object v0, p0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/madhouse/android/ads/AdView;->_(Lcom/madhouse/android/ads/AdView;Z)V

    goto/16 :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    invoke-static {v0}, Lcom/madhouse/android/ads/AdView;->$$$$(Lcom/madhouse/android/ads/AdView;)Lcom/madhouse/android/ads/AdListener;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0

    move-result-object v0

    if-eqz v0, :cond_a

    :try_start_13
    iget-object v0, p0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    invoke-static {v0}, Lcom/madhouse/android/ads/AdView;->$$$$(Lcom/madhouse/android/ads/AdView;)Lcom/madhouse/android/ads/AdListener;

    move-result-object v0

    const/16 v1, 0x191

    invoke-interface {v0, v1}, Lcom/madhouse/android/ads/AdListener;->onAdStatus(I)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_7

    :cond_a
    :goto_a
    :try_start_14
    iget-object v0, p0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/madhouse/android/ads/AdView;->_(Lcom/madhouse/android/ads/AdView;Z)V

    goto/16 :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    invoke-static {v0}, Lcom/madhouse/android/ads/AdView;->$$$$(Lcom/madhouse/android/ads/AdView;)Lcom/madhouse/android/ads/AdListener;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0

    move-result-object v0

    if-eqz v0, :cond_b

    :try_start_15
    iget-object v0, p0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    invoke-static {v0}, Lcom/madhouse/android/ads/AdView;->$$$$(Lcom/madhouse/android/ads/AdView;)Lcom/madhouse/android/ads/AdListener;

    move-result-object v0

    const/16 v1, 0x191

    invoke-interface {v0, v1}, Lcom/madhouse/android/ads/AdListener;->onAdStatus(I)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_6

    :cond_b
    :goto_b
    :try_start_16
    iget-object v0, p0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/madhouse/android/ads/AdView;->_(Lcom/madhouse/android/ads/AdView;Z)V

    goto/16 :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    invoke-static {v0}, Lcom/madhouse/android/ads/AdView;->$$$$(Lcom/madhouse/android/ads/AdView;)Lcom/madhouse/android/ads/AdListener;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_0

    move-result-object v0

    if-eqz v0, :cond_c

    :try_start_17
    iget-object v0, p0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    invoke-static {v0}, Lcom/madhouse/android/ads/AdView;->$$$$(Lcom/madhouse/android/ads/AdView;)Lcom/madhouse/android/ads/AdListener;

    move-result-object v0

    const/16 v1, 0x195

    invoke-interface {v0, v1}, Lcom/madhouse/android/ads/AdListener;->onAdStatus(I)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_5

    :cond_c
    :goto_c
    :try_start_18
    iget-object v0, p0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/madhouse/android/ads/AdView;->_(Lcom/madhouse/android/ads/AdView;Z)V

    goto/16 :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    invoke-static {v0}, Lcom/madhouse/android/ads/AdView;->$$$$(Lcom/madhouse/android/ads/AdView;)Lcom/madhouse/android/ads/AdListener;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_0

    move-result-object v0

    if-eqz v0, :cond_d

    :try_start_19
    iget-object v0, p0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    invoke-static {v0}, Lcom/madhouse/android/ads/AdView;->$$$$(Lcom/madhouse/android/ads/AdView;)Lcom/madhouse/android/ads/AdListener;

    move-result-object v0

    const/16 v1, 0x1f4

    invoke-interface {v0, v1}, Lcom/madhouse/android/ads/AdListener;->onAdStatus(I)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_4

    :cond_d
    :goto_d
    :try_start_1a
    iget-object v0, p0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/madhouse/android/ads/AdView;->_(Lcom/madhouse/android/ads/AdView;Z)V

    goto/16 :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    invoke-static {v0}, Lcom/madhouse/android/ads/AdView;->$$$$(Lcom/madhouse/android/ads/AdView;)Lcom/madhouse/android/ads/AdListener;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_0

    move-result-object v0

    if-eqz v0, :cond_e

    :try_start_1b
    iget-object v0, p0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    invoke-static {v0}, Lcom/madhouse/android/ads/AdView;->$$$$(Lcom/madhouse/android/ads/AdView;)Lcom/madhouse/android/ads/AdListener;

    move-result-object v0

    const/16 v1, 0x1f5

    invoke-interface {v0, v1}, Lcom/madhouse/android/ads/AdListener;->onAdStatus(I)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_3

    :cond_e
    :goto_e
    :try_start_1c
    iget-object v0, p0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/madhouse/android/ads/AdView;->_(Lcom/madhouse/android/ads/AdView;Z)V

    goto/16 :goto_0

    :cond_f
    iget-object v0, p0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    invoke-static {v0}, Lcom/madhouse/android/ads/AdView;->aaa(Lcom/madhouse/android/ads/AdView;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    invoke-static {v0}, Lcom/madhouse/android/ads/AdView;->$$$$(Lcom/madhouse/android/ads/AdView;)Lcom/madhouse/android/ads/AdListener;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_0

    move-result-object v0

    if-eqz v0, :cond_10

    :try_start_1d
    iget-object v0, p0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    invoke-static {v0}, Lcom/madhouse/android/ads/AdView;->$$$$(Lcom/madhouse/android/ads/AdView;)Lcom/madhouse/android/ads/AdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    invoke-static {v1}, Lcom/madhouse/android/ads/AdView;->$$$$$(Lcom/madhouse/android/ads/AdView;)Lcom/madhouse/android/ads/AdView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Lcom/madhouse/android/ads/AdListener;->onAdEvent(Lcom/madhouse/android/ads/AdView;I)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_2

    :cond_10
    :goto_f
    :try_start_1e
    iget-object v0, p0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/madhouse/android/ads/AdView;->_(Lcom/madhouse/android/ads/AdView;Z)V

    goto/16 :goto_0

    :cond_11
    iget-object v0, p0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    invoke-static {v0}, Lcom/madhouse/android/ads/AdView;->$$$$(Lcom/madhouse/android/ads/AdView;)Lcom/madhouse/android/ads/AdListener;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_0

    move-result-object v0

    if-eqz v0, :cond_10

    :try_start_1f
    iget-object v0, p0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    invoke-static {v0}, Lcom/madhouse/android/ads/AdView;->$$$$(Lcom/madhouse/android/ads/AdView;)Lcom/madhouse/android/ads/AdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    invoke-static {v1}, Lcom/madhouse/android/ads/AdView;->$$$$$(Lcom/madhouse/android/ads/AdView;)Lcom/madhouse/android/ads/AdView;

    move-result-object v1

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2}, Lcom/madhouse/android/ads/AdListener;->onAdEvent(Lcom/madhouse/android/ads/AdView;I)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_1

    goto :goto_f

    :catch_1
    move-exception v0

    goto :goto_f

    :catch_2
    move-exception v0

    goto :goto_f

    :catch_3
    move-exception v0

    goto :goto_e

    :catch_4
    move-exception v0

    goto :goto_d

    :catch_5
    move-exception v0

    goto/16 :goto_c

    :catch_6
    move-exception v0

    goto/16 :goto_b

    :catch_7
    move-exception v0

    goto/16 :goto_a

    :catch_8
    move-exception v0

    goto/16 :goto_9

    :catch_9
    move-exception v0

    goto/16 :goto_8

    :catch_a
    move-exception v0

    goto/16 :goto_7

    :catch_b
    move-exception v0

    goto/16 :goto_6

    :catch_c
    move-exception v0

    goto/16 :goto_5

    :catch_d
    move-exception v0

    goto/16 :goto_3

    :catch_e
    move-exception v1

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x190 -> :sswitch_1
        0x191 -> :sswitch_2
        0x192 -> :sswitch_3
        0x193 -> :sswitch_4
        0x194 -> :sswitch_5
        0x195 -> :sswitch_6
        0x1f4 -> :sswitch_7
        0x1f5 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
