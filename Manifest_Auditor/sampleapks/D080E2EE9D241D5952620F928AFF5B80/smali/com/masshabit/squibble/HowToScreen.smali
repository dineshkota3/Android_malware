.class public Lcom/masshabit/squibble/HowToScreen;
.super Lcom/masshabit/squibble/Screen;
.source "HowToScreen.java"

# interfaces
.implements Lcom/masshabit/common/Delay$IDelayCompleteListener;
.implements Lcom/masshabit/common/tween/ITweenCompleteListener;


# static fields
.field public static final STATE_TITLE:I = 0x0

.field public static final STATE_VIDEO:I = 0x1

.field protected static final STEP_DRAG:I = 0x12

.field public static final TAG:Ljava/lang/String; = "HowToScreen"


# instance fields
.field protected mCameraY:F

.field protected mDelay:Lcom/masshabit/common/Delay;

.field protected mEvent:Lcom/masshabit/common/InputEvent;

.field protected mFinger:Landroid/graphics/Bitmap;

.field protected mFingerFade:Lcom/masshabit/common/tween/Tween;

.field protected mLevel:Lcom/masshabit/common/Level;

.field protected mPaint:Landroid/graphics/Paint;

.field protected mPlayer:Lcom/masshabit/squibble/Player;

.field protected mPos:Lcom/masshabit/common/physics/Vector2;

.field protected mState:I

.field protected mStep:I

.field protected mTap:Landroid/graphics/Bitmap;

.field protected mTapFade:Lcom/masshabit/common/tween/Tween;

.field protected mTitle:Landroid/graphics/Bitmap;

.field protected mTitleFade:Lcom/masshabit/common/tween/Tween;

.field protected mTween:Lcom/masshabit/common/tween/VectorTween;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/masshabit/squibble/Screen;-><init>()V

    .line 35
    new-instance v0, Lcom/masshabit/common/InputEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/masshabit/common/InputEvent;-><init>(Lcom/masshabit/common/InputEventPool;)V

    iput-object v0, p0, Lcom/masshabit/squibble/HowToScreen;->mEvent:Lcom/masshabit/common/InputEvent;

    .line 36
    new-instance v0, Lcom/masshabit/common/physics/Vector2;

    invoke-direct {v0}, Lcom/masshabit/common/physics/Vector2;-><init>()V

    iput-object v0, p0, Lcom/masshabit/squibble/HowToScreen;->mPos:Lcom/masshabit/common/physics/Vector2;

    return-void
.end method


# virtual methods
.method public delayComplete(Lcom/masshabit/common/Delay;)V
    .locals 2
    .param p1, "d"    # Lcom/masshabit/common/Delay;

    .prologue
    .line 315
    const-string v0, "HowToScreen"

    const-string v1, "Delay complete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-virtual {p0}, Lcom/masshabit/squibble/HowToScreen;->nextStep()V

    .line 317
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 114
    invoke-super {p0}, Lcom/masshabit/squibble/Screen;->destroy()V

    .line 115
    iget-object v0, p0, Lcom/masshabit/squibble/HowToScreen;->mLevel:Lcom/masshabit/common/Level;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/masshabit/squibble/HowToScreen;->mLevel:Lcom/masshabit/common/Level;

    invoke-virtual {v0}, Lcom/masshabit/common/Level;->destroy()V

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/masshabit/squibble/HowToScreen;->mFinger:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/masshabit/squibble/HowToScreen;->mFinger:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/masshabit/squibble/HowToScreen;->mFinger:Landroid/graphics/Bitmap;

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/masshabit/squibble/HowToScreen;->mTap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 125
    iget-object v0, p0, Lcom/masshabit/squibble/HowToScreen;->mTap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/masshabit/squibble/HowToScreen;->mTap:Landroid/graphics/Bitmap;

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/masshabit/squibble/HowToScreen;->mTitle:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 129
    iget-object v0, p0, Lcom/masshabit/squibble/HowToScreen;->mTitle:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/masshabit/squibble/HowToScreen;->mTitle:Landroid/graphics/Bitmap;

    .line 131
    :cond_3
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v4, 0x41f00000    # 30.0f

    const/4 v1, 0x0

    const/4 v10, -0x1

    const/high16 v9, 0x437f0000    # 255.0f

    const/high16 v5, 0x40000000    # 2.0f

    .line 268
    sget-object v6, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 270
    .local v6, "env":Lcom/masshabit/common/Environment;
    iget v0, p0, Lcom/masshabit/squibble/HowToScreen;->mState:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 272
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 273
    iget-object v0, v6, Lcom/masshabit/common/Environment;->mCamera:Lcom/masshabit/common/Camera;

    iget-object v0, v0, Lcom/masshabit/common/Camera;->mView:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 274
    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 276
    iget-object v0, v6, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v0, v0, Lcom/masshabit/common/Level;->mLayers:[Lcom/masshabit/common/Layer;

    array-length v8, v0

    .line 277
    .local v8, "length":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v8, :cond_0

    .line 279
    iget-object v0, v6, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v0, v0, Lcom/masshabit/common/Level;->mLayers:[Lcom/masshabit/common/Layer;

    aget-object v0, v0, v7

    invoke-virtual {v0, p1}, Lcom/masshabit/common/Layer;->draw(Landroid/graphics/Canvas;)V

    .line 277
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/masshabit/squibble/HowToScreen;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/masshabit/squibble/HowToScreen;->mTapFade:Lcom/masshabit/common/tween/Tween;

    iget v2, v2, Lcom/masshabit/common/tween/Tween;->mValue:F

    mul-float/2addr v2, v9

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 283
    iget-object v0, p0, Lcom/masshabit/squibble/HowToScreen;->mTap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/masshabit/squibble/HowToScreen;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v2, v2, Lcom/masshabit/common/physics/Vector2;->x:F

    iget-object v3, p0, Lcom/masshabit/squibble/HowToScreen;->mTap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/masshabit/squibble/HowToScreen;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v3, v3, Lcom/masshabit/common/physics/Vector2;->y:F

    iget-object v4, p0, Lcom/masshabit/squibble/HowToScreen;->mTap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/masshabit/squibble/HowToScreen;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 285
    iget-object v0, p0, Lcom/masshabit/squibble/HowToScreen;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/masshabit/squibble/HowToScreen;->mFingerFade:Lcom/masshabit/common/tween/Tween;

    iget v2, v2, Lcom/masshabit/common/tween/Tween;->mValue:F

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 286
    iget-object v0, p0, Lcom/masshabit/squibble/HowToScreen;->mFinger:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/masshabit/squibble/HowToScreen;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v2, v2, Lcom/masshabit/common/physics/Vector2;->x:F

    const/high16 v3, 0x42700000    # 60.0f

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/masshabit/squibble/HowToScreen;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v3, v3, Lcom/masshabit/common/physics/Vector2;->y:F

    const/high16 v4, 0x42700000    # 60.0f

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/masshabit/squibble/HowToScreen;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 288
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 290
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 291
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 292
    iget-object v0, p0, Lcom/masshabit/squibble/HowToScreen;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 293
    iget-object v0, p0, Lcom/masshabit/squibble/HowToScreen;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/masshabit/squibble/HowToScreen;->mTitleFade:Lcom/masshabit/common/tween/Tween;

    iget v2, v2, Lcom/masshabit/common/tween/Tween;->mValue:F

    mul-float/2addr v2, v9

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 294
    iget v3, v6, Lcom/masshabit/common/Environment;->mScreenWidth:F

    iget v4, v6, Lcom/masshabit/common/Environment;->mScreenHeight:F

    iget-object v5, p0, Lcom/masshabit/squibble/HowToScreen;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 295
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 310
    .end local v7    # "i":I
    .end local v8    # "length":I
    :goto_1
    return-void

    .line 299
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 300
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 301
    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 303
    iget-object v0, p0, Lcom/masshabit/squibble/HowToScreen;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 304
    iget-object v0, p0, Lcom/masshabit/squibble/HowToScreen;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/masshabit/squibble/HowToScreen;->mTitleFade:Lcom/masshabit/common/tween/Tween;

    iget v1, v1, Lcom/masshabit/common/tween/Tween;->mValue:F

    mul-float/2addr v1, v9

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 305
    iget-object v0, p0, Lcom/masshabit/squibble/HowToScreen;->mTitle:Landroid/graphics/Bitmap;

    iget v1, v6, Lcom/masshabit/common/Environment;->mScreenWidth:F

    iget-object v2, p0, Lcom/masshabit/squibble/HowToScreen;->mTitle:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v5

    iget v2, v6, Lcom/masshabit/common/Environment;->mScreenHeight:F

    iget-object v3, p0, Lcom/masshabit/squibble/HowToScreen;->mTitle:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    sub-float/2addr v2, v4

    iget-object v3, p0, Lcom/masshabit/squibble/HowToScreen;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 306
    iget-object v0, v6, Lcom/masshabit/common/Environment;->mContext:Landroid/content/Context;

    const v1, 0x7f04000d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, v6, Lcom/masshabit/common/Environment;->mScreenWidth:F

    div-float/2addr v1, v5

    iget v2, v6, Lcom/masshabit/common/Environment;->mScreenHeight:F

    iget-object v3, p0, Lcom/masshabit/squibble/HowToScreen;->mTitle:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    div-float/2addr v2, v5

    add-float/2addr v2, v4

    iget-object v3, p0, Lcom/masshabit/squibble/HowToScreen;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 308
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1
.end method

.method protected fakeTap()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 142
    iget-object v0, p0, Lcom/masshabit/squibble/HowToScreen;->mEvent:Lcom/masshabit/common/InputEvent;

    const/4 v1, 0x3

    iput v1, v0, Lcom/masshabit/common/InputEvent;->mAction:I

    .line 143
    iget-object v0, p0, Lcom/masshabit/squibble/HowToScreen;->mPlayer:Lcom/masshabit/squibble/Player;

    iget-object v1, p0, Lcom/masshabit/squibble/HowToScreen;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v1, v1, Lcom/masshabit/common/physics/Vector2;->x:F

    iget-object v2, p0, Lcom/masshabit/squibble/HowToScreen;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v2, v2, Lcom/masshabit/common/physics/Vector2;->y:F

    iget-object v3, p0, Lcom/masshabit/squibble/HowToScreen;->mEvent:Lcom/masshabit/common/InputEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/masshabit/squibble/Player;->onInputEvent(FFLcom/masshabit/common/InputEvent;)Z

    .line 144
    iget-object v0, p0, Lcom/masshabit/squibble/HowToScreen;->mFingerFade:Lcom/masshabit/common/tween/Tween;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v4, v5, v1}, Lcom/masshabit/common/tween/Tween;->init(FFF)V

    .line 145
    iget-object v0, p0, Lcom/masshabit/squibble/HowToScreen;->mTapFade:Lcom/masshabit/common/tween/Tween;

    invoke-virtual {v0, v4, v5, v4}, Lcom/masshabit/common/tween/Tween;->init(FFF)V

    .line 146
    iget-object v0, p0, Lcom/masshabit/squibble/HowToScreen;->mDelay:Lcom/masshabit/common/Delay;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Lcom/masshabit/common/Delay;->start(F)V

    .line 147
    return-void
.end method

.method public init()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "camera"

    .line 59
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 63
    .local v0, "env":Lcom/masshabit/common/Environment;
    new-instance v1, Lcom/masshabit/common/Level;

    const-string v2, "howto"

    invoke-direct {v1, v2}, Lcom/masshabit/common/Level;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/masshabit/squibble/HowToScreen;->mLevel:Lcom/masshabit/common/Level;

    .line 64
    iget-object v1, p0, Lcom/masshabit/squibble/HowToScreen;->mLevel:Lcom/masshabit/common/Level;

    iput-object v1, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    .line 65
    iget-object v1, p0, Lcom/masshabit/squibble/HowToScreen;->mLevel:Lcom/masshabit/common/Level;

    invoke-virtual {v1}, Lcom/masshabit/common/Level;->registerGeometry()V

    .line 67
    new-instance v1, Lcom/masshabit/common/LevelLoader;

    iget-object v2, p0, Lcom/masshabit/squibble/HowToScreen;->mLevel:Lcom/masshabit/common/Level;

    new-instance v3, Lcom/masshabit/squibble/EntityFactory;

    invoke-direct {v3}, Lcom/masshabit/squibble/EntityFactory;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/masshabit/common/LevelLoader;-><init>(Lcom/masshabit/common/Level;Lcom/masshabit/common/entity/IEntityFactory;)V

    const-string v2, "howto.svg"

    invoke-virtual {v1, v2}, Lcom/masshabit/common/LevelLoader;->load(Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/masshabit/squibble/HowToScreen;->mLevel:Lcom/masshabit/common/Level;

    iget-boolean v1, v1, Lcom/masshabit/common/Level;->mLoaded:Z

    if-nez v1, :cond_0

    .line 70
    const-string v1, "HowToScreen"

    const-string v2, "Level load failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    const-string v1, "sound/stretch.ogg"

    invoke-virtual {p0, v5, v1}, Lcom/masshabit/squibble/HowToScreen;->loadSound(ILjava/lang/String;)V

    .line 74
    const/4 v1, 0x2

    const-string v2, "sound/release.ogg"

    invoke-virtual {p0, v1, v2}, Lcom/masshabit/squibble/HowToScreen;->loadSound(ILjava/lang/String;)V

    .line 75
    const/4 v1, 0x6

    const-string v2, "sound/grapple.ogg"

    invoke-virtual {p0, v1, v2}, Lcom/masshabit/squibble/HowToScreen;->loadSound(ILjava/lang/String;)V

    .line 77
    iget-object v1, p0, Lcom/masshabit/squibble/HowToScreen;->mLevel:Lcom/masshabit/common/Level;

    iget-object v1, v1, Lcom/masshabit/common/Level;->mBitmaps:Lcom/masshabit/common/resource/BitmapResourceMap;

    iget-object v2, p0, Lcom/masshabit/squibble/HowToScreen;->mLevel:Lcom/masshabit/common/Level;

    iget-object v2, v2, Lcom/masshabit/common/Level;->mBitmaps:Lcom/masshabit/common/resource/BitmapResourceMap;

    const-string v3, "common/finger.png"

    invoke-virtual {v2, v3}, Lcom/masshabit/common/resource/BitmapResourceMap;->load(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/masshabit/common/resource/BitmapResourceMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/masshabit/squibble/HowToScreen;->mFinger:Landroid/graphics/Bitmap;

    .line 78
    iget-object v1, p0, Lcom/masshabit/squibble/HowToScreen;->mLevel:Lcom/masshabit/common/Level;

    iget-object v1, v1, Lcom/masshabit/common/Level;->mBitmaps:Lcom/masshabit/common/resource/BitmapResourceMap;

    iget-object v2, p0, Lcom/masshabit/squibble/HowToScreen;->mLevel:Lcom/masshabit/common/Level;

    iget-object v2, v2, Lcom/masshabit/common/Level;->mBitmaps:Lcom/masshabit/common/resource/BitmapResourceMap;

    const-string v3, "common/tap-icn.png"

    invoke-virtual {v2, v3}, Lcom/masshabit/common/resource/BitmapResourceMap;->load(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/masshabit/common/resource/BitmapResourceMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/masshabit/squibble/HowToScreen;->mTap:Landroid/graphics/Bitmap;

    .line 79
    iget-object v1, p0, Lcom/masshabit/squibble/HowToScreen;->mLevel:Lcom/masshabit/common/Level;

    iget-object v1, v1, Lcom/masshabit/common/Level;->mBitmaps:Lcom/masshabit/common/resource/BitmapResourceMap;

    iget-object v2, p0, Lcom/masshabit/squibble/HowToScreen;->mLevel:Lcom/masshabit/common/Level;

    iget-object v2, v2, Lcom/masshabit/common/Level;->mBitmaps:Lcom/masshabit/common/resource/BitmapResourceMap;

    const-string v3, "common/video-icn.png"

    invoke-virtual {v2, v3}, Lcom/masshabit/common/resource/BitmapResourceMap;->load(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/masshabit/common/resource/BitmapResourceMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/masshabit/squibble/HowToScreen;->mTitle:Landroid/graphics/Bitmap;

    .line 81
    iget-object v1, p0, Lcom/masshabit/squibble/HowToScreen;->mLevel:Lcom/masshabit/common/Level;

    iget-object v1, v1, Lcom/masshabit/common/Level;->mEntityIds:Ljava/util/HashMap;

    const-string v2, "player"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/masshabit/squibble/Player;

    iput-object v1, p0, Lcom/masshabit/squibble/HowToScreen;->mPlayer:Lcom/masshabit/squibble/Player;

    .line 82
    const-string v1, "Level must contain an entity with id \'player\' to indicate player spawn point"

    iget-object v2, p0, Lcom/masshabit/squibble/HowToScreen;->mPlayer:Lcom/masshabit/squibble/Player;

    if-eqz v2, :cond_1

    move v2, v5

    :goto_0
    invoke-static {v1, v2}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 85
    iget-object v1, p0, Lcom/masshabit/squibble/HowToScreen;->mLevel:Lcom/masshabit/common/Level;

    iget-object v1, v1, Lcom/masshabit/common/Level;->mEntityIds:Ljava/util/HashMap;

    const-string v2, "camera"

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/masshabit/common/entity/Entity;

    iget-object v1, v1, Lcom/masshabit/common/entity/Entity;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v1, v1, Lcom/masshabit/common/physics/Vector2;->y:F

    iput v1, p0, Lcom/masshabit/squibble/HowToScreen;->mCameraY:F

    .line 86
    iget-object v1, v0, Lcom/masshabit/common/Environment;->mCamera:Lcom/masshabit/common/Camera;

    iget-object v2, p0, Lcom/masshabit/squibble/HowToScreen;->mPlayer:Lcom/masshabit/squibble/Player;

    iget-object v2, v2, Lcom/masshabit/squibble/Player;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v2, v2, Lcom/masshabit/common/physics/Vector2;->x:F

    iget v3, p0, Lcom/masshabit/squibble/HowToScreen;->mCameraY:F

    invoke-virtual {v1, v2, v3}, Lcom/masshabit/common/Camera;->move(FF)V

    .line 87
    iget-object v2, v0, Lcom/masshabit/common/Environment;->mCamera:Lcom/masshabit/common/Camera;

    iget-object v1, p0, Lcom/masshabit/squibble/HowToScreen;->mLevel:Lcom/masshabit/common/Level;

    iget-object v1, v1, Lcom/masshabit/common/Level;->mEntityIds:Ljava/util/HashMap;

    const-string v3, "camera"

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/masshabit/common/entity/Entity;

    iget-object v1, v1, Lcom/masshabit/common/entity/Entity;->mPos:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v2, v1}, Lcom/masshabit/common/Camera;->setTarget(Lcom/masshabit/common/physics/Vector2;)V

    .line 88
    iget-object v1, v0, Lcom/masshabit/common/Environment;->mCamera:Lcom/masshabit/common/Camera;

    invoke-virtual {v1}, Lcom/masshabit/common/Camera;->calculateMatrices()V

    .line 90
    iget-object v1, p0, Lcom/masshabit/squibble/HowToScreen;->mLevel:Lcom/masshabit/common/Level;

    invoke-virtual {v1}, Lcom/masshabit/common/Level;->init()V

    .line 92
    new-instance v1, Lcom/masshabit/common/Delay;

    invoke-direct {v1, p0}, Lcom/masshabit/common/Delay;-><init>(Lcom/masshabit/common/Delay$IDelayCompleteListener;)V

    iput-object v1, p0, Lcom/masshabit/squibble/HowToScreen;->mDelay:Lcom/masshabit/common/Delay;

    .line 93
    new-instance v1, Lcom/masshabit/common/tween/VectorTween;

    sget-object v2, Lcom/masshabit/common/tween/Ease;->sEaseOut:Lcom/masshabit/common/tween/Ease$EaseBase;

    invoke-direct {v1, p0, v2}, Lcom/masshabit/common/tween/VectorTween;-><init>(Lcom/masshabit/common/tween/ITweenCompleteListener;Lcom/masshabit/common/tween/Ease$EaseBase;)V

    iput-object v1, p0, Lcom/masshabit/squibble/HowToScreen;->mTween:Lcom/masshabit/common/tween/VectorTween;

    .line 94
    new-instance v1, Lcom/masshabit/common/tween/Tween;

    sget-object v2, Lcom/masshabit/common/tween/Ease;->sEaseIn:Lcom/masshabit/common/tween/Ease$EaseBase;

    invoke-direct {v1, p0, v2}, Lcom/masshabit/common/tween/Tween;-><init>(Lcom/masshabit/common/tween/ITweenCompleteListener;Lcom/masshabit/common/tween/Ease$EaseBase;)V

    iput-object v1, p0, Lcom/masshabit/squibble/HowToScreen;->mFingerFade:Lcom/masshabit/common/tween/Tween;

    .line 95
    new-instance v1, Lcom/masshabit/common/tween/Tween;

    sget-object v2, Lcom/masshabit/common/tween/Ease;->sEaseIn:Lcom/masshabit/common/tween/Ease$EaseBase;

    invoke-direct {v1, p0, v2}, Lcom/masshabit/common/tween/Tween;-><init>(Lcom/masshabit/common/tween/ITweenCompleteListener;Lcom/masshabit/common/tween/Ease$EaseBase;)V

    iput-object v1, p0, Lcom/masshabit/squibble/HowToScreen;->mTapFade:Lcom/masshabit/common/tween/Tween;

    .line 96
    new-instance v1, Lcom/masshabit/common/tween/Tween;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/masshabit/common/tween/Tween;-><init>(Lcom/masshabit/common/tween/ITweenCompleteListener;Lcom/masshabit/common/tween/Ease$EaseBase;)V

    iput-object v1, p0, Lcom/masshabit/squibble/HowToScreen;->mTitleFade:Lcom/masshabit/common/tween/Tween;

    .line 98
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/masshabit/squibble/HowToScreen;->mPaint:Landroid/graphics/Paint;

    .line 99
    iget-object v1, p0, Lcom/masshabit/squibble/HowToScreen;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 100
    iget-object v1, p0, Lcom/masshabit/squibble/HowToScreen;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41d00000    # 26.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 101
    iget-object v1, p0, Lcom/masshabit/squibble/HowToScreen;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 102
    iget-object v1, p0, Lcom/masshabit/squibble/HowToScreen;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 103
    iget-object v1, p0, Lcom/masshabit/squibble/HowToScreen;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 106
    iput v4, p0, Lcom/masshabit/squibble/HowToScreen;->mState:I

    .line 107
    iput v4, p0, Lcom/masshabit/squibble/HowToScreen;->mStep:I

    .line 108
    invoke-virtual {p0}, Lcom/masshabit/squibble/HowToScreen;->nextStep()V

    .line 109
    return-void

    :cond_1
    move v2, v4

    .line 82
    goto/16 :goto_0
.end method

.method protected nextStep()V
    .locals 9

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const-string v8, "enddrag"

    .line 151
    iget v0, p0, Lcom/masshabit/squibble/HowToScreen;->mStep:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/masshabit/squibble/HowToScreen;->mStep:I

    .line 152
    const-string v0, "HowToScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Step is now: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/masshabit/squibble/HowToScreen;->mStep:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget v0, p0, Lcom/masshabit/squibble/HowToScreen;->mStep:I

    packed-switch v0, :pswitch_data_0

    .line 231
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    iget-object v0, v0, Lcom/masshabit/common/Environment;->mGame:Lcom/masshabit/squibble/Game;

    invoke-virtual {v0}, Lcom/masshabit/squibble/Game;->nextScreen()V

    .line 233
    .end local p0    # "this":Lcom/masshabit/squibble/HowToScreen;
    :goto_0
    return-void

    .line 157
    .restart local p0    # "this":Lcom/masshabit/squibble/HowToScreen;
    :pswitch_0
    iget-object v0, p0, Lcom/masshabit/squibble/HowToScreen;->mTitleFade:Lcom/masshabit/common/tween/Tween;

    invoke-virtual {v0, v5, v4, v4}, Lcom/masshabit/common/tween/Tween;->init(FFF)V

    goto :goto_0

    .line 160
    :pswitch_1
    iget-object v0, p0, Lcom/masshabit/squibble/HowToScreen;->mTitleFade:Lcom/masshabit/common/tween/Tween;

    invoke-virtual {v0, v4, v4, v4}, Lcom/masshabit/common/tween/Tween;->init(FFF)V

    goto :goto_0

    .line 163
    :pswitch_2
    iget-object v0, p0, Lcom/masshabit/squibble/HowToScreen;->mTitleFade:Lcom/masshabit/common/tween/Tween;

    invoke-virtual {v0, v4, v5, v4}, Lcom/masshabit/common/tween/Tween;->init(FFF)V

    goto :goto_0

    .line 166
    :pswitch_3
    const/4 v0, 0x1

    iput v0, p0, Lcom/masshabit/squibble/HowToScreen;->mState:I

    .line 167
    iget-object v0, p0, Lcom/masshabit/squibble/HowToScreen;->mTitleFade:Lcom/masshabit/common/tween/Tween;

    invoke-virtual {v0, v4, v5, v4}, Lcom/masshabit/common/tween/Tween;->init(FFF)V

    goto :goto_0

    .line 170
    :pswitch_4
    iget-object v0, p0, Lcom/masshabit/squibble/HowToScreen;->mDelay:Lcom/masshabit/common/Delay;

    invoke-virtual {v0, v4}, Lcom/masshabit/common/Delay;->start(F)V

    goto :goto_0

    .line 173
    :pswitch_5
    iget-object v0, p0, Lcom/masshabit/squibble/HowToScreen;->mLevel:Lcom/masshabit/common/Level;

    iget-object v0, v0, Lcom/masshabit/common/Level;->mEntityIds:Ljava/util/HashMap;

    const-string v1, "tap1"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/masshabit/common/entity/Entity;

    iget-object v0, v0, Lcom/masshabit/common/entity/Entity;->mPos:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {p0, v0}, Lcom/masshabit/squibble/HowToScreen;->setFinger(Lcom/masshabit/common/physics/Vector2;)V

    goto :goto_0

    .line 177
    :pswitch_6
    invoke-virtual {p0}, Lcom/masshabit/squibble/HowToScreen;->fakeTap()V

    goto :goto_0

    .line 180
    :pswitch_7
    iget-object v0, p0, Lcom/masshabit/squibble/HowToScreen;->mLevel:Lcom/masshabit/common/Level;

    iget-object v0, v0, Lcom/masshabit/common/Level;->mEntityIds:Ljava/util/HashMap;

    const-string v1, "tap2"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/masshabit/common/entity/Entity;

    iget-object v0, v0, Lcom/masshabit/common/entity/Entity;->mPos:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {p0, v0}, Lcom/masshabit/squibble/HowToScreen;->setFinger(Lcom/masshabit/common/physics/Vector2;)V

    goto :goto_0

    .line 184
    :pswitch_8
    invoke-virtual {p0}, Lcom/masshabit/squibble/HowToScreen;->fakeTap()V

    goto :goto_0

    .line 187
    :pswitch_9
    iget-object v0, p0, Lcom/masshabit/squibble/HowToScreen;->mLevel:Lcom/masshabit/common/Level;

    iget-object v0, v0, Lcom/masshabit/common/Level;->mEntityIds:Ljava/util/HashMap;

    const-string v1, "tap3"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/masshabit/common/entity/Entity;

    iget-object v0, v0, Lcom/masshabit/common/entity/Entity;->mPos:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {p0, v0}, Lcom/masshabit/squibble/HowToScreen;->setFinger(Lcom/masshabit/common/physics/Vector2;)V

    goto :goto_0

    .line 191
    :pswitch_a
    invoke-virtual {p0}, Lcom/masshabit/squibble/HowToScreen;->fakeTap()V

    goto :goto_0

    .line 194
    :pswitch_b
    iget-object v0, p0, Lcom/masshabit/squibble/HowToScreen;->mLevel:Lcom/masshabit/common/Level;

    iget-object v0, v0, Lcom/masshabit/common/Level;->mEntityIds:Ljava/util/HashMap;

    const-string v1, "tap4"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/masshabit/common/entity/Entity;

    iget-object v0, v0, Lcom/masshabit/common/entity/Entity;->mPos:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {p0, v0}, Lcom/masshabit/squibble/HowToScreen;->setFinger(Lcom/masshabit/common/physics/Vector2;)V

    goto :goto_0

    .line 198
    :pswitch_c
    invoke-virtual {p0}, Lcom/masshabit/squibble/HowToScreen;->fakeTap()V

    goto :goto_0

    .line 201
    :pswitch_d
    iget-object v0, p0, Lcom/masshabit/squibble/HowToScreen;->mLevel:Lcom/masshabit/common/Level;

    iget-object v0, v0, Lcom/masshabit/common/Level;->mEntityIds:Ljava/util/HashMap;

    const-string v1, "tap5"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/masshabit/common/entity/Entity;

    iget-object v0, v0, Lcom/masshabit/common/entity/Entity;->mPos:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {p0, v0}, Lcom/masshabit/squibble/HowToScreen;->setFinger(Lcom/masshabit/common/physics/Vector2;)V

    goto/16 :goto_0

    .line 205
    :pswitch_e
    invoke-virtual {p0}, Lcom/masshabit/squibble/HowToScreen;->fakeTap()V

    goto/16 :goto_0

    .line 208
    :pswitch_f
    iget-object v0, p0, Lcom/masshabit/squibble/HowToScreen;->mLevel:Lcom/masshabit/common/Level;

    iget-object v0, v0, Lcom/masshabit/common/Level;->mEntityIds:Ljava/util/HashMap;

    const-string v1, "tap6"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/masshabit/common/entity/Entity;

    iget-object v0, v0, Lcom/masshabit/common/entity/Entity;->mPos:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {p0, v0}, Lcom/masshabit/squibble/HowToScreen;->setFinger(Lcom/masshabit/common/physics/Vector2;)V

    goto/16 :goto_0

    .line 212
    :pswitch_10
    invoke-virtual {p0}, Lcom/masshabit/squibble/HowToScreen;->fakeTap()V

    goto/16 :goto_0

    .line 216
    :pswitch_11
    iget-object v0, p0, Lcom/masshabit/squibble/HowToScreen;->mLevel:Lcom/masshabit/common/Level;

    iget-object v0, v0, Lcom/masshabit/common/Level;->mEntityIds:Ljava/util/HashMap;

    const-string v1, "startdrag"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/masshabit/common/entity/Entity;

    iget-object v0, v0, Lcom/masshabit/common/entity/Entity;->mPos:Lcom/masshabit/common/physics/Vector2;

    iput-object v0, p0, Lcom/masshabit/squibble/HowToScreen;->mPos:Lcom/masshabit/common/physics/Vector2;

    .line 217
    iget-object v0, p0, Lcom/masshabit/squibble/HowToScreen;->mEvent:Lcom/masshabit/common/InputEvent;

    const/4 v1, 0x3

    iput v1, v0, Lcom/masshabit/common/InputEvent;->mAction:I

    .line 218
    iget-object v0, p0, Lcom/masshabit/squibble/HowToScreen;->mPlayer:Lcom/masshabit/squibble/Player;

    iget-object v1, p0, Lcom/masshabit/squibble/HowToScreen;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v1, v1, Lcom/masshabit/common/physics/Vector2;->x:F

    iget-object v2, p0, Lcom/masshabit/squibble/HowToScreen;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v2, v2, Lcom/masshabit/common/physics/Vector2;->y:F

    iget-object v3, p0, Lcom/masshabit/squibble/HowToScreen;->mEvent:Lcom/masshabit/common/InputEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/masshabit/squibble/Player;->onInputEvent(FFLcom/masshabit/common/InputEvent;)Z

    .line 219
    iget-object v0, p0, Lcom/masshabit/squibble/HowToScreen;->mFingerFade:Lcom/masshabit/common/tween/Tween;

    invoke-virtual {v0, v4, v4, v6}, Lcom/masshabit/common/tween/Tween;->init(FFF)V

    .line 220
    iget-object v0, p0, Lcom/masshabit/squibble/HowToScreen;->mTween:Lcom/masshabit/common/tween/VectorTween;

    iget-object v1, p0, Lcom/masshabit/squibble/HowToScreen;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget-object v2, p0, Lcom/masshabit/squibble/HowToScreen;->mLevel:Lcom/masshabit/common/Level;

    iget-object v2, v2, Lcom/masshabit/common/Level;->mEntityIds:Ljava/util/HashMap;

    const-string v3, "enddrag"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/masshabit/squibble/HowToScreen;
    check-cast p0, Lcom/masshabit/common/entity/Entity;

    iget-object v2, p0, Lcom/masshabit/common/entity/Entity;->mPos:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v0, v1, v2, v7}, Lcom/masshabit/common/tween/VectorTween;->init(Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;F)V

    goto/16 :goto_0

    .line 224
    .restart local p0    # "this":Lcom/masshabit/squibble/HowToScreen;
    :pswitch_12
    iget-object v0, p0, Lcom/masshabit/squibble/HowToScreen;->mLevel:Lcom/masshabit/common/Level;

    iget-object v0, v0, Lcom/masshabit/common/Level;->mEntityIds:Ljava/util/HashMap;

    const-string v1, "enddrag"

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/masshabit/common/entity/Entity;

    iget-object v0, v0, Lcom/masshabit/common/entity/Entity;->mPos:Lcom/masshabit/common/physics/Vector2;

    iput-object v0, p0, Lcom/masshabit/squibble/HowToScreen;->mPos:Lcom/masshabit/common/physics/Vector2;

    .line 225
    iget-object v0, p0, Lcom/masshabit/squibble/HowToScreen;->mEvent:Lcom/masshabit/common/InputEvent;

    const/4 v1, 0x5

    iput v1, v0, Lcom/masshabit/common/InputEvent;->mAction:I

    .line 226
    iget-object v0, p0, Lcom/masshabit/squibble/HowToScreen;->mPlayer:Lcom/masshabit/squibble/Player;

    iget-object v1, p0, Lcom/masshabit/squibble/HowToScreen;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v1, v1, Lcom/masshabit/common/physics/Vector2;->x:F

    iget-object v2, p0, Lcom/masshabit/squibble/HowToScreen;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v2, v2, Lcom/masshabit/common/physics/Vector2;->y:F

    iget-object v3, p0, Lcom/masshabit/squibble/HowToScreen;->mEvent:Lcom/masshabit/common/InputEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/masshabit/squibble/Player;->onInputEvent(FFLcom/masshabit/common/InputEvent;)Z

    .line 227
    iget-object v0, p0, Lcom/masshabit/squibble/HowToScreen;->mFingerFade:Lcom/masshabit/common/tween/Tween;

    invoke-virtual {v0, v4, v5, v6}, Lcom/masshabit/common/tween/Tween;->init(FFF)V

    .line 228
    iget-object v0, p0, Lcom/masshabit/squibble/HowToScreen;->mDelay:Lcom/masshabit/common/Delay;

    invoke-virtual {v0, v7}, Lcom/masshabit/common/Delay;->start(F)V

    goto/16 :goto_0

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method protected setFinger(Lcom/masshabit/common/physics/Vector2;)V
    .locals 4
    .param p1, "pos"    # Lcom/masshabit/common/physics/Vector2;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/masshabit/squibble/HowToScreen;->mPos:Lcom/masshabit/common/physics/Vector2;

    .line 136
    iget-object v0, p0, Lcom/masshabit/squibble/HowToScreen;->mFingerFade:Lcom/masshabit/common/tween/Tween;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-virtual {v0, v1, v2, v3}, Lcom/masshabit/common/tween/Tween;->init(FFF)V

    .line 137
    iget-object v0, p0, Lcom/masshabit/squibble/HowToScreen;->mDelay:Lcom/masshabit/common/Delay;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lcom/masshabit/common/Delay;->start(F)V

    .line 138
    return-void
.end method

.method public tweenComplete(Ljava/lang/Object;)V
    .locals 2
    .param p1, "tween"    # Ljava/lang/Object;

    .prologue
    .line 322
    iget-object v0, p0, Lcom/masshabit/squibble/HowToScreen;->mTween:Lcom/masshabit/common/tween/VectorTween;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/masshabit/squibble/HowToScreen;->mTitleFade:Lcom/masshabit/common/tween/Tween;

    if-ne p1, v0, :cond_1

    .line 324
    :cond_0
    const-string v0, "HowToScreen"

    const-string v1, "Tween complete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-virtual {p0}, Lcom/masshabit/squibble/HowToScreen;->nextStep()V

    .line 327
    :cond_1
    return-void
.end method

.method public update(F)V
    .locals 7
    .param p1, "dt"    # F

    .prologue
    .line 238
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 240
    .local v0, "env":Lcom/masshabit/common/Environment;
    iget-object v3, v0, Lcom/masshabit/common/Environment;->mCamera:Lcom/masshabit/common/Camera;

    iget-object v4, p0, Lcom/masshabit/squibble/HowToScreen;->mPlayer:Lcom/masshabit/squibble/Player;

    iget-object v4, v4, Lcom/masshabit/squibble/Player;->mParticle:Lcom/masshabit/common/physics/CircleParticle;

    iget-object v4, v4, Lcom/masshabit/common/physics/CircleParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v4, v4, Lcom/masshabit/common/physics/Vector2;->x:F

    iget v5, p0, Lcom/masshabit/squibble/HowToScreen;->mCameraY:F

    invoke-virtual {v3, v4, v5}, Lcom/masshabit/common/Camera;->setTarget(FF)V

    .line 241
    iget-object v3, v0, Lcom/masshabit/common/Environment;->mCamera:Lcom/masshabit/common/Camera;

    invoke-virtual {v3, p1}, Lcom/masshabit/common/Camera;->update(F)V

    .line 243
    iget-object v3, p0, Lcom/masshabit/squibble/HowToScreen;->mDelay:Lcom/masshabit/common/Delay;

    invoke-virtual {v3, p1}, Lcom/masshabit/common/Delay;->update(F)V

    .line 244
    iget-object v3, p0, Lcom/masshabit/squibble/HowToScreen;->mTween:Lcom/masshabit/common/tween/VectorTween;

    invoke-virtual {v3, p1}, Lcom/masshabit/common/tween/VectorTween;->update(F)V

    .line 246
    iget-object v3, p0, Lcom/masshabit/squibble/HowToScreen;->mFingerFade:Lcom/masshabit/common/tween/Tween;

    invoke-virtual {v3, p1}, Lcom/masshabit/common/tween/Tween;->update(F)V

    .line 247
    iget-object v3, p0, Lcom/masshabit/squibble/HowToScreen;->mTapFade:Lcom/masshabit/common/tween/Tween;

    invoke-virtual {v3, p1}, Lcom/masshabit/common/tween/Tween;->update(F)V

    .line 248
    iget-object v3, p0, Lcom/masshabit/squibble/HowToScreen;->mTitleFade:Lcom/masshabit/common/tween/Tween;

    invoke-virtual {v3, p1}, Lcom/masshabit/common/tween/Tween;->update(F)V

    .line 250
    iget v3, p0, Lcom/masshabit/squibble/HowToScreen;->mStep:I

    const/16 v4, 0x12

    if-ne v3, v4, :cond_0

    .line 253
    iget-object v3, p0, Lcom/masshabit/squibble/HowToScreen;->mEvent:Lcom/masshabit/common/InputEvent;

    const/4 v4, 0x4

    iput v4, v3, Lcom/masshabit/common/InputEvent;->mAction:I

    .line 254
    iget-object v3, p0, Lcom/masshabit/squibble/HowToScreen;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget-object v4, p0, Lcom/masshabit/squibble/HowToScreen;->mTween:Lcom/masshabit/common/tween/VectorTween;

    iget-object v4, v4, Lcom/masshabit/common/tween/VectorTween;->mValue:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v3, v4}, Lcom/masshabit/common/physics/Vector2;->set(Lcom/masshabit/common/physics/Vector2;)V

    .line 255
    iget-object v3, p0, Lcom/masshabit/squibble/HowToScreen;->mPlayer:Lcom/masshabit/squibble/Player;

    iget-object v4, p0, Lcom/masshabit/squibble/HowToScreen;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v4, v4, Lcom/masshabit/common/physics/Vector2;->x:F

    iget-object v5, p0, Lcom/masshabit/squibble/HowToScreen;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v5, v5, Lcom/masshabit/common/physics/Vector2;->y:F

    iget-object v6, p0, Lcom/masshabit/squibble/HowToScreen;->mEvent:Lcom/masshabit/common/InputEvent;

    invoke-virtual {v3, v4, v5, v6}, Lcom/masshabit/squibble/Player;->onInputEvent(FFLcom/masshabit/common/InputEvent;)Z

    .line 258
    :cond_0
    iget-object v3, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v3, v3, Lcom/masshabit/common/Level;->mLayers:[Lcom/masshabit/common/Layer;

    array-length v2, v3

    .line 259
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 261
    iget-object v3, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v3, v3, Lcom/masshabit/common/Level;->mLayers:[Lcom/masshabit/common/Layer;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Lcom/masshabit/common/Layer;->update(F)V

    .line 259
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 263
    :cond_1
    return-void
.end method
