.class final Lcom/madhouse/android/ads/fffff;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic _:Lcom/madhouse/android/ads/fff;

.field private final synthetic __:Lcom/madhouse/android/ads/eeee;

.field private final synthetic ___:I


# direct methods
.method constructor <init>(Lcom/madhouse/android/ads/fff;Lcom/madhouse/android/ads/eeee;I)V
    .locals 0

    iput-object p1, p0, Lcom/madhouse/android/ads/fffff;->_:Lcom/madhouse/android/ads/fff;

    iput-object p2, p0, Lcom/madhouse/android/ads/fffff;->__:Lcom/madhouse/android/ads/eeee;

    iput p3, p0, Lcom/madhouse/android/ads/fffff;->___:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/madhouse/android/ads/fffff;->_:Lcom/madhouse/android/ads/fff;

    iget-object v0, v0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    iget-object v1, p0, Lcom/madhouse/android/ads/fffff;->__:Lcom/madhouse/android/ads/eeee;

    invoke-virtual {v0, v1}, Lcom/madhouse/android/ads/AdView;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/madhouse/android/ads/fffff;->_:Lcom/madhouse/android/ads/fff;

    iget-object v1, v1, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    invoke-static {v1}, Lcom/madhouse/android/ads/AdView;->aa(Lcom/madhouse/android/ads/AdView;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v1, 0x1080017

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/madhouse/android/ads/fffff;->_:Lcom/madhouse/android/ads/fff;

    iget-object v2, v2, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    invoke-virtual {v2, v0, v1}, Lcom/madhouse/android/ads/AdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/madhouse/android/ads/g;

    iget-object v2, p0, Lcom/madhouse/android/ads/fffff;->__:Lcom/madhouse/android/ads/eeee;

    invoke-direct {v1, p0, v2}, Lcom/madhouse/android/ads/g;-><init>(Lcom/madhouse/android/ads/fffff;Lcom/madhouse/android/ads/eeee;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v0, p0, Lcom/madhouse/android/ads/fffff;->___:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/madhouse/android/ads/fffff;->_:Lcom/madhouse/android/ads/fff;

    iget-object v0, v0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    iget-object v1, p0, Lcom/madhouse/android/ads/fffff;->__:Lcom/madhouse/android/ads/eeee;

    invoke-static {v0, v1}, Lcom/madhouse/android/ads/AdView;->__(Lcom/madhouse/android/ads/AdView;Lcom/madhouse/android/ads/eeee;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/madhouse/android/ads/fffff;->_:Lcom/madhouse/android/ads/fff;

    iget-object v0, v0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    invoke-static {v0, v4}, Lcom/madhouse/android/ads/AdView;->_(Lcom/madhouse/android/ads/AdView;Z)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x73b

    :try_start_1
    invoke-static {v0}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/madhouse/android/ads/eee;->____(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/madhouse/android/ads/fffff;->_:Lcom/madhouse/android/ads/fff;

    iget-object v0, v0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    invoke-static {v0, v4}, Lcom/madhouse/android/ads/AdView;->_(Lcom/madhouse/android/ads/AdView;Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/madhouse/android/ads/fffff;->_:Lcom/madhouse/android/ads/fff;

    iget-object v1, v1, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    invoke-static {v1, v4}, Lcom/madhouse/android/ads/AdView;->_(Lcom/madhouse/android/ads/AdView;Z)V

    throw v0
.end method
