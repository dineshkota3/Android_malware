.class final Lcom/madhouse/android/ads/aa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic _:Lcom/madhouse/android/ads/$$$$$;


# direct methods
.method constructor <init>(Lcom/madhouse/android/ads/$$$$$;)V
    .locals 0

    iput-object p1, p0, Lcom/madhouse/android/ads/aa;->_:Lcom/madhouse/android/ads/$$$$$;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/madhouse/android/ads/aa;->_:Lcom/madhouse/android/ads/$$$$$;

    iget-object v0, v0, Lcom/madhouse/android/ads/$$$$$;->___:Lcom/madhouse/android/ads/_____;

    iget-object v0, v0, Lcom/madhouse/android/ads/_____;->___:Lcom/madhouse/android/ads/bbbb;

    invoke-virtual {v0}, Lcom/madhouse/android/ads/bbbb;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/madhouse/android/ads/aa;->_:Lcom/madhouse/android/ads/$$$$$;

    iget-object v0, v0, Lcom/madhouse/android/ads/$$$$$;->___:Lcom/madhouse/android/ads/_____;

    iget-object v0, v0, Lcom/madhouse/android/ads/_____;->___:Lcom/madhouse/android/ads/bbbb;

    invoke-virtual {v0}, Lcom/madhouse/android/ads/bbbb;->goForward()V

    iget-object v0, p0, Lcom/madhouse/android/ads/aa;->_:Lcom/madhouse/android/ads/$$$$$;

    invoke-virtual {v0}, Lcom/madhouse/android/ads/$$$$$;->_()V

    iget-object v0, p0, Lcom/madhouse/android/ads/aa;->_:Lcom/madhouse/android/ads/$$$$$;

    iget-object v0, v0, Lcom/madhouse/android/ads/$$$$$;->___:Lcom/madhouse/android/ads/_____;

    iget-object v0, v0, Lcom/madhouse/android/ads/_____;->___:Lcom/madhouse/android/ads/bbbb;

    invoke-virtual {v0}, Lcom/madhouse/android/ads/bbbb;->canGoForward()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/madhouse/android/ads/aa;->_:Lcom/madhouse/android/ads/$$$$$;

    iget-object v0, v0, Lcom/madhouse/android/ads/$$$$$;->___:Lcom/madhouse/android/ads/_____;

    iget-object v0, v0, Lcom/madhouse/android/ads/_____;->___:Lcom/madhouse/android/ads/bbbb;

    invoke-virtual {v0}, Lcom/madhouse/android/ads/bbbb;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/madhouse/android/ads/aa;->_:Lcom/madhouse/android/ads/$$$$$;

    iget-object v0, v0, Lcom/madhouse/android/ads/$$$$$;->_:Lcom/madhouse/android/ads/aaaaa;

    invoke-virtual {v0}, Lcom/madhouse/android/ads/aaaaa;->requestFocus()Z

    :cond_0
    return-void
.end method
