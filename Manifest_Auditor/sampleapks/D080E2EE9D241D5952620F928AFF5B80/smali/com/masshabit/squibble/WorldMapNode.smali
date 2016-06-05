.class public Lcom/masshabit/squibble/WorldMapNode;
.super Lcom/masshabit/common/entity/AnimatedEntity;
.source "WorldMapNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/masshabit/squibble/WorldMapNode$Connection;
    }
.end annotation


# static fields
.field public static final STATE_COMPLETE:I = 0x2

.field public static final STATE_LOCKED:I = 0x0

.field public static final STATE_UNLOCKED:I = 0x1

.field public static final TAP_RADIUS:F = 40.0f

.field public static final TAP_RADIUS_SQ:F = 1600.0f

.field public static sOwnerGraph:Lcom/masshabit/squibble/WorldMapGraph;


# instance fields
.field public mConnectionList:[I

.field public mNodeIndex:I

.field public mPaths:[Lcom/masshabit/squibble/WorldMapNode$Connection;

.field public mState:I

.field protected mTempConnectionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mTempPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/masshabit/squibble/WorldMapNode$Connection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/masshabit/common/entity/AnimatedEntity;-><init>()V

    .line 50
    return-void
.end method


# virtual methods
.method public addConnection(ILcom/masshabit/squibble/WorldMapNode$Connection;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "c"    # Lcom/masshabit/squibble/WorldMapNode$Connection;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/masshabit/squibble/WorldMapNode;->mTempConnectionList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v0, p0, Lcom/masshabit/squibble/WorldMapNode;->mTempPaths:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 225
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 226
    iget-object v0, p0, Lcom/masshabit/squibble/WorldMapNode;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 227
    iget-object v0, p0, Lcom/masshabit/squibble/WorldMapNode;->mAnimState:Lcom/masshabit/common/resource/AnimationState;

    iget-object v0, v0, Lcom/masshabit/common/resource/AnimationState;->mCurrent:Landroid/graphics/Bitmap;

    sget-object v1, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    iget-object v1, v1, Lcom/masshabit/common/Environment;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 228
    invoke-virtual {p0, p1}, Lcom/masshabit/squibble/WorldMapNode;->drawChildren(Landroid/graphics/Canvas;)V

    .line 229
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 230
    return-void
.end method

.method public finalizeConnections()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 196
    iget-object v1, p0, Lcom/masshabit/squibble/WorldMapNode;->mTempConnectionList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/masshabit/squibble/WorldMapNode;->mConnectionList:[I

    .line 197
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/masshabit/squibble/WorldMapNode;->mTempConnectionList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 198
    iget-object v2, p0, Lcom/masshabit/squibble/WorldMapNode;->mConnectionList:[I

    iget-object v1, p0, Lcom/masshabit/squibble/WorldMapNode;->mTempConnectionList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, v2, v0

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    :cond_0
    iput-object v3, p0, Lcom/masshabit/squibble/WorldMapNode;->mTempConnectionList:Ljava/util/ArrayList;

    .line 201
    iget-object v1, p0, Lcom/masshabit/squibble/WorldMapNode;->mTempPaths:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/masshabit/squibble/WorldMapNode$Connection;

    iput-object v1, p0, Lcom/masshabit/squibble/WorldMapNode;->mPaths:[Lcom/masshabit/squibble/WorldMapNode$Connection;

    .line 202
    iget-object v1, p0, Lcom/masshabit/squibble/WorldMapNode;->mTempPaths:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/masshabit/squibble/WorldMapNode;->mPaths:[Lcom/masshabit/squibble/WorldMapNode$Connection;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/masshabit/squibble/WorldMapNode$Connection;

    iput-object v1, p0, Lcom/masshabit/squibble/WorldMapNode;->mPaths:[Lcom/masshabit/squibble/WorldMapNode$Connection;

    .line 203
    iput-object v3, p0, Lcom/masshabit/squibble/WorldMapNode;->mTempPaths:Ljava/util/ArrayList;

    .line 204
    return-void
.end method

.method public findConnection(I)I
    .locals 2
    .param p1, "nodeIndex"    # I

    .prologue
    .line 101
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/masshabit/squibble/WorldMapNode;->mConnectionList:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 103
    iget-object v1, p0, Lcom/masshabit/squibble/WorldMapNode;->mConnectionList:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    move v1, v0

    .line 106
    :goto_1
    return v1

    .line 101
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/masshabit/squibble/WorldMapNode;->mState:I

    return v0
.end method

.method public init()V
    .locals 3

    .prologue
    const/16 v2, 0xa

    const/4 v1, 0x0

    .line 209
    invoke-super {p0}, Lcom/masshabit/common/entity/AnimatedEntity;->init()V

    .line 211
    sget-object v0, Lcom/masshabit/squibble/WorldMapNode;->sOwnerGraph:Lcom/masshabit/squibble/WorldMapGraph;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 213
    sget-object v0, Lcom/masshabit/squibble/WorldMapNode;->sOwnerGraph:Lcom/masshabit/squibble/WorldMapGraph;

    invoke-virtual {v0, p0}, Lcom/masshabit/squibble/WorldMapGraph;->reportNode(Lcom/masshabit/squibble/WorldMapNode;)I

    move-result v0

    iput v0, p0, Lcom/masshabit/squibble/WorldMapNode;->mNodeIndex:I

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/masshabit/squibble/WorldMapNode;->mTempConnectionList:Ljava/util/ArrayList;

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/masshabit/squibble/WorldMapNode;->mTempPaths:Ljava/util/ArrayList;

    .line 218
    iput v1, p0, Lcom/masshabit/squibble/WorldMapNode;->mState:I

    .line 219
    const-string v0, "locked"

    invoke-virtual {p0, v0}, Lcom/masshabit/squibble/WorldMapNode;->setTrack(Ljava/lang/String;)V

    .line 220
    return-void

    :cond_0
    move v0, v1

    .line 211
    goto :goto_0
.end method

.method protected lockChildren()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 128
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/masshabit/squibble/WorldMapNode;->mConnectionList:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 130
    sget-object v2, Lcom/masshabit/squibble/WorldMapNode;->sOwnerGraph:Lcom/masshabit/squibble/WorldMapGraph;

    iget-object v2, v2, Lcom/masshabit/squibble/WorldMapGraph;->mNodes:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/masshabit/squibble/WorldMapNode;->mConnectionList:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/masshabit/squibble/WorldMapNode;

    .line 131
    .local v1, "n":Lcom/masshabit/squibble/WorldMapNode;
    invoke-virtual {v1}, Lcom/masshabit/squibble/WorldMapNode;->getState()I

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    invoke-virtual {v1, v4}, Lcom/masshabit/squibble/WorldMapNode;->setState(I)V

    .line 135
    :cond_0
    iget-object v2, p0, Lcom/masshabit/squibble/WorldMapNode;->mPaths:[Lcom/masshabit/squibble/WorldMapNode$Connection;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/masshabit/squibble/WorldMapNode$Connection;->mPath:Lcom/masshabit/squibble/WorldMapPath;

    iput-boolean v4, v2, Lcom/masshabit/squibble/WorldMapPath;->mEnabled:Z

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    .end local v1    # "n":Lcom/masshabit/squibble/WorldMapNode;
    :cond_1
    return-void
.end method

.method public resolveConnections()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 174
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 175
    .local v0, "env":Lcom/masshabit/common/Environment;
    iget-object v6, p0, Lcom/masshabit/squibble/WorldMapNode;->mProps:Lcom/masshabit/common/entity/EntityProperties;

    iget-object v6, v6, Lcom/masshabit/common/entity/EntityProperties;->connections:Ljava/lang/String;

    const-string v7, ""

    if-eq v6, v7, :cond_1

    .line 177
    iget-object v6, p0, Lcom/masshabit/squibble/WorldMapNode;->mProps:Lcom/masshabit/common/entity/EntityProperties;

    iget-object v6, v6, Lcom/masshabit/common/entity/EntityProperties;->connections:Ljava/lang/String;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, "ids":[Ljava/lang/String;
    array-length v6, v2

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_0

    move v6, v10

    :goto_0
    invoke-static {v6}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 180
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v6, v2

    if-ge v1, v6, :cond_1

    .line 182
    aget-object v6, v2, v1

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 183
    .local v4, "nodeId":Ljava/lang/String;
    add-int/lit8 v6, v1, 0x1

    aget-object v6, v2, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 185
    .local v5, "pathId":Ljava/lang/String;
    iget-object v6, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v6, v6, Lcom/masshabit/common/Level;->mEntityIds:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/masshabit/squibble/WorldMapNode;

    iget v3, v6, Lcom/masshabit/squibble/WorldMapNode;->mNodeIndex:I

    .line 186
    .local v3, "index":I
    new-instance v6, Lcom/masshabit/squibble/WorldMapNode$Connection;

    invoke-direct {v6, v5, v9}, Lcom/masshabit/squibble/WorldMapNode$Connection;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p0, v3, v6}, Lcom/masshabit/squibble/WorldMapNode;->addConnection(ILcom/masshabit/squibble/WorldMapNode$Connection;)V

    .line 189
    sget-object v6, Lcom/masshabit/squibble/WorldMapNode;->sOwnerGraph:Lcom/masshabit/squibble/WorldMapGraph;

    iget-object v6, v6, Lcom/masshabit/squibble/WorldMapGraph;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/masshabit/squibble/WorldMapNode;

    iget v7, p0, Lcom/masshabit/squibble/WorldMapNode;->mNodeIndex:I

    new-instance v8, Lcom/masshabit/squibble/WorldMapNode$Connection;

    invoke-direct {v8, v5, v10}, Lcom/masshabit/squibble/WorldMapNode$Connection;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v6, v7, v8}, Lcom/masshabit/squibble/WorldMapNode;->addConnection(ILcom/masshabit/squibble/WorldMapNode$Connection;)V

    .line 180
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .end local v1    # "i":I
    .end local v3    # "index":I
    .end local v4    # "nodeId":Ljava/lang/String;
    .end local v5    # "pathId":Ljava/lang/String;
    :cond_0
    move v6, v9

    .line 178
    goto :goto_0

    .line 192
    .end local v2    # "ids":[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public setState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/masshabit/squibble/WorldMapNode;->mState:I

    .line 72
    iget v0, p0, Lcom/masshabit/squibble/WorldMapNode;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 86
    :goto_0
    return-void

    .line 75
    :pswitch_0
    const-string v0, "locked"

    invoke-virtual {p0, v0}, Lcom/masshabit/squibble/WorldMapNode;->setTrack(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/masshabit/squibble/WorldMapNode;->lockChildren()V

    goto :goto_0

    .line 79
    :pswitch_1
    const-string v0, "unlocked"

    invoke-virtual {p0, v0}, Lcom/masshabit/squibble/WorldMapNode;->setTrack(Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :pswitch_2
    const-string v0, "complete"

    invoke-virtual {p0, v0}, Lcom/masshabit/squibble/WorldMapNode;->setTrack(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/masshabit/squibble/WorldMapNode;->unlockChildren()V

    goto :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected setTrack(Ljava/lang/String;)V
    .locals 2
    .param p1, "track"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-static {}, Lcom/masshabit/common/Globals;->freeMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/masshabit/squibble/WorldMapNode;->mProps:Lcom/masshabit/common/entity/EntityProperties;

    iget-object v0, v0, Lcom/masshabit/common/entity/EntityProperties;->id:Ljava/lang/String;

    invoke-static {v0}, Lcom/masshabit/common/Globals;->isLevelIncluded(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/masshabit/squibble/WorldMapNode;->mAnimState:Lcom/masshabit/common/resource/AnimationState;

    const-string v1, "pay"

    invoke-virtual {v0, v1}, Lcom/masshabit/common/resource/AnimationState;->setTrack(Ljava/lang/String;)V

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/masshabit/squibble/WorldMapNode;->mAnimState:Lcom/masshabit/common/resource/AnimationState;

    invoke-virtual {v0, p1}, Lcom/masshabit/common/resource/AnimationState;->setTrack(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected unlockChildren()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 111
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/masshabit/squibble/WorldMapNode;->mConnectionList:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 114
    iget-object v2, p0, Lcom/masshabit/squibble/WorldMapNode;->mPaths:[Lcom/masshabit/squibble/WorldMapNode$Connection;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Lcom/masshabit/squibble/WorldMapNode$Connection;->mPathReverse:Z

    if-eqz v2, :cond_0

    .line 111
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    :cond_0
    sget-object v2, Lcom/masshabit/squibble/WorldMapNode;->sOwnerGraph:Lcom/masshabit/squibble/WorldMapGraph;

    iget-object v2, v2, Lcom/masshabit/squibble/WorldMapGraph;->mNodes:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/masshabit/squibble/WorldMapNode;->mConnectionList:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/masshabit/squibble/WorldMapNode;

    .line 118
    .local v1, "n":Lcom/masshabit/squibble/WorldMapNode;
    invoke-virtual {v1}, Lcom/masshabit/squibble/WorldMapNode;->getState()I

    move-result v2

    if-nez v2, :cond_1

    .line 120
    invoke-virtual {v1, v4}, Lcom/masshabit/squibble/WorldMapNode;->setState(I)V

    .line 122
    :cond_1
    iget-object v2, p0, Lcom/masshabit/squibble/WorldMapNode;->mPaths:[Lcom/masshabit/squibble/WorldMapNode$Connection;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/masshabit/squibble/WorldMapNode$Connection;->mPath:Lcom/masshabit/squibble/WorldMapPath;

    iput-boolean v4, v2, Lcom/masshabit/squibble/WorldMapPath;->mEnabled:Z

    goto :goto_1

    .line 124
    .end local v1    # "n":Lcom/masshabit/squibble/WorldMapNode;
    :cond_2
    return-void
.end method
