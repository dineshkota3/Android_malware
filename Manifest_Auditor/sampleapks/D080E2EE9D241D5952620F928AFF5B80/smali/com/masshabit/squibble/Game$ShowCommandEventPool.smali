.class public Lcom/masshabit/squibble/Game$ShowCommandEventPool;
.super Lcom/masshabit/common/ObjectPool;
.source "Game.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/masshabit/squibble/Game;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowCommandEventPool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/masshabit/common/ObjectPool",
        "<",
        "Lcom/masshabit/squibble/Game$ShowCommand;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/masshabit/squibble/Game;


# direct methods
.method public constructor <init>(Lcom/masshabit/squibble/Game;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/masshabit/squibble/Game$ShowCommandEventPool;->this$0:Lcom/masshabit/squibble/Game;

    invoke-direct {p0}, Lcom/masshabit/common/ObjectPool;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/masshabit/squibble/Game;I)V
    .locals 0
    .param p2, "size"    # I

    .prologue
    .line 93
    iput-object p1, p0, Lcom/masshabit/squibble/Game$ShowCommandEventPool;->this$0:Lcom/masshabit/squibble/Game;

    invoke-direct {p0, p2}, Lcom/masshabit/common/ObjectPool;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected fill()V
    .locals 4

    .prologue
    .line 97
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/masshabit/squibble/Game$ShowCommandEventPool;->mData:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/masshabit/squibble/Game$ShowCommandEventPool;->mData:[Ljava/lang/Object;

    new-instance v2, Lcom/masshabit/squibble/Game$ShowCommand;

    iget-object v3, p0, Lcom/masshabit/squibble/Game$ShowCommandEventPool;->this$0:Lcom/masshabit/squibble/Game;

    invoke-direct {v2, v3}, Lcom/masshabit/squibble/Game$ShowCommand;-><init>(Lcom/masshabit/squibble/Game;)V

    aput-object v2, v1, v0

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_0
    return-void
.end method
