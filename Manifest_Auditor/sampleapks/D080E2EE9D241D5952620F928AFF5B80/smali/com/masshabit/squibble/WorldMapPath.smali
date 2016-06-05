.class public Lcom/masshabit/squibble/WorldMapPath;
.super Lcom/masshabit/common/entity/Entity;
.source "WorldMapPath.java"


# static fields
.field public static final DOTS_PER_UNIT_LENGTH:F = 0.1f

.field public static final STEP:F = 0.15f

.field public static final sEvalPoint:Lcom/masshabit/common/physics/Vector2;


# instance fields
.field public mCurve:Lcom/masshabit/common/curve/PolyCubicBezier;

.field public mDisabledPath:Landroid/graphics/Bitmap;

.field public mEnabled:Z

.field public mEnabledPath:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/masshabit/common/physics/Vector2;

    invoke-direct {v0}, Lcom/masshabit/common/physics/Vector2;-><init>()V

    sput-object v0, Lcom/masshabit/squibble/WorldMapPath;->sEvalPoint:Lcom/masshabit/common/physics/Vector2;

    return-void
.end method

.method public constructor <init>(Lcom/masshabit/common/curve/PolyCubicBezier;)V
    .locals 0
    .param p1, "curve"    # Lcom/masshabit/common/curve/PolyCubicBezier;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/masshabit/common/entity/Entity;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/masshabit/squibble/WorldMapPath;->mCurve:Lcom/masshabit/common/curve/PolyCubicBezier;

    .line 28
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 46
    iget-boolean v3, p0, Lcom/masshabit/squibble/WorldMapPath;->mEnabled:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/masshabit/squibble/WorldMapPath;->mEnabledPath:Landroid/graphics/Bitmap;

    move-object v0, v3

    .line 48
    .local v0, "bmp":Landroid/graphics/Bitmap;
    :goto_0
    iget-object v3, p0, Lcom/masshabit/squibble/WorldMapPath;->mCurve:Lcom/masshabit/common/curve/PolyCubicBezier;

    iget v3, v3, Lcom/masshabit/common/curve/PolyCubicBezier;->mLength:F

    const v4, 0x3dcccccd    # 0.1f

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 49
    .local v1, "dots":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 51
    iget-object v3, p0, Lcom/masshabit/squibble/WorldMapPath;->mCurve:Lcom/masshabit/common/curve/PolyCubicBezier;

    int-to-float v4, v2

    int-to-float v5, v1

    div-float/2addr v4, v5

    sget-object v5, Lcom/masshabit/squibble/WorldMapPath;->sEvalPoint:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v3, v4, v5}, Lcom/masshabit/common/curve/PolyCubicBezier;->evaluate(FLcom/masshabit/common/physics/Vector2;)V

    .line 52
    sget-object v3, Lcom/masshabit/squibble/WorldMapPath;->sEvalPoint:Lcom/masshabit/common/physics/Vector2;

    iget v3, v3, Lcom/masshabit/common/physics/Vector2;->x:F

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v6

    sub-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    sget-object v4, Lcom/masshabit/squibble/WorldMapPath;->sEvalPoint:Lcom/masshabit/common/physics/Vector2;

    iget v4, v4, Lcom/masshabit/common/physics/Vector2;->y:F

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    float-to-int v4, v4

    int-to-float v4, v4

    sget-object v5, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    iget-object v5, v5, Lcom/masshabit/common/Environment;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 49
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 46
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v1    # "dots":I
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/masshabit/squibble/WorldMapPath;->mDisabledPath:Landroid/graphics/Bitmap;

    move-object v0, v3

    goto :goto_0

    .line 57
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    .restart local v1    # "dots":I
    .restart local v2    # "i":I
    :cond_1
    return-void
.end method

.method public getLength()F
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/masshabit/squibble/WorldMapPath;->mCurve:Lcom/masshabit/common/curve/PolyCubicBezier;

    iget v0, v0, Lcom/masshabit/common/curve/PolyCubicBezier;->mLength:F

    return v0
.end method

.method public init()V
    .locals 4

    .prologue
    .line 38
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 39
    .local v0, "env":Lcom/masshabit/common/Environment;
    iget-object v1, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v1, v1, Lcom/masshabit/common/Level;->mBitmaps:Lcom/masshabit/common/resource/BitmapResourceMap;

    iget-object v2, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v2, v2, Lcom/masshabit/common/Level;->mBitmaps:Lcom/masshabit/common/resource/BitmapResourceMap;

    const-string v3, "world_map/path_enabled.png"

    invoke-virtual {v2, v3}, Lcom/masshabit/common/resource/BitmapResourceMap;->load(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/masshabit/common/resource/BitmapResourceMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/masshabit/squibble/WorldMapPath;->mEnabledPath:Landroid/graphics/Bitmap;

    .line 40
    iget-object v1, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v1, v1, Lcom/masshabit/common/Level;->mBitmaps:Lcom/masshabit/common/resource/BitmapResourceMap;

    iget-object v2, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v2, v2, Lcom/masshabit/common/Level;->mBitmaps:Lcom/masshabit/common/resource/BitmapResourceMap;

    const-string v3, "world_map/path_disabled.png"

    invoke-virtual {v2, v3}, Lcom/masshabit/common/resource/BitmapResourceMap;->load(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/masshabit/common/resource/BitmapResourceMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/masshabit/squibble/WorldMapPath;->mDisabledPath:Landroid/graphics/Bitmap;

    .line 41
    return-void
.end method
