.class public Lcom/masshabit/common/entity/Entity;
.super Ljava/lang/Object;
.source "Entity.java"


# static fields
.field public static sDebugOrigin:[F

.field public static sEntityIndex:I


# instance fields
.field public mChildren:[Lcom/masshabit/common/entity/Entity;

.field public mHeight:F

.field public final mMatrix:Landroid/graphics/Matrix;

.field public final mObjectToWorld:Landroid/graphics/Matrix;

.field public final mPos:Lcom/masshabit/common/physics/Vector2;

.field public mProps:Lcom/masshabit/common/entity/EntityProperties;

.field public mRadians:F

.field public mScaleX:F

.field public mScaleY:F

.field public mUid:I

.field public mWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/masshabit/common/entity/Entity;->sDebugOrigin:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x41200000    # 10.0f
        0x0
        0x0
        0x0
        0x0
        0x41200000    # 10.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/masshabit/common/entity/Entity;->mMatrix:Landroid/graphics/Matrix;

    .line 22
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/masshabit/common/entity/Entity;->mObjectToWorld:Landroid/graphics/Matrix;

    .line 24
    new-instance v0, Lcom/masshabit/common/physics/Vector2;

    invoke-direct {v0}, Lcom/masshabit/common/physics/Vector2;-><init>()V

    iput-object v0, p0, Lcom/masshabit/common/entity/Entity;->mPos:Lcom/masshabit/common/physics/Vector2;

    .line 35
    return-void
.end method


# virtual methods
.method public calcMatrix()V
    .locals 3

    .prologue
    .line 44
    iget-object v0, p0, Lcom/masshabit/common/entity/Entity;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 45
    iget-object v0, p0, Lcom/masshabit/common/entity/Entity;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/masshabit/common/entity/Entity;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v1, v1, Lcom/masshabit/common/physics/Vector2;->x:F

    iget-object v2, p0, Lcom/masshabit/common/entity/Entity;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v2, v2, Lcom/masshabit/common/physics/Vector2;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 48
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/masshabit/common/entity/Entity;->drawChildren(Landroid/graphics/Canvas;)V

    .line 61
    return-void
.end method

.method protected drawChildren(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 79
    iget-object v2, p0, Lcom/masshabit/common/entity/Entity;->mChildren:[Lcom/masshabit/common/entity/Entity;

    array-length v1, v2

    .line 80
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 82
    iget-object v2, p0, Lcom/masshabit/common/entity/Entity;->mChildren:[Lcom/masshabit/common/entity/Entity;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lcom/masshabit/common/entity/Entity;->draw(Landroid/graphics/Canvas;)V

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_0
    return-void
.end method

.method public init()V
    .locals 0

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/masshabit/common/entity/Entity;->initChildren()V

    .line 40
    return-void
.end method

.method protected initChildren()V
    .locals 3

    .prologue
    .line 70
    iget-object v2, p0, Lcom/masshabit/common/entity/Entity;->mChildren:[Lcom/masshabit/common/entity/Entity;

    array-length v1, v2

    .line 71
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 73
    iget-object v2, p0, Lcom/masshabit/common/entity/Entity;->mChildren:[Lcom/masshabit/common/entity/Entity;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/masshabit/common/entity/Entity;->init()V

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_0
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Bundle;

    .prologue
    .line 103
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "out"    # Landroid/os/Bundle;

    .prologue
    .line 98
    return-void
.end method

.method public update(F)V
    .locals 0
    .param p1, "dt"    # F

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/masshabit/common/entity/Entity;->updateChildren(F)V

    .line 66
    return-void
.end method

.method protected updateChildren(F)V
    .locals 3
    .param p1, "dt"    # F

    .prologue
    .line 88
    iget-object v2, p0, Lcom/masshabit/common/entity/Entity;->mChildren:[Lcom/masshabit/common/entity/Entity;

    array-length v1, v2

    .line 89
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 91
    iget-object v2, p0, Lcom/masshabit/common/entity/Entity;->mChildren:[Lcom/masshabit/common/entity/Entity;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lcom/masshabit/common/entity/Entity;->update(F)V

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_0
    return-void
.end method
