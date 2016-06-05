.class public Lcom/masshabit/common/InputEventPool;
.super Lcom/masshabit/common/ObjectPool;
.source "InputEventPool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/masshabit/common/ObjectPool",
        "<",
        "Lcom/masshabit/common/InputEvent;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/masshabit/common/ObjectPool;-><init>()V

    .line 10
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/masshabit/common/ObjectPool;-><init>(I)V

    .line 15
    return-void
.end method


# virtual methods
.method protected fill()V
    .locals 3

    .prologue
    .line 20
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/masshabit/common/InputEventPool;->mData:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 22
    iget-object v1, p0, Lcom/masshabit/common/InputEventPool;->mData:[Ljava/lang/Object;

    new-instance v2, Lcom/masshabit/common/InputEvent;

    invoke-direct {v2, p0}, Lcom/masshabit/common/InputEvent;-><init>(Lcom/masshabit/common/InputEventPool;)V

    aput-object v2, v1, v0

    .line 20
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method
