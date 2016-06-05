.class final Lcom/madhouse/android/ads/bbb;
.super Ljava/util/TimerTask;


# instance fields
.field private synthetic _:Lcom/madhouse/android/ads/bb;


# direct methods
.method constructor <init>(Lcom/madhouse/android/ads/bb;)V
    .locals 0

    iput-object p1, p0, Lcom/madhouse/android/ads/bbb;->_:Lcom/madhouse/android/ads/bb;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/madhouse/android/ads/bbb;->_:Lcom/madhouse/android/ads/bb;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/madhouse/android/ads/bb;->$$:Z

    return-void
.end method
