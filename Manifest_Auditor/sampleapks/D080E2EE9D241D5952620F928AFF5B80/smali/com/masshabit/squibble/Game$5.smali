.class Lcom/masshabit/squibble/Game$5;
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
    .line 519
    iput-object p1, p0, Lcom/masshabit/squibble/Game$5;->this$0:Lcom/masshabit/squibble/Game;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 523
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    iget-object v0, v0, Lcom/masshabit/common/Environment;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 524
    const/4 v0, 0x1

    return v0
.end method
