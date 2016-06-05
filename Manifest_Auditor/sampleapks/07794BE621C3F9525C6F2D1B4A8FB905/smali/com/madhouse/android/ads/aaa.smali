.class final Lcom/madhouse/android/ads/aaa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic _:Lcom/madhouse/android/ads/$$$$$;


# direct methods
.method constructor <init>(Lcom/madhouse/android/ads/$$$$$;)V
    .locals 0

    iput-object p1, p0, Lcom/madhouse/android/ads/aaa;->_:Lcom/madhouse/android/ads/$$$$$;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/madhouse/android/ads/aaa;->_:Lcom/madhouse/android/ads/$$$$$;

    iget-object v0, v0, Lcom/madhouse/android/ads/$$$$$;->___:Lcom/madhouse/android/ads/_____;

    iget-object v0, v0, Lcom/madhouse/android/ads/_____;->_____:Lcom/madhouse/android/ads/dd;

    invoke-virtual {v0}, Lcom/madhouse/android/ads/dd;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/madhouse/android/ads/aaa;->_:Lcom/madhouse/android/ads/$$$$$;

    iget-object v0, v0, Lcom/madhouse/android/ads/$$$$$;->___:Lcom/madhouse/android/ads/_____;

    iget-object v0, v0, Lcom/madhouse/android/ads/_____;->_____:Lcom/madhouse/android/ads/dd;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2, v3}, Lcom/madhouse/android/ads/dd;->_(IFF)V

    iget-object v0, v0, Lcom/madhouse/android/ads/dd;->___:Landroid/os/Handler;

    const v1, 0x823657

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/madhouse/android/ads/aaa;->_:Lcom/madhouse/android/ads/$$$$$;

    iget-object v0, v0, Lcom/madhouse/android/ads/$$$$$;->___:Lcom/madhouse/android/ads/_____;

    iget-object v0, v0, Lcom/madhouse/android/ads/_____;->_____:Lcom/madhouse/android/ads/dd;

    invoke-virtual {v0}, Lcom/madhouse/android/ads/dd;->_()V

    goto :goto_0
.end method
