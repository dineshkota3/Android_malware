.class final Lcom/madhouse/android/ads/$$$;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic _:Lcom/madhouse/android/ads/_____;


# direct methods
.method constructor <init>(Lcom/madhouse/android/ads/_____;)V
    .locals 0

    iput-object p1, p0, Lcom/madhouse/android/ads/$$$;->_:Lcom/madhouse/android/ads/_____;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/madhouse/android/ads/$$$;->_:Lcom/madhouse/android/ads/_____;

    iget-object v0, v0, Lcom/madhouse/android/ads/_____;->___:Lcom/madhouse/android/ads/bbbb;

    invoke-virtual {v0}, Lcom/madhouse/android/ads/bbbb;->zoomOut()Z

    return-void
.end method
