.class Lcom/keji/danti/al;
.super Landroid/view/View;


# instance fields
.field public a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;

.field private final d:[I

.field private e:[I

.field private f:Z

.field private g:Lcom/keji/danti/pb;

.field private h:Z

.field private i:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/keji/danti/pb;I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/keji/danti/al;->g:Lcom/keji/danti/pb;

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/keji/danti/al;->d:[I

    new-instance v0, Landroid/graphics/SweepGradient;

    iget-object v1, p0, Lcom/keji/danti/al;->d:[I

    const/4 v2, 0x0

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/keji/danti/al;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/keji/danti/al;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/keji/danti/al;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/keji/danti/al;->b:Landroid/graphics/Paint;

    const/high16 v1, 0x425c0000    # 55.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/keji/danti/al;->a:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/keji/danti/al;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/keji/danti/al;->a:Landroid/graphics/Paint;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/high16 v2, -0x1000000

    aput v2, v0, v1

    aput p3, v0, v3

    const/4 v1, 0x2

    const/4 v2, -0x1

    aput v2, v0, v1

    iput-object v0, p0, Lcom/keji/danti/al;->e:[I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/keji/danti/al;->c:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/keji/danti/al;->c:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iput-boolean v3, p0, Lcom/keji/danti/al;->f:Z

    return-void

    nop

    :array_0
    .array-data 4
        -0x10000
        -0xff01
        -0xffff01
        -0xff0001
        -0xff0100
        -0x100
        -0x10000
    .end array-data
.end method

.method private a(IIF)I
    .locals 1

    sub-int v0, p2, p1

    int-to-float v0, v0

    mul-float/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method private a([IF)I
    .locals 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    aget v0, p1, v0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_1

    array-length v0, p1

    sub-int/2addr v0, v1

    aget v0, p1, v0

    goto :goto_0

    :cond_1
    array-length v0, p1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v1, v0

    int-to-float v2, v1

    sub-float/2addr v0, v2

    aget v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    aget v1, p1, v1

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    invoke-direct {p0, v3, v4, v0}, Lcom/keji/danti/al;->a(IIF)I

    move-result v3

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v5

    invoke-direct {p0, v4, v5, v0}, Lcom/keji/danti/al;->a(IIF)I

    move-result v4

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-direct {p0, v5, v6, v0}, Lcom/keji/danti/al;->a(IIF)I

    move-result v5

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-direct {p0, v2, v1, v0}, Lcom/keji/danti/al;->a(IIF)I

    move-result v0

    invoke-static {v3, v4, v5, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    const/4 v12, 0x1

    const/high16 v11, 0x41f00000    # 30.0f

    const/high16 v1, -0x3d380000    # -100.0f

    const/high16 v3, 0x42c80000    # 100.0f

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/keji/danti/al;->b:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v0, v4

    sub-float v8, v3, v0

    invoke-virtual {p1, v3, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/keji/danti/al;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v9

    iget-boolean v0, p0, Lcom/keji/danti/al;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keji/danti/al;->e:[I

    aput v9, v0, v12

    iget-object v10, p0, Lcom/keji/danti/al;->c:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    iget-object v5, p0, Lcom/keji/danti/al;->e:[I

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v4, v2

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    neg-float v4, v8

    neg-float v5, v8

    invoke-direct {v0, v4, v5, v8, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v4, p0, Lcom/keji/danti/al;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/keji/danti/al;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v2, v11, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/RectF;

    const/high16 v4, 0x43020000    # 130.0f

    const/high16 v5, 0x42dc0000    # 110.0f

    invoke-direct {v0, v1, v4, v3, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lcom/keji/danti/al;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-boolean v0, p0, Lcom/keji/danti/al;->h:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/keji/danti/al;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-boolean v0, p0, Lcom/keji/danti/al;->i:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/keji/danti/al;->a:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_0
    iget-object v0, p0, Lcom/keji/danti/al;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    add-float/2addr v0, v11

    iget-object v1, p0, Lcom/keji/danti/al;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/keji/danti/al;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/keji/danti/al;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    iput-boolean v12, p0, Lcom/keji/danti/al;->f:Z

    return-void

    :cond_2
    iget-object v0, p0, Lcom/keji/danti/al;->a:Landroid/graphics/Paint;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2

    const/16 v0, 0xc8

    const/16 v1, 0xfa

    invoke-virtual {p0, v0, v1}, Lcom/keji/danti/al;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/high16 v6, 0x42c80000    # 100.0f

    const/4 v7, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sub-float/2addr v0, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v1, v6

    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_1

    move v2, v7

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_1
    return v7

    :cond_1
    move v2, v8

    goto :goto_0

    :pswitch_0
    iput-boolean v2, p0, Lcom/keji/danti/al;->h:Z

    if-eqz v2, :cond_2

    iput-boolean v7, p0, Lcom/keji/danti/al;->i:Z

    invoke-virtual {p0}, Lcom/keji/danti/al;->invalidate()V

    goto :goto_1

    :cond_2
    :pswitch_1
    iget-boolean v3, p0, Lcom/keji/danti/al;->h:Z

    if-eqz v3, :cond_3

    iget-boolean v0, p0, Lcom/keji/danti/al;->i:Z

    if-eq v0, v2, :cond_0

    iput-boolean v2, p0, Lcom/keji/danti/al;->i:Z

    invoke-virtual {p0}, Lcom/keji/danti/al;->invalidate()V

    goto :goto_1

    :cond_3
    const/high16 v2, -0x3d380000    # -100.0f

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_4

    move v2, v7

    :goto_2
    cmpg-float v3, v0, v6

    if-gtz v3, :cond_5

    move v3, v7

    :goto_3
    and-int/2addr v2, v3

    if-eqz v2, :cond_7

    const/high16 v2, 0x43020000    # 130.0f

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_7

    const/high16 v2, 0x42dc0000    # 110.0f

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_7

    cmpg-float v1, v0, v9

    if-gez v1, :cond_6

    iget-object v1, p0, Lcom/keji/danti/al;->e:[I

    aget v1, v1, v8

    iget-object v2, p0, Lcom/keji/danti/al;->e:[I

    aget v2, v2, v7

    add-float/2addr v0, v6

    div-float/2addr v0, v6

    move v10, v2

    move v2, v1

    move v1, v10

    :goto_4
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    invoke-direct {p0, v3, v4, v0}, Lcom/keji/danti/al;->a(IIF)I

    move-result v3

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v5

    invoke-direct {p0, v4, v5, v0}, Lcom/keji/danti/al;->a(IIF)I

    move-result v4

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-direct {p0, v5, v6, v0}, Lcom/keji/danti/al;->a(IIF)I

    move-result v5

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-direct {p0, v2, v1, v0}, Lcom/keji/danti/al;->a(IIF)I

    move-result v0

    iget-object v1, p0, Lcom/keji/danti/al;->a:Landroid/graphics/Paint;

    invoke-static {v3, v4, v5, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iput-boolean v8, p0, Lcom/keji/danti/al;->f:Z

    invoke-virtual {p0}, Lcom/keji/danti/al;->invalidate()V

    goto/16 :goto_1

    :cond_4
    move v2, v8

    goto :goto_2

    :cond_5
    move v3, v8

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/keji/danti/al;->e:[I

    aget v1, v1, v7

    iget-object v2, p0, Lcom/keji/danti/al;->e:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    div-float/2addr v0, v6

    move v10, v2

    move v2, v1

    move v1, v10

    goto :goto_4

    :cond_7
    float-to-double v1, v1

    float-to-double v3, v0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const v1, 0x40c90fda

    div-float/2addr v0, v1

    cmpg-float v1, v0, v9

    if-gez v1, :cond_8

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    :cond_8
    iget-object v1, p0, Lcom/keji/danti/al;->a:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/keji/danti/al;->d:[I

    invoke-direct {p0, v2, v0}, Lcom/keji/danti/al;->a([IF)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/keji/danti/al;->invalidate()V

    goto/16 :goto_1

    :pswitch_2
    iget-boolean v0, p0, Lcom/keji/danti/al;->h:Z

    if-eqz v0, :cond_0

    if-eqz v2, :cond_9

    iget-object v0, p0, Lcom/keji/danti/al;->g:Lcom/keji/danti/pb;

    iget-object v1, p0, Lcom/keji/danti/al;->a:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/keji/danti/pb;->a(I)V

    :cond_9
    iput-boolean v8, p0, Lcom/keji/danti/al;->h:Z

    invoke-virtual {p0}, Lcom/keji/danti/al;->invalidate()V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
