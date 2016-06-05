.class final Lcom/madhouse/android/ads/ddddd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic _:Lcom/madhouse/android/ads/dddd;


# direct methods
.method constructor <init>(Lcom/madhouse/android/ads/dddd;)V
    .locals 0

    iput-object p1, p0, Lcom/madhouse/android/ads/ddddd;->_:Lcom/madhouse/android/ads/dddd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/madhouse/android/ads/ddddd;->_:Lcom/madhouse/android/ads/dddd;

    iget-object v0, v0, Lcom/madhouse/android/ads/dddd;->__:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/madhouse/android/ads/ddddd;->_:Lcom/madhouse/android/ads/dddd;

    iget-boolean v0, v0, Lcom/madhouse/android/ads/dddd;->____:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/madhouse/android/ads/ddddd;->_:Lcom/madhouse/android/ads/dddd;

    invoke-virtual {v0}, Lcom/madhouse/android/ads/dddd;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/madhouse/android/ads/ddddd;->_:Lcom/madhouse/android/ads/dddd;

    invoke-virtual {v0}, Lcom/madhouse/android/ads/dddd;->_()V

    iget-object v0, p0, Lcom/madhouse/android/ads/ddddd;->_:Lcom/madhouse/android/ads/dddd;

    iget-object v0, v0, Lcom/madhouse/android/ads/dddd;->_:Landroid/os/Handler;

    iget-object v1, p0, Lcom/madhouse/android/ads/ddddd;->_:Lcom/madhouse/android/ads/dddd;

    iget-wide v1, v1, Lcom/madhouse/android/ads/dddd;->___:J

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
