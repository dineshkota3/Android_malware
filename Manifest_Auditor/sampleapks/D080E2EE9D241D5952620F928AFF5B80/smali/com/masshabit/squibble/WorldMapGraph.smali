.class public Lcom/masshabit/squibble/WorldMapGraph;
.super Ljava/lang/Object;
.source "WorldMapGraph.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/masshabit/squibble/WorldMapGraph$NodeDistanceComparator;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "WorldMapGraph"


# instance fields
.field protected mDistance:[F

.field protected final mNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/masshabit/squibble/WorldMapNode;",
            ">;"
        }
    .end annotation
.end field

.field protected mPrevious:[I

.field public mRoot:Lcom/masshabit/squibble/WorldMapNode;

.field protected mVisited:[Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/masshabit/squibble/WorldMapGraph;->mNodes:Ljava/util/ArrayList;

    .line 34
    return-void
.end method


# virtual methods
.method public checkTap(FF)Lcom/masshabit/squibble/WorldMapNode;
    .locals 10
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    .line 44
    const/4 v0, 0x0

    .line 45
    .local v0, "closest":Lcom/masshabit/squibble/WorldMapNode;
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 47
    .local v1, "distSq":F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v7, p0, Lcom/masshabit/squibble/WorldMapGraph;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_1

    .line 49
    iget-object v7, p0, Lcom/masshabit/squibble/WorldMapGraph;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/masshabit/squibble/WorldMapNode;

    .line 51
    .local v6, "n":Lcom/masshabit/squibble/WorldMapNode;
    iget-object v7, v6, Lcom/masshabit/squibble/WorldMapNode;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v7, v7, Lcom/masshabit/common/physics/Vector2;->x:F

    sub-float v7, p1, v7

    iget v8, v6, Lcom/masshabit/squibble/WorldMapNode;->mWidth:F

    div-float/2addr v8, v9

    sub-float v3, v7, v8

    .line 52
    .local v3, "dx":F
    iget-object v7, v6, Lcom/masshabit/squibble/WorldMapNode;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v7, v7, Lcom/masshabit/common/physics/Vector2;->y:F

    sub-float v7, p2, v7

    iget v8, v6, Lcom/masshabit/squibble/WorldMapNode;->mHeight:F

    div-float/2addr v8, v9

    sub-float v4, v7, v8

    .line 53
    .local v4, "dy":F
    mul-float v7, v3, v3

    mul-float v8, v4, v4

    add-float v2, v7, v8

    .line 55
    .local v2, "dsq":F
    cmpg-float v7, v2, v1

    if-gez v7, :cond_0

    .line 57
    move v1, v2

    .line 58
    move-object v0, v6

    .line 47
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 62
    .end local v2    # "dsq":F
    .end local v3    # "dx":F
    .end local v4    # "dy":F
    .end local v6    # "n":Lcom/masshabit/squibble/WorldMapNode;
    :cond_1
    if-eqz v0, :cond_2

    const/high16 v7, 0x44c80000    # 1600.0f

    cmpg-float v7, v1, v7

    if-gtz v7, :cond_2

    move-object v7, v0

    .line 66
    :goto_1
    return-object v7

    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method

.method protected dijkstra(Lcom/masshabit/squibble/WorldMapNode;Lcom/masshabit/squibble/WorldMapNode;)Z
    .locals 13
    .param p1, "from"    # Lcom/masshabit/squibble/WorldMapNode;
    .param p2, "to"    # Lcom/masshabit/squibble/WorldMapNode;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 120
    iget-object v8, p0, Lcom/masshabit/squibble/WorldMapGraph;->mDistance:[F

    iget v9, p1, Lcom/masshabit/squibble/WorldMapNode;->mNodeIndex:I

    const/4 v10, 0x0

    aput v10, v8, v9

    .line 122
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_0
    iget-object v8, p0, Lcom/masshabit/squibble/WorldMapGraph;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_9

    .line 126
    const/4 v7, 0x0

    .line 127
    .local v7, "smallestNodeDist":I
    const/high16 v6, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 128
    .local v6, "nearestDistance":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v8, p0, Lcom/masshabit/squibble/WorldMapGraph;->mDistance:[F

    array-length v8, v8

    if-ge v3, v8, :cond_1

    .line 130
    iget-object v8, p0, Lcom/masshabit/squibble/WorldMapGraph;->mVisited:[Z

    aget-boolean v8, v8, v3

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/masshabit/squibble/WorldMapGraph;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/masshabit/squibble/WorldMapNode;

    invoke-virtual {v8}, Lcom/masshabit/squibble/WorldMapNode;->getState()I

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/masshabit/squibble/WorldMapGraph;->mDistance:[F

    aget v8, v8, v3

    cmpg-float v8, v8, v6

    if-gez v8, :cond_0

    .line 134
    move v7, v3

    .line 135
    iget-object v8, p0, Lcom/masshabit/squibble/WorldMapGraph;->mDistance:[F

    aget v6, v8, v3

    .line 128
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 139
    :cond_1
    iget-object v8, p0, Lcom/masshabit/squibble/WorldMapGraph;->mDistance:[F

    aget v8, v8, v7

    const/high16 v9, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v8, v8, v9

    if-nez v8, :cond_2

    move v8, v12

    .line 198
    .end local v3    # "i":I
    .end local v6    # "nearestDistance":F
    .end local v7    # "smallestNodeDist":I
    :goto_2
    return v8

    .line 145
    .restart local v3    # "i":I
    .restart local v6    # "nearestDistance":F
    .restart local v7    # "smallestNodeDist":I
    :cond_2
    iget-object v8, p0, Lcom/masshabit/squibble/WorldMapGraph;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/masshabit/squibble/WorldMapNode;

    .line 149
    .local v5, "nearest":Lcom/masshabit/squibble/WorldMapNode;
    iget-object v8, p0, Lcom/masshabit/squibble/WorldMapGraph;->mVisited:[Z

    aput-boolean v11, v8, v7

    .line 151
    if-ne v5, p2, :cond_3

    .line 153
    const-string v8, "WorldMapGraph"

    const-string v9, "Aborting, found target node"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v11

    .line 154
    goto :goto_2

    .line 160
    :cond_3
    const/4 v3, 0x0

    :goto_3
    iget-object v8, v5, Lcom/masshabit/squibble/WorldMapNode;->mConnectionList:[I

    array-length v8, v8

    if-ge v3, v8, :cond_8

    .line 162
    iget-object v8, v5, Lcom/masshabit/squibble/WorldMapNode;->mConnectionList:[I

    aget v0, v8, v3

    .line 164
    .local v0, "adjacent":I
    iget-object v8, p0, Lcom/masshabit/squibble/WorldMapGraph;->mVisited:[Z

    aget-boolean v8, v8, v0

    if-eqz v8, :cond_5

    .line 160
    :cond_4
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 167
    :cond_5
    iget-object v8, p0, Lcom/masshabit/squibble/WorldMapGraph;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/masshabit/squibble/WorldMapNode;

    .line 173
    .local v1, "adjacentNode":Lcom/masshabit/squibble/WorldMapNode;
    invoke-virtual {v5}, Lcom/masshabit/squibble/WorldMapNode;->getState()I

    move-result v8

    if-ne v8, v11, :cond_6

    iget-object v8, v5, Lcom/masshabit/squibble/WorldMapNode;->mPaths:[Lcom/masshabit/squibble/WorldMapNode$Connection;

    aget-object v8, v8, v3

    iget-boolean v8, v8, Lcom/masshabit/squibble/WorldMapNode$Connection;->mPathReverse:Z

    if-eqz v8, :cond_4

    .line 180
    :cond_6
    invoke-virtual {v1}, Lcom/masshabit/squibble/WorldMapNode;->getState()I

    move-result v8

    if-ne v8, v11, :cond_7

    iget-object v8, v5, Lcom/masshabit/squibble/WorldMapNode;->mPaths:[Lcom/masshabit/squibble/WorldMapNode$Connection;

    aget-object v8, v8, v3

    iget-boolean v8, v8, Lcom/masshabit/squibble/WorldMapNode$Connection;->mPathReverse:Z

    if-nez v8, :cond_4

    .line 186
    :cond_7
    iget-object v8, p0, Lcom/masshabit/squibble/WorldMapGraph;->mDistance:[F

    iget v9, v5, Lcom/masshabit/squibble/WorldMapNode;->mNodeIndex:I

    aget v8, v8, v9

    iget-object v9, v5, Lcom/masshabit/squibble/WorldMapNode;->mPaths:[Lcom/masshabit/squibble/WorldMapNode$Connection;

    aget-object v9, v9, v3

    iget-object v9, v9, Lcom/masshabit/squibble/WorldMapNode$Connection;->mPath:Lcom/masshabit/squibble/WorldMapPath;

    invoke-virtual {v9}, Lcom/masshabit/squibble/WorldMapPath;->getLength()F

    move-result v9

    add-float v2, v8, v9

    .line 190
    .local v2, "dist":F
    iget-object v8, p0, Lcom/masshabit/squibble/WorldMapGraph;->mDistance:[F

    aget v8, v8, v0

    cmpg-float v8, v2, v8

    if-gez v8, :cond_4

    .line 193
    iget-object v8, p0, Lcom/masshabit/squibble/WorldMapGraph;->mDistance:[F

    aput v2, v8, v0

    .line 194
    iget-object v8, p0, Lcom/masshabit/squibble/WorldMapGraph;->mPrevious:[I

    iget v9, v5, Lcom/masshabit/squibble/WorldMapNode;->mNodeIndex:I

    aput v9, v8, v0

    goto :goto_4

    .line 122
    .end local v0    # "adjacent":I
    .end local v1    # "adjacentNode":Lcom/masshabit/squibble/WorldMapNode;
    .end local v2    # "dist":F
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .end local v3    # "i":I
    .end local v5    # "nearest":Lcom/masshabit/squibble/WorldMapNode;
    .end local v6    # "nearestDistance":F
    .end local v7    # "smallestNodeDist":I
    :cond_9
    move v8, v12

    .line 198
    goto :goto_2
.end method

.method public findPath(Lcom/masshabit/squibble/WorldMapNode;Lcom/masshabit/squibble/WorldMapNode;Lcom/masshabit/common/Deque;)Z
    .locals 5
    .param p1, "from"    # Lcom/masshabit/squibble/WorldMapNode;
    .param p2, "to"    # Lcom/masshabit/squibble/WorldMapNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/masshabit/squibble/WorldMapNode;",
            "Lcom/masshabit/squibble/WorldMapNode;",
            "Lcom/masshabit/common/Deque",
            "<",
            "Lcom/masshabit/squibble/WorldMapNode;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, "result":Lcom/masshabit/common/Deque;, "Lcom/masshabit/common/Deque<Lcom/masshabit/squibble/WorldMapNode;>;"
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 95
    iget-object v1, p0, Lcom/masshabit/squibble/WorldMapGraph;->mDistance:[F

    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 96
    iget-object v1, p0, Lcom/masshabit/squibble/WorldMapGraph;->mPrevious:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([II)V

    .line 97
    iget-object v1, p0, Lcom/masshabit/squibble/WorldMapGraph;->mVisited:[Z

    invoke-static {v1, v4}, Ljava/util/Arrays;->fill([ZZ)V

    .line 99
    invoke-virtual {p0, p1, p2}, Lcom/masshabit/squibble/WorldMapGraph;->dijkstra(Lcom/masshabit/squibble/WorldMapNode;Lcom/masshabit/squibble/WorldMapNode;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    invoke-virtual {p3}, Lcom/masshabit/common/Deque;->empty()V

    .line 104
    invoke-virtual {p3, p2}, Lcom/masshabit/common/Deque;->push_front(Ljava/lang/Object;)V

    .line 105
    iget v0, p2, Lcom/masshabit/squibble/WorldMapNode;->mNodeIndex:I

    .line 106
    .local v0, "current":I
    :goto_0
    iget-object v1, p0, Lcom/masshabit/squibble/WorldMapGraph;->mPrevious:[I

    aget v1, v1, v0

    if-eq v1, v3, :cond_0

    .line 108
    iget-object v1, p0, Lcom/masshabit/squibble/WorldMapGraph;->mPrevious:[I

    aget v0, v1, v0

    .line 109
    iget-object v1, p0, Lcom/masshabit/squibble/WorldMapGraph;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/masshabit/common/Deque;->push_front(Ljava/lang/Object;)V

    goto :goto_0

    .line 111
    :cond_0
    const/4 v1, 0x1

    .line 113
    .end local v0    # "current":I
    :goto_1
    return v1

    :cond_1
    move v1, v4

    goto :goto_1
.end method

.method public init(Lcom/masshabit/squibble/WorldMapNode;)V
    .locals 3
    .param p1, "root"    # Lcom/masshabit/squibble/WorldMapNode;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/masshabit/squibble/WorldMapGraph;->mRoot:Lcom/masshabit/squibble/WorldMapNode;

    .line 74
    iget-object v1, p0, Lcom/masshabit/squibble/WorldMapGraph;->mRoot:Lcom/masshabit/squibble/WorldMapNode;

    invoke-virtual {v1}, Lcom/masshabit/squibble/WorldMapNode;->getState()I

    move-result v1

    if-nez v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/masshabit/squibble/WorldMapGraph;->mRoot:Lcom/masshabit/squibble/WorldMapNode;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/masshabit/squibble/WorldMapNode;->setState(I)V

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/masshabit/squibble/WorldMapGraph;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/masshabit/squibble/WorldMapGraph;->mPrevious:[I

    .line 80
    iget-object v1, p0, Lcom/masshabit/squibble/WorldMapGraph;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/masshabit/squibble/WorldMapGraph;->mDistance:[F

    .line 81
    iget-object v1, p0, Lcom/masshabit/squibble/WorldMapGraph;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/masshabit/squibble/WorldMapGraph;->mVisited:[Z

    .line 83
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/masshabit/squibble/WorldMapGraph;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 85
    iget-object v1, p0, Lcom/masshabit/squibble/WorldMapGraph;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/masshabit/squibble/WorldMapNode;

    invoke-virtual {v1}, Lcom/masshabit/squibble/WorldMapNode;->resolveConnections()V

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/masshabit/squibble/WorldMapGraph;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 89
    iget-object v1, p0, Lcom/masshabit/squibble/WorldMapGraph;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/masshabit/squibble/WorldMapNode;

    invoke-virtual {v1}, Lcom/masshabit/squibble/WorldMapNode;->finalizeConnections()V

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 91
    :cond_2
    return-void
.end method

.method public reportNode(Lcom/masshabit/squibble/WorldMapNode;)I
    .locals 2
    .param p1, "n"    # Lcom/masshabit/squibble/WorldMapNode;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/masshabit/squibble/WorldMapGraph;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v0, p0, Lcom/masshabit/squibble/WorldMapGraph;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    return v0
.end method
