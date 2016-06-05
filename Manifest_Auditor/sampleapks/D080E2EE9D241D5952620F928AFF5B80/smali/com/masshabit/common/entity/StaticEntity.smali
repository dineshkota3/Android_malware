.class public Lcom/masshabit/common/entity/StaticEntity;
.super Lcom/masshabit/common/entity/Entity;
.source "StaticEntity.java"


# instance fields
.field public mBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/masshabit/common/entity/Entity;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 30
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 31
    iget-object v0, p0, Lcom/masshabit/common/entity/StaticEntity;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 32
    iget-object v0, p0, Lcom/masshabit/common/entity/StaticEntity;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 33
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 34
    invoke-virtual {p0, p1}, Lcom/masshabit/common/entity/StaticEntity;->drawChildren(Landroid/graphics/Canvas;)V

    .line 35
    return-void
.end method

.method public init()V
    .locals 4

    .prologue
    .line 21
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 22
    .local v0, "env":Lcom/masshabit/common/Environment;
    iget-object v1, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v1, v1, Lcom/masshabit/common/Level;->mBitmaps:Lcom/masshabit/common/resource/BitmapResourceMap;

    iget-object v2, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v2, v2, Lcom/masshabit/common/Level;->mBitmaps:Lcom/masshabit/common/resource/BitmapResourceMap;

    iget-object v3, p0, Lcom/masshabit/common/entity/StaticEntity;->mProps:Lcom/masshabit/common/entity/EntityProperties;

    iget-object v3, v3, Lcom/masshabit/common/entity/EntityProperties;->href:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/masshabit/common/resource/BitmapResourceMap;->load(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/masshabit/common/resource/BitmapResourceMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/masshabit/common/entity/StaticEntity;->mBitmap:Landroid/graphics/Bitmap;

    .line 23
    iget-object v1, p0, Lcom/masshabit/common/entity/StaticEntity;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 24
    invoke-virtual {p0}, Lcom/masshabit/common/entity/StaticEntity;->initChildren()V

    .line 25
    return-void

    .line 23
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
