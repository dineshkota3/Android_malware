.class public Lcom/masshabit/squibble/GameScreen;
.super Lcom/masshabit/squibble/Screen;
.source "GameScreen.java"


# static fields
.field public static final NUM_SOUNDS:I = 0x7

.field public static final SOUND_GRAPPLE:I = 0x6

.field public static final SOUND_HURT:I = 0x5

.field public static final SOUND_LEVEL_COMPLETE:I = 0x4

.field public static final SOUND_POP:I = 0x0

.field public static final SOUND_RELEASE:I = 0x2

.field public static final SOUND_SPLAT:I = 0x3

.field public static final SOUND_STRETCH:I = 0x1

.field public static final TAG:Ljava/lang/String; = "GameScreen"

.field public static sLevelAttempts:I


# instance fields
.field protected mDropIcon:Landroid/graphics/Bitmap;

.field protected mElapsedTime:F

.field protected mHealthIconEmpty:Landroid/graphics/Bitmap;

.field protected mHealthIconFull:Landroid/graphics/Bitmap;

.field protected final mItemPercentage:[C

.field public mLevel:Lcom/masshabit/common/Level;

.field protected final mPaint:Landroid/graphics/Paint;

.field public mPlayer:Lcom/masshabit/squibble/Player;

.field public mTransformBuffer:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput v0, Lcom/masshabit/squibble/GameScreen;->sLevelAttempts:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/masshabit/squibble/Screen;-><init>()V

    .line 45
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/masshabit/squibble/GameScreen;->mTransformBuffer:[F

    .line 50
    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/masshabit/squibble/GameScreen;->mItemPercentage:[C

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/masshabit/squibble/GameScreen;->mPaint:Landroid/graphics/Paint;

    return-void

    .line 50
    :array_0
    .array-data 2
        0x20s
        0x20s
        0x20s
        0x25s
    .end array-data
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0}, Lcom/masshabit/squibble/Screen;->destroy()V

    .line 135
    iget-object v0, p0, Lcom/masshabit/squibble/GameScreen;->mLevel:Lcom/masshabit/common/Level;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/masshabit/squibble/GameScreen;->mLevel:Lcom/masshabit/common/Level;

    invoke-virtual {v0}, Lcom/masshabit/common/Level;->destroy()V

    .line 139
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 21
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 156
    sget-object v16, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 158
    .local v16, "env":Lcom/masshabit/common/Environment;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 159
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/masshabit/common/Environment;->mCamera:Lcom/masshabit/common/Camera;

    move-object v5, v0

    iget-object v5, v5, Lcom/masshabit/common/Camera;->mView:Landroid/graphics/Matrix;

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 161
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    move-object v5, v0

    iget-object v5, v5, Lcom/masshabit/common/Level;->mLayers:[Lcom/masshabit/common/Layer;

    move-object v0, v5

    array-length v0, v0

    move/from16 v18, v0

    .line 162
    .local v18, "length":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 164
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    move-object v5, v0

    iget-object v5, v5, Lcom/masshabit/common/Level;->mLayers:[Lcom/masshabit/common/Layer;

    aget-object v5, v5, v17

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/masshabit/common/Layer;->draw(Landroid/graphics/Canvas;)V

    .line 162
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 166
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 168
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 169
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 170
    const/high16 v5, 0x40a00000    # 5.0f

    const/high16 v6, 0x40a00000    # 5.0f

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 172
    const/16 v20, 0x0

    .line 173
    .local v20, "x":F
    const/16 v17, 0x1

    :goto_1
    const/4 v5, 0x3

    move/from16 v0, v17

    move v1, v5

    if-gt v0, v1, :cond_2

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/masshabit/squibble/GameScreen;->mPlayer:Lcom/masshabit/squibble/Player;

    move-object v5, v0

    iget v5, v5, Lcom/masshabit/squibble/Player;->mHealth:I

    move/from16 v0, v17

    move v1, v5

    if-gt v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/masshabit/squibble/GameScreen;->mHealthIconFull:Landroid/graphics/Bitmap;

    move-object v5, v0

    move-object v12, v5

    .line 176
    .local v12, "b":Landroid/graphics/Bitmap;
    :goto_2
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object v1, v12

    move/from16 v2, v20

    move v3, v5

    move-object v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 177
    const/high16 v5, 0x40a00000    # 5.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/masshabit/squibble/GameScreen;->mHealthIconFull:Landroid/graphics/Bitmap;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    add-float v20, v20, v5

    .line 173
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 175
    .end local v12    # "b":Landroid/graphics/Bitmap;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/masshabit/squibble/GameScreen;->mHealthIconEmpty:Landroid/graphics/Bitmap;

    move-object v5, v0

    move-object v12, v5

    goto :goto_2

    .line 179
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 181
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 182
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 184
    const/high16 v5, 0x41100000    # 9.0f

    const/high16 v6, 0x41c00000    # 24.0f

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/masshabit/squibble/GameScreen;->mDropIcon:Landroid/graphics/Bitmap;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 186
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 188
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 189
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 190
    const/high16 v5, 0x41c00000    # 24.0f

    const/high16 v6, 0x41a00000    # 20.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/masshabit/squibble/GameScreen;->mPaint:Landroid/graphics/Paint;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/graphics/Paint;->getTextSize()F

    move-result v7

    add-float/2addr v6, v7

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/masshabit/squibble/GameScreen;->mLevel:Lcom/masshabit/common/Level;

    move-object v5, v0

    iget v5, v5, Lcom/masshabit/common/Level;->mItemsCollected:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/masshabit/squibble/GameScreen;->mLevel:Lcom/masshabit/common/Level;

    move-object v6, v0

    iget v6, v6, Lcom/masshabit/common/Level;->mTotalItems:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v5, v6

    move v0, v5

    float-to-int v0, v0

    move/from16 v19, v0

    .line 194
    .local v19, "percent":I
    const/4 v8, 0x0

    .line 195
    .local v8, "charCount":I
    div-int/lit8 v5, v19, 0x64

    rem-int/lit8 v5, v5, 0xa

    int-to-char v13, v5

    .line 196
    .local v13, "c1":C
    const/16 v5, 0x64

    move/from16 v0, v19

    move v1, v5

    if-lt v0, v1, :cond_3

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/masshabit/squibble/GameScreen;->mItemPercentage:[C

    move-object v5, v0

    add-int/lit8 v15, v8, 0x1

    .end local v8    # "charCount":I
    .local v15, "charCount":I
    add-int/lit8 v6, v13, 0x30

    int-to-char v6, v6

    aput-char v6, v5, v8

    move v8, v15

    .line 200
    .end local v15    # "charCount":I
    .restart local v8    # "charCount":I
    :cond_3
    div-int/lit8 v5, v19, 0xa

    rem-int/lit8 v5, v5, 0xa

    int-to-char v14, v5

    .line 201
    .local v14, "c2":C
    const/16 v5, 0xa

    move/from16 v0, v19

    move v1, v5

    if-lt v0, v1, :cond_4

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/masshabit/squibble/GameScreen;->mItemPercentage:[C

    move-object v5, v0

    add-int/lit8 v15, v8, 0x1

    .end local v8    # "charCount":I
    .restart local v15    # "charCount":I
    add-int/lit8 v6, v14, 0x30

    int-to-char v6, v6

    aput-char v6, v5, v8

    move v8, v15

    .line 205
    .end local v15    # "charCount":I
    .restart local v8    # "charCount":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/masshabit/squibble/GameScreen;->mItemPercentage:[C

    move-object v5, v0

    add-int/lit8 v15, v8, 0x1

    .end local v8    # "charCount":I
    .restart local v15    # "charCount":I
    rem-int/lit8 v6, v19, 0xa

    add-int/lit8 v6, v6, 0x30

    int-to-char v6, v6

    aput-char v6, v5, v8

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/masshabit/squibble/GameScreen;->mItemPercentage:[C

    move-object v5, v0

    add-int/lit8 v8, v15, 0x1

    .end local v15    # "charCount":I
    .restart local v8    # "charCount":I
    const/16 v6, 0x25

    aput-char v6, v5, v15

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/masshabit/squibble/GameScreen;->mItemPercentage:[C

    move-object v6, v0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/masshabit/squibble/GameScreen;->mPaint:Landroid/graphics/Paint;

    move-object v11, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 209
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 211
    return-void
.end method

.method public init()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    const-string v9, "GameScreen"

    .line 66
    sget-object v1, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 70
    .local v1, "env":Lcom/masshabit/common/Environment;
    new-instance v3, Lcom/masshabit/common/Level;

    sget-object v4, Lcom/masshabit/squibble/Screen;->sSharedArgs:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/masshabit/common/Level;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/masshabit/squibble/GameScreen;->mLevel:Lcom/masshabit/common/Level;

    .line 71
    iget-object v3, p0, Lcom/masshabit/squibble/GameScreen;->mLevel:Lcom/masshabit/common/Level;

    iput-object v3, v1, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    .line 72
    iget-object v3, p0, Lcom/masshabit/squibble/GameScreen;->mLevel:Lcom/masshabit/common/Level;

    invoke-virtual {v3}, Lcom/masshabit/common/Level;->registerGeometry()V

    .line 74
    new-instance v3, Lcom/masshabit/common/LevelLoader;

    iget-object v4, p0, Lcom/masshabit/squibble/GameScreen;->mLevel:Lcom/masshabit/common/Level;

    new-instance v5, Lcom/masshabit/squibble/EntityFactory;

    invoke-direct {v5}, Lcom/masshabit/squibble/EntityFactory;-><init>()V

    invoke-direct {v3, v4, v5}, Lcom/masshabit/common/LevelLoader;-><init>(Lcom/masshabit/common/Level;Lcom/masshabit/common/entity/IEntityFactory;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/masshabit/squibble/Screen;->sSharedArgs:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".svg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/masshabit/common/LevelLoader;->load(Ljava/lang/String;)V

    .line 75
    iget-object v3, p0, Lcom/masshabit/squibble/GameScreen;->mLevel:Lcom/masshabit/common/Level;

    iget-boolean v3, v3, Lcom/masshabit/common/Level;->mLoaded:Z

    if-nez v3, :cond_0

    .line 77
    const-string v3, "GameScreen"

    const-string v3, "Level load failed"

    invoke-static {v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    const-string v3, "sound/pop.ogg"

    invoke-virtual {p0, v7, v3}, Lcom/masshabit/squibble/GameScreen;->loadSound(ILjava/lang/String;)V

    .line 81
    const-string v3, "sound/stretch.ogg"

    invoke-virtual {p0, v8, v3}, Lcom/masshabit/squibble/GameScreen;->loadSound(ILjava/lang/String;)V

    .line 82
    const/4 v3, 0x2

    const-string v4, "sound/release.ogg"

    invoke-virtual {p0, v3, v4}, Lcom/masshabit/squibble/GameScreen;->loadSound(ILjava/lang/String;)V

    .line 83
    const/4 v3, 0x3

    const-string v4, "sound/splat.ogg"

    invoke-virtual {p0, v3, v4}, Lcom/masshabit/squibble/GameScreen;->loadSound(ILjava/lang/String;)V

    .line 85
    const/4 v3, 0x5

    const-string v4, "sound/hurt.ogg"

    invoke-virtual {p0, v3, v4}, Lcom/masshabit/squibble/GameScreen;->loadSound(ILjava/lang/String;)V

    .line 86
    const/4 v3, 0x6

    const-string v4, "sound/grapple.ogg"

    invoke-virtual {p0, v3, v4}, Lcom/masshabit/squibble/GameScreen;->loadSound(ILjava/lang/String;)V

    .line 89
    iget-object v3, p0, Lcom/masshabit/squibble/GameScreen;->mLevel:Lcom/masshabit/common/Level;

    iget-object v3, v3, Lcom/masshabit/common/Level;->mEntityIds:Ljava/util/HashMap;

    const-string v4, "player"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/masshabit/squibble/Player;

    iput-object v3, p0, Lcom/masshabit/squibble/GameScreen;->mPlayer:Lcom/masshabit/squibble/Player;

    .line 90
    const-string v3, "Level must contain an entity with id \'player\' to indicate player spawn point"

    iget-object v4, p0, Lcom/masshabit/squibble/GameScreen;->mPlayer:Lcom/masshabit/squibble/Player;

    if-eqz v4, :cond_1

    move v4, v8

    :goto_0
    invoke-static {v3, v4}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 92
    iget-object v3, p0, Lcom/masshabit/squibble/GameScreen;->mLevel:Lcom/masshabit/common/Level;

    iget-object v3, v3, Lcom/masshabit/common/Level;->mEntityIds:Ljava/util/HashMap;

    const-string v4, "camera"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/masshabit/common/entity/Entity;

    iget-object v0, v3, Lcom/masshabit/common/entity/Entity;->mPos:Lcom/masshabit/common/physics/Vector2;

    .line 93
    .local v0, "cameraPos":Lcom/masshabit/common/physics/Vector2;
    iget-object v3, v1, Lcom/masshabit/common/Environment;->mCamera:Lcom/masshabit/common/Camera;

    invoke-virtual {v3, v0}, Lcom/masshabit/common/Camera;->move(Lcom/masshabit/common/physics/Vector2;)V

    .line 94
    iget-object v3, v1, Lcom/masshabit/common/Environment;->mCamera:Lcom/masshabit/common/Camera;

    invoke-virtual {v3, v0}, Lcom/masshabit/common/Camera;->setTarget(Lcom/masshabit/common/physics/Vector2;)V

    .line 95
    iget-object v3, v1, Lcom/masshabit/common/Environment;->mCamera:Lcom/masshabit/common/Camera;

    invoke-virtual {v3}, Lcom/masshabit/common/Camera;->calculateMatrices()V

    .line 97
    iget-object v3, p0, Lcom/masshabit/squibble/GameScreen;->mLevel:Lcom/masshabit/common/Level;

    iget-object v3, v3, Lcom/masshabit/common/Level;->mBitmaps:Lcom/masshabit/common/resource/BitmapResourceMap;

    iget-object v4, p0, Lcom/masshabit/squibble/GameScreen;->mLevel:Lcom/masshabit/common/Level;

    iget-object v4, v4, Lcom/masshabit/common/Level;->mBitmaps:Lcom/masshabit/common/resource/BitmapResourceMap;

    const-string v5, "common/health-empty.png"

    invoke-virtual {v4, v5}, Lcom/masshabit/common/resource/BitmapResourceMap;->load(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/masshabit/common/resource/BitmapResourceMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/masshabit/squibble/GameScreen;->mHealthIconEmpty:Landroid/graphics/Bitmap;

    .line 98
    iget-object v3, p0, Lcom/masshabit/squibble/GameScreen;->mLevel:Lcom/masshabit/common/Level;

    iget-object v3, v3, Lcom/masshabit/common/Level;->mBitmaps:Lcom/masshabit/common/resource/BitmapResourceMap;

    iget-object v4, p0, Lcom/masshabit/squibble/GameScreen;->mLevel:Lcom/masshabit/common/Level;

    iget-object v4, v4, Lcom/masshabit/common/Level;->mBitmaps:Lcom/masshabit/common/resource/BitmapResourceMap;

    const-string v5, "common/health-full.png"

    invoke-virtual {v4, v5}, Lcom/masshabit/common/resource/BitmapResourceMap;->load(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/masshabit/common/resource/BitmapResourceMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/masshabit/squibble/GameScreen;->mHealthIconFull:Landroid/graphics/Bitmap;

    .line 99
    iget-object v3, p0, Lcom/masshabit/squibble/GameScreen;->mLevel:Lcom/masshabit/common/Level;

    iget-object v3, v3, Lcom/masshabit/common/Level;->mBitmaps:Lcom/masshabit/common/resource/BitmapResourceMap;

    iget-object v4, p0, Lcom/masshabit/squibble/GameScreen;->mLevel:Lcom/masshabit/common/Level;

    iget-object v4, v4, Lcom/masshabit/common/Level;->mBitmaps:Lcom/masshabit/common/resource/BitmapResourceMap;

    const-string v5, "common/droplet-icn.png"

    invoke-virtual {v4, v5}, Lcom/masshabit/common/resource/BitmapResourceMap;->load(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/masshabit/common/resource/BitmapResourceMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/masshabit/squibble/GameScreen;->mDropIcon:Landroid/graphics/Bitmap;

    .line 101
    iget-object v3, p0, Lcom/masshabit/squibble/GameScreen;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 102
    iget-object v3, p0, Lcom/masshabit/squibble/GameScreen;->mPaint:Landroid/graphics/Paint;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    iget-object v3, p0, Lcom/masshabit/squibble/GameScreen;->mPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 104
    iget-object v3, p0, Lcom/masshabit/squibble/GameScreen;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 106
    iget-object v3, p0, Lcom/masshabit/squibble/GameScreen;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 107
    iget-object v3, p0, Lcom/masshabit/squibble/GameScreen;->mPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, -0x78000000

    invoke-virtual {v3, v4, v6, v6, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 109
    iget-object v3, p0, Lcom/masshabit/squibble/GameScreen;->mLevel:Lcom/masshabit/common/Level;

    invoke-virtual {v3}, Lcom/masshabit/common/Level;->init()V

    .line 111
    iput v6, p0, Lcom/masshabit/squibble/GameScreen;->mElapsedTime:F

    .line 112
    sget v3, Lcom/masshabit/squibble/GameScreen;->sLevelAttempts:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/masshabit/squibble/GameScreen;->sLevelAttempts:I

    .line 115
    iget-object v3, v1, Lcom/masshabit/common/Environment;->mBundle:Landroid/os/Bundle;

    if-eqz v3, :cond_3

    .line 117
    const-string v3, "GameScreen"

    const-string v3, "Restoring from bundle"

    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    sput v7, Lcom/masshabit/common/entity/Entity;->sEntityIndex:I

    .line 119
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, v1, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v3, v3, Lcom/masshabit/common/Level;->mLayers:[Lcom/masshabit/common/Layer;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 121
    iget-object v3, v1, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v3, v3, Lcom/masshabit/common/Level;->mLayers:[Lcom/masshabit/common/Layer;

    aget-object v3, v3, v2

    iget-object v4, v1, Lcom/masshabit/common/Environment;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Lcom/masshabit/common/Layer;->restoreState(Landroid/os/Bundle;)V

    .line 119
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "cameraPos":Lcom/masshabit/common/physics/Vector2;
    .end local v2    # "i":I
    :cond_1
    move v4, v7

    .line 90
    goto/16 :goto_0

    .line 125
    .restart local v0    # "cameraPos":Lcom/masshabit/common/physics/Vector2;
    .restart local v2    # "i":I
    :cond_2
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/masshabit/common/Environment;->mBundle:Landroid/os/Bundle;

    .line 129
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 284
    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    .line 286
    sget-object v2, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 288
    .local v2, "env":Lcom/masshabit/common/Environment;
    new-instance v1, Lcom/masshabit/squibble/GameScreen$1;

    invoke-direct {v1, p0, v2}, Lcom/masshabit/squibble/GameScreen$1;-><init>(Lcom/masshabit/squibble/GameScreen;Lcom/masshabit/common/Environment;)V

    .line 311
    .local v1, "dialogClickListener":Landroid/content/DialogInterface$OnClickListener;
    const-string v3, "GameScreen"

    const-string v4, "Showing confirm dialog"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, v2, Lcom/masshabit/common/Environment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 314
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f040009

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f040005

    invoke-virtual {v3, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f040006

    invoke-virtual {v3, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 318
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 321
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "dialogClickListener":Landroid/content/DialogInterface$OnClickListener;
    .end local v2    # "env":Lcom/masshabit/common/Environment;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onInputEvent(Lcom/masshabit/common/InputEvent;)V
    .locals 7
    .param p1, "e"    # Lcom/masshabit/common/InputEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 327
    iget-byte v3, p1, Lcom/masshabit/common/InputEvent;->mEventType:B

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 329
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 332
    .local v0, "env":Lcom/masshabit/common/Environment;
    iget-object v3, p0, Lcom/masshabit/squibble/GameScreen;->mTransformBuffer:[F

    iget-object v4, p1, Lcom/masshabit/common/InputEvent;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v4, v4, Lcom/masshabit/common/physics/Vector2;->x:F

    aput v4, v3, v6

    .line 333
    iget-object v3, p0, Lcom/masshabit/squibble/GameScreen;->mTransformBuffer:[F

    iget-object v4, p1, Lcom/masshabit/common/InputEvent;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v4, v4, Lcom/masshabit/common/physics/Vector2;->y:F

    aput v4, v3, v5

    .line 335
    iget-object v3, v0, Lcom/masshabit/common/Environment;->mCamera:Lcom/masshabit/common/Camera;

    iget-object v3, v3, Lcom/masshabit/common/Camera;->mViewInv:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/masshabit/squibble/GameScreen;->mTransformBuffer:[F

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 337
    iget-object v3, p0, Lcom/masshabit/squibble/GameScreen;->mTransformBuffer:[F

    aget v1, v3, v6

    .line 338
    .local v1, "x":F
    iget-object v3, p0, Lcom/masshabit/squibble/GameScreen;->mTransformBuffer:[F

    aget v2, v3, v5

    .line 341
    .local v2, "y":F
    iget-object v3, p0, Lcom/masshabit/squibble/GameScreen;->mPlayer:Lcom/masshabit/squibble/Player;

    invoke-virtual {v3, v1, v2, p1}, Lcom/masshabit/squibble/Player;->onInputEvent(FFLcom/masshabit/common/InputEvent;)Z

    .line 353
    .end local v0    # "env":Lcom/masshabit/common/Environment;
    .end local v1    # "x":F
    .end local v2    # "y":F
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    iget v3, p1, Lcom/masshabit/common/InputEvent;->mAction:I

    if-ne v3, v5, :cond_0

    .line 347
    iget v3, p1, Lcom/masshabit/common/InputEvent;->mKeyCode:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 349
    sget-object v3, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    invoke-virtual {v3, v5}, Lcom/masshabit/common/Environment;->showDialog(I)V

    goto :goto_0
.end method

.method public playerDead()V
    .locals 6

    .prologue
    const-string v5, ""

    .line 234
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 236
    .local v0, "env":Lcom/masshabit/common/Environment;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 237
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    const-string v2, "level"

    iget-object v3, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v3, v3, Lcom/masshabit/common/Level;->mName:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string v2, "time"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/masshabit/squibble/GameScreen;->mElapsedTime:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string v2, "attempt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/masshabit/squibble/GameScreen;->sLevelAttempts:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-string v2, "player_died"

    invoke-static {v2, v1}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 244
    sget-object v2, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    iget-object v2, v2, Lcom/masshabit/common/Environment;->mGame:Lcom/masshabit/squibble/Game;

    const/16 v3, 0x28

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v2, v3, v4}, Lcom/masshabit/squibble/Game;->changeScreen(IF)V

    .line 245
    return-void
.end method

.method public playerWon()V
    .locals 8

    .prologue
    const-string v7, ""

    .line 249
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 250
    .local v0, "env":Lcom/masshabit/common/Environment;
    iget-object v4, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget v4, v4, Lcom/masshabit/common/Level;->mItemsCollected:I

    int-to-float v4, v4

    iget-object v5, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget v5, v5, Lcom/masshabit/common/Level;->mTotalItems:I

    int-to-float v5, v5

    div-float v1, v4, v5

    .line 252
    .local v1, "fraction":F
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 253
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    const-string v4, "level"

    iget-object v5, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v5, v5, Lcom/masshabit/common/Level;->mName:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string v4, "score"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-string v4, "time"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/masshabit/squibble/GameScreen;->mElapsedTime:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string v4, "attempt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/masshabit/squibble/GameScreen;->sLevelAttempts:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-string v4, "player_won"

    invoke-static {v4, v2}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 261
    invoke-static {}, Lcom/masshabit/squibble/ProfileManager;->instance()Lcom/masshabit/common/ProfileManagerBase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/masshabit/common/ProfileManagerBase;->getProfile()Lcom/masshabit/common/ProfileManagerBase$PlayerProfile;

    move-result-object v3

    check-cast v3, Lcom/masshabit/squibble/Profile;

    .line 262
    .local v3, "profile":Lcom/masshabit/squibble/Profile;
    iget-object v4, v3, Lcom/masshabit/squibble/Profile;->mLevels:Ljava/util/HashMap;

    iget-object v5, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v5, v5, Lcom/masshabit/common/Level;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/masshabit/squibble/Profile;->mLevels:Ljava/util/HashMap;

    iget-object v5, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v5, v5, Lcom/masshabit/common/Level;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/masshabit/squibble/GameScreen;
    check-cast p0, Lcom/masshabit/squibble/Profile$CompletedLevel;

    iget v4, p0, Lcom/masshabit/squibble/Profile$CompletedLevel;->mScore:F

    cmpg-float v4, v4, v1

    if-gez v4, :cond_1

    .line 265
    :cond_0
    iget-object v4, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v4, v4, Lcom/masshabit/common/Level;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Lcom/masshabit/squibble/Profile;->setLevelComplete(Ljava/lang/String;F)V

    .line 266
    invoke-static {}, Lcom/masshabit/squibble/ProfileManager;->instance()Lcom/masshabit/common/ProfileManagerBase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/masshabit/common/ProfileManagerBase;->saveProfile()V

    .line 269
    :cond_1
    iget-object v4, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v4, v4, Lcom/masshabit/common/Level;->mName:Ljava/lang/String;

    const-string v5, "dock_5"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 271
    iget-object v4, v0, Lcom/masshabit/common/Environment;->mGame:Lcom/masshabit/squibble/Game;

    const/16 v5, 0x3c

    invoke-virtual {v4, v5}, Lcom/masshabit/squibble/Game;->changeScreen(I)V

    .line 279
    :goto_0
    return-void

    .line 275
    :cond_2
    iget-object v4, v0, Lcom/masshabit/common/Environment;->mGame:Lcom/masshabit/squibble/Game;

    const/16 v5, 0x1e

    invoke-virtual {v4, v5}, Lcom/masshabit/squibble/Game;->changeScreen(I)V

    goto :goto_0
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "out"    # Landroid/os/Bundle;

    .prologue
    .line 144
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 146
    .local v0, "env":Lcom/masshabit/common/Environment;
    const/4 v2, 0x0

    sput v2, Lcom/masshabit/common/entity/Entity;->sEntityIndex:I

    .line 147
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v2, v2, Lcom/masshabit/common/Level;->mLayers:[Lcom/masshabit/common/Layer;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 149
    iget-object v2, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v2, v2, Lcom/masshabit/common/Level;->mLayers:[Lcom/masshabit/common/Layer;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcom/masshabit/common/Layer;->saveState(Landroid/os/Bundle;)V

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    :cond_0
    return-void
.end method

.method public showLoading()Z
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method public update(F)V
    .locals 5
    .param p1, "dt"    # F

    .prologue
    .line 216
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 218
    .local v0, "env":Lcom/masshabit/common/Environment;
    iget v3, p0, Lcom/masshabit/squibble/GameScreen;->mElapsedTime:F

    add-float/2addr v3, p1

    iput v3, p0, Lcom/masshabit/squibble/GameScreen;->mElapsedTime:F

    .line 222
    iget-object v3, v0, Lcom/masshabit/common/Environment;->mCamera:Lcom/masshabit/common/Camera;

    iget-object v4, p0, Lcom/masshabit/squibble/GameScreen;->mPlayer:Lcom/masshabit/squibble/Player;

    iget-object v4, v4, Lcom/masshabit/squibble/Player;->mParticle:Lcom/masshabit/common/physics/CircleParticle;

    iget-object v4, v4, Lcom/masshabit/common/physics/CircleParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v3, v4}, Lcom/masshabit/common/Camera;->setTarget(Lcom/masshabit/common/physics/Vector2;)V

    .line 223
    iget-object v3, v0, Lcom/masshabit/common/Environment;->mCamera:Lcom/masshabit/common/Camera;

    invoke-virtual {v3, p1}, Lcom/masshabit/common/Camera;->update(F)V

    .line 225
    iget-object v3, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v3, v3, Lcom/masshabit/common/Level;->mLayers:[Lcom/masshabit/common/Layer;

    array-length v2, v3

    .line 226
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 228
    iget-object v3, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v3, v3, Lcom/masshabit/common/Level;->mLayers:[Lcom/masshabit/common/Layer;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Lcom/masshabit/common/Layer;->update(F)V

    .line 226
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 230
    :cond_0
    return-void
.end method
