.class public Lcom/masshabit/common/Deque;
.super Ljava/lang/Object;
.source "Deque.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected mCount:I

.field protected mData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field protected mHead:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .local p0, "this":Lcom/masshabit/common/Deque;, "Lcom/masshabit/common/Deque<TT;>;"
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput v0, p0, Lcom/masshabit/common/Deque;->mHead:I

    .line 9
    iput v0, p0, Lcom/masshabit/common/Deque;->mCount:I

    .line 14
    if-lt p1, v1, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 15
    new-array v0, p1, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/masshabit/common/Deque;->mData:[Ljava/lang/Object;

    .line 16
    return-void
.end method


# virtual methods
.method public empty()V
    .locals 4

    .prologue
    .local p0, "this":Lcom/masshabit/common/Deque;, "Lcom/masshabit/common/Deque<TT;>;"
    const/4 v3, 0x0

    .line 31
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/masshabit/common/Deque;->mData:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 33
    iget-object v1, p0, Lcom/masshabit/common/Deque;->mData:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 35
    :cond_0
    iput v3, p0, Lcom/masshabit/common/Deque;->mCount:I

    .line 36
    iput v3, p0, Lcom/masshabit/common/Deque;->mHead:I

    .line 37
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/masshabit/common/Deque;, "Lcom/masshabit/common/Deque<TT;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 40
    const-string v1, "index cannot be negative"

    if-ltz p1, :cond_1

    move v2, v4

    :goto_0
    invoke-static {v1, v2}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 41
    const-string v1, "index out of range"

    iget v2, p0, Lcom/masshabit/common/Deque;->mCount:I

    if-ge p1, v2, :cond_2

    move v2, v4

    :goto_1
    invoke-static {v1, v2}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 42
    iget v1, p0, Lcom/masshabit/common/Deque;->mHead:I

    iget v2, p0, Lcom/masshabit/common/Deque;->mCount:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/masshabit/common/Deque;->mData:[Ljava/lang/Object;

    array-length v2, v2

    rem-int v0, v1, v2

    .line 43
    .local v0, "i":I
    if-gez v0, :cond_0

    .line 44
    iget-object v1, p0, Lcom/masshabit/common/Deque;->mData:[Ljava/lang/Object;

    array-length v1, v1

    add-int/2addr v0, v1

    .line 45
    :cond_0
    iget-object v1, p0, Lcom/masshabit/common/Deque;->mData:[Ljava/lang/Object;

    aget-object v1, v1, v0

    return-object v1

    .end local v0    # "i":I
    :cond_1
    move v2, v3

    .line 40
    goto :goto_0

    :cond_2
    move v2, v3

    .line 41
    goto :goto_1
.end method

.method public getCapacity()I
    .locals 1

    .prologue
    .line 19
    .local p0, "this":Lcom/masshabit/common/Deque;, "Lcom/masshabit/common/Deque<TT;>;"
    iget-object v0, p0, Lcom/masshabit/common/Deque;->mData:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 23
    .local p0, "this":Lcom/masshabit/common/Deque;, "Lcom/masshabit/common/Deque<TT;>;"
    iget v0, p0, Lcom/masshabit/common/Deque;->mCount:I

    return v0
.end method

.method public getSpace()I
    .locals 2

    .prologue
    .line 27
    .local p0, "this":Lcom/masshabit/common/Deque;, "Lcom/masshabit/common/Deque<TT;>;"
    iget-object v0, p0, Lcom/masshabit/common/Deque;->mData:[Ljava/lang/Object;

    array-length v0, v0

    iget v1, p0, Lcom/masshabit/common/Deque;->mCount:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public peek_back()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lcom/masshabit/common/Deque;, "Lcom/masshabit/common/Deque<TT;>;"
    const-string v0, "peek_back on empty deque"

    iget v1, p0, Lcom/masshabit/common/Deque;->mCount:I

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 75
    iget-object v0, p0, Lcom/masshabit/common/Deque;->mData:[Ljava/lang/Object;

    iget v1, p0, Lcom/masshabit/common/Deque;->mHead:I

    aget-object v0, v0, v1

    return-object v0

    .line 74
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public peek_front()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lcom/masshabit/common/Deque;, "Lcom/masshabit/common/Deque<TT;>;"
    const-string v1, "peek_front on empty deque"

    iget v2, p0, Lcom/masshabit/common/Deque;->mCount:I

    if-ltz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v1, v2}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 97
    iget v1, p0, Lcom/masshabit/common/Deque;->mHead:I

    iget v2, p0, Lcom/masshabit/common/Deque;->mCount:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/masshabit/common/Deque;->mData:[Ljava/lang/Object;

    array-length v2, v2

    rem-int v0, v1, v2

    .line 98
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 99
    iget-object v1, p0, Lcom/masshabit/common/Deque;->mData:[Ljava/lang/Object;

    array-length v1, v1

    add-int/2addr v0, v1

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/masshabit/common/Deque;->mData:[Ljava/lang/Object;

    aget-object v1, v1, v0

    return-object v1

    .line 96
    .end local v0    # "index":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public pop_back()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/masshabit/common/Deque;, "Lcom/masshabit/common/Deque<TT;>;"
    const/4 v4, 0x1

    .line 64
    const-string v1, "pop_back on empty deque"

    iget v2, p0, Lcom/masshabit/common/Deque;->mCount:I

    if-ltz v2, :cond_1

    move v2, v4

    :goto_0
    invoke-static {v1, v2}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 65
    iget-object v1, p0, Lcom/masshabit/common/Deque;->mData:[Ljava/lang/Object;

    iget v2, p0, Lcom/masshabit/common/Deque;->mHead:I

    sub-int v3, v2, v4

    iput v3, p0, Lcom/masshabit/common/Deque;->mHead:I

    aget-object v0, v1, v2

    .line 66
    .local v0, "item":Ljava/lang/Object;, "TT;"
    iget v1, p0, Lcom/masshabit/common/Deque;->mHead:I

    iget-object v2, p0, Lcom/masshabit/common/Deque;->mData:[Ljava/lang/Object;

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/masshabit/common/Deque;->mHead:I

    .line 67
    iget v1, p0, Lcom/masshabit/common/Deque;->mHead:I

    if-gez v1, :cond_0

    .line 68
    iget v1, p0, Lcom/masshabit/common/Deque;->mHead:I

    iget-object v2, p0, Lcom/masshabit/common/Deque;->mData:[Ljava/lang/Object;

    array-length v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/masshabit/common/Deque;->mHead:I

    .line 69
    :cond_0
    iget v1, p0, Lcom/masshabit/common/Deque;->mCount:I

    sub-int/2addr v1, v4

    iput v1, p0, Lcom/masshabit/common/Deque;->mCount:I

    .line 70
    return-object v0

    .line 64
    .end local v0    # "item":Ljava/lang/Object;, "TT;"
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public pop_front()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/masshabit/common/Deque;, "Lcom/masshabit/common/Deque<TT;>;"
    const/4 v3, 0x1

    .line 88
    const-string v1, "pop_front on empty deque"

    iget v2, p0, Lcom/masshabit/common/Deque;->mCount:I

    if-ltz v2, :cond_1

    move v2, v3

    :goto_0
    invoke-static {v1, v2}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 89
    iget v1, p0, Lcom/masshabit/common/Deque;->mHead:I

    iget v2, p0, Lcom/masshabit/common/Deque;->mCount:I

    sub-int v3, v2, v3

    iput v3, p0, Lcom/masshabit/common/Deque;->mCount:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/masshabit/common/Deque;->mData:[Ljava/lang/Object;

    array-length v2, v2

    rem-int v0, v1, v2

    .line 90
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 91
    iget-object v1, p0, Lcom/masshabit/common/Deque;->mData:[Ljava/lang/Object;

    array-length v1, v1

    add-int/2addr v0, v1

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/masshabit/common/Deque;->mData:[Ljava/lang/Object;

    aget-object v1, v1, v0

    return-object v1

    .line 88
    .end local v0    # "index":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public push_back(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lcom/masshabit/common/Deque;, "Lcom/masshabit/common/Deque<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    const-string v0, "push_back on full deque"

    iget v1, p0, Lcom/masshabit/common/Deque;->mCount:I

    iget-object v2, p0, Lcom/masshabit/common/Deque;->mData:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 59
    iget-object v0, p0, Lcom/masshabit/common/Deque;->mData:[Ljava/lang/Object;

    iget v1, p0, Lcom/masshabit/common/Deque;->mHead:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/masshabit/common/Deque;->mHead:I

    iget-object v2, p0, Lcom/masshabit/common/Deque;->mData:[Ljava/lang/Object;

    array-length v2, v2

    rem-int/2addr v1, v2

    aput-object p1, v0, v1

    .line 60
    iget v0, p0, Lcom/masshabit/common/Deque;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/masshabit/common/Deque;->mCount:I

    .line 61
    return-void

    .line 58
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public push_front(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lcom/masshabit/common/Deque;, "Lcom/masshabit/common/Deque<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    const-string v1, "push_front on full deque"

    iget v2, p0, Lcom/masshabit/common/Deque;->mCount:I

    iget-object v3, p0, Lcom/masshabit/common/Deque;->mData:[Ljava/lang/Object;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v1, v2}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 80
    iget v1, p0, Lcom/masshabit/common/Deque;->mHead:I

    iget v2, p0, Lcom/masshabit/common/Deque;->mCount:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/masshabit/common/Deque;->mData:[Ljava/lang/Object;

    array-length v2, v2

    rem-int v0, v1, v2

    .line 81
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 82
    iget-object v1, p0, Lcom/masshabit/common/Deque;->mData:[Ljava/lang/Object;

    array-length v1, v1

    add-int/2addr v0, v1

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/masshabit/common/Deque;->mData:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 84
    iget v1, p0, Lcom/masshabit/common/Deque;->mCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/masshabit/common/Deque;->mCount:I

    .line 85
    return-void

    .line 79
    .end local v0    # "index":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public set(ILjava/lang/Object;)V
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/masshabit/common/Deque;, "Lcom/masshabit/common/Deque<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 49
    const-string v1, "index cannot be negative"

    if-ltz p1, :cond_1

    move v2, v4

    :goto_0
    invoke-static {v1, v2}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 50
    const-string v1, "index out of range"

    iget v2, p0, Lcom/masshabit/common/Deque;->mCount:I

    if-ge p1, v2, :cond_2

    move v2, v4

    :goto_1
    invoke-static {v1, v2}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 51
    iget v1, p0, Lcom/masshabit/common/Deque;->mHead:I

    iget v2, p0, Lcom/masshabit/common/Deque;->mCount:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/masshabit/common/Deque;->mData:[Ljava/lang/Object;

    array-length v2, v2

    rem-int v0, v1, v2

    .line 52
    .local v0, "i":I
    if-gez v0, :cond_0

    .line 53
    iget-object v1, p0, Lcom/masshabit/common/Deque;->mData:[Ljava/lang/Object;

    array-length v1, v1

    add-int/2addr v0, v1

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/masshabit/common/Deque;->mData:[Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 55
    return-void

    .end local v0    # "i":I
    :cond_1
    move v2, v3

    .line 49
    goto :goto_0

    :cond_2
    move v2, v3

    .line 50
    goto :goto_1
.end method
