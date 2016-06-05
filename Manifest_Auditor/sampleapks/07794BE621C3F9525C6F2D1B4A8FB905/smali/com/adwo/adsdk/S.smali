.class final Lcom/adwo/adsdk/S;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# static fields
.field private static synthetic k:[I


# instance fields
.field private final a:F

.field private final b:F

.field private final c:F

.field private final d:F

.field private final e:F

.field private final f:F

.field private final g:F

.field private final h:Lcom/adwo/adsdk/M;

.field private final i:Z

.field private j:Landroid/graphics/Camera;


# direct methods
.method public constructor <init>(FFFFFFFZLcom/adwo/adsdk/M;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 603
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 606
    iput p1, p0, Lcom/adwo/adsdk/S;->a:F

    .line 607
    iput p2, p0, Lcom/adwo/adsdk/S;->b:F

    .line 608
    iput p3, p0, Lcom/adwo/adsdk/S;->c:F

    .line 609
    iput p4, p0, Lcom/adwo/adsdk/S;->d:F

    .line 610
    iput v0, p0, Lcom/adwo/adsdk/S;->e:F

    .line 611
    iput v0, p0, Lcom/adwo/adsdk/S;->f:F

    .line 612
    iput p7, p0, Lcom/adwo/adsdk/S;->g:F

    .line 613
    iput-boolean p8, p0, Lcom/adwo/adsdk/S;->i:Z

    .line 614
    iput-object p9, p0, Lcom/adwo/adsdk/S;->h:Lcom/adwo/adsdk/M;

    .line 615
    return-void
.end method

.method private static synthetic a()[I
    .locals 3

    .prologue
    .line 569
    sget-object v0, Lcom/adwo/adsdk/S;->k:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/adwo/adsdk/M;->values()[Lcom/adwo/adsdk/M;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/adwo/adsdk/M;->a:Lcom/adwo/adsdk/M;

    invoke-virtual {v1}, Lcom/adwo/adsdk/M;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/adwo/adsdk/M;->b:Lcom/adwo/adsdk/M;

    invoke-virtual {v1}, Lcom/adwo/adsdk/M;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/adwo/adsdk/M;->c:Lcom/adwo/adsdk/M;

    invoke-virtual {v1}, Lcom/adwo/adsdk/M;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/adwo/adsdk/S;->k:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method protected final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 626
    iget v0, p0, Lcom/adwo/adsdk/S;->a:F

    .line 630
    iget v1, p0, Lcom/adwo/adsdk/S;->b:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    .line 629
    add-float/2addr v0, v1

    .line 632
    iget v1, p0, Lcom/adwo/adsdk/S;->c:F

    .line 633
    iget v2, p0, Lcom/adwo/adsdk/S;->d:F

    .line 634
    iget v3, p0, Lcom/adwo/adsdk/S;->e:F

    .line 635
    iget v4, p0, Lcom/adwo/adsdk/S;->f:F

    .line 636
    iget-object v5, p0, Lcom/adwo/adsdk/S;->j:Landroid/graphics/Camera;

    .line 638
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    .line 640
    invoke-virtual {v5}, Landroid/graphics/Camera;->save()V

    .line 641
    iget-boolean v7, p0, Lcom/adwo/adsdk/S;->i:Z

    if-eqz v7, :cond_0

    .line 642
    iget v7, p0, Lcom/adwo/adsdk/S;->g:F

    mul-float/2addr v7, p1

    invoke-virtual {v5, v9, v9, v7}, Landroid/graphics/Camera;->translate(FFF)V

    .line 650
    :goto_0
    iget-object v7, p0, Lcom/adwo/adsdk/S;->h:Lcom/adwo/adsdk/M;

    invoke-static {}, Lcom/adwo/adsdk/S;->a()[I

    move-result-object v8

    invoke-virtual {v7}, Lcom/adwo/adsdk/M;->ordinal()I

    move-result v7

    aget v7, v8, v7

    packed-switch v7, :pswitch_data_0

    .line 651
    :goto_1
    invoke-virtual {v5, v6}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 652
    invoke-virtual {v5}, Landroid/graphics/Camera;->restore()V

    .line 654
    neg-float v0, v1

    neg-float v5, v2

    invoke-virtual {v6, v0, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 655
    sub-float v0, v1, v3

    sub-float v1, v2, v4

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 656
    return-void

    .line 644
    :cond_0
    iget v7, p0, Lcom/adwo/adsdk/S;->g:F

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, p1

    mul-float/2addr v7, v8

    invoke-virtual {v5, v9, v9, v7}, Landroid/graphics/Camera;->translate(FFF)V

    goto :goto_0

    .line 650
    :pswitch_0
    invoke-virtual {v5, v0}, Landroid/graphics/Camera;->rotateX(F)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {v5, v0}, Landroid/graphics/Camera;->rotateY(F)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {v5, v0}, Landroid/graphics/Camera;->rotateZ(F)V

    goto :goto_1

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

    .prologue
    .line 620
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 621
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/adwo/adsdk/S;->j:Landroid/graphics/Camera;

    .line 622
    return-void
.end method
