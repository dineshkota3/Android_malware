.class public Lcom/masshabit/squibble/WorldMapScreen;
.super Lcom/masshabit/squibble/Screen;
.source "WorldMapScreen.java"


# static fields
.field public static final FIRST_LEVEL:Ljava/lang/String; = "lab_1"

.field public static final LAST_LEVEL:Ljava/lang/String; = "dock_5"

.field public static final TAG:Ljava/lang/String; = "WorldMapScreen"


# instance fields
.field protected final mButtonInv:Landroid/graphics/Matrix;

.field protected final mCameraTarget:Lcom/masshabit/common/physics/Vector2;

.field protected final mDragAnchor:Lcom/masshabit/common/physics/Vector2;

.field public mGraph:Lcom/masshabit/squibble/WorldMapGraph;

.field public mHud:Lcom/masshabit/squibble/WorldMapHud;

.field public mLevel:Lcom/masshabit/common/Level;

.field public mMute:Lcom/masshabit/squibble/MuteEntity;

.field public mPlayer:Lcom/masshabit/squibble/WorldMapPlayer;

.field protected final mPoint:[F

.field protected final mTapDownLocation:Lcom/masshabit/common/physics/Vector2;

.field protected mTapDownTarget:Lcom/masshabit/squibble/WorldMapNode;

.field protected final mTemp:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/masshabit/squibble/Screen;-><init>()V

    .line 31
    new-instance v0, Lcom/masshabit/common/physics/Vector2;

    invoke-direct {v0}, Lcom/masshabit/common/physics/Vector2;-><init>()V

    iput-object v0, p0, Lcom/masshabit/squibble/WorldMapScreen;->mTapDownLocation:Lcom/masshabit/common/physics/Vector2;

    .line 33
    new-instance v0, Lcom/masshabit/common/physics/Vector2;

    invoke-direct {v0}, Lcom/masshabit/common/physics/Vector2;-><init>()V

    iput-object v0, p0, Lcom/masshabit/squibble/WorldMapScreen;->mDragAnchor:Lcom/masshabit/common/physics/Vector2;

    .line 34
    new-instance v0, Lcom/masshabit/common/physics/Vector2;

    invoke-direct {v0}, Lcom/masshabit/common/physics/Vector2;-><init>()V

    iput-object v0, p0, Lcom/masshabit/squibble/WorldMapScreen;->mCameraTarget:Lcom/masshabit/common/physics/Vector2;

    .line 36
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/masshabit/squibble/WorldMapScreen;->mTemp:Landroid/graphics/RectF;

    .line 37
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/masshabit/squibble/WorldMapScreen;->mButtonInv:Landroid/graphics/Matrix;

    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/masshabit/squibble/WorldMapScreen;->mPoint:[F

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 114
    invoke-super {p0}, Lcom/masshabit/squibble/Screen;->destroy()V

    .line 115
    iget-object v0, p0, Lcom/masshabit/squibble/WorldMapScreen;->mLevel:Lcom/masshabit/common/Level;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/masshabit/squibble/WorldMapScreen;->mLevel:Lcom/masshabit/common/Level;

    invoke-virtual {v0}, Lcom/masshabit/common/Level;->destroy()V

    .line 119
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 124
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 126
    .local v0, "env":Lcom/masshabit/common/Environment;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 127
    iget-object v3, v0, Lcom/masshabit/common/Environment;->mCamera:Lcom/masshabit/common/Camera;

    iget-object v3, v3, Lcom/masshabit/common/Camera;->mView:Landroid/graphics/Matrix;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 128
    iget-object v3, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v3, v3, Lcom/masshabit/common/Level;->mLayers:[Lcom/masshabit/common/Layer;

    array-length v2, v3

    .line 129
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 131
    iget-object v3, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v3, v3, Lcom/masshabit/common/Level;->mLayers:[Lcom/masshabit/common/Layer;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Lcom/masshabit/common/Layer;->draw(Landroid/graphics/Canvas;)V

    .line 129
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 134
    return-void
.end method

.method public init()V
    .locals 11

    .prologue
    const-string v10, "WorldMapScreen"

    .line 43
    sget-object v1, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 45
    .local v1, "env":Lcom/masshabit/common/Environment;
    invoke-static {}, Lcom/masshabit/squibble/ProfileManager;->instance()Lcom/masshabit/common/ProfileManagerBase;

    move-result-object v7

    invoke-virtual {v7}, Lcom/masshabit/common/ProfileManagerBase;->getProfile()Lcom/masshabit/common/ProfileManagerBase$PlayerProfile;

    move-result-object v5

    check-cast v5, Lcom/masshabit/squibble/Profile;

    .line 49
    .local v5, "profile":Lcom/masshabit/squibble/Profile;
    new-instance v7, Lcom/masshabit/common/Level;

    const-string v8, "world_map"

    invoke-direct {v7, v8}, Lcom/masshabit/common/Level;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/masshabit/squibble/WorldMapScreen;->mLevel:Lcom/masshabit/common/Level;

    .line 50
    iget-object v7, p0, Lcom/masshabit/squibble/WorldMapScreen;->mLevel:Lcom/masshabit/common/Level;

    iput-object v7, v1, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    .line 51
    iget-object v7, p0, Lcom/masshabit/squibble/WorldMapScreen;->mLevel:Lcom/masshabit/common/Level;

    invoke-virtual {v7}, Lcom/masshabit/common/Level;->registerGeometry()V

    .line 53
    new-instance v7, Lcom/masshabit/common/LevelLoader;

    iget-object v8, p0, Lcom/masshabit/squibble/WorldMapScreen;->mLevel:Lcom/masshabit/common/Level;

    new-instance v9, Lcom/masshabit/squibble/EntityFactory;

    invoke-direct {v9}, Lcom/masshabit/squibble/EntityFactory;-><init>()V

    invoke-direct {v7, v8, v9}, Lcom/masshabit/common/LevelLoader;-><init>(Lcom/masshabit/common/Level;Lcom/masshabit/common/entity/IEntityFactory;)V

    const-string v8, "world_map.svg"

    invoke-virtual {v7, v8}, Lcom/masshabit/common/LevelLoader;->load(Ljava/lang/String;)V

    .line 54
    iget-object v7, p0, Lcom/masshabit/squibble/WorldMapScreen;->mLevel:Lcom/masshabit/common/Level;

    iget-boolean v7, v7, Lcom/masshabit/common/Level;->mLoaded:Z

    if-nez v7, :cond_0

    .line 56
    const-string v7, "WorldMapScreen"

    const-string v7, "Level load failed"

    invoke-static {v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    iget-object v7, p0, Lcom/masshabit/squibble/WorldMapScreen;->mLevel:Lcom/masshabit/common/Level;

    iget-object v7, v7, Lcom/masshabit/common/Level;->mEntityIds:Ljava/util/HashMap;

    const-string v8, "mute"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/masshabit/squibble/MuteEntity;

    iput-object v7, p0, Lcom/masshabit/squibble/WorldMapScreen;->mMute:Lcom/masshabit/squibble/MuteEntity;

    .line 61
    new-instance v7, Lcom/masshabit/squibble/WorldMapGraph;

    invoke-direct {v7}, Lcom/masshabit/squibble/WorldMapGraph;-><init>()V

    iput-object v7, p0, Lcom/masshabit/squibble/WorldMapScreen;->mGraph:Lcom/masshabit/squibble/WorldMapGraph;

    .line 62
    iget-object v7, p0, Lcom/masshabit/squibble/WorldMapScreen;->mGraph:Lcom/masshabit/squibble/WorldMapGraph;

    sput-object v7, Lcom/masshabit/squibble/WorldMapNode;->sOwnerGraph:Lcom/masshabit/squibble/WorldMapGraph;

    .line 63
    iget-object v7, p0, Lcom/masshabit/squibble/WorldMapScreen;->mLevel:Lcom/masshabit/common/Level;

    invoke-virtual {v7}, Lcom/masshabit/common/Level;->init()V

    .line 66
    iget-object v7, p0, Lcom/masshabit/squibble/WorldMapScreen;->mLevel:Lcom/masshabit/common/Level;

    iget-object v7, v7, Lcom/masshabit/common/Level;->mEntityIds:Ljava/util/HashMap;

    const-string v8, "lab_1"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/masshabit/squibble/WorldMapNode;

    .line 67
    .local v6, "root":Lcom/masshabit/squibble/WorldMapNode;
    iget-object v7, p0, Lcom/masshabit/squibble/WorldMapScreen;->mGraph:Lcom/masshabit/squibble/WorldMapGraph;

    invoke-virtual {v7, v6}, Lcom/masshabit/squibble/WorldMapGraph;->init(Lcom/masshabit/squibble/WorldMapNode;)V

    .line 71
    iget-object v7, v5, Lcom/masshabit/squibble/Profile;->mLevels:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 73
    .local v3, "key":Ljava/lang/String;
    iget-object v7, p0, Lcom/masshabit/squibble/WorldMapScreen;->mLevel:Lcom/masshabit/common/Level;

    iget-object v7, v7, Lcom/masshabit/common/Level;->mEntityIds:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/masshabit/squibble/WorldMapNode;

    .line 74
    .local v4, "n":Lcom/masshabit/squibble/WorldMapNode;
    if-eqz v4, :cond_1

    .line 76
    const/4 v7, 0x2

    invoke-virtual {v4, v7}, Lcom/masshabit/squibble/WorldMapNode;->setState(I)V

    goto :goto_0

    .line 80
    :cond_1
    const-string v7, "WorldMapScreen"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found a level key in the profile that does not exist in the level: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 86
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "n":Lcom/masshabit/squibble/WorldMapNode;
    :cond_2
    iget-object v7, p0, Lcom/masshabit/squibble/WorldMapScreen;->mLevel:Lcom/masshabit/common/Level;

    iget-object v7, v7, Lcom/masshabit/common/Level;->mEntityIds:Ljava/util/HashMap;

    const-string v8, "player"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/masshabit/squibble/WorldMapPlayer;

    iput-object v7, p0, Lcom/masshabit/squibble/WorldMapScreen;->mPlayer:Lcom/masshabit/squibble/WorldMapPlayer;

    .line 87
    iget-object v7, p0, Lcom/masshabit/squibble/WorldMapScreen;->mPlayer:Lcom/masshabit/squibble/WorldMapPlayer;

    iget-object v8, p0, Lcom/masshabit/squibble/WorldMapScreen;->mGraph:Lcom/masshabit/squibble/WorldMapGraph;

    invoke-virtual {v7, v8}, Lcom/masshabit/squibble/WorldMapPlayer;->setGraph(Lcom/masshabit/squibble/WorldMapGraph;)V

    .line 89
    iget-object v7, p0, Lcom/masshabit/squibble/WorldMapScreen;->mLevel:Lcom/masshabit/common/Level;

    iget-object v7, v7, Lcom/masshabit/common/Level;->mEntityIds:Ljava/util/HashMap;

    const-string v8, "hud"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/masshabit/squibble/WorldMapHud;

    iput-object v7, p0, Lcom/masshabit/squibble/WorldMapScreen;->mHud:Lcom/masshabit/squibble/WorldMapHud;

    .line 91
    move-object v0, v6

    .line 92
    .local v0, "current":Lcom/masshabit/squibble/WorldMapNode;
    sget-object v7, Lcom/masshabit/squibble/Screen;->sSharedArgs:Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 94
    iget-object v7, p0, Lcom/masshabit/squibble/WorldMapScreen;->mLevel:Lcom/masshabit/common/Level;

    iget-object v7, v7, Lcom/masshabit/common/Level;->mEntityIds:Ljava/util/HashMap;

    sget-object v8, Lcom/masshabit/squibble/Screen;->sSharedArgs:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "current":Lcom/masshabit/squibble/WorldMapNode;
    check-cast v0, Lcom/masshabit/squibble/WorldMapNode;

    .line 95
    .restart local v0    # "current":Lcom/masshabit/squibble/WorldMapNode;
    if-nez v0, :cond_3

    .line 98
    move-object v0, v6

    .line 101
    :cond_3
    iget-object v7, p0, Lcom/masshabit/squibble/WorldMapScreen;->mPlayer:Lcom/masshabit/squibble/WorldMapPlayer;

    invoke-virtual {v7, v0}, Lcom/masshabit/squibble/WorldMapPlayer;->setPosition(Lcom/masshabit/squibble/WorldMapNode;)V

    .line 102
    iget-object v7, p0, Lcom/masshabit/squibble/WorldMapScreen;->mHud:Lcom/masshabit/squibble/WorldMapHud;

    invoke-virtual {v7, v0}, Lcom/masshabit/squibble/WorldMapHud;->setData(Lcom/masshabit/squibble/WorldMapNode;)V

    .line 104
    iget-object v7, p0, Lcom/masshabit/squibble/WorldMapScreen;->mCameraTarget:Lcom/masshabit/common/physics/Vector2;

    iget-object v8, p0, Lcom/masshabit/squibble/WorldMapScreen;->mPlayer:Lcom/masshabit/squibble/WorldMapPlayer;

    iget-object v8, v8, Lcom/masshabit/squibble/WorldMapPlayer;->mPos:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v7, v8}, Lcom/masshabit/common/physics/Vector2;->set(Lcom/masshabit/common/physics/Vector2;)V

    .line 105
    iget-object v7, v1, Lcom/masshabit/common/Environment;->mCamera:Lcom/masshabit/common/Camera;

    iget-object v8, p0, Lcom/masshabit/squibble/WorldMapScreen;->mCameraTarget:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v7, v8}, Lcom/masshabit/common/Camera;->move(Lcom/masshabit/common/physics/Vector2;)V

    .line 106
    iget-object v7, v1, Lcom/masshabit/common/Environment;->mCamera:Lcom/masshabit/common/Camera;

    iget-object v8, p0, Lcom/masshabit/squibble/WorldMapScreen;->mCameraTarget:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v7, v8}, Lcom/masshabit/common/Camera;->setTarget(Lcom/masshabit/common/physics/Vector2;)V

    .line 107
    iget-object v7, v1, Lcom/masshabit/common/Environment;->mCamera:Lcom/masshabit/common/Camera;

    invoke-virtual {v7}, Lcom/masshabit/common/Camera;->calculateMatrices()V

    .line 109
    return-void
.end method

.method public onInputEvent(Lcom/masshabit/common/InputEvent;)V
    .locals 11
    .param p1, "e"    # Lcom/masshabit/common/InputEvent;

    .prologue
    const/4 v10, 0x4

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 164
    iget-byte v6, p1, Lcom/masshabit/common/InputEvent;->mEventType:B

    const/4 v7, 0x2

    if-ne v6, v7, :cond_7

    .line 166
    sget-object v2, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 169
    .local v2, "env":Lcom/masshabit/common/Environment;
    iget-object v6, p0, Lcom/masshabit/squibble/WorldMapScreen;->mPoint:[F

    iget-object v7, p1, Lcom/masshabit/common/InputEvent;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v7, v7, Lcom/masshabit/common/physics/Vector2;->x:F

    aput v7, v6, v9

    .line 170
    iget-object v6, p0, Lcom/masshabit/squibble/WorldMapScreen;->mPoint:[F

    iget-object v7, p1, Lcom/masshabit/common/InputEvent;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v7, v7, Lcom/masshabit/common/physics/Vector2;->y:F

    aput v7, v6, v8

    .line 171
    iget-object v6, v2, Lcom/masshabit/common/Environment;->mCamera:Lcom/masshabit/common/Camera;

    iget-object v6, v6, Lcom/masshabit/common/Camera;->mViewInv:Landroid/graphics/Matrix;

    iget-object v7, p0, Lcom/masshabit/squibble/WorldMapScreen;->mPoint:[F

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 172
    iget-object v6, p0, Lcom/masshabit/squibble/WorldMapScreen;->mPoint:[F

    aget v4, v6, v9

    .line 173
    .local v4, "x":F
    iget-object v6, p0, Lcom/masshabit/squibble/WorldMapScreen;->mPoint:[F

    aget v5, v6, v8

    .line 175
    .local v5, "y":F
    iget v6, p1, Lcom/masshabit/common/InputEvent;->mAction:I

    if-ne v6, v10, :cond_1

    .line 177
    iget-object v6, p1, Lcom/masshabit/common/InputEvent;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v6, v6, Lcom/masshabit/common/physics/Vector2;->x:F

    iget-object v7, p0, Lcom/masshabit/squibble/WorldMapScreen;->mDragAnchor:Lcom/masshabit/common/physics/Vector2;

    iget v7, v7, Lcom/masshabit/common/physics/Vector2;->x:F

    sub-float v0, v6, v7

    .line 178
    .local v0, "dx":F
    iget-object v6, p1, Lcom/masshabit/common/InputEvent;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v6, v6, Lcom/masshabit/common/physics/Vector2;->y:F

    iget-object v7, p0, Lcom/masshabit/squibble/WorldMapScreen;->mDragAnchor:Lcom/masshabit/common/physics/Vector2;

    iget v7, v7, Lcom/masshabit/common/physics/Vector2;->y:F

    sub-float v1, v6, v7

    .line 181
    .local v1, "dy":F
    iget-object v6, p0, Lcom/masshabit/squibble/WorldMapScreen;->mCameraTarget:Lcom/masshabit/common/physics/Vector2;

    iget v7, v6, Lcom/masshabit/common/physics/Vector2;->x:F

    sub-float/2addr v7, v0

    iput v7, v6, Lcom/masshabit/common/physics/Vector2;->x:F

    .line 182
    iget-object v6, p0, Lcom/masshabit/squibble/WorldMapScreen;->mCameraTarget:Lcom/masshabit/common/physics/Vector2;

    iget v7, v6, Lcom/masshabit/common/physics/Vector2;->y:F

    sub-float/2addr v7, v1

    iput v7, v6, Lcom/masshabit/common/physics/Vector2;->y:F

    .line 184
    iget-object v6, p0, Lcom/masshabit/squibble/WorldMapScreen;->mDragAnchor:Lcom/masshabit/common/physics/Vector2;

    iget-object v7, p1, Lcom/masshabit/common/InputEvent;->mPos:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v6, v7}, Lcom/masshabit/common/physics/Vector2;->set(Lcom/masshabit/common/physics/Vector2;)V

    .line 188
    iget-object v6, p0, Lcom/masshabit/squibble/WorldMapScreen;->mTapDownLocation:Lcom/masshabit/common/physics/Vector2;

    iget-object v7, p1, Lcom/masshabit/common/InputEvent;->mPos:Lcom/masshabit/common/physics/Vector2;

    invoke-static {v6, v7}, Lcom/masshabit/common/physics/Vector2;->distanceSq(Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;)F

    move-result v6

    const/high16 v7, 0x44c80000    # 1600.0f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    .line 190
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/masshabit/squibble/WorldMapScreen;->mTapDownTarget:Lcom/masshabit/squibble/WorldMapNode;

    .line 256
    .end local v0    # "dx":F
    .end local v1    # "dy":F
    .end local v2    # "env":Lcom/masshabit/common/Environment;
    .end local v4    # "x":F
    .end local v5    # "y":F
    :cond_0
    :goto_0
    return-void

    .line 193
    .restart local v2    # "env":Lcom/masshabit/common/Environment;
    .restart local v4    # "x":F
    .restart local v5    # "y":F
    :cond_1
    iget v6, p1, Lcom/masshabit/common/InputEvent;->mAction:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_5

    .line 195
    iget-object v6, p0, Lcom/masshabit/squibble/WorldMapScreen;->mDragAnchor:Lcom/masshabit/common/physics/Vector2;

    iget-object v7, p1, Lcom/masshabit/common/InputEvent;->mPos:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v6, v7}, Lcom/masshabit/common/physics/Vector2;->set(Lcom/masshabit/common/physics/Vector2;)V

    .line 199
    iget-object v6, p0, Lcom/masshabit/squibble/WorldMapScreen;->mHud:Lcom/masshabit/squibble/WorldMapHud;

    iget-object v7, p1, Lcom/masshabit/common/InputEvent;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v7, v7, Lcom/masshabit/common/physics/Vector2;->x:F

    iget-object v8, p1, Lcom/masshabit/common/InputEvent;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v8, v8, Lcom/masshabit/common/physics/Vector2;->y:F

    invoke-virtual {v6, v7, v8}, Lcom/masshabit/squibble/WorldMapHud;->checkPlayTap(FF)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 201
    iget-object v6, p0, Lcom/masshabit/squibble/WorldMapScreen;->mHud:Lcom/masshabit/squibble/WorldMapHud;

    invoke-virtual {v6}, Lcom/masshabit/squibble/WorldMapHud;->getData()Lcom/masshabit/squibble/WorldMapNode;

    move-result-object v3

    .line 202
    .local v3, "node":Lcom/masshabit/squibble/WorldMapNode;
    new-instance v6, Ljava/lang/String;

    iget-object v7, v3, Lcom/masshabit/squibble/WorldMapNode;->mProps:Lcom/masshabit/common/entity/EntityProperties;

    iget-object v7, v7, Lcom/masshabit/common/entity/EntityProperties;->id:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v6, Lcom/masshabit/squibble/Screen;->sSharedArgs:Ljava/lang/String;

    .line 203
    sput v9, Lcom/masshabit/squibble/GameScreen;->sLevelAttempts:I

    .line 204
    iget-object v6, v2, Lcom/masshabit/common/Environment;->mGame:Lcom/masshabit/squibble/Game;

    const/16 v7, 0x28

    invoke-virtual {v6, v7}, Lcom/masshabit/squibble/Game;->pushScreen(I)V

    .line 205
    iget-object v6, v3, Lcom/masshabit/squibble/WorldMapNode;->mProps:Lcom/masshabit/common/entity/EntityProperties;

    iget-object v6, v6, Lcom/masshabit/common/entity/EntityProperties;->id:Ljava/lang/String;

    const-string v7, "lab_1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 207
    iget-object v6, v2, Lcom/masshabit/common/Environment;->mGame:Lcom/masshabit/squibble/Game;

    const/16 v7, 0x50

    invoke-virtual {v6, v7}, Lcom/masshabit/squibble/Game;->pushScreen(I)V

    .line 209
    :cond_2
    iget-object v6, v2, Lcom/masshabit/common/Environment;->mGame:Lcom/masshabit/squibble/Game;

    invoke-virtual {v6}, Lcom/masshabit/squibble/Game;->nextScreen()V

    goto :goto_0

    .line 211
    .end local v3    # "node":Lcom/masshabit/squibble/WorldMapNode;
    :cond_3
    iget-object v6, p0, Lcom/masshabit/squibble/WorldMapScreen;->mMute:Lcom/masshabit/squibble/MuteEntity;

    iget-object v7, p1, Lcom/masshabit/common/InputEvent;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v7, v7, Lcom/masshabit/common/physics/Vector2;->x:F

    iget-object v8, p1, Lcom/masshabit/common/InputEvent;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v8, v8, Lcom/masshabit/common/physics/Vector2;->y:F

    invoke-virtual {v6, v7, v8}, Lcom/masshabit/squibble/MuteEntity;->checkTap(FF)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 213
    iget-object v6, p0, Lcom/masshabit/squibble/WorldMapScreen;->mMute:Lcom/masshabit/squibble/MuteEntity;

    invoke-virtual {v6}, Lcom/masshabit/squibble/MuteEntity;->toggle()V

    goto :goto_0

    .line 217
    :cond_4
    iget-object v6, p0, Lcom/masshabit/squibble/WorldMapScreen;->mGraph:Lcom/masshabit/squibble/WorldMapGraph;

    invoke-virtual {v6, v4, v5}, Lcom/masshabit/squibble/WorldMapGraph;->checkTap(FF)Lcom/masshabit/squibble/WorldMapNode;

    move-result-object v3

    .line 218
    .restart local v3    # "node":Lcom/masshabit/squibble/WorldMapNode;
    iput-object v3, p0, Lcom/masshabit/squibble/WorldMapScreen;->mTapDownTarget:Lcom/masshabit/squibble/WorldMapNode;

    .line 219
    iget-object v6, p0, Lcom/masshabit/squibble/WorldMapScreen;->mTapDownLocation:Lcom/masshabit/common/physics/Vector2;

    iget-object v7, p1, Lcom/masshabit/common/InputEvent;->mPos:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v6, v7}, Lcom/masshabit/common/physics/Vector2;->set(Lcom/masshabit/common/physics/Vector2;)V

    goto :goto_0

    .line 222
    .end local v3    # "node":Lcom/masshabit/squibble/WorldMapNode;
    :cond_5
    iget v6, p1, Lcom/masshabit/common/InputEvent;->mAction:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_0

    .line 224
    iget-object v6, p0, Lcom/masshabit/squibble/WorldMapScreen;->mTapDownTarget:Lcom/masshabit/squibble/WorldMapNode;

    if-eqz v6, :cond_0

    .line 226
    iget-object v6, p0, Lcom/masshabit/squibble/WorldMapScreen;->mGraph:Lcom/masshabit/squibble/WorldMapGraph;

    invoke-virtual {v6, v4, v5}, Lcom/masshabit/squibble/WorldMapGraph;->checkTap(FF)Lcom/masshabit/squibble/WorldMapNode;

    move-result-object v3

    .line 228
    .restart local v3    # "node":Lcom/masshabit/squibble/WorldMapNode;
    if-eqz v3, :cond_0

    iget-object v6, p0, Lcom/masshabit/squibble/WorldMapScreen;->mTapDownTarget:Lcom/masshabit/squibble/WorldMapNode;

    if-ne v3, v6, :cond_0

    .line 230
    invoke-static {}, Lcom/masshabit/common/Globals;->freeMode()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, v3, Lcom/masshabit/squibble/WorldMapNode;->mProps:Lcom/masshabit/common/entity/EntityProperties;

    iget-object v6, v6, Lcom/masshabit/common/entity/EntityProperties;->id:Ljava/lang/String;

    invoke-static {v6}, Lcom/masshabit/common/Globals;->isLevelIncluded(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 233
    new-instance v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/masshabit/squibble/WorldMapScreen;->mHud:Lcom/masshabit/squibble/WorldMapHud;

    invoke-virtual {v7}, Lcom/masshabit/squibble/WorldMapHud;->getData()Lcom/masshabit/squibble/WorldMapNode;

    move-result-object v7

    iget-object v7, v7, Lcom/masshabit/squibble/WorldMapNode;->mProps:Lcom/masshabit/common/entity/EntityProperties;

    iget-object v7, v7, Lcom/masshabit/common/entity/EntityProperties;->id:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v6, Lcom/masshabit/squibble/Screen;->sSharedArgs:Ljava/lang/String;

    .line 234
    iget-object v6, v2, Lcom/masshabit/common/Environment;->mGame:Lcom/masshabit/squibble/Game;

    const/16 v7, 0x32

    invoke-virtual {v6, v7}, Lcom/masshabit/squibble/Game;->changeScreen(I)V

    goto/16 :goto_0

    .line 236
    :cond_6
    invoke-virtual {v3}, Lcom/masshabit/squibble/WorldMapNode;->getState()I

    move-result v6

    if-eqz v6, :cond_0

    .line 238
    iget-object v6, p0, Lcom/masshabit/squibble/WorldMapScreen;->mPlayer:Lcom/masshabit/squibble/WorldMapPlayer;

    invoke-virtual {v6, v3}, Lcom/masshabit/squibble/WorldMapPlayer;->setTarget(Lcom/masshabit/squibble/WorldMapNode;)V

    .line 239
    iget-object v6, p0, Lcom/masshabit/squibble/WorldMapScreen;->mHud:Lcom/masshabit/squibble/WorldMapHud;

    invoke-virtual {v6, v3}, Lcom/masshabit/squibble/WorldMapHud;->setData(Lcom/masshabit/squibble/WorldMapNode;)V

    .line 240
    invoke-static {}, Ljava/lang/System;->gc()V

    goto/16 :goto_0

    .line 248
    .end local v2    # "env":Lcom/masshabit/common/Environment;
    .end local v3    # "node":Lcom/masshabit/squibble/WorldMapNode;
    .end local v4    # "x":F
    .end local v5    # "y":F
    :cond_7
    iget v6, p1, Lcom/masshabit/common/InputEvent;->mAction:I

    if-ne v6, v8, :cond_0

    .line 250
    iget v6, p1, Lcom/masshabit/common/InputEvent;->mKeyCode:I

    if-ne v6, v10, :cond_0

    .line 252
    sget-object v6, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    iget-object v6, v6, Lcom/masshabit/common/Environment;->mGame:Lcom/masshabit/squibble/Game;

    const/16 v7, 0x14

    invoke-virtual {v6, v7}, Lcom/masshabit/squibble/Game;->changeScreen(I)V

    goto/16 :goto_0
.end method

.method public onMutedChanged(Z)V
    .locals 1
    .param p1, "muted"    # Z

    .prologue
    .line 261
    iget-object v0, p0, Lcom/masshabit/squibble/WorldMapScreen;->mMute:Lcom/masshabit/squibble/MuteEntity;

    invoke-virtual {v0, p1}, Lcom/masshabit/squibble/MuteEntity;->onMutedChanged(Z)V

    .line 262
    return-void
.end method

.method public update(F)V
    .locals 9
    .param p1, "dt"    # F

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 139
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 141
    .local v0, "env":Lcom/masshabit/common/Environment;
    iget-object v3, p0, Lcom/masshabit/squibble/WorldMapScreen;->mPlayer:Lcom/masshabit/squibble/WorldMapPlayer;

    iget-boolean v3, v3, Lcom/masshabit/squibble/WorldMapPlayer;->mInMotion:Z

    if-eqz v3, :cond_0

    .line 143
    iget-object v3, p0, Lcom/masshabit/squibble/WorldMapScreen;->mCameraTarget:Lcom/masshabit/common/physics/Vector2;

    iget-object v4, p0, Lcom/masshabit/squibble/WorldMapScreen;->mPlayer:Lcom/masshabit/squibble/WorldMapPlayer;

    iget-object v4, v4, Lcom/masshabit/squibble/WorldMapPlayer;->mPos:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v3, v4}, Lcom/masshabit/common/physics/Vector2;->set(Lcom/masshabit/common/physics/Vector2;)V

    .line 147
    :cond_0
    iget-object v3, p0, Lcom/masshabit/squibble/WorldMapScreen;->mCameraTarget:Lcom/masshabit/common/physics/Vector2;

    iget-object v4, p0, Lcom/masshabit/squibble/WorldMapScreen;->mCameraTarget:Lcom/masshabit/common/physics/Vector2;

    iget v4, v4, Lcom/masshabit/common/physics/Vector2;->x:F

    iget v5, v0, Lcom/masshabit/common/Environment;->mScreenWidth:F

    div-float/2addr v5, v8

    iget-object v6, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget v6, v6, Lcom/masshabit/common/Level;->mWidth:F

    iget v7, v0, Lcom/masshabit/common/Environment;->mScreenWidth:F

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    invoke-static {v4, v5, v6}, Lcom/masshabit/common/Util;->clamp(FFF)F

    move-result v4

    iput v4, v3, Lcom/masshabit/common/physics/Vector2;->x:F

    .line 148
    iget-object v3, p0, Lcom/masshabit/squibble/WorldMapScreen;->mCameraTarget:Lcom/masshabit/common/physics/Vector2;

    iget-object v4, p0, Lcom/masshabit/squibble/WorldMapScreen;->mCameraTarget:Lcom/masshabit/common/physics/Vector2;

    iget v4, v4, Lcom/masshabit/common/physics/Vector2;->y:F

    iget v5, v0, Lcom/masshabit/common/Environment;->mScreenHeight:F

    div-float/2addr v5, v8

    iget-object v6, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget v6, v6, Lcom/masshabit/common/Level;->mHeight:F

    iget v7, v0, Lcom/masshabit/common/Environment;->mScreenHeight:F

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    invoke-static {v4, v5, v6}, Lcom/masshabit/common/Util;->clamp(FFF)F

    move-result v4

    iput v4, v3, Lcom/masshabit/common/physics/Vector2;->y:F

    .line 150
    iget-object v3, v0, Lcom/masshabit/common/Environment;->mCamera:Lcom/masshabit/common/Camera;

    iget-object v4, p0, Lcom/masshabit/squibble/WorldMapScreen;->mCameraTarget:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v3, v4}, Lcom/masshabit/common/Camera;->setTarget(Lcom/masshabit/common/physics/Vector2;)V

    .line 151
    iget-object v3, v0, Lcom/masshabit/common/Environment;->mCamera:Lcom/masshabit/common/Camera;

    invoke-virtual {v3, p1}, Lcom/masshabit/common/Camera;->update(F)V

    .line 153
    iget-object v3, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v3, v3, Lcom/masshabit/common/Level;->mLayers:[Lcom/masshabit/common/Layer;

    array-length v2, v3

    .line 154
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 156
    iget-object v3, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v3, v3, Lcom/masshabit/common/Level;->mLayers:[Lcom/masshabit/common/Layer;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Lcom/masshabit/common/Layer;->update(F)V

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 159
    :cond_1
    iget-object v3, p0, Lcom/masshabit/squibble/WorldMapScreen;->mHud:Lcom/masshabit/squibble/WorldMapHud;

    iget-object v4, p0, Lcom/masshabit/squibble/WorldMapScreen;->mPlayer:Lcom/masshabit/squibble/WorldMapPlayer;

    invoke-virtual {v4}, Lcom/masshabit/squibble/WorldMapPlayer;->isStationary()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/masshabit/squibble/WorldMapHud;->setActive(Z)V

    .line 160
    return-void
.end method
