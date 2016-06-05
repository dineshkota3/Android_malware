.class Lcom/admogo/adapters/CustomAdapter$FetchCustomRunnable;
.super Ljava/lang/Object;
.source "CustomAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/admogo/adapters/CustomAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FetchCustomRunnable"
.end annotation


# instance fields
.field private customAdapter:Lcom/admogo/adapters/CustomAdapter;


# direct methods
.method public constructor <init>(Lcom/admogo/adapters/CustomAdapter;)V
    .locals 0
    .param p1, "customAdapter"    # Lcom/admogo/adapters/CustomAdapter;

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p1, p0, Lcom/admogo/adapters/CustomAdapter$FetchCustomRunnable;->customAdapter:Lcom/admogo/adapters/CustomAdapter;

    .line 178
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 181
    iget-object v1, p0, Lcom/admogo/adapters/CustomAdapter$FetchCustomRunnable;->customAdapter:Lcom/admogo/adapters/CustomAdapter;

    iget-object v1, v1, Lcom/admogo/adapters/CustomAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    .line 182
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admogo/AdMogoLayout;

    .line 183
    .local v0, "adMogoLayout":Lcom/admogo/AdMogoLayout;
    if-nez v0, :cond_0

    .line 195
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v1, v0, Lcom/admogo/AdMogoLayout;->adMogoManager:Lcom/admogo/AdMogoManager;

    .line 188
    iget-object v2, p0, Lcom/admogo/adapters/CustomAdapter$FetchCustomRunnable;->customAdapter:Lcom/admogo/adapters/CustomAdapter;

    iget-object v2, v2, Lcom/admogo/adapters/CustomAdapter;->ration:Lcom/admogo/obj/Ration;

    iget-object v2, v2, Lcom/admogo/obj/Ration;->nid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/admogo/AdMogoManager;->getCustom(Ljava/lang/String;)Lcom/admogo/obj/Custom;

    move-result-object v1

    .line 187
    iput-object v1, v0, Lcom/admogo/AdMogoLayout;->custom:Lcom/admogo/obj/Custom;

    .line 189
    iget-object v1, v0, Lcom/admogo/AdMogoLayout;->custom:Lcom/admogo/obj/Custom;

    if-nez v1, :cond_1

    .line 190
    invoke-virtual {v0}, Lcom/admogo/AdMogoLayout;->rotateThreadedNow()V

    goto :goto_0

    .line 194
    :cond_1
    iget-object v1, v0, Lcom/admogo/AdMogoLayout;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/admogo/adapters/CustomAdapter$DisplayCustomRunnable;

    iget-object v3, p0, Lcom/admogo/adapters/CustomAdapter$FetchCustomRunnable;->customAdapter:Lcom/admogo/adapters/CustomAdapter;

    invoke-direct {v2, v3}, Lcom/admogo/adapters/CustomAdapter$DisplayCustomRunnable;-><init>(Lcom/admogo/adapters/CustomAdapter;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
