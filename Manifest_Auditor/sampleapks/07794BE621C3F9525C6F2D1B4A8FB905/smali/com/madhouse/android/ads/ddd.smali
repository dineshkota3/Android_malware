.class final Lcom/madhouse/android/ads/ddd;
.super Landroid/os/Handler;


# instance fields
.field private synthetic _:Lcom/madhouse/android/ads/dd;


# direct methods
.method constructor <init>(Lcom/madhouse/android/ads/dd;)V
    .locals 0

    iput-object p1, p0, Lcom/madhouse/android/ads/ddd;->_:Lcom/madhouse/android/ads/dd;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x823657

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/madhouse/android/ads/ddd;->_:Lcom/madhouse/android/ads/dd;

    invoke-virtual {v0}, Lcom/madhouse/android/ads/dd;->_()V

    :cond_0
    return-void
.end method
