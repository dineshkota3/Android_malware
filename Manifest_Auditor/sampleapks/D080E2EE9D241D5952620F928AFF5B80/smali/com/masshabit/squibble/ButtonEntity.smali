.class public Lcom/masshabit/squibble/ButtonEntity;
.super Lcom/masshabit/common/entity/Entity;
.source "ButtonEntity.java"


# static fields
.field public static final sDisabledPaint:Landroid/graphics/Paint;


# instance fields
.field protected mBitmap:Landroid/graphics/Bitmap;

.field protected mEnabled:Z

.field protected mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/masshabit/squibble/ButtonEntity;->sDisabledPaint:Landroid/graphics/Paint;

    .line 15
    sget-object v0, Lcom/masshabit/squibble/ButtonEntity;->sDisabledPaint:Landroid/graphics/Paint;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/masshabit/common/entity/Entity;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public checkTap(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/masshabit/squibble/ButtonEntity;->mVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/masshabit/squibble/ButtonEntity;->mEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/masshabit/squibble/ButtonEntity;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v0, v0, Lcom/masshabit/common/physics/Vector2;->x:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/masshabit/squibble/ButtonEntity;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v0, v0, Lcom/masshabit/common/physics/Vector2;->x:F

    iget v1, p0, Lcom/masshabit/squibble/ButtonEntity;->mWidth:F

    add-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/masshabit/squibble/ButtonEntity;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v0, v0, Lcom/masshabit/common/physics/Vector2;->y:F

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/masshabit/squibble/ButtonEntity;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v0, v0, Lcom/masshabit/common/physics/Vector2;->y:F

    iget v1, p0, Lcom/masshabit/squibble/ButtonEntity;->mHeight:F

    add-float/2addr v0, v1

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 60
    iget-boolean v1, p0, Lcom/masshabit/squibble/ButtonEntity;->mVisible:Z

    if-eqz v1, :cond_0

    .line 62
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 63
    iget-object v1, p0, Lcom/masshabit/squibble/ButtonEntity;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 64
    iget-boolean v1, p0, Lcom/masshabit/squibble/ButtonEntity;->mEnabled:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    move-object v0, v1

    .line 65
    .local v0, "p":Landroid/graphics/Paint;
    :goto_0
    iget-object v1, p0, Lcom/masshabit/squibble/ButtonEntity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, v2, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 66
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 67
    invoke-virtual {p0, p1}, Lcom/masshabit/squibble/ButtonEntity;->drawChildren(Landroid/graphics/Canvas;)V

    .line 69
    .end local v0    # "p":Landroid/graphics/Paint;
    :cond_0
    return-void

    .line 64
    :cond_1
    sget-object v1, Lcom/masshabit/squibble/ButtonEntity;->sDisabledPaint:Landroid/graphics/Paint;

    move-object v0, v1

    goto :goto_0
.end method

.method public getEnabled()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/masshabit/squibble/ButtonEntity;->mEnabled:Z

    return v0
.end method

.method public getVisible()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/masshabit/squibble/ButtonEntity;->mVisible:Z

    return v0
.end method

.method public init()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 30
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 31
    .local v0, "env":Lcom/masshabit/common/Environment;
    iput-boolean v1, p0, Lcom/masshabit/squibble/ButtonEntity;->mEnabled:Z

    .line 32
    iput-boolean v1, p0, Lcom/masshabit/squibble/ButtonEntity;->mVisible:Z

    .line 33
    iget-object v1, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v1, v1, Lcom/masshabit/common/Level;->mBitmaps:Lcom/masshabit/common/resource/BitmapResourceMap;

    iget-object v2, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v2, v2, Lcom/masshabit/common/Level;->mBitmaps:Lcom/masshabit/common/resource/BitmapResourceMap;

    iget-object v3, p0, Lcom/masshabit/squibble/ButtonEntity;->mProps:Lcom/masshabit/common/entity/EntityProperties;

    iget-object v3, v3, Lcom/masshabit/common/entity/EntityProperties;->href:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/masshabit/common/resource/BitmapResourceMap;->load(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/masshabit/common/resource/BitmapResourceMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/masshabit/squibble/ButtonEntity;->mBitmap:Landroid/graphics/Bitmap;

    .line 34
    invoke-virtual {p0}, Lcom/masshabit/squibble/ButtonEntity;->initChildren()V

    .line 35
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/masshabit/squibble/ButtonEntity;->mEnabled:Z

    .line 40
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/masshabit/squibble/ButtonEntity;->mVisible:Z

    .line 50
    return-void
.end method

.method public update(F)V
    .locals 0
    .param p1, "dt"    # F

    .prologue
    .line 74
    return-void
.end method
