.class final Lcom/madhouse/android/ads/ff;
.super Ljava/util/TimerTask;


# instance fields
.field private synthetic _:Lcom/madhouse/android/ads/AdView;


# direct methods
.method constructor <init>(Lcom/madhouse/android/ads/AdView;)V
    .locals 0

    iput-object p1, p0, Lcom/madhouse/android/ads/ff;->_:Lcom/madhouse/android/ads/AdView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/madhouse/android/ads/ff;->_:Lcom/madhouse/android/ads/AdView;

    invoke-virtual {v0}, Lcom/madhouse/android/ads/AdView;->_()V

    return-void
.end method
