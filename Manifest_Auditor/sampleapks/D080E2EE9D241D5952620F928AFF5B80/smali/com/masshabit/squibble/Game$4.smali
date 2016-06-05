.class Lcom/masshabit/squibble/Game$4;
.super Ljava/lang/Object;
.source "Game.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/masshabit/squibble/Game;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/masshabit/squibble/Game;


# direct methods
.method constructor <init>(Lcom/masshabit/squibble/Game;)V
    .locals 0

    .prologue
    .line 509
    iput-object p1, p0, Lcom/masshabit/squibble/Game$4;->this$0:Lcom/masshabit/squibble/Game;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 513
    sget-object v1, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    invoke-virtual {v1}, Lcom/masshabit/common/Environment;->getArtificiallyPaused()Z

    move-result v0

    .line 514
    .local v0, "paused":Z
    sget-object v1, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    if-nez v0, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Lcom/masshabit/common/Environment;->setArtificiallyPaused(Z)V

    .line 515
    return v3

    .line 514
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
