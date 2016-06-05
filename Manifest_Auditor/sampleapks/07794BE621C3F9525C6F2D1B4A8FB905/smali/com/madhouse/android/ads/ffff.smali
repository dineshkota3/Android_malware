.class final Lcom/madhouse/android/ads/ffff;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic $:I

.field private synthetic _:Lcom/madhouse/android/ads/fff;

.field private final synthetic __:Lcom/madhouse/android/ads/____;

.field private final synthetic ___:I

.field private final synthetic ____:Z

.field private final synthetic _____:I


# direct methods
.method constructor <init>(Lcom/madhouse/android/ads/fff;Lcom/madhouse/android/ads/____;IZII)V
    .locals 0

    iput-object p1, p0, Lcom/madhouse/android/ads/ffff;->_:Lcom/madhouse/android/ads/fff;

    iput-object p2, p0, Lcom/madhouse/android/ads/ffff;->__:Lcom/madhouse/android/ads/____;

    iput p3, p0, Lcom/madhouse/android/ads/ffff;->___:I

    iput-boolean p4, p0, Lcom/madhouse/android/ads/ffff;->____:Z

    iput p5, p0, Lcom/madhouse/android/ads/ffff;->_____:I

    iput p6, p0, Lcom/madhouse/android/ads/ffff;->$:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/madhouse/android/ads/ffff;->_:Lcom/madhouse/android/ads/fff;

    iget-object v0, v0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    iget-object v1, p0, Lcom/madhouse/android/ads/ffff;->__:Lcom/madhouse/android/ads/____;

    invoke-virtual {v0, v1}, Lcom/madhouse/android/ads/AdView;->addView(Landroid/view/View;)V

    iget v0, p0, Lcom/madhouse/android/ads/ffff;->___:I

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/madhouse/android/ads/ffff;->____:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/madhouse/android/ads/ffff;->_:Lcom/madhouse/android/ads/fff;

    iget-object v0, v0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    invoke-static {v0}, Lcom/madhouse/android/ads/AdView;->aa(Lcom/madhouse/android/ads/AdView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/madhouse/android/ads/l;->__(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/madhouse/android/ads/ffff;->_:Lcom/madhouse/android/ads/fff;

    iget-object v0, v0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    iget-object v1, p0, Lcom/madhouse/android/ads/ffff;->__:Lcom/madhouse/android/ads/____;

    invoke-static {v0, v1}, Lcom/madhouse/android/ads/AdView;->__(Lcom/madhouse/android/ads/AdView;Lcom/madhouse/android/ads/____;)V

    iget-object v0, p0, Lcom/madhouse/android/ads/ffff;->_:Lcom/madhouse/android/ads/fff;

    iget-object v0, v0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    invoke-static {v0}, Lcom/madhouse/android/ads/AdView;->__(Lcom/madhouse/android/ads/AdView;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/madhouse/android/ads/ffff;->_:Lcom/madhouse/android/ads/fff;

    iget-object v0, v0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    invoke-static {v0}, Lcom/madhouse/android/ads/AdView;->__(Lcom/madhouse/android/ads/AdView;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iget-object v1, p0, Lcom/madhouse/android/ads/ffff;->_:Lcom/madhouse/android/ads/fff;

    iget-object v1, v1, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    rem-int/lit8 v0, v0, 0x9

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v1, v0}, Lcom/madhouse/android/ads/AdView;->_(Lcom/madhouse/android/ads/AdView;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/madhouse/android/ads/ffff;->_:Lcom/madhouse/android/ads/fff;

    iget-object v0, v0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    invoke-static {v0, v4}, Lcom/madhouse/android/ads/AdView;->_(Lcom/madhouse/android/ads/AdView;Z)V

    :goto_1
    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/madhouse/android/ads/ffff;->_:Lcom/madhouse/android/ads/fff;

    iget-object v0, v0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    invoke-static {v0}, Lcom/madhouse/android/ads/AdView;->__(Lcom/madhouse/android/ads/AdView;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iget-object v1, p0, Lcom/madhouse/android/ads/ffff;->_:Lcom/madhouse/android/ads/fff;

    iget-object v1, v1, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    rem-int/lit8 v0, v0, 0x9

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v1, v0}, Lcom/madhouse/android/ads/AdView;->_(Lcom/madhouse/android/ads/AdView;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v0, 0x73b

    :try_start_2
    invoke-static {v0}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/madhouse/android/ads/eee;->____(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/madhouse/android/ads/ffff;->_:Lcom/madhouse/android/ads/fff;

    iget-object v0, v0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    invoke-static {v0, v4}, Lcom/madhouse/android/ads/AdView;->_(Lcom/madhouse/android/ads/AdView;Z)V

    goto :goto_1

    :pswitch_2
    :try_start_3
    iget-object v0, p0, Lcom/madhouse/android/ads/ffff;->_:Lcom/madhouse/android/ads/fff;

    iget-object v0, v0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    iget-object v1, p0, Lcom/madhouse/android/ads/ffff;->__:Lcom/madhouse/android/ads/____;

    invoke-static {v0, v1}, Lcom/madhouse/android/ads/AdView;->___(Lcom/madhouse/android/ads/AdView;Lcom/madhouse/android/ads/____;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/madhouse/android/ads/ffff;->_:Lcom/madhouse/android/ads/fff;

    iget-object v1, v1, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    invoke-static {v1, v4}, Lcom/madhouse/android/ads/AdView;->_(Lcom/madhouse/android/ads/AdView;Z)V

    throw v0

    :pswitch_3
    :try_start_4
    iget-object v0, p0, Lcom/madhouse/android/ads/ffff;->_:Lcom/madhouse/android/ads/fff;

    iget-object v0, v0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    iget-object v1, p0, Lcom/madhouse/android/ads/ffff;->__:Lcom/madhouse/android/ads/____;

    iget v2, p0, Lcom/madhouse/android/ads/ffff;->_____:I

    iget v3, p0, Lcom/madhouse/android/ads/ffff;->$:I

    invoke-static {v0, v1, v2, v3}, Lcom/madhouse/android/ads/AdView;->_(Lcom/madhouse/android/ads/AdView;Lcom/madhouse/android/ads/____;II)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/madhouse/android/ads/ffff;->_:Lcom/madhouse/android/ads/fff;

    iget-object v0, v0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    iget-object v1, p0, Lcom/madhouse/android/ads/ffff;->__:Lcom/madhouse/android/ads/____;

    invoke-static {v0, v1}, Lcom/madhouse/android/ads/AdView;->____(Lcom/madhouse/android/ads/AdView;Lcom/madhouse/android/ads/____;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/madhouse/android/ads/ffff;->_:Lcom/madhouse/android/ads/fff;

    iget-object v0, v0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    iget-object v1, p0, Lcom/madhouse/android/ads/ffff;->__:Lcom/madhouse/android/ads/____;

    invoke-static {v0, v1}, Lcom/madhouse/android/ads/AdView;->_(Lcom/madhouse/android/ads/AdView;Lcom/madhouse/android/ads/____;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
