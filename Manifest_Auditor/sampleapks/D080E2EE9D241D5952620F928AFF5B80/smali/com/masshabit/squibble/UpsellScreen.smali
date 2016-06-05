.class public Lcom/masshabit/squibble/UpsellScreen;
.super Lcom/masshabit/squibble/Screen;
.source "UpsellScreen.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "UpsellScreen"


# instance fields
.field public mBack:Lcom/masshabit/squibble/ButtonEntity;

.field public mBuy:Lcom/masshabit/squibble/ButtonEntity;

.field public mLevel:Lcom/masshabit/common/Level;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/masshabit/squibble/Screen;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Lcom/masshabit/squibble/Screen;->destroy()V

    .line 66
    iget-object v0, p0, Lcom/masshabit/squibble/UpsellScreen;->mLevel:Lcom/masshabit/common/Level;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/masshabit/squibble/UpsellScreen;->mLevel:Lcom/masshabit/common/Level;

    invoke-virtual {v0}, Lcom/masshabit/common/Level;->destroy()V

    .line 70
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 75
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 77
    .local v0, "env":Lcom/masshabit/common/Environment;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 78
    iget-object v3, v0, Lcom/masshabit/common/Environment;->mCamera:Lcom/masshabit/common/Camera;

    iget-object v3, v3, Lcom/masshabit/common/Camera;->mView:Landroid/graphics/Matrix;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 80
    iget-object v3, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v3, v3, Lcom/masshabit/common/Level;->mLayers:[Lcom/masshabit/common/Layer;

    array-length v2, v3

    .line 81
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 83
    iget-object v3, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v3, v3, Lcom/masshabit/common/Level;->mLayers:[Lcom/masshabit/common/Layer;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Lcom/masshabit/common/Layer;->draw(Landroid/graphics/Canvas;)V

    .line 81
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 87
    return-void
.end method

.method public init()V
    .locals 8

    .prologue
    const/high16 v7, 0x40a00000    # 5.0f

    const/high16 v6, 0x40000000    # 2.0f

    .line 30
    sget-object v2, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 34
    .local v2, "env":Lcom/masshabit/common/Environment;
    new-instance v3, Lcom/masshabit/common/Level;

    const-string v4, "menu"

    invoke-direct {v3, v4}, Lcom/masshabit/common/Level;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/masshabit/squibble/UpsellScreen;->mLevel:Lcom/masshabit/common/Level;

    .line 35
    iget-object v3, p0, Lcom/masshabit/squibble/UpsellScreen;->mLevel:Lcom/masshabit/common/Level;

    iput-object v3, v2, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    .line 36
    iget-object v3, p0, Lcom/masshabit/squibble/UpsellScreen;->mLevel:Lcom/masshabit/common/Level;

    invoke-virtual {v3}, Lcom/masshabit/common/Level;->registerGeometry()V

    .line 38
    new-instance v3, Lcom/masshabit/common/LevelLoader;

    iget-object v4, p0, Lcom/masshabit/squibble/UpsellScreen;->mLevel:Lcom/masshabit/common/Level;

    new-instance v5, Lcom/masshabit/squibble/EntityFactory;

    invoke-direct {v5}, Lcom/masshabit/squibble/EntityFactory;-><init>()V

    invoke-direct {v3, v4, v5}, Lcom/masshabit/common/LevelLoader;-><init>(Lcom/masshabit/common/Level;Lcom/masshabit/common/entity/IEntityFactory;)V

    const-string v4, "upsell.svg"

    invoke-virtual {v3, v4}, Lcom/masshabit/common/LevelLoader;->load(Ljava/lang/String;)V

    .line 39
    iget-object v3, p0, Lcom/masshabit/squibble/UpsellScreen;->mLevel:Lcom/masshabit/common/Level;

    iget-boolean v3, v3, Lcom/masshabit/common/Level;->mLoaded:Z

    if-nez v3, :cond_0

    .line 41
    const-string v3, "UpsellScreen"

    const-string v4, "Level load failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_0
    iget-object v3, p0, Lcom/masshabit/squibble/UpsellScreen;->mLevel:Lcom/masshabit/common/Level;

    iget-object v3, v3, Lcom/masshabit/common/Level;->mEntityIds:Ljava/util/HashMap;

    const-string v4, "buy"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/masshabit/squibble/ButtonEntity;

    iput-object v3, p0, Lcom/masshabit/squibble/UpsellScreen;->mBuy:Lcom/masshabit/squibble/ButtonEntity;

    .line 46
    iget-object v3, p0, Lcom/masshabit/squibble/UpsellScreen;->mLevel:Lcom/masshabit/common/Level;

    iget-object v3, v3, Lcom/masshabit/common/Level;->mEntityIds:Ljava/util/HashMap;

    const-string v4, "back"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/masshabit/squibble/ButtonEntity;

    iput-object v3, p0, Lcom/masshabit/squibble/UpsellScreen;->mBack:Lcom/masshabit/squibble/ButtonEntity;

    .line 47
    iget-object v3, p0, Lcom/masshabit/squibble/UpsellScreen;->mBack:Lcom/masshabit/squibble/ButtonEntity;

    iget-object v3, v3, Lcom/masshabit/squibble/ButtonEntity;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v4, v2, Lcom/masshabit/common/Environment;->mScreenHeight:F

    iget-object v5, p0, Lcom/masshabit/squibble/UpsellScreen;->mBack:Lcom/masshabit/squibble/ButtonEntity;

    iget v5, v5, Lcom/masshabit/squibble/ButtonEntity;->mHeight:F

    sub-float/2addr v4, v5

    sub-float/2addr v4, v7

    invoke-virtual {v3, v7, v4}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 48
    iget-object v3, p0, Lcom/masshabit/squibble/UpsellScreen;->mBack:Lcom/masshabit/squibble/ButtonEntity;

    invoke-virtual {v3}, Lcom/masshabit/squibble/ButtonEntity;->calcMatrix()V

    .line 51
    iget v3, v2, Lcom/masshabit/common/Environment;->mScreenWidth:F

    div-float v0, v3, v6

    .line 52
    .local v0, "camx":F
    iget v3, v2, Lcom/masshabit/common/Environment;->mScreenHeight:F

    div-float v1, v3, v6

    .line 53
    .local v1, "camy":F
    iget-object v3, v2, Lcom/masshabit/common/Environment;->mCamera:Lcom/masshabit/common/Camera;

    invoke-virtual {v3, v0, v1}, Lcom/masshabit/common/Camera;->move(FF)V

    .line 54
    iget-object v3, v2, Lcom/masshabit/common/Environment;->mCamera:Lcom/masshabit/common/Camera;

    invoke-virtual {v3, v0, v1}, Lcom/masshabit/common/Camera;->setTarget(FF)V

    .line 55
    iget-object v3, v2, Lcom/masshabit/common/Environment;->mCamera:Lcom/masshabit/common/Camera;

    invoke-virtual {v3}, Lcom/masshabit/common/Camera;->calculateMatrices()V

    .line 57
    iget-object v3, p0, Lcom/masshabit/squibble/UpsellScreen;->mLevel:Lcom/masshabit/common/Level;

    invoke-virtual {v3}, Lcom/masshabit/common/Level;->init()V

    .line 59
    const-string v3, "show_upsell"

    invoke-static {v3}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public onInputEvent(Lcom/masshabit/common/InputEvent;)V
    .locals 4
    .param p1, "e"    # Lcom/masshabit/common/InputEvent;

    .prologue
    const/16 v3, 0x1e

    .line 105
    iget-byte v0, p1, Lcom/masshabit/common/InputEvent;->mEventType:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 107
    iget v0, p1, Lcom/masshabit/common/InputEvent;->mAction:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/masshabit/squibble/UpsellScreen;->mBuy:Lcom/masshabit/squibble/ButtonEntity;

    iget-object v1, p1, Lcom/masshabit/common/InputEvent;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v1, v1, Lcom/masshabit/common/physics/Vector2;->x:F

    iget-object v2, p1, Lcom/masshabit/common/InputEvent;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v2, v2, Lcom/masshabit/common/physics/Vector2;->y:F

    invoke-virtual {v0, v1, v2}, Lcom/masshabit/squibble/ButtonEntity;->checkTap(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    iget-object v0, v0, Lcom/masshabit/common/Environment;->mGame:Lcom/masshabit/squibble/Game;

    invoke-virtual {v0, v3}, Lcom/masshabit/squibble/Game;->changeScreen(I)V

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/masshabit/squibble/UpsellScreen;->mBack:Lcom/masshabit/squibble/ButtonEntity;

    iget-object v1, p1, Lcom/masshabit/common/InputEvent;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v1, v1, Lcom/masshabit/common/physics/Vector2;->x:F

    iget-object v2, p1, Lcom/masshabit/common/InputEvent;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v2, v2, Lcom/masshabit/common/physics/Vector2;->y:F

    invoke-virtual {v0, v1, v2}, Lcom/masshabit/squibble/ButtonEntity;->checkTap(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    iget-object v0, v0, Lcom/masshabit/common/Environment;->mGame:Lcom/masshabit/squibble/Game;

    invoke-virtual {v0, v3}, Lcom/masshabit/squibble/Game;->changeScreen(I)V

    goto :goto_0

    .line 131
    :cond_2
    iget v0, p1, Lcom/masshabit/common/InputEvent;->mAction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 133
    iget v0, p1, Lcom/masshabit/common/InputEvent;->mKeyCode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 135
    const-string v0, "upsell_decline"

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;)V

    .line 136
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    iget-object v0, v0, Lcom/masshabit/common/Environment;->mGame:Lcom/masshabit/squibble/Game;

    invoke-virtual {v0, v3}, Lcom/masshabit/squibble/Game;->changeScreen(I)V

    goto :goto_0
.end method

.method public update(F)V
    .locals 4
    .param p1, "dt"    # F

    .prologue
    .line 92
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 93
    .local v0, "env":Lcom/masshabit/common/Environment;
    iget-object v3, v0, Lcom/masshabit/common/Environment;->mCamera:Lcom/masshabit/common/Camera;

    invoke-virtual {v3, p1}, Lcom/masshabit/common/Camera;->update(F)V

    .line 95
    iget-object v3, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v3, v3, Lcom/masshabit/common/Level;->mLayers:[Lcom/masshabit/common/Layer;

    array-length v2, v3

    .line 96
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 98
    iget-object v3, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v3, v3, Lcom/masshabit/common/Level;->mLayers:[Lcom/masshabit/common/Layer;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Lcom/masshabit/common/Layer;->update(F)V

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100
    :cond_0
    return-void
.end method
