.class final Lcom/madhouse/android/ads/___;
.super Landroid/view/animation/Animation;


# instance fields
.field private final $:Z

.field private $$:I

.field private $$$:Landroid/graphics/Camera;

.field private final _:F

.field private final __:F

.field private final ___:F

.field private final ____:F

.field private final _____:F


# direct methods
.method protected constructor <init>(FFFFFZI)V
    .locals 0

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput p1, p0, Lcom/madhouse/android/ads/___;->_:F

    iput p2, p0, Lcom/madhouse/android/ads/___;->__:F

    iput p3, p0, Lcom/madhouse/android/ads/___;->___:F

    iput p4, p0, Lcom/madhouse/android/ads/___;->____:F

    iput p5, p0, Lcom/madhouse/android/ads/___;->_____:F

    iput-boolean p6, p0, Lcom/madhouse/android/ads/___;->$:Z

    iput p7, p0, Lcom/madhouse/android/ads/___;->$$:I

    return-void
.end method


# virtual methods
.method protected final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 8

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    iget v0, p0, Lcom/madhouse/android/ads/___;->___:F

    iget v1, p0, Lcom/madhouse/android/ads/___;->____:F

    iget-object v2, p0, Lcom/madhouse/android/ads/___;->$$$:Landroid/graphics/Camera;

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2}, Landroid/graphics/Camera;->save()V

    iget v4, p0, Lcom/madhouse/android/ads/___;->$$:I

    packed-switch v4, :pswitch_data_0

    :goto_0
    iget-object v2, p0, Lcom/madhouse/android/ads/___;->$$$:Landroid/graphics/Camera;

    invoke-virtual {v2, v3}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v2, p0, Lcom/madhouse/android/ads/___;->$$$:Landroid/graphics/Camera;

    invoke-virtual {v2}, Landroid/graphics/Camera;->restore()V

    neg-float v2, v0

    neg-float v4, v1

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void

    :pswitch_0
    iget v4, p0, Lcom/madhouse/android/ads/___;->_:F

    iget v5, p0, Lcom/madhouse/android/ads/___;->__:F

    sub-float/2addr v5, v4

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    iget-boolean v5, p0, Lcom/madhouse/android/ads/___;->$:Z

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/madhouse/android/ads/___;->_____:F

    mul-float/2addr v5, p1

    invoke-virtual {v2, v7, v7, v5}, Landroid/graphics/Camera;->translate(FFF)V

    :goto_1
    invoke-virtual {v2, v4}, Landroid/graphics/Camera;->rotateY(F)V

    goto :goto_0

    :cond_0
    iget v5, p0, Lcom/madhouse/android/ads/___;->_____:F

    sub-float/2addr v6, p1

    mul-float/2addr v5, v6

    invoke-virtual {v2, v7, v7, v5}, Landroid/graphics/Camera;->translate(FFF)V

    goto :goto_1

    :pswitch_1
    iget v4, p0, Lcom/madhouse/android/ads/___;->_____:F

    sub-float v5, v6, p1

    mul-float/2addr v4, v5

    invoke-virtual {v2, v7, v7, v4}, Landroid/graphics/Camera;->translate(FFF)V

    iget v4, p0, Lcom/madhouse/android/ads/___;->_:F

    iget v5, p0, Lcom/madhouse/android/ads/___;->__:F

    iget v6, p0, Lcom/madhouse/android/ads/___;->_:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    invoke-virtual {v2, v4}, Landroid/graphics/Camera;->rotateX(F)V

    goto :goto_0

    :pswitch_2
    iget v4, p0, Lcom/madhouse/android/ads/___;->_____:F

    mul-float/2addr v4, p1

    invoke-virtual {v2, v7, v7, v4}, Landroid/graphics/Camera;->translate(FFF)V

    iget v4, p0, Lcom/madhouse/android/ads/___;->_:F

    iget v5, p0, Lcom/madhouse/android/ads/___;->__:F

    iget v6, p0, Lcom/madhouse/android/ads/___;->_:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    invoke-virtual {v2, v4}, Landroid/graphics/Camera;->rotateX(F)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final initialize(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/madhouse/android/ads/___;->$$$:Landroid/graphics/Camera;

    return-void
.end method
