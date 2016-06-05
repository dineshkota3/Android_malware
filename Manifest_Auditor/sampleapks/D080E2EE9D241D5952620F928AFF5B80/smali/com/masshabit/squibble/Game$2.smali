.class Lcom/masshabit/squibble/Game$2;
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
    .line 491
    iput-object p1, p0, Lcom/masshabit/squibble/Game$2;->this$0:Lcom/masshabit/squibble/Game;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 495
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    sget-object v1, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    iget-boolean v1, v1, Lcom/masshabit/common/Environment;->mDrawPhysics:Z

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/masshabit/common/Environment;->mDrawPhysics:Z

    .line 496
    return v2

    .line 495
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
