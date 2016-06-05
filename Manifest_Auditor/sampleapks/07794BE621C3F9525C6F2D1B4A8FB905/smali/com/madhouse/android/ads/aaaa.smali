.class final Lcom/madhouse/android/ads/aaaa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic _:Lcom/madhouse/android/ads/$$$$$;


# direct methods
.method constructor <init>(Lcom/madhouse/android/ads/$$$$$;)V
    .locals 0

    iput-object p1, p0, Lcom/madhouse/android/ads/aaaa;->_:Lcom/madhouse/android/ads/$$$$$;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/madhouse/android/ads/aaaa;->_:Lcom/madhouse/android/ads/$$$$$;

    iget-object v0, v0, Lcom/madhouse/android/ads/$$$$$;->___:Lcom/madhouse/android/ads/_____;

    iget-boolean v0, v0, Lcom/madhouse/android/ads/_____;->_:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/madhouse/android/ads/aaaa;->_:Lcom/madhouse/android/ads/$$$$$;

    iget-object v0, v0, Lcom/madhouse/android/ads/$$$$$;->___:Lcom/madhouse/android/ads/_____;

    invoke-virtual {v0}, Lcom/madhouse/android/ads/_____;->_()V

    iget-object v0, p0, Lcom/madhouse/android/ads/aaaa;->_:Lcom/madhouse/android/ads/$$$$$;

    iget-object v0, v0, Lcom/madhouse/android/ads/$$$$$;->___:Lcom/madhouse/android/ads/_____;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/madhouse/android/ads/_____;->_:Z

    :cond_0
    return-void
.end method
