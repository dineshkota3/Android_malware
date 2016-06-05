.class public abstract Lcom/masshabit/common/ObjectPool;
.super Ljava/lang/Object;
.source "ObjectPool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_SIZE:I = 0x20


# instance fields
.field protected mCount:I

.field protected mData:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    .local p0, "this":Lcom/masshabit/common/ObjectPool;, "Lcom/masshabit/common/ObjectPool<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/masshabit/common/ObjectPool;->setSize(I)V

    .line 15
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 18
    .local p0, "this":Lcom/masshabit/common/ObjectPool;, "Lcom/masshabit/common/ObjectPool<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-direct {p0, p1}, Lcom/masshabit/common/ObjectPool;->setSize(I)V

    .line 20
    return-void
.end method

.method private setSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 48
    .local p0, "this":Lcom/masshabit/common/ObjectPool;, "Lcom/masshabit/common/ObjectPool<TT;>;"
    iput p1, p0, Lcom/masshabit/common/ObjectPool;->mCount:I

    .line 49
    iget v0, p0, Lcom/masshabit/common/ObjectPool;->mCount:I

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/masshabit/common/ObjectPool;->mData:[Ljava/lang/Object;

    .line 50
    invoke-virtual {p0}, Lcom/masshabit/common/ObjectPool;->fill()V

    .line 51
    return-void
.end method


# virtual methods
.method public allocate()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, "this":Lcom/masshabit/common/ObjectPool;, "Lcom/masshabit/common/ObjectPool<TT;>;"
    iget v0, p0, Lcom/masshabit/common/ObjectPool;->mCount:I

    if-lez v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/masshabit/common/ObjectPool;->mData:[Ljava/lang/Object;

    iget v1, p0, Lcom/masshabit/common/ObjectPool;->mCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/masshabit/common/ObjectPool;->mCount:I

    aget-object v0, v0, v1

    .line 31
    :goto_0
    return-object v0

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Object pool of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " exhausted!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 31
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract fill()V
.end method

.method public getAllocatedCount()I
    .locals 2

    .prologue
    .line 43
    .local p0, "this":Lcom/masshabit/common/ObjectPool;, "Lcom/masshabit/common/ObjectPool<TT;>;"
    iget-object v0, p0, Lcom/masshabit/common/ObjectPool;->mData:[Ljava/lang/Object;

    array-length v0, v0

    iget v1, p0, Lcom/masshabit/common/ObjectPool;->mCount:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getAvailable()I
    .locals 1

    .prologue
    .line 67
    .local p0, "this":Lcom/masshabit/common/ObjectPool;, "Lcom/masshabit/common/ObjectPool<TT;>;"
    iget v0, p0, Lcom/masshabit/common/ObjectPool;->mCount:I

    return v0
.end method

.method protected getData()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 57
    .local p0, "this":Lcom/masshabit/common/ObjectPool;, "Lcom/masshabit/common/ObjectPool<TT;>;"
    iget-object v0, p0, Lcom/masshabit/common/ObjectPool;->mData:[Ljava/lang/Object;

    return-object v0
.end method

.method protected getSize()I
    .locals 1

    .prologue
    .line 62
    .local p0, "this":Lcom/masshabit/common/ObjectPool;, "Lcom/masshabit/common/ObjectPool<TT;>;"
    iget-object v0, p0, Lcom/masshabit/common/ObjectPool;->mData:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public release(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lcom/masshabit/common/ObjectPool;, "Lcom/masshabit/common/ObjectPool<TT;>;"
    .local p1, "entry":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/masshabit/common/ObjectPool;->mData:[Ljava/lang/Object;

    iget v1, p0, Lcom/masshabit/common/ObjectPool;->mCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/masshabit/common/ObjectPool;->mCount:I

    aput-object p1, v0, v1

    .line 38
    return-void
.end method
