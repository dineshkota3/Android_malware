.class Lcom/masshabit/squibble/Game$1;
.super Ljava/lang/Object;
.source "Game.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/masshabit/squibble/Game;->threadedInit()V
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
    .line 176
    iput-object p1, p0, Lcom/masshabit/squibble/Game$1;->this$0:Lcom/masshabit/squibble/Game;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const-string v3, "Game"

    .line 181
    :try_start_0
    iget-object v1, p0, Lcom/masshabit/squibble/Game$1;->this$0:Lcom/masshabit/squibble/Game;

    iget-object v1, v1, Lcom/masshabit/squibble/Game;->mScreen:Lcom/masshabit/squibble/Screen;

    invoke-virtual {v1}, Lcom/masshabit/squibble/Screen;->init()V

    .line 182
    const-string v1, "Game"

    const-string v2, "STATE_LOAD_COMPLETE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v1, p0, Lcom/masshabit/squibble/Game$1;->this$0:Lcom/masshabit/squibble/Game;

    const/4 v2, 0x5

    iput v2, v1, Lcom/masshabit/squibble/Game;->mState:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    return-void

    .line 185
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 187
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 188
    const-string v1, "Game"

    const-string v1, "STATE_LOAD_FAILED"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v1, p0, Lcom/masshabit/squibble/Game$1;->this$0:Lcom/masshabit/squibble/Game;

    const/4 v2, 0x6

    iput v2, v1, Lcom/masshabit/squibble/Game;->mState:I

    goto :goto_0
.end method
