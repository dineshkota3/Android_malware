.class Lcom/masshabit/squibble/Game$3;
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
    .line 500
    iput-object p1, p0, Lcom/masshabit/squibble/Game$3;->this$0:Lcom/masshabit/squibble/Game;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 504
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    iget-object v0, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    invoke-virtual {v0}, Lcom/masshabit/common/Level;->debugDumpResourceMaps()V

    .line 505
    const/4 v0, 0x1

    return v0
.end method
