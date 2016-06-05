.class public Lcom/masshabit/squibble/WorldMapPlayer;
.super Lcom/masshabit/common/entity/Entity;
.source "WorldMapPlayer.java"

# interfaces
.implements Lcom/masshabit/common/tween/ITweenCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/masshabit/squibble/WorldMapPlayer$Location;
    }
.end annotation


# static fields
.field protected static final ANIM_IDLE:Ljava/lang/String; = "idle"

.field protected static final EPSILON:F = 1.0E-4f

.field protected static final MOVE_SPEED:F = 140.0f

.field public static final TAG:Ljava/lang/String; = "WorldMapPlayer"


# instance fields
.field protected mAnimState:Lcom/masshabit/common/resource/AnimationState;

.field protected mGraph:Lcom/masshabit/squibble/WorldMapGraph;

.field protected mInMotion:Z

.field protected final mLocation:Lcom/masshabit/squibble/WorldMapPlayer$Location;

.field protected mPath:Lcom/masshabit/common/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/masshabit/common/Deque",
            "<",
            "Lcom/masshabit/squibble/WorldMapNode;",
            ">;"
        }
    .end annotation
.end field

.field protected mPathLength:F

.field protected mProgress:F

.field protected final mProgressTween:Lcom/masshabit/common/tween/Tween;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/masshabit/common/entity/Entity;-><init>()V

    .line 39
    new-instance v0, Lcom/masshabit/common/tween/Tween;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/masshabit/common/tween/Tween;-><init>(Lcom/masshabit/common/tween/ITweenCompleteListener;Lcom/masshabit/common/tween/Ease$EaseBase;)V

    iput-object v0, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mProgressTween:Lcom/masshabit/common/tween/Tween;

    .line 43
    new-instance v0, Lcom/masshabit/squibble/WorldMapPlayer$Location;

    invoke-direct {v0, p0}, Lcom/masshabit/squibble/WorldMapPlayer$Location;-><init>(Lcom/masshabit/squibble/WorldMapPlayer;)V

    iput-object v0, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mLocation:Lcom/masshabit/squibble/WorldMapPlayer$Location;

    .line 48
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 205
    iget-object v0, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mAnimState:Lcom/masshabit/common/resource/AnimationState;

    iget-object v0, v0, Lcom/masshabit/common/resource/AnimationState;->mCurrent:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v1, v1, Lcom/masshabit/common/physics/Vector2;->x:F

    iget v2, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mWidth:F

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v2, v2, Lcom/masshabit/common/physics/Vector2;->y:F

    iget v3, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mHeight:F

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 206
    return-void
.end method

.method protected findLocation()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 82
    iget-object v5, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mLocation:Lcom/masshabit/squibble/WorldMapPlayer$Location;

    iget-object v4, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mPath:Lcom/masshabit/common/Deque;

    invoke-virtual {v4, v7}, Lcom/masshabit/common/Deque;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/masshabit/squibble/WorldMapNode;

    iput-object v4, v5, Lcom/masshabit/squibble/WorldMapPlayer$Location;->mNode1:Lcom/masshabit/squibble/WorldMapNode;

    .line 83
    iget v4, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mPathLength:F

    iget v5, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mProgress:F

    mul-float v3, v4, v5

    .line 85
    .local v3, "totalDist":F
    iget-object v4, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mPath:Lcom/masshabit/common/Deque;

    invoke-virtual {v4}, Lcom/masshabit/common/Deque;->getSize()I

    move-result v4

    if-le v4, v6, :cond_5

    .line 87
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mPath:Lcom/masshabit/common/Deque;

    invoke-virtual {v4}, Lcom/masshabit/common/Deque;->getSize()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 89
    iget-object v5, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mLocation:Lcom/masshabit/squibble/WorldMapPlayer$Location;

    iget-object v4, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mPath:Lcom/masshabit/common/Deque;

    invoke-virtual {v4, v1}, Lcom/masshabit/common/Deque;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/masshabit/squibble/WorldMapNode;

    iput-object v4, v5, Lcom/masshabit/squibble/WorldMapPlayer$Location;->mNode2:Lcom/masshabit/squibble/WorldMapNode;

    .line 91
    iget-object v4, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mLocation:Lcom/masshabit/squibble/WorldMapPlayer$Location;

    iget-object v4, v4, Lcom/masshabit/squibble/WorldMapPlayer$Location;->mNode1:Lcom/masshabit/squibble/WorldMapNode;

    iget-object v5, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mLocation:Lcom/masshabit/squibble/WorldMapPlayer$Location;

    iget-object v5, v5, Lcom/masshabit/squibble/WorldMapPlayer$Location;->mNode2:Lcom/masshabit/squibble/WorldMapNode;

    if-eq v4, v5, :cond_1

    move v4, v6

    :goto_1
    invoke-static {v4}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 92
    sub-int v4, v1, v6

    invoke-virtual {p0, v4, v1}, Lcom/masshabit/squibble/WorldMapPlayer;->getDistance(II)F

    move-result v0

    .line 94
    .local v0, "dist":F
    cmpl-float v4, v0, v3

    if-gtz v4, :cond_0

    iget-object v4, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mPath:Lcom/masshabit/common/Deque;

    invoke-virtual {v4}, Lcom/masshabit/common/Deque;->getSize()I

    move-result v4

    sub-int/2addr v4, v6

    if-ne v1, v4, :cond_3

    const v4, 0x38d1b717    # 1.0E-4f

    add-float/2addr v4, v0

    cmpl-float v4, v4, v3

    if-lez v4, :cond_3

    .line 96
    :cond_0
    iget-object v4, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mLocation:Lcom/masshabit/squibble/WorldMapPlayer$Location;

    iget-object v4, v4, Lcom/masshabit/squibble/WorldMapPlayer$Location;->mNode1:Lcom/masshabit/squibble/WorldMapNode;

    iget-object v5, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mLocation:Lcom/masshabit/squibble/WorldMapPlayer$Location;

    iget-object v5, v5, Lcom/masshabit/squibble/WorldMapPlayer$Location;->mNode2:Lcom/masshabit/squibble/WorldMapNode;

    iget v5, v5, Lcom/masshabit/squibble/WorldMapNode;->mNodeIndex:I

    invoke-virtual {v4, v5}, Lcom/masshabit/squibble/WorldMapNode;->findConnection(I)I

    move-result v2

    .line 97
    .local v2, "pathIndex":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    move v4, v6

    :goto_2
    invoke-static {v4}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 99
    iget-object v4, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mLocation:Lcom/masshabit/squibble/WorldMapPlayer$Location;

    iget-object v5, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mLocation:Lcom/masshabit/squibble/WorldMapPlayer$Location;

    iget-object v5, v5, Lcom/masshabit/squibble/WorldMapPlayer$Location;->mNode1:Lcom/masshabit/squibble/WorldMapNode;

    iget-object v5, v5, Lcom/masshabit/squibble/WorldMapNode;->mPaths:[Lcom/masshabit/squibble/WorldMapNode$Connection;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/masshabit/squibble/WorldMapNode$Connection;->mPath:Lcom/masshabit/squibble/WorldMapPath;

    iput-object v5, v4, Lcom/masshabit/squibble/WorldMapPlayer$Location;->mPath:Lcom/masshabit/squibble/WorldMapPath;

    .line 100
    iget-object v4, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mLocation:Lcom/masshabit/squibble/WorldMapPlayer$Location;

    div-float v5, v3, v0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v5, v8, v6}, Lcom/masshabit/common/Util;->clamp(FFF)F

    move-result v5

    iput v5, v4, Lcom/masshabit/squibble/WorldMapPlayer$Location;->mPathProgress:F

    .line 101
    iget-object v4, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mLocation:Lcom/masshabit/squibble/WorldMapPlayer$Location;

    iget-object v5, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mLocation:Lcom/masshabit/squibble/WorldMapPlayer$Location;

    iget-object v5, v5, Lcom/masshabit/squibble/WorldMapPlayer$Location;->mNode1:Lcom/masshabit/squibble/WorldMapNode;

    iget-object v5, v5, Lcom/masshabit/squibble/WorldMapNode;->mPaths:[Lcom/masshabit/squibble/WorldMapNode$Connection;

    aget-object v5, v5, v2

    iget-boolean v5, v5, Lcom/masshabit/squibble/WorldMapNode$Connection;->mPathReverse:Z

    iput-boolean v5, v4, Lcom/masshabit/squibble/WorldMapPlayer$Location;->mBackwards:Z

    .line 117
    .end local v0    # "dist":F
    .end local v1    # "i":I
    .end local v2    # "pathIndex":I
    :goto_3
    return-void

    .restart local v1    # "i":I
    :cond_1
    move v4, v7

    .line 91
    goto :goto_1

    .restart local v0    # "dist":F
    .restart local v2    # "pathIndex":I
    :cond_2
    move v4, v7

    .line 97
    goto :goto_2

    .line 105
    .end local v2    # "pathIndex":I
    :cond_3
    sub-float/2addr v3, v0

    .line 106
    iget-object v4, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mLocation:Lcom/masshabit/squibble/WorldMapPlayer$Location;

    iget-object v5, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mLocation:Lcom/masshabit/squibble/WorldMapPlayer$Location;

    iget-object v5, v5, Lcom/masshabit/squibble/WorldMapPlayer$Location;->mNode2:Lcom/masshabit/squibble/WorldMapNode;

    iput-object v5, v4, Lcom/masshabit/squibble/WorldMapPlayer$Location;->mNode1:Lcom/masshabit/squibble/WorldMapNode;

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 108
    .end local v0    # "dist":F
    :cond_4
    const-string v4, "Could not find out location on our current path"

    invoke-static {v4, v7}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    goto :goto_3

    .line 112
    .end local v1    # "i":I
    :cond_5
    iget-object v5, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mLocation:Lcom/masshabit/squibble/WorldMapPlayer$Location;

    iget-object v4, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mGraph:Lcom/masshabit/squibble/WorldMapGraph;

    iget-object v4, v4, Lcom/masshabit/squibble/WorldMapGraph;->mNodes:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mLocation:Lcom/masshabit/squibble/WorldMapPlayer$Location;

    iget-object v6, v6, Lcom/masshabit/squibble/WorldMapPlayer$Location;->mNode1:Lcom/masshabit/squibble/WorldMapNode;

    iget-object v6, v6, Lcom/masshabit/squibble/WorldMapNode;->mConnectionList:[I

    aget v6, v6, v7

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/masshabit/squibble/WorldMapNode;

    iput-object v4, v5, Lcom/masshabit/squibble/WorldMapPlayer$Location;->mNode2:Lcom/masshabit/squibble/WorldMapNode;

    .line 113
    iget-object v4, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mLocation:Lcom/masshabit/squibble/WorldMapPlayer$Location;

    iget-object v5, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mLocation:Lcom/masshabit/squibble/WorldMapPlayer$Location;

    iget-object v5, v5, Lcom/masshabit/squibble/WorldMapPlayer$Location;->mNode1:Lcom/masshabit/squibble/WorldMapNode;

    iget-object v5, v5, Lcom/masshabit/squibble/WorldMapNode;->mPaths:[Lcom/masshabit/squibble/WorldMapNode$Connection;

    aget-object v5, v5, v7

    iget-object v5, v5, Lcom/masshabit/squibble/WorldMapNode$Connection;->mPath:Lcom/masshabit/squibble/WorldMapPath;

    iput-object v5, v4, Lcom/masshabit/squibble/WorldMapPlayer$Location;->mPath:Lcom/masshabit/squibble/WorldMapPath;

    .line 114
    iget-object v4, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mLocation:Lcom/masshabit/squibble/WorldMapPlayer$Location;

    iput v8, v4, Lcom/masshabit/squibble/WorldMapPlayer$Location;->mPathProgress:F

    .line 115
    iget-object v4, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mLocation:Lcom/masshabit/squibble/WorldMapPlayer$Location;

    iget-object v5, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mLocation:Lcom/masshabit/squibble/WorldMapPlayer$Location;

    iget-object v5, v5, Lcom/masshabit/squibble/WorldMapPlayer$Location;->mNode1:Lcom/masshabit/squibble/WorldMapNode;

    iget-object v5, v5, Lcom/masshabit/squibble/WorldMapNode;->mPaths:[Lcom/masshabit/squibble/WorldMapNode$Connection;

    aget-object v5, v5, v7

    iget-boolean v5, v5, Lcom/masshabit/squibble/WorldMapNode$Connection;->mPathReverse:Z

    iput-boolean v5, v4, Lcom/masshabit/squibble/WorldMapPlayer$Location;->mBackwards:Z

    goto :goto_3
.end method

.method protected getDistance(II)F
    .locals 3
    .param p1, "firstIndex"    # I
    .param p2, "secondIndex"    # I

    .prologue
    .line 63
    iget-object v2, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mPath:Lcom/masshabit/common/Deque;

    invoke-virtual {v2, p1}, Lcom/masshabit/common/Deque;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/masshabit/squibble/WorldMapNode;

    .line 64
    .local v0, "first":Lcom/masshabit/squibble/WorldMapNode;
    iget-object v2, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mPath:Lcom/masshabit/common/Deque;

    invoke-virtual {v2, p2}, Lcom/masshabit/common/Deque;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/masshabit/squibble/WorldMapNode;

    .line 65
    .local v1, "second":Lcom/masshabit/squibble/WorldMapNode;
    invoke-virtual {p0, v0, v1}, Lcom/masshabit/squibble/WorldMapPlayer;->getDistance(Lcom/masshabit/squibble/WorldMapNode;Lcom/masshabit/squibble/WorldMapNode;)F

    move-result v2

    return v2
.end method

.method protected getDistance(Lcom/masshabit/squibble/WorldMapNode;Lcom/masshabit/squibble/WorldMapNode;)F
    .locals 2
    .param p1, "first"    # Lcom/masshabit/squibble/WorldMapNode;
    .param p2, "second"    # Lcom/masshabit/squibble/WorldMapNode;

    .prologue
    .line 70
    if-ne p1, p2, :cond_0

    .line 72
    const/4 v1, 0x0

    .line 77
    :goto_0
    return v1

    .line 75
    :cond_0
    iget v1, p2, Lcom/masshabit/squibble/WorldMapNode;->mNodeIndex:I

    invoke-virtual {p1, v1}, Lcom/masshabit/squibble/WorldMapNode;->findConnection(I)I

    move-result v0

    .line 76
    .local v0, "i":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 77
    iget-object v1, p1, Lcom/masshabit/squibble/WorldMapNode;->mPaths:[Lcom/masshabit/squibble/WorldMapNode$Connection;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/masshabit/squibble/WorldMapNode$Connection;->mPath:Lcom/masshabit/squibble/WorldMapPath;

    invoke-virtual {v1}, Lcom/masshabit/squibble/WorldMapPath;->getLength()F

    move-result v1

    goto :goto_0

    .line 76
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public init()V
    .locals 5

    .prologue
    .line 196
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 198
    .local v0, "env":Lcom/masshabit/common/Environment;
    new-instance v2, Lcom/masshabit/common/resource/AnimationState;

    iget-object v1, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v1, v1, Lcom/masshabit/common/Level;->mAnims:Lcom/masshabit/common/resource/AnimationResourceMap;

    iget-object v3, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v3, v3, Lcom/masshabit/common/Level;->mAnims:Lcom/masshabit/common/resource/AnimationResourceMap;

    const-string v4, "common/squibble/anim.def"

    invoke-virtual {v3, v4}, Lcom/masshabit/common/resource/AnimationResourceMap;->load(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/masshabit/common/resource/AnimationResourceMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/masshabit/common/resource/Animation;

    invoke-direct {v2, v1}, Lcom/masshabit/common/resource/AnimationState;-><init>(Lcom/masshabit/common/resource/Animation;)V

    iput-object v2, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mAnimState:Lcom/masshabit/common/resource/AnimationState;

    .line 199
    iget-object v1, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mAnimState:Lcom/masshabit/common/resource/AnimationState;

    const-string v2, "idle"

    invoke-virtual {v1, v2}, Lcom/masshabit/common/resource/AnimationState;->setTrack(Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method public isStationary()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mInMotion:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setGraph(Lcom/masshabit/squibble/WorldMapGraph;)V
    .locals 2
    .param p1, "g"    # Lcom/masshabit/squibble/WorldMapGraph;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mGraph:Lcom/masshabit/squibble/WorldMapGraph;

    .line 53
    new-instance v0, Lcom/masshabit/common/Deque;

    iget-object v1, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mGraph:Lcom/masshabit/squibble/WorldMapGraph;

    iget-object v1, v1, Lcom/masshabit/squibble/WorldMapGraph;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/masshabit/common/Deque;-><init>(I)V

    iput-object v0, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mPath:Lcom/masshabit/common/Deque;

    .line 54
    return-void
.end method

.method public setPosition(Lcom/masshabit/squibble/WorldMapNode;)V
    .locals 4
    .param p1, "n"    # Lcom/masshabit/squibble/WorldMapNode;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 184
    iget-object v1, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mPath:Lcom/masshabit/common/Deque;

    invoke-virtual {v1}, Lcom/masshabit/common/Deque;->empty()V

    .line 185
    iget-object v1, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mPath:Lcom/masshabit/common/Deque;

    invoke-virtual {v1, p1}, Lcom/masshabit/common/Deque;->push_back(Ljava/lang/Object;)V

    .line 186
    iput v2, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mPathLength:F

    .line 187
    iput v2, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mProgress:F

    .line 189
    iget-object v1, p1, Lcom/masshabit/squibble/WorldMapNode;->mPaths:[Lcom/masshabit/squibble/WorldMapNode$Connection;

    aget-object v1, v1, v3

    iget-boolean v1, v1, Lcom/masshabit/squibble/WorldMapNode$Connection;->mPathReverse:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    move v0, v1

    .line 190
    .local v0, "p":F
    :goto_0
    iget-object v1, p1, Lcom/masshabit/squibble/WorldMapNode;->mPaths:[Lcom/masshabit/squibble/WorldMapNode$Connection;

    aget-object v1, v1, v3

    iget-object v1, v1, Lcom/masshabit/squibble/WorldMapNode$Connection;->mPath:Lcom/masshabit/squibble/WorldMapPath;

    iget-object v1, v1, Lcom/masshabit/squibble/WorldMapPath;->mCurve:Lcom/masshabit/common/curve/PolyCubicBezier;

    iget-object v2, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mPos:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v1, v0, v2}, Lcom/masshabit/common/curve/PolyCubicBezier;->evaluate(FLcom/masshabit/common/physics/Vector2;)V

    .line 191
    return-void

    .end local v0    # "p":F
    :cond_0
    move v0, v2

    .line 189
    goto :goto_0
.end method

.method public setTarget(Lcom/masshabit/squibble/WorldMapNode;)V
    .locals 9
    .param p1, "target"    # Lcom/masshabit/squibble/WorldMapNode;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const-string v8, ", "

    const-string v4, "WorldMapPlayer"

    .line 121
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mInMotion:Z

    .line 122
    const-string v1, "WorldMapPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New target set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/masshabit/squibble/WorldMapNode;->mProps:Lcom/masshabit/common/entity/EntityProperties;

    iget-object v2, v2, Lcom/masshabit/common/entity/EntityProperties;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {p0}, Lcom/masshabit/squibble/WorldMapPlayer;->findLocation()V

    .line 124
    const-string v1, "WorldMapPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Location is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mLocation:Lcom/masshabit/squibble/WorldMapPlayer$Location;

    iget-object v2, v2, Lcom/masshabit/squibble/WorldMapPlayer$Location;->mNode1:Lcom/masshabit/squibble/WorldMapNode;

    iget-object v2, v2, Lcom/masshabit/squibble/WorldMapNode;->mProps:Lcom/masshabit/common/entity/EntityProperties;

    iget-object v2, v2, Lcom/masshabit/common/entity/EntityProperties;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mLocation:Lcom/masshabit/squibble/WorldMapPlayer$Location;

    iget-object v2, v2, Lcom/masshabit/squibble/WorldMapPlayer$Location;->mNode2:Lcom/masshabit/squibble/WorldMapNode;

    iget-object v2, v2, Lcom/masshabit/squibble/WorldMapNode;->mProps:Lcom/masshabit/common/entity/EntityProperties;

    iget-object v2, v2, Lcom/masshabit/common/entity/EntityProperties;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", local progress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mLocation:Lcom/masshabit/squibble/WorldMapPlayer$Location;

    iget v2, v2, Lcom/masshabit/squibble/WorldMapPlayer$Location;->mPathProgress:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v1, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mGraph:Lcom/masshabit/squibble/WorldMapGraph;

    iget-object v2, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mLocation:Lcom/masshabit/squibble/WorldMapPlayer$Location;

    iget-object v2, v2, Lcom/masshabit/squibble/WorldMapPlayer$Location;->mNode1:Lcom/masshabit/squibble/WorldMapNode;

    iget-object v3, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mPath:Lcom/masshabit/common/Deque;

    invoke-virtual {v1, v2, p1, v3}, Lcom/masshabit/squibble/WorldMapGraph;->findPath(Lcom/masshabit/squibble/WorldMapNode;Lcom/masshabit/squibble/WorldMapNode;Lcom/masshabit/common/Deque;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 129
    iput v7, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mPathLength:F

    .line 130
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mPath:Lcom/masshabit/common/Deque;

    invoke-virtual {v1}, Lcom/masshabit/common/Deque;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 132
    iget v1, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mPathLength:F

    sub-int v2, v0, v6

    invoke-virtual {p0, v2, v0}, Lcom/masshabit/squibble/WorldMapPlayer;->getDistance(II)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mPathLength:F

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_0
    iput v7, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mProgress:F

    .line 137
    iget-object v1, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mPath:Lcom/masshabit/common/Deque;

    invoke-virtual {v1}, Lcom/masshabit/common/Deque;->getSize()I

    move-result v1

    if-le v1, v6, :cond_1

    iget-object v1, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mPath:Lcom/masshabit/common/Deque;

    invoke-virtual {v1, v6}, Lcom/masshabit/common/Deque;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mLocation:Lcom/masshabit/squibble/WorldMapPlayer$Location;

    iget-object v2, v2, Lcom/masshabit/squibble/WorldMapPlayer$Location;->mNode2:Lcom/masshabit/squibble/WorldMapNode;

    if-ne v1, v2, :cond_1

    .line 143
    iget v1, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mProgress:F

    iget-object v2, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mLocation:Lcom/masshabit/squibble/WorldMapPlayer$Location;

    iget v2, v2, Lcom/masshabit/squibble/WorldMapPlayer$Location;->mPathProgress:F

    iget-object v3, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mLocation:Lcom/masshabit/squibble/WorldMapPlayer$Location;

    iget-object v3, v3, Lcom/masshabit/squibble/WorldMapPlayer$Location;->mPath:Lcom/masshabit/squibble/WorldMapPath;

    invoke-virtual {v3}, Lcom/masshabit/squibble/WorldMapPath;->getLength()F

    move-result v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mPathLength:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mProgress:F

    .line 145
    invoke-virtual {p0}, Lcom/masshabit/squibble/WorldMapPlayer;->findLocation()V

    .line 146
    const-string v1, "WorldMapPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "case1, Corrected location is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mLocation:Lcom/masshabit/squibble/WorldMapPlayer$Location;

    iget-object v2, v2, Lcom/masshabit/squibble/WorldMapPlayer$Location;->mNode1:Lcom/masshabit/squibble/WorldMapNode;

    iget-object v2, v2, Lcom/masshabit/squibble/WorldMapNode;->mProps:Lcom/masshabit/common/entity/EntityProperties;

    iget-object v2, v2, Lcom/masshabit/common/entity/EntityProperties;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mLocation:Lcom/masshabit/squibble/WorldMapPlayer$Location;

    iget-object v2, v2, Lcom/masshabit/squibble/WorldMapPlayer$Location;->mNode2:Lcom/masshabit/squibble/WorldMapNode;

    iget-object v2, v2, Lcom/masshabit/squibble/WorldMapNode;->mProps:Lcom/masshabit/common/entity/EntityProperties;

    iget-object v2, v2, Lcom/masshabit/common/entity/EntityProperties;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", local progress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mLocation:Lcom/masshabit/squibble/WorldMapPlayer$Location;

    iget v2, v2, Lcom/masshabit/squibble/WorldMapPlayer$Location;->mPathProgress:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :goto_1
    const-string v1, "WorldMapPlayer"

    const-string v1, "Found a path!"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mPath:Lcom/masshabit/common/Deque;

    invoke-virtual {v1}, Lcom/masshabit/common/Deque;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 165
    const-string v1, "WorldMapPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NODE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mPath:Lcom/masshabit/common/Deque;

    invoke-virtual {v1, v0}, Lcom/masshabit/common/Deque;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/masshabit/squibble/WorldMapNode;

    iget-object v1, v1, Lcom/masshabit/squibble/WorldMapNode;->mProps:Lcom/masshabit/common/entity/EntityProperties;

    iget-object v1, v1, Lcom/masshabit/common/entity/EntityProperties;->id:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 154
    :cond_1
    iget-object v1, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mPath:Lcom/masshabit/common/Deque;

    iget-object v2, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mLocation:Lcom/masshabit/squibble/WorldMapPlayer$Location;

    iget-object v2, v2, Lcom/masshabit/squibble/WorldMapPlayer$Location;->mNode2:Lcom/masshabit/squibble/WorldMapNode;

    invoke-virtual {v1, v2}, Lcom/masshabit/common/Deque;->push_front(Ljava/lang/Object;)V

    .line 155
    iget v1, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mPathLength:F

    iget-object v2, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mLocation:Lcom/masshabit/squibble/WorldMapPlayer$Location;

    iget-object v2, v2, Lcom/masshabit/squibble/WorldMapPlayer$Location;->mPath:Lcom/masshabit/squibble/WorldMapPath;

    invoke-virtual {v2}, Lcom/masshabit/squibble/WorldMapPath;->getLength()F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mPathLength:F

    .line 156
    iget v1, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mProgress:F

    iget-object v2, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mLocation:Lcom/masshabit/squibble/WorldMapPlayer$Location;

    iget v2, v2, Lcom/masshabit/squibble/WorldMapPlayer$Location;->mPathProgress:F

    sub-float v2, v5, v2

    iget-object v3, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mLocation:Lcom/masshabit/squibble/WorldMapPlayer$Location;

    iget-object v3, v3, Lcom/masshabit/squibble/WorldMapPlayer$Location;->mPath:Lcom/masshabit/squibble/WorldMapPath;

    invoke-virtual {v3}, Lcom/masshabit/squibble/WorldMapPath;->getLength()F

    move-result v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mPathLength:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mProgress:F

    .line 158
    invoke-virtual {p0}, Lcom/masshabit/squibble/WorldMapPlayer;->findLocation()V

    .line 159
    const-string v1, "WorldMapPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "case2, Corrected location is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mLocation:Lcom/masshabit/squibble/WorldMapPlayer$Location;

    iget-object v2, v2, Lcom/masshabit/squibble/WorldMapPlayer$Location;->mNode1:Lcom/masshabit/squibble/WorldMapNode;

    iget-object v2, v2, Lcom/masshabit/squibble/WorldMapNode;->mProps:Lcom/masshabit/common/entity/EntityProperties;

    iget-object v2, v2, Lcom/masshabit/common/entity/EntityProperties;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mLocation:Lcom/masshabit/squibble/WorldMapPlayer$Location;

    iget-object v2, v2, Lcom/masshabit/squibble/WorldMapPlayer$Location;->mNode2:Lcom/masshabit/squibble/WorldMapNode;

    iget-object v2, v2, Lcom/masshabit/squibble/WorldMapNode;->mProps:Lcom/masshabit/common/entity/EntityProperties;

    iget-object v2, v2, Lcom/masshabit/common/entity/EntityProperties;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", local progress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mLocation:Lcom/masshabit/squibble/WorldMapPlayer$Location;

    iget v2, v2, Lcom/masshabit/squibble/WorldMapPlayer$Location;->mPathProgress:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 166
    :cond_2
    const-string v1, "WorldMapPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Absolute progress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mProgress:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget v1, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mProgress:F

    sub-float v1, v5, v1

    cmpl-float v1, v1, v7

    if-lez v1, :cond_3

    .line 171
    iget-object v1, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mProgressTween:Lcom/masshabit/common/tween/Tween;

    iget v2, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mProgress:F

    iget v3, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mProgress:F

    sub-float v3, v5, v3

    iget v4, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mPathLength:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x430c0000    # 140.0f

    div-float/2addr v3, v4

    invoke-virtual {v1, v2, v5, v3}, Lcom/masshabit/common/tween/Tween;->init(FFF)V

    .line 172
    iput-boolean v6, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mInMotion:Z

    .line 180
    .end local v0    # "i":I
    :cond_3
    :goto_3
    return-void

    .line 177
    :cond_4
    const-string v1, "WorldMapPlayer"

    const-string v1, "Failed to find path to node"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v1, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mLocation:Lcom/masshabit/squibble/WorldMapPlayer$Location;

    iget-object v1, v1, Lcom/masshabit/squibble/WorldMapPlayer$Location;->mNode1:Lcom/masshabit/squibble/WorldMapNode;

    invoke-virtual {p0, v1}, Lcom/masshabit/squibble/WorldMapPlayer;->setPosition(Lcom/masshabit/squibble/WorldMapNode;)V

    goto :goto_3
.end method

.method public tweenComplete(Ljava/lang/Object;)V
    .locals 3
    .param p1, "tween"    # Ljava/lang/Object;

    .prologue
    .line 227
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mInMotion:Z

    .line 228
    invoke-virtual {p0}, Lcom/masshabit/squibble/WorldMapPlayer;->findLocation()V

    .line 229
    const-string v0, "WorldMapPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Arrived at target, current location is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mLocation:Lcom/masshabit/squibble/WorldMapPlayer$Location;

    iget-object v2, v2, Lcom/masshabit/squibble/WorldMapPlayer$Location;->mNode1:Lcom/masshabit/squibble/WorldMapNode;

    iget-object v2, v2, Lcom/masshabit/squibble/WorldMapNode;->mProps:Lcom/masshabit/common/entity/EntityProperties;

    iget-object v2, v2, Lcom/masshabit/common/entity/EntityProperties;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mLocation:Lcom/masshabit/squibble/WorldMapPlayer$Location;

    iget-object v2, v2, Lcom/masshabit/squibble/WorldMapPlayer$Location;->mNode2:Lcom/masshabit/squibble/WorldMapNode;

    iget-object v2, v2, Lcom/masshabit/squibble/WorldMapNode;->mProps:Lcom/masshabit/common/entity/EntityProperties;

    iget-object v2, v2, Lcom/masshabit/common/entity/EntityProperties;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", local progress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mLocation:Lcom/masshabit/squibble/WorldMapPlayer$Location;

    iget v2, v2, Lcom/masshabit/squibble/WorldMapPlayer$Location;->mPathProgress:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mLocation:Lcom/masshabit/squibble/WorldMapPlayer$Location;

    iget v1, v1, Lcom/masshabit/squibble/WorldMapPlayer$Location;->mPathProgress:F

    sub-float/2addr v0, v1

    const v1, 0x38d1b717    # 1.0E-4f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mLocation:Lcom/masshabit/squibble/WorldMapPlayer$Location;

    iget-object v0, v0, Lcom/masshabit/squibble/WorldMapPlayer$Location;->mNode2:Lcom/masshabit/squibble/WorldMapNode;

    invoke-virtual {p0, v0}, Lcom/masshabit/squibble/WorldMapPlayer;->setPosition(Lcom/masshabit/squibble/WorldMapNode;)V

    .line 234
    :cond_0
    return-void
.end method

.method public update(F)V
    .locals 3
    .param p1, "dt"    # F

    .prologue
    .line 211
    iget-object v1, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mAnimState:Lcom/masshabit/common/resource/AnimationState;

    invoke-virtual {v1, p1}, Lcom/masshabit/common/resource/AnimationState;->update(F)V

    .line 213
    iget-object v1, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mProgressTween:Lcom/masshabit/common/tween/Tween;

    invoke-virtual {v1}, Lcom/masshabit/common/tween/Tween;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mProgressTween:Lcom/masshabit/common/tween/Tween;

    invoke-virtual {v1, p1}, Lcom/masshabit/common/tween/Tween;->update(F)V

    .line 216
    iget-object v1, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mProgressTween:Lcom/masshabit/common/tween/Tween;

    iget v1, v1, Lcom/masshabit/common/tween/Tween;->mValue:F

    iput v1, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mProgress:F

    .line 219
    :cond_0
    invoke-virtual {p0}, Lcom/masshabit/squibble/WorldMapPlayer;->findLocation()V

    .line 220
    iget-object v1, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mLocation:Lcom/masshabit/squibble/WorldMapPlayer$Location;

    iget-boolean v1, v1, Lcom/masshabit/squibble/WorldMapPlayer$Location;->mBackwards:Z

    if-eqz v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v2, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mLocation:Lcom/masshabit/squibble/WorldMapPlayer$Location;

    iget v2, v2, Lcom/masshabit/squibble/WorldMapPlayer$Location;->mPathProgress:F

    sub-float/2addr v1, v2

    move v0, v1

    .line 221
    .local v0, "p":F
    :goto_0
    iget-object v1, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mLocation:Lcom/masshabit/squibble/WorldMapPlayer$Location;

    iget-object v1, v1, Lcom/masshabit/squibble/WorldMapPlayer$Location;->mPath:Lcom/masshabit/squibble/WorldMapPath;

    iget-object v1, v1, Lcom/masshabit/squibble/WorldMapPath;->mCurve:Lcom/masshabit/common/curve/PolyCubicBezier;

    iget-object v2, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mPos:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v1, v0, v2}, Lcom/masshabit/common/curve/PolyCubicBezier;->evaluate(FLcom/masshabit/common/physics/Vector2;)V

    .line 222
    return-void

    .line 220
    .end local v0    # "p":F
    :cond_1
    iget-object v1, p0, Lcom/masshabit/squibble/WorldMapPlayer;->mLocation:Lcom/masshabit/squibble/WorldMapPlayer$Location;

    iget v1, v1, Lcom/masshabit/squibble/WorldMapPlayer$Location;->mPathProgress:F

    move v0, v1

    goto :goto_0
.end method
