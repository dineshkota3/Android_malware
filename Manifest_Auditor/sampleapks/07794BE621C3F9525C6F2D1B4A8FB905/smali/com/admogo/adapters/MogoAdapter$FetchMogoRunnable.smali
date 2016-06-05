.class Lcom/admogo/adapters/MogoAdapter$FetchMogoRunnable;
.super Ljava/lang/Object;
.source "MogoAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/admogo/adapters/MogoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FetchMogoRunnable"
.end annotation


# instance fields
.field private mogoAdapter:Lcom/admogo/adapters/MogoAdapter;


# direct methods
.method public constructor <init>(Lcom/admogo/adapters/MogoAdapter;)V
    .locals 0
    .param p1, "mogoAdapter"    # Lcom/admogo/adapters/MogoAdapter;

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p1, p0, Lcom/admogo/adapters/MogoAdapter$FetchMogoRunnable;->mogoAdapter:Lcom/admogo/adapters/MogoAdapter;

    .line 178
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 181
    iget-object v1, p0, Lcom/admogo/adapters/MogoAdapter$FetchMogoRunnable;->mogoAdapter:Lcom/admogo/adapters/MogoAdapter;

    iget-object v1, v1, Lcom/admogo/adapters/MogoAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admogo/AdMogoLayout;

    .line 182
    .local v0, "adMogoLayout":Lcom/admogo/AdMogoLayout;
    if-nez v0, :cond_0

    .line 194
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v1, v0, Lcom/admogo/AdMogoLayout;->adMogoManager:Lcom/admogo/AdMogoManager;

    .line 187
    iget-object v2, p0, Lcom/admogo/adapters/MogoAdapter$FetchMogoRunnable;->mogoAdapter:Lcom/admogo/adapters/MogoAdapter;

    iget-object v2, v2, Lcom/admogo/adapters/MogoAdapter;->ration:Lcom/admogo/obj/Ration;

    iget-object v2, v2, Lcom/admogo/obj/Ration;->nid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/admogo/AdMogoManager;->getMogo(Ljava/lang/String;)Lcom/admogo/obj/Mogo;

    move-result-object v1

    .line 186
    iput-object v1, v0, Lcom/admogo/AdMogoLayout;->mogo:Lcom/admogo/obj/Mogo;

    .line 188
    iget-object v1, v0, Lcom/admogo/AdMogoLayout;->mogo:Lcom/admogo/obj/Mogo;

    if-nez v1, :cond_1

    .line 189
    invoke-virtual {v0}, Lcom/admogo/AdMogoLayout;->rotateThreadedNow()V

    goto :goto_0

    .line 193
    :cond_1
    iget-object v1, v0, Lcom/admogo/AdMogoLayout;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/admogo/adapters/MogoAdapter$DisplayMogoRunnable;

    iget-object v3, p0, Lcom/admogo/adapters/MogoAdapter$FetchMogoRunnable;->mogoAdapter:Lcom/admogo/adapters/MogoAdapter;

    invoke-direct {v2, v3}, Lcom/admogo/adapters/MogoAdapter$DisplayMogoRunnable;-><init>(Lcom/admogo/adapters/MogoAdapter;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
