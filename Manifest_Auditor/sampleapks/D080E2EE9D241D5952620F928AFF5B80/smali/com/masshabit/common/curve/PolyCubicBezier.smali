.class public Lcom/masshabit/common/curve/PolyCubicBezier;
.super Ljava/lang/Object;
.source "PolyCubicBezier.java"


# instance fields
.field public mCurves:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/masshabit/common/curve/CubicBezier;",
            ">;"
        }
    .end annotation
.end field

.field public mLength:F

.field public mLoop:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/masshabit/common/curve/PolyCubicBezier;->mCurves:Ljava/util/ArrayList;

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/masshabit/common/curve/PolyCubicBezier;->mLoop:Z

    .line 20
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/masshabit/common/curve/PolyCubicBezier;->mLength:F

    .line 21
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 59
    iget-object v2, p0, Lcom/masshabit/common/curve/PolyCubicBezier;->mCurves:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 60
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 62
    iget-object v2, p0, Lcom/masshabit/common/curve/PolyCubicBezier;->mCurves:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/masshabit/common/curve/CubicBezier;

    invoke-virtual {v2, p1}, Lcom/masshabit/common/curve/CubicBezier;->draw(Landroid/graphics/Canvas;)V

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_0
    return-void
.end method

.method public estimateLength()V
    .locals 4

    .prologue
    .line 25
    const/4 v2, 0x0

    iput v2, p0, Lcom/masshabit/common/curve/PolyCubicBezier;->mLength:F

    .line 26
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/masshabit/common/curve/PolyCubicBezier;->mCurves:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 28
    iget-object v2, p0, Lcom/masshabit/common/curve/PolyCubicBezier;->mCurves:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/masshabit/common/curve/CubicBezier;

    .line 29
    .local v0, "c":Lcom/masshabit/common/curve/CubicBezier;
    invoke-virtual {v0}, Lcom/masshabit/common/curve/CubicBezier;->estimateLength()V

    .line 30
    iget v2, p0, Lcom/masshabit/common/curve/PolyCubicBezier;->mLength:F

    iget v3, v0, Lcom/masshabit/common/curve/CubicBezier;->mLength:F

    add-float/2addr v2, v3

    iput v2, p0, Lcom/masshabit/common/curve/PolyCubicBezier;->mLength:F

    .line 26
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 32
    .end local v0    # "c":Lcom/masshabit/common/curve/CubicBezier;
    :cond_0
    return-void
.end method

.method public evaluate(FLcom/masshabit/common/physics/Vector2;)V
    .locals 6
    .param p1, "t"    # F
    .param p2, "result"    # Lcom/masshabit/common/physics/Vector2;

    .prologue
    const/4 v5, 0x0

    .line 36
    iget v4, p0, Lcom/masshabit/common/curve/PolyCubicBezier;->mLength:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_2

    const/4 v4, 0x1

    :goto_0
    invoke-static {v4}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 37
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, p1, v4

    if-lez v4, :cond_3

    .line 38
    const/high16 p1, 0x3f800000    # 1.0f

    .line 42
    :cond_0
    :goto_1
    iget v4, p0, Lcom/masshabit/common/curve/PolyCubicBezier;->mLength:F

    mul-float v1, p1, v4

    .line 44
    .local v1, "dist":F
    iget-object v4, p0, Lcom/masshabit/common/curve/PolyCubicBezier;->mCurves:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 45
    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v3, :cond_1

    .line 47
    iget-object v4, p0, Lcom/masshabit/common/curve/PolyCubicBezier;->mCurves:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/masshabit/common/curve/CubicBezier;

    .line 48
    .local v0, "c":Lcom/masshabit/common/curve/CubicBezier;
    iget v4, v0, Lcom/masshabit/common/curve/CubicBezier;->mLength:F

    cmpl-float v4, v4, v1

    if-ltz v4, :cond_4

    .line 50
    iget v4, v0, Lcom/masshabit/common/curve/CubicBezier;->mLength:F

    div-float v4, v1, v4

    invoke-virtual {v0, v4, p2}, Lcom/masshabit/common/curve/CubicBezier;->evaluate(FLcom/masshabit/common/physics/Vector2;)V

    .line 55
    .end local v0    # "c":Lcom/masshabit/common/curve/CubicBezier;
    :cond_1
    return-void

    .line 36
    .end local v1    # "dist":F
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 39
    :cond_3
    cmpg-float v4, p1, v5

    if-gez v4, :cond_0

    .line 40
    const/4 p1, 0x0

    goto :goto_1

    .line 53
    .restart local v0    # "c":Lcom/masshabit/common/curve/CubicBezier;
    .restart local v1    # "dist":F
    .restart local v2    # "i":I
    .restart local v3    # "size":I
    :cond_4
    iget v4, v0, Lcom/masshabit/common/curve/CubicBezier;->mLength:F

    sub-float/2addr v1, v4

    .line 45
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/masshabit/common/curve/PolyCubicBezier;->mCurves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
