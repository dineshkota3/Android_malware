.class public final Lcom/adwo/adsdk/P;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private A:[B

.field private B:I

.field private C:I

.field private D:I

.field private E:Z

.field private F:I

.field private G:I

.field private H:[S

.field private I:[B

.field private J:[B

.field private K:[B

.field private L:Ljava/util/Vector;

.field private M:I

.field private a:Ljava/io/InputStream;

.field private b:I

.field private c:I

.field private d:I

.field private e:Z

.field private f:I

.field private g:[I

.field private h:[I

.field private i:[I

.field private j:I

.field private k:I

.field private l:I

.field private m:Z

.field private n:Z

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:Landroid/graphics/Bitmap;

.field private y:Landroid/graphics/Bitmap;

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v1, p0, Lcom/adwo/adsdk/P;->z:I

    .line 58
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/adwo/adsdk/P;->A:[B

    .line 59
    iput v1, p0, Lcom/adwo/adsdk/P;->B:I

    .line 62
    iput v1, p0, Lcom/adwo/adsdk/P;->C:I

    .line 64
    iput v1, p0, Lcom/adwo/adsdk/P;->D:I

    .line 65
    iput-boolean v1, p0, Lcom/adwo/adsdk/P;->E:Z

    .line 66
    iput v1, p0, Lcom/adwo/adsdk/P;->F:I

    .line 13
    return-void
.end method

.method private b(I)[I
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 406
    mul-int/lit8 v0, p1, 0x3

    .line 407
    const/4 v1, 0x0

    .line 408
    new-array v2, v0, [B

    .line 411
    :try_start_0
    iget-object v3, p0, Lcom/adwo/adsdk/P;->a:Ljava/io/InputStream;

    invoke-virtual {v3, v2}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 415
    :goto_0
    if-ge v3, v0, :cond_1

    .line 416
    const/4 v0, 0x1

    iput v0, p0, Lcom/adwo/adsdk/P;->b:I

    move-object v0, v1

    .line 428
    :cond_0
    return-object v0

    .line 412
    :catch_0
    move-exception v3

    .line 413
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move v3, v4

    goto :goto_0

    .line 418
    :cond_1
    const/16 v0, 0x100

    new-array v0, v0, [I

    move v1, v4

    move v3, v4

    .line 421
    :goto_1
    if-ge v1, p1, :cond_0

    .line 422
    add-int/lit8 v4, v3, 0x1

    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    .line 423
    add-int/lit8 v5, v4, 0x1

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    .line 424
    add-int/lit8 v6, v5, 0x1

    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    .line 425
    add-int/lit8 v7, v1, 0x1

    const/high16 v8, -0x1000000

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v3, v8

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    or-int/2addr v3, v5

    aput v3, v0, v1

    move v1, v7

    move v3, v6

    goto :goto_1
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 361
    iget v0, p0, Lcom/adwo/adsdk/P;->b:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()I
    .locals 2

    .prologue
    .line 373
    const/4 v0, 0x0

    .line 375
    :try_start_0
    iget-object v1, p0, Lcom/adwo/adsdk/P;->a:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 379
    :goto_0
    return v0

    .line 377
    :catch_0
    move-exception v1

    const/4 v1, 0x1

    iput v1, p0, Lcom/adwo/adsdk/P;->b:I

    goto :goto_0
.end method

.method private e()I
    .locals 4

    .prologue
    .line 383
    invoke-direct {p0}, Lcom/adwo/adsdk/P;->d()I

    move-result v0

    iput v0, p0, Lcom/adwo/adsdk/P;->B:I

    .line 384
    const/4 v0, 0x0

    .line 385
    iget v1, p0, Lcom/adwo/adsdk/P;->B:I

    if-lez v1, :cond_1

    .line 388
    :goto_0
    :try_start_0
    iget v1, p0, Lcom/adwo/adsdk/P;->B:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v0, v1, :cond_2

    .line 398
    :cond_0
    :goto_1
    iget v1, p0, Lcom/adwo/adsdk/P;->B:I

    if-ge v0, v1, :cond_1

    .line 399
    const/4 v1, 0x1

    iput v1, p0, Lcom/adwo/adsdk/P;->b:I

    .line 402
    :cond_1
    return v0

    .line 389
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/adwo/adsdk/P;->a:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/adwo/adsdk/P;->A:[B

    iget v3, p0, Lcom/adwo/adsdk/P;->B:I

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 390
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 391
    add-int/2addr v0, v1

    goto :goto_0

    .line 395
    :catch_0
    move-exception v1

    .line 396
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private f()V
    .locals 26

    .prologue
    .line 433
    const/4 v2, 0x0

    move v10, v2

    .line 434
    :cond_0
    :goto_0
    :sswitch_0
    if-nez v10, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/adwo/adsdk/P;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 471
    :cond_1
    return-void

    .line 435
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/adwo/adsdk/P;->d()I

    move-result v2

    .line 436
    sparse-switch v2, :sswitch_data_0

    .line 468
    const/4 v2, 0x1

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/adwo/adsdk/P;->b:I

    goto :goto_0

    .line 438
    :sswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/adwo/adsdk/P;->i()I

    move-result v2

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/adwo/adsdk/P;->p:I

    invoke-direct/range {p0 .. p0}, Lcom/adwo/adsdk/P;->i()I

    move-result v2

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/adwo/adsdk/P;->q:I

    invoke-direct/range {p0 .. p0}, Lcom/adwo/adsdk/P;->i()I

    move-result v2

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/adwo/adsdk/P;->r:I

    invoke-direct/range {p0 .. p0}, Lcom/adwo/adsdk/P;->i()I

    move-result v2

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/adwo/adsdk/P;->s:I

    invoke-direct/range {p0 .. p0}, Lcom/adwo/adsdk/P;->d()I

    move-result v2

    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_10

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/adwo/adsdk/P;->m:Z

    and-int/lit8 v3, v2, 0x40

    if-eqz v3, :cond_11

    const/4 v3, 0x1

    :goto_2
    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/adwo/adsdk/P;->n:Z

    const/4 v3, 0x2

    and-int/lit8 v2, v2, 0x7

    shl-int v2, v3, v2

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/adwo/adsdk/P;->o:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/adwo/adsdk/P;->m:Z

    move v2, v0

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adwo/adsdk/P;->o:I

    move v2, v0

    move-object/from16 v0, p0

    move v1, v2

    invoke-direct {v0, v1}, Lcom/adwo/adsdk/P;->b(I)[I

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/adwo/adsdk/P;->h:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adwo/adsdk/P;->h:[I

    move-object v2, v0

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/adwo/adsdk/P;->i:[I

    :cond_3
    :goto_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/adwo/adsdk/P;->E:Z

    move v3, v0

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adwo/adsdk/P;->i:[I

    move-object v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adwo/adsdk/P;->G:I

    move v3, v0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adwo/adsdk/P;->i:[I

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adwo/adsdk/P;->G:I

    move v4, v0

    const/4 v5, 0x0

    aput v5, v3, v4

    :cond_4
    move v11, v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adwo/adsdk/P;->i:[I

    move-object v2, v0

    if-nez v2, :cond_5

    const/4 v2, 0x1

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/adwo/adsdk/P;->b:I

    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/adwo/adsdk/P;->c()Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adwo/adsdk/P;->r:I

    move v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adwo/adsdk/P;->s:I

    move v3, v0

    mul-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adwo/adsdk/P;->K:[B

    move-object v3, v0

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adwo/adsdk/P;->K:[B

    move-object v3, v0

    array-length v3, v3

    if-ge v3, v2, :cond_7

    :cond_6
    new-array v3, v2, [B

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/adwo/adsdk/P;->K:[B

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adwo/adsdk/P;->H:[S

    move-object v3, v0

    if-nez v3, :cond_8

    const/16 v3, 0x1000

    new-array v3, v3, [S

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/adwo/adsdk/P;->H:[S

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adwo/adsdk/P;->I:[B

    move-object v3, v0

    if-nez v3, :cond_9

    const/16 v3, 0x1000

    new-array v3, v3, [B

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/adwo/adsdk/P;->I:[B

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adwo/adsdk/P;->J:[B

    move-object v3, v0

    if-nez v3, :cond_a

    const/16 v3, 0x1001

    new-array v3, v3, [B

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/adwo/adsdk/P;->J:[B

    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/adwo/adsdk/P;->d()I

    move-result v3

    const/4 v4, 0x1

    shl-int/2addr v4, v3

    add-int/lit8 v5, v4, 0x1

    add-int/lit8 v6, v4, 0x2

    const/4 v7, -0x1

    add-int/lit8 v8, v3, 0x1

    const/4 v9, 0x1

    shl-int/2addr v9, v8

    const/4 v12, 0x1

    sub-int/2addr v9, v12

    const/4 v12, 0x0

    :goto_4
    if-lt v12, v4, :cond_13

    const/4 v12, 0x0

    const/4 v13, 0x0

    move v14, v12

    move v15, v7

    move/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, v6

    move/from16 v19, v13

    move v7, v12

    move v8, v12

    move v9, v12

    move v13, v12

    move v6, v12

    :goto_5
    move/from16 v0, v19

    move v1, v2

    if-lt v0, v1, :cond_14

    :cond_b
    move v3, v6

    :goto_6
    if-lt v3, v2, :cond_1b

    invoke-direct/range {p0 .. p0}, Lcom/adwo/adsdk/P;->j()V

    invoke-direct/range {p0 .. p0}, Lcom/adwo/adsdk/P;->c()Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adwo/adsdk/P;->M:I

    move v2, v0

    add-int/lit8 v2, v2, 0x1

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/adwo/adsdk/P;->M:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adwo/adsdk/P;->c:I

    move v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adwo/adsdk/P;->d:I

    move v3, v0

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/adwo/adsdk/P;->x:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adwo/adsdk/P;->c:I

    move v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adwo/adsdk/P;->d:I

    move v3, v0

    mul-int/2addr v2, v3

    new-array v3, v2, [I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adwo/adsdk/P;->D:I

    move v2, v0

    if-lez v2, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adwo/adsdk/P;->D:I

    move v2, v0

    const/4 v4, 0x3

    if-ne v2, v4, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adwo/adsdk/P;->M:I

    move v2, v0

    const/4 v4, 0x2

    sub-int/2addr v2, v4

    if-lez v2, :cond_1c

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    move-object/from16 v0, p0

    move v1, v2

    invoke-virtual {v0, v1}, Lcom/adwo/adsdk/P;->a(I)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/adwo/adsdk/P;->y:Landroid/graphics/Bitmap;

    :cond_c
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adwo/adsdk/P;->y:Landroid/graphics/Bitmap;

    move-object v2, v0

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adwo/adsdk/P;->y:Landroid/graphics/Bitmap;

    move-object v2, v0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adwo/adsdk/P;->c:I

    move v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adwo/adsdk/P;->c:I

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adwo/adsdk/P;->d:I

    move v9, v0

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adwo/adsdk/P;->D:I

    move v2, v0

    const/4 v4, 0x2

    if-ne v2, v4, :cond_e

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/adwo/adsdk/P;->E:Z

    move v4, v0

    if-nez v4, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adwo/adsdk/P;->l:I

    move v2, v0

    :cond_d
    const/4 v4, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/adwo/adsdk/P;->w:I

    move v5, v0

    if-lt v4, v5, :cond_1d

    :cond_e
    const/4 v2, 0x1

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v24, v6

    move v6, v2

    move/from16 v2, v24

    move/from16 v25, v4

    move v4, v5

    move/from16 v5, v25

    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/adwo/adsdk/P;->s:I

    move v7, v0

    if-lt v2, v7, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adwo/adsdk/P;->c:I

    move v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adwo/adsdk/P;->d:I

    move v4, v0

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4, v5}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/adwo/adsdk/P;->x:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adwo/adsdk/P;->L:Ljava/util/Vector;

    move-object v2, v0

    new-instance v3, Lcom/adwo/adsdk/Q;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adwo/adsdk/P;->x:Landroid/graphics/Bitmap;

    move-object v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adwo/adsdk/P;->F:I

    move v5, v0

    invoke-direct {v3, v4, v5}, Lcom/adwo/adsdk/Q;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/adwo/adsdk/P;->E:Z

    move v2, v0

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adwo/adsdk/P;->i:[I

    move-object v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adwo/adsdk/P;->G:I

    move v3, v0

    aput v11, v2, v3

    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/adwo/adsdk/P;->C:I

    move v2, v0

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/adwo/adsdk/P;->D:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adwo/adsdk/P;->p:I

    move v2, v0

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/adwo/adsdk/P;->t:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adwo/adsdk/P;->q:I

    move v2, v0

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/adwo/adsdk/P;->u:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adwo/adsdk/P;->r:I

    move v2, v0

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/adwo/adsdk/P;->v:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adwo/adsdk/P;->s:I

    move v2, v0

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/adwo/adsdk/P;->w:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adwo/adsdk/P;->x:Landroid/graphics/Bitmap;

    move-object v2, v0

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/adwo/adsdk/P;->y:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adwo/adsdk/P;->k:I

    move v2, v0

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/adwo/adsdk/P;->l:I

    const/4 v2, 0x0

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/adwo/adsdk/P;->C:I

    const/4 v2, 0x0

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/adwo/adsdk/P;->E:Z

    const/4 v2, 0x0

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/adwo/adsdk/P;->F:I

    const/4 v2, 0x0

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/adwo/adsdk/P;->h:[I

    goto/16 :goto_0

    :cond_10
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_11
    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adwo/adsdk/P;->g:[I

    move-object v2, v0

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/adwo/adsdk/P;->i:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adwo/adsdk/P;->j:I

    move v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adwo/adsdk/P;->G:I

    move v3, v0

    if-ne v2, v3, :cond_3

    const/4 v2, 0x0

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/adwo/adsdk/P;->k:I

    goto/16 :goto_3

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adwo/adsdk/P;->H:[S

    move-object v13, v0

    const/4 v14, 0x0

    aput-short v14, v13, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adwo/adsdk/P;->I:[B

    move-object v13, v0

    int-to-byte v14, v12

    aput-byte v14, v13, v12

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_4

    :cond_14
    if-nez v8, :cond_19

    move v0, v14

    move/from16 v1, v16

    if-ge v0, v1, :cond_16

    if-nez v13, :cond_15

    invoke-direct/range {p0 .. p0}, Lcom/adwo/adsdk/P;->e()I

    move-result v7

    if-lez v7, :cond_b

    const/4 v13, 0x0

    move/from16 v24, v13

    move v13, v7

    move/from16 v7, v24

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adwo/adsdk/P;->A:[B

    move-object/from16 v20, v0

    aget-byte v20, v20, v7

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shl-int v20, v20, v14

    add-int v12, v12, v20

    add-int/lit8 v14, v14, 0x8

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v13, v13, -0x1

    goto/16 :goto_5

    :cond_16
    and-int v20, v12, v17

    shr-int v12, v12, v16

    sub-int v14, v14, v16

    move/from16 v0, v20

    move/from16 v1, v18

    if-gt v0, v1, :cond_b

    move/from16 v0, v20

    move v1, v5

    if-eq v0, v1, :cond_b

    move/from16 v0, v20

    move v1, v4

    if-ne v0, v1, :cond_17

    add-int/lit8 v15, v3, 0x1

    const/16 v16, 0x1

    shl-int v16, v16, v15

    const/16 v17, 0x1

    sub-int v16, v16, v17

    add-int/lit8 v17, v4, 0x2

    const/16 v18, -0x1

    move/from16 v24, v18

    move/from16 v18, v17

    move/from16 v17, v16

    move/from16 v16, v15

    move/from16 v15, v24

    goto/16 :goto_5

    :cond_17
    const/16 v21, -0x1

    move v0, v15

    move/from16 v1, v21

    if-ne v0, v1, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adwo/adsdk/P;->J:[B

    move-object v9, v0

    add-int/lit8 v15, v8, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adwo/adsdk/P;->I:[B

    move-object/from16 v21, v0

    aget-byte v21, v21, v20

    aput-byte v21, v9, v8

    move v8, v15

    move/from16 v9, v20

    move/from16 v15, v20

    goto/16 :goto_5

    :cond_18
    move/from16 v0, v20

    move/from16 v1, v18

    if-ne v0, v1, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adwo/adsdk/P;->J:[B

    move-object/from16 v21, v0

    add-int/lit8 v22, v8, 0x1

    int-to-byte v9, v9

    aput-byte v9, v21, v8

    move/from16 v8, v22

    move v9, v15

    :goto_a
    if-gt v9, v4, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adwo/adsdk/P;->I:[B

    move-object/from16 v21, v0

    aget-byte v9, v21, v9

    and-int/lit16 v9, v9, 0xff

    const/16 v21, 0x1000

    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adwo/adsdk/P;->J:[B

    move-object/from16 v21, v0

    add-int/lit8 v22, v8, 0x1

    move v0, v9

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v21, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adwo/adsdk/P;->H:[S

    move-object v8, v0

    int-to-short v15, v15

    aput-short v15, v8, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adwo/adsdk/P;->I:[B

    move-object v8, v0

    int-to-byte v15, v9

    aput-byte v15, v8, v18

    add-int/lit8 v8, v18, 0x1

    and-int v15, v8, v17

    if-nez v15, :cond_2a

    const/16 v15, 0x1000

    if-ge v8, v15, :cond_2a

    add-int/lit8 v15, v16, 0x1

    add-int v16, v17, v8

    :goto_b
    move/from16 v17, v16

    move/from16 v18, v8

    move/from16 v16, v15

    move/from16 v8, v22

    move/from16 v15, v20

    :cond_19
    add-int/lit8 v8, v8, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adwo/adsdk/P;->K:[B

    move-object/from16 v20, v0

    add-int/lit8 v21, v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adwo/adsdk/P;->J:[B

    move-object/from16 v22, v0

    aget-byte v22, v22, v8

    aput-byte v22, v20, v6

    add-int/lit8 v6, v19, 0x1

    move/from16 v19, v6

    move/from16 v6, v21

    goto/16 :goto_5

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adwo/adsdk/P;->J:[B

    move-object/from16 v21, v0

    add-int/lit8 v22, v8, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adwo/adsdk/P;->I:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v9

    aput-byte v23, v21, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adwo/adsdk/P;->H:[S

    move-object v8, v0

    aget-short v8, v8, v9

    move v9, v8

    move/from16 v8, v22

    goto/16 :goto_a

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adwo/adsdk/P;->K:[B

    move-object v4, v0

    const/4 v5, 0x0

    aput-byte v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6

    :cond_1c
    const/4 v2, 0x0

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/adwo/adsdk/P;->y:Landroid/graphics/Bitmap;

    goto/16 :goto_7

    :cond_1d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/adwo/adsdk/P;->u:I

    move v5, v0

    add-int/2addr v5, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adwo/adsdk/P;->c:I

    move v6, v0

    mul-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adwo/adsdk/P;->t:I

    move v6, v0

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adwo/adsdk/P;->v:I

    move v6, v0

    add-int/2addr v6, v5

    :goto_c
    if-lt v5, v6, :cond_1e

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_8

    :cond_1e
    aput v2, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/adwo/adsdk/P;->n:Z

    move v7, v0

    if-eqz v7, :cond_29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adwo/adsdk/P;->s:I

    move v7, v0

    if-lt v4, v7, :cond_20

    add-int/lit8 v6, v6, 0x1

    packed-switch v6, :pswitch_data_0

    :cond_20
    :goto_d
    add-int v7, v4, v5

    move/from16 v24, v7

    move v7, v6

    move v6, v5

    move/from16 v5, v24

    :goto_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/adwo/adsdk/P;->q:I

    move v8, v0

    add-int/2addr v4, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adwo/adsdk/P;->d:I

    move v8, v0

    if-ge v4, v8, :cond_21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adwo/adsdk/P;->c:I

    move v8, v0

    mul-int/2addr v4, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adwo/adsdk/P;->p:I

    move v8, v0

    add-int/2addr v8, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adwo/adsdk/P;->r:I

    move v9, v0

    add-int/2addr v9, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adwo/adsdk/P;->c:I

    move v12, v0

    add-int/2addr v12, v4

    if-ge v12, v9, :cond_28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adwo/adsdk/P;->c:I

    move v9, v0

    add-int/2addr v4, v9

    :goto_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/adwo/adsdk/P;->r:I

    move v9, v0

    mul-int/2addr v9, v2

    move/from16 v24, v9

    move v9, v8

    move/from16 v8, v24

    :goto_10
    if-lt v9, v4, :cond_22

    :cond_21
    add-int/lit8 v2, v2, 0x1

    move v4, v5

    move v5, v6

    move v6, v7

    goto/16 :goto_9

    :pswitch_0
    const/4 v4, 0x4

    goto :goto_d

    :pswitch_1
    const/4 v4, 0x2

    const/4 v5, 0x4

    goto :goto_d

    :pswitch_2
    const/4 v4, 0x1

    const/4 v5, 0x2

    goto :goto_d

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adwo/adsdk/P;->K:[B

    move-object v12, v0

    add-int/lit8 v13, v8, 0x1

    aget-byte v8, v12, v8

    and-int/lit16 v8, v8, 0xff

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adwo/adsdk/P;->i:[I

    move-object v12, v0

    aget v8, v12, v8

    if-eqz v8, :cond_23

    aput v8, v3, v9

    :cond_23
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    move v8, v13

    goto :goto_10

    .line 441
    :sswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/adwo/adsdk/P;->d()I

    move-result v2

    .line 442
    sparse-switch v2, :sswitch_data_1

    .line 459
    invoke-direct/range {p0 .. p0}, Lcom/adwo/adsdk/P;->j()V

    goto/16 :goto_0

    .line 444
    :sswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/adwo/adsdk/P;->d()I

    invoke-direct/range {p0 .. p0}, Lcom/adwo/adsdk/P;->d()I

    move-result v2

    and-int/lit8 v3, v2, 0x1c

    shr-int/lit8 v3, v3, 0x2

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/adwo/adsdk/P;->C:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adwo/adsdk/P;->C:I

    move v3, v0

    if-nez v3, :cond_24

    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/adwo/adsdk/P;->C:I

    :cond_24
    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_25

    const/4 v2, 0x1

    :goto_11
    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/adwo/adsdk/P;->E:Z

    invoke-direct/range {p0 .. p0}, Lcom/adwo/adsdk/P;->i()I

    move-result v2

    mul-int/lit8 v2, v2, 0xa

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/adwo/adsdk/P;->F:I

    invoke-direct/range {p0 .. p0}, Lcom/adwo/adsdk/P;->d()I

    move-result v2

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/adwo/adsdk/P;->G:I

    invoke-direct/range {p0 .. p0}, Lcom/adwo/adsdk/P;->d()I

    goto/16 :goto_0

    :cond_25
    const/4 v2, 0x0

    goto :goto_11

    .line 447
    :sswitch_4
    invoke-direct/range {p0 .. p0}, Lcom/adwo/adsdk/P;->e()I

    .line 448
    const-string v2, ""

    .line 449
    const/4 v3, 0x0

    move/from16 v24, v3

    move-object v3, v2

    move/from16 v2, v24

    :goto_12
    const/16 v4, 0xb

    if-lt v2, v4, :cond_26

    .line 452
    const-string v2, "NETSCAPE2.0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 453
    invoke-direct/range {p0 .. p0}, Lcom/adwo/adsdk/P;->h()V

    goto/16 :goto_0

    .line 450
    :cond_26
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adwo/adsdk/P;->A:[B

    move-object v3, v0

    aget-byte v3, v3, v2

    int-to-char v3, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 449
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 455
    :cond_27
    invoke-direct/range {p0 .. p0}, Lcom/adwo/adsdk/P;->j()V

    goto/16 :goto_0

    .line 463
    :sswitch_5
    const/4 v2, 0x1

    move v10, v2

    .line 464
    goto/16 :goto_0

    :cond_28
    move v4, v9

    goto/16 :goto_f

    :cond_29
    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v2

    goto/16 :goto_e

    :cond_2a
    move/from16 v15, v16

    move/from16 v16, v17

    goto/16 :goto_b

    :cond_2b
    move/from16 v9, v20

    goto/16 :goto_a

    .line 436
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x21 -> :sswitch_2
        0x2c -> :sswitch_1
        0x3b -> :sswitch_5
    .end sparse-switch

    .line 438
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 442
    :sswitch_data_1
    .sparse-switch
        0xf9 -> :sswitch_3
        0xff -> :sswitch_4
    .end sparse-switch
.end method

.method private g()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 487
    const-string v0, ""

    move-object v1, v0

    move v0, v3

    .line 488
    :goto_0
    const/4 v2, 0x6

    if-lt v0, v2, :cond_0

    .line 491
    const-string v0, "GIF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 492
    iput v4, p0, Lcom/adwo/adsdk/P;->b:I

    move v0, v3

    .line 500
    :goto_1
    return v0

    .line 489
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/adwo/adsdk/P;->d()I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 488
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 495
    :cond_1
    invoke-direct {p0}, Lcom/adwo/adsdk/P;->i()I

    move-result v0

    iput v0, p0, Lcom/adwo/adsdk/P;->c:I

    invoke-direct {p0}, Lcom/adwo/adsdk/P;->i()I

    move-result v0

    iput v0, p0, Lcom/adwo/adsdk/P;->d:I

    invoke-direct {p0}, Lcom/adwo/adsdk/P;->d()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_3

    move v1, v4

    :goto_2
    iput-boolean v1, p0, Lcom/adwo/adsdk/P;->e:Z

    const/4 v1, 0x2

    and-int/lit8 v0, v0, 0x7

    shl-int v0, v1, v0

    iput v0, p0, Lcom/adwo/adsdk/P;->f:I

    invoke-direct {p0}, Lcom/adwo/adsdk/P;->d()I

    move-result v0

    iput v0, p0, Lcom/adwo/adsdk/P;->j:I

    invoke-direct {p0}, Lcom/adwo/adsdk/P;->d()I

    .line 496
    iget-boolean v0, p0, Lcom/adwo/adsdk/P;->e:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/adwo/adsdk/P;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 497
    iget v0, p0, Lcom/adwo/adsdk/P;->f:I

    invoke-direct {p0, v0}, Lcom/adwo/adsdk/P;->b(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/adwo/adsdk/P;->g:[I

    .line 498
    iget-object v0, p0, Lcom/adwo/adsdk/P;->g:[I

    iget v1, p0, Lcom/adwo/adsdk/P;->j:I

    aget v0, v0, v1

    iput v0, p0, Lcom/adwo/adsdk/P;->k:I

    :cond_2
    move v0, v4

    .line 500
    goto :goto_1

    :cond_3
    move v1, v3

    .line 495
    goto :goto_2
.end method

.method private h()V
    .locals 2

    .prologue
    .line 568
    :cond_0
    invoke-direct {p0}, Lcom/adwo/adsdk/P;->e()I

    .line 569
    iget-object v0, p0, Lcom/adwo/adsdk/P;->A:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 571
    iget-object v0, p0, Lcom/adwo/adsdk/P;->A:[B

    .line 572
    iget-object v0, p0, Lcom/adwo/adsdk/P;->A:[B

    .line 573
    :cond_1
    iget v0, p0, Lcom/adwo/adsdk/P;->B:I

    if-lez v0, :cond_2

    invoke-direct {p0}, Lcom/adwo/adsdk/P;->c()Z

    move-result v0

    .line 567
    if-eqz v0, :cond_0

    .line 576
    :cond_2
    return-void
.end method

.method private i()I
    .locals 2

    .prologue
    .line 580
    invoke-direct {p0}, Lcom/adwo/adsdk/P;->d()I

    move-result v0

    invoke-direct {p0}, Lcom/adwo/adsdk/P;->d()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method private j()V
    .locals 1

    .prologue
    .line 602
    :cond_0
    invoke-direct {p0}, Lcom/adwo/adsdk/P;->e()I

    .line 603
    iget v0, p0, Lcom/adwo/adsdk/P;->B:I

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/adwo/adsdk/P;->c()Z

    move-result v0

    .line 601
    if-eqz v0, :cond_0

    .line 604
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/adwo/adsdk/P;->M:I

    return v0
.end method

.method public final a(Ljava/io/InputStream;)I
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 216
    iput v0, p0, Lcom/adwo/adsdk/P;->b:I

    iput v0, p0, Lcom/adwo/adsdk/P;->M:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/adwo/adsdk/P;->L:Ljava/util/Vector;

    iput-object v1, p0, Lcom/adwo/adsdk/P;->g:[I

    iput-object v1, p0, Lcom/adwo/adsdk/P;->h:[I

    .line 220
    if-eqz p1, :cond_2

    .line 221
    :try_start_0
    iput-object p1, p0, Lcom/adwo/adsdk/P;->a:Ljava/io/InputStream;

    .line 222
    invoke-direct {p0}, Lcom/adwo/adsdk/P;->g()Z

    move-result v0

    .line 224
    if-nez v0, :cond_0

    .line 225
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :catch_0
    move-exception v0

    .line 246
    throw v0

    .line 227
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/adwo/adsdk/P;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 228
    invoke-direct {p0}, Lcom/adwo/adsdk/P;->f()V

    .line 229
    iget v0, p0, Lcom/adwo/adsdk/P;->M:I

    if-gez v0, :cond_1

    .line 230
    const/4 v0, 0x1

    iput v0, p0, Lcom/adwo/adsdk/P;->b:I

    .line 234
    :cond_1
    invoke-direct {p0}, Lcom/adwo/adsdk/P;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 235
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0

    .line 238
    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/adwo/adsdk/P;->b:I

    .line 239
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0

    .line 242
    :cond_3
    if-eqz p1, :cond_4

    .line 243
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 248
    :cond_4
    iget v0, p0, Lcom/adwo/adsdk/P;->b:I

    return v0
.end method

.method public final a(I)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 200
    const/4 v0, 0x0

    .line 201
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/adwo/adsdk/P;->M:I

    if-ge p1, v1, :cond_0

    .line 202
    iget-object v0, p0, Lcom/adwo/adsdk/P;->L:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/adwo/adsdk/Q;

    iget-object v0, p0, Lcom/adwo/adsdk/Q;->a:Landroid/graphics/Bitmap;

    .line 204
    :cond_0
    return-object v0
.end method

.method public final b()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 208
    iget v0, p0, Lcom/adwo/adsdk/P;->z:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adwo/adsdk/P;->z:I

    .line 209
    iget v0, p0, Lcom/adwo/adsdk/P;->z:I

    iget-object v1, p0, Lcom/adwo/adsdk/P;->L:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_0

    .line 210
    const/4 v0, 0x0

    iput v0, p0, Lcom/adwo/adsdk/P;->z:I

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/adwo/adsdk/P;->L:Ljava/util/Vector;

    iget v1, p0, Lcom/adwo/adsdk/P;->z:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/adwo/adsdk/Q;

    iget-object v0, p0, Lcom/adwo/adsdk/Q;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method
