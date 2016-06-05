.class final Lcn/domob/android/ads/giftool/b;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private A:Z

.field private B:[B

.field private C:I

.field private D:I

.field private E:I

.field private F:Z

.field private G:I

.field private H:I

.field private I:[S

.field private J:[B

.field private K:[B

.field private L:[B

.field private M:Lcn/domob/android/ads/giftool/c;

.field private N:I

.field private O:Lcn/domob/android/ads/giftool/a;

.field private P:[B

.field public a:I

.field public b:I

.field private c:Ljava/io/InputStream;

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

.field private z:Lcn/domob/android/ads/giftool/c;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcn/domob/android/ads/giftool/a;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 32
    iput-object v2, p0, Lcn/domob/android/ads/giftool/b;->z:Lcn/domob/android/ads/giftool/c;

    .line 54
    iput-boolean v1, p0, Lcn/domob/android/ads/giftool/b;->A:Z

    .line 57
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcn/domob/android/ads/giftool/b;->B:[B

    .line 58
    iput v1, p0, Lcn/domob/android/ads/giftool/b;->C:I

    .line 61
    iput v1, p0, Lcn/domob/android/ads/giftool/b;->D:I

    .line 63
    iput v1, p0, Lcn/domob/android/ads/giftool/b;->E:I

    .line 64
    iput-boolean v1, p0, Lcn/domob/android/ads/giftool/b;->F:Z

    .line 65
    iput v1, p0, Lcn/domob/android/ads/giftool/b;->G:I

    .line 80
    iput-object v2, p0, Lcn/domob/android/ads/giftool/b;->O:Lcn/domob/android/ads/giftool/a;

    .line 83
    iput-object v2, p0, Lcn/domob/android/ads/giftool/b;->P:[B

    .line 92
    iput-object p1, p0, Lcn/domob/android/ads/giftool/b;->c:Ljava/io/InputStream;

    .line 93
    iput-object p2, p0, Lcn/domob/android/ads/giftool/b;->O:Lcn/domob/android/ads/giftool/a;

    .line 94
    return-void
.end method

.method public constructor <init>([BLcn/domob/android/ads/giftool/a;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 32
    iput-object v2, p0, Lcn/domob/android/ads/giftool/b;->z:Lcn/domob/android/ads/giftool/c;

    .line 54
    iput-boolean v1, p0, Lcn/domob/android/ads/giftool/b;->A:Z

    .line 57
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcn/domob/android/ads/giftool/b;->B:[B

    .line 58
    iput v1, p0, Lcn/domob/android/ads/giftool/b;->C:I

    .line 61
    iput v1, p0, Lcn/domob/android/ads/giftool/b;->D:I

    .line 63
    iput v1, p0, Lcn/domob/android/ads/giftool/b;->E:I

    .line 64
    iput-boolean v1, p0, Lcn/domob/android/ads/giftool/b;->F:Z

    .line 65
    iput v1, p0, Lcn/domob/android/ads/giftool/b;->G:I

    .line 80
    iput-object v2, p0, Lcn/domob/android/ads/giftool/b;->O:Lcn/domob/android/ads/giftool/a;

    .line 83
    iput-object v2, p0, Lcn/domob/android/ads/giftool/b;->P:[B

    .line 87
    iput-object p1, p0, Lcn/domob/android/ads/giftool/b;->P:[B

    .line 88
    iput-object p2, p0, Lcn/domob/android/ads/giftool/b;->O:Lcn/domob/android/ads/giftool/a;

    .line 89
    return-void
.end method

.method private a(I)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 295
    iget-object v0, p0, Lcn/domob/android/ads/giftool/b;->M:Lcn/domob/android/ads/giftool/c;

    const/4 v1, 0x0

    move v3, v1

    move-object v1, v0

    move v0, v3

    :goto_0
    if-nez v1, :cond_0

    move-object v0, v2

    .line 296
    :goto_1
    if-nez v0, :cond_2

    move-object v0, v2

    .line 299
    :goto_2
    return-object v0

    .line 295
    :cond_0
    if-ne v0, p1, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    iget-object v1, v1, Lcn/domob/android/ads/giftool/c;->c:Lcn/domob/android/ads/giftool/c;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 299
    :cond_2
    iget-object v0, v0, Lcn/domob/android/ads/giftool/c;->a:Landroid/graphics/Bitmap;

    goto :goto_2
.end method

.method private b(I)[I
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 556
    mul-int/lit8 v0, p1, 0x3

    .line 557
    const/4 v1, 0x0

    .line 558
    new-array v2, v0, [B

    .line 561
    :try_start_0
    iget-object v3, p0, Lcn/domob/android/ads/giftool/b;->c:Ljava/io/InputStream;

    invoke-virtual {v3, v2}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 565
    :goto_0
    if-ge v3, v0, :cond_1

    .line 566
    const/4 v0, 0x1

    iput v0, p0, Lcn/domob/android/ads/giftool/b;->d:I

    move-object v0, v1

    .line 578
    :cond_0
    return-object v0

    .line 562
    :catch_0
    move-exception v3

    .line 563
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move v3, v4

    goto :goto_0

    .line 568
    :cond_1
    const/16 v0, 0x100

    new-array v0, v0, [I

    move v1, v4

    move v3, v4

    .line 571
    :goto_1
    if-ge v1, p1, :cond_0

    .line 572
    add-int/lit8 v4, v3, 0x1

    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    .line 573
    add-int/lit8 v5, v4, 0x1

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    .line 574
    add-int/lit8 v6, v5, 0x1

    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    .line 575
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

.method private e()V
    .locals 15

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x1

    const/4 v10, 0x2

    const/4 v2, 0x0

    const-string v13, "gif"

    .line 196
    iget v0, p0, Lcn/domob/android/ads/giftool/b;->a:I

    iget v1, p0, Lcn/domob/android/ads/giftool/b;->b:I

    mul-int/2addr v0, v1

    new-array v1, v0, [I

    .line 199
    iget v0, p0, Lcn/domob/android/ads/giftool/b;->E:I

    if-lez v0, :cond_1

    .line 200
    iget v0, p0, Lcn/domob/android/ads/giftool/b;->E:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    .line 202
    iget v0, p0, Lcn/domob/android/ads/giftool/b;->N:I

    sub-int/2addr v0, v10

    .line 203
    if-lez v0, :cond_2

    .line 204
    sub-int/2addr v0, v11

    invoke-direct {p0, v0}, Lcn/domob/android/ads/giftool/b;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/giftool/b;->y:Landroid/graphics/Bitmap;

    .line 209
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/domob/android/ads/giftool/b;->y:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcn/domob/android/ads/giftool/b;->y:Landroid/graphics/Bitmap;

    iget v3, p0, Lcn/domob/android/ads/giftool/b;->a:I

    iget v6, p0, Lcn/domob/android/ads/giftool/b;->a:I

    iget v7, p0, Lcn/domob/android/ads/giftool/b;->b:I

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 212
    iget v0, p0, Lcn/domob/android/ads/giftool/b;->E:I

    if-ne v0, v10, :cond_1

    .line 215
    iget-boolean v0, p0, Lcn/domob/android/ads/giftool/b;->F:Z

    if-nez v0, :cond_c

    .line 216
    iget v0, p0, Lcn/domob/android/ads/giftool/b;->l:I

    :goto_1
    move v3, v2

    .line 218
    :goto_2
    iget v4, p0, Lcn/domob/android/ads/giftool/b;->w:I

    if-lt v3, v4, :cond_3

    .line 231
    :cond_1
    const/16 v0, 0x8

    move v3, v0

    move v4, v11

    move v0, v2

    .line 233
    :goto_3
    iget v5, p0, Lcn/domob/android/ads/giftool/b;->s:I

    if-lt v0, v5, :cond_5

    .line 275
    :try_start_0
    iget v0, p0, Lcn/domob/android/ads/giftool/b;->a:I

    iget v2, p0, Lcn/domob/android/ads/giftool/b;->b:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/giftool/b;->x:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 281
    :goto_4
    return-void

    .line 206
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/domob/android/ads/giftool/b;->y:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 219
    :cond_3
    iget v4, p0, Lcn/domob/android/ads/giftool/b;->u:I

    add-int/2addr v4, v3

    iget v5, p0, Lcn/domob/android/ads/giftool/b;->a:I

    mul-int/2addr v4, v5

    iget v5, p0, Lcn/domob/android/ads/giftool/b;->t:I

    add-int/2addr v4, v5

    .line 220
    iget v5, p0, Lcn/domob/android/ads/giftool/b;->v:I

    add-int/2addr v5, v4

    .line 221
    :goto_5
    if-lt v4, v5, :cond_4

    .line 218
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 222
    :cond_4
    aput v0, v1, v4

    .line 221
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 235
    :cond_5
    iget-boolean v5, p0, Lcn/domob/android/ads/giftool/b;->n:Z

    if-eqz v5, :cond_b

    .line 236
    iget v5, p0, Lcn/domob/android/ads/giftool/b;->s:I

    if-lt v2, v5, :cond_6

    .line 237
    add-int/lit8 v4, v4, 0x1

    .line 238
    packed-switch v4, :pswitch_data_0

    .line 252
    :cond_6
    :goto_6
    add-int v5, v2, v3

    move v14, v5

    move v5, v4

    move v4, v3

    move v3, v14

    .line 254
    :goto_7
    iget v6, p0, Lcn/domob/android/ads/giftool/b;->q:I

    add-int/2addr v2, v6

    .line 255
    iget v6, p0, Lcn/domob/android/ads/giftool/b;->b:I

    if-ge v2, v6, :cond_7

    .line 256
    iget v6, p0, Lcn/domob/android/ads/giftool/b;->a:I

    mul-int/2addr v2, v6

    .line 257
    iget v6, p0, Lcn/domob/android/ads/giftool/b;->p:I

    add-int/2addr v6, v2

    .line 258
    iget v7, p0, Lcn/domob/android/ads/giftool/b;->r:I

    add-int/2addr v7, v6

    .line 259
    iget v8, p0, Lcn/domob/android/ads/giftool/b;->a:I

    add-int/2addr v8, v2

    if-ge v8, v7, :cond_a

    .line 260
    iget v7, p0, Lcn/domob/android/ads/giftool/b;->a:I

    add-int/2addr v2, v7

    .line 262
    :goto_8
    iget v7, p0, Lcn/domob/android/ads/giftool/b;->r:I

    mul-int/2addr v7, v0

    .line 263
    :goto_9
    if-lt v6, v2, :cond_8

    .line 233
    :cond_7
    add-int/lit8 v0, v0, 0x1

    move v2, v3

    move v3, v4

    move v4, v5

    goto :goto_3

    :pswitch_0
    move v2, v12

    .line 241
    goto :goto_6

    :pswitch_1
    move v2, v10

    move v3, v12

    .line 245
    goto :goto_6

    :pswitch_2
    move v2, v11

    move v3, v10

    .line 248
    goto :goto_6

    .line 265
    :cond_8
    iget-object v8, p0, Lcn/domob/android/ads/giftool/b;->L:[B

    add-int/lit8 v9, v7, 0x1

    aget-byte v7, v8, v7

    and-int/lit16 v7, v7, 0xff

    .line 266
    iget-object v8, p0, Lcn/domob/android/ads/giftool/b;->i:[I

    aget v7, v8, v7

    .line 267
    if-eqz v7, :cond_9

    .line 268
    aput v7, v1, v6

    .line 270
    :cond_9
    add-int/lit8 v6, v6, 0x1

    move v7, v9

    goto :goto_9

    .line 277
    :catch_0
    move-exception v0

    const-string v0, "gif"

    const-string v0, "out of memory"

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 280
    :catch_1
    move-exception v0

    const-string v0, "gif"

    const-string v0, "out of memory"

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_a
    move v2, v7

    goto :goto_8

    :cond_b
    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v0

    goto :goto_7

    :cond_c
    move v0, v2

    goto/16 :goto_1

    .line 238
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private f()I
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 371
    iput v3, p0, Lcn/domob/android/ads/giftool/b;->d:I

    iput v3, p0, Lcn/domob/android/ads/giftool/b;->N:I

    iput-object v0, p0, Lcn/domob/android/ads/giftool/b;->M:Lcn/domob/android/ads/giftool/c;

    iput-object v0, p0, Lcn/domob/android/ads/giftool/b;->g:[I

    iput-object v0, p0, Lcn/domob/android/ads/giftool/b;->h:[I

    .line 372
    iget-object v0, p0, Lcn/domob/android/ads/giftool/b;->c:Ljava/io/InputStream;

    if-eqz v0, :cond_6

    .line 373
    const-string v0, ""

    move-object v1, v0

    move v0, v3

    :goto_0
    const/4 v2, 0x6

    if-lt v0, v2, :cond_2

    const-string v0, "GIF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iput v5, p0, Lcn/domob/android/ads/giftool/b;->d:I

    .line 374
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcn/domob/android/ads/giftool/b;->g()Z

    move-result v0

    if-nez v0, :cond_1

    .line 375
    invoke-direct {p0}, Lcn/domob/android/ads/giftool/b;->j()V

    .line 376
    iget v0, p0, Lcn/domob/android/ads/giftool/b;->N:I

    if-gez v0, :cond_5

    .line 377
    iput v5, p0, Lcn/domob/android/ads/giftool/b;->d:I

    .line 378
    iget-object v0, p0, Lcn/domob/android/ads/giftool/b;->O:Lcn/domob/android/ads/giftool/a;

    invoke-interface {v0, v3, v4}, Lcn/domob/android/ads/giftool/a;->parseOk(ZI)V

    .line 385
    :cond_1
    :goto_2
    :try_start_0
    iget-object v0, p0, Lcn/domob/android/ads/giftool/b;->c:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    :goto_3
    iget v0, p0, Lcn/domob/android/ads/giftool/b;->d:I

    return v0

    .line 373
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/domob/android/ads/giftool/b;->h()I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcn/domob/android/ads/giftool/b;->l()I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/giftool/b;->a:I

    invoke-direct {p0}, Lcn/domob/android/ads/giftool/b;->l()I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/giftool/b;->b:I

    invoke-direct {p0}, Lcn/domob/android/ads/giftool/b;->h()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_4

    move v1, v5

    :goto_4
    iput-boolean v1, p0, Lcn/domob/android/ads/giftool/b;->e:Z

    and-int/lit8 v0, v0, 0x7

    shl-int v0, v6, v0

    iput v0, p0, Lcn/domob/android/ads/giftool/b;->f:I

    invoke-direct {p0}, Lcn/domob/android/ads/giftool/b;->h()I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/giftool/b;->j:I

    invoke-direct {p0}, Lcn/domob/android/ads/giftool/b;->h()I

    iget-boolean v0, p0, Lcn/domob/android/ads/giftool/b;->e:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcn/domob/android/ads/giftool/b;->g()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcn/domob/android/ads/giftool/b;->f:I

    invoke-direct {p0, v0}, Lcn/domob/android/ads/giftool/b;->b(I)[I

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/giftool/b;->g:[I

    iget-object v0, p0, Lcn/domob/android/ads/giftool/b;->g:[I

    iget v1, p0, Lcn/domob/android/ads/giftool/b;->j:I

    aget v0, v0, v1

    iput v0, p0, Lcn/domob/android/ads/giftool/b;->k:I

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_4

    .line 380
    :cond_5
    iput v4, p0, Lcn/domob/android/ads/giftool/b;->d:I

    .line 381
    iget-object v0, p0, Lcn/domob/android/ads/giftool/b;->O:Lcn/domob/android/ads/giftool/a;

    invoke-interface {v0, v5, v4}, Lcn/domob/android/ads/giftool/a;->parseOk(ZI)V

    goto :goto_2

    .line 386
    :catch_0
    move-exception v0

    .line 387
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 391
    :cond_6
    iput v6, p0, Lcn/domob/android/ads/giftool/b;->d:I

    .line 392
    iget-object v0, p0, Lcn/domob/android/ads/giftool/b;->O:Lcn/domob/android/ads/giftool/a;

    invoke-interface {v0, v3, v4}, Lcn/domob/android/ads/giftool/a;->parseOk(ZI)V

    goto :goto_3
.end method

.method private g()Z
    .locals 1

    .prologue
    .line 507
    iget v0, p0, Lcn/domob/android/ads/giftool/b;->d:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h()I
    .locals 2

    .prologue
    .line 519
    const/4 v0, 0x0

    .line 522
    :try_start_0
    iget-object v1, p0, Lcn/domob/android/ads/giftool/b;->c:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 526
    :goto_0
    return v0

    .line 524
    :catch_0
    move-exception v1

    const/4 v1, 0x1

    iput v1, p0, Lcn/domob/android/ads/giftool/b;->d:I

    goto :goto_0
.end method

.method private i()I
    .locals 4

    .prologue
    .line 533
    invoke-direct {p0}, Lcn/domob/android/ads/giftool/b;->h()I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/giftool/b;->C:I

    .line 534
    const/4 v0, 0x0

    .line 535
    iget v1, p0, Lcn/domob/android/ads/giftool/b;->C:I

    if-lez v1, :cond_1

    .line 538
    :goto_0
    :try_start_0
    iget v1, p0, Lcn/domob/android/ads/giftool/b;->C:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v0, v1, :cond_2

    .line 548
    :cond_0
    :goto_1
    iget v1, p0, Lcn/domob/android/ads/giftool/b;->C:I

    if-ge v0, v1, :cond_1

    .line 549
    const/4 v1, 0x1

    iput v1, p0, Lcn/domob/android/ads/giftool/b;->d:I

    .line 552
    :cond_1
    return v0

    .line 539
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcn/domob/android/ads/giftool/b;->c:Ljava/io/InputStream;

    iget-object v2, p0, Lcn/domob/android/ads/giftool/b;->B:[B

    iget v3, p0, Lcn/domob/android/ads/giftool/b;->C:I

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 540
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 541
    add-int/2addr v0, v1

    goto :goto_0

    .line 545
    :catch_0
    move-exception v1

    .line 546
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private j()V
    .locals 25

    .prologue
    .line 583
    const/4 v2, 0x0

    move v9, v2

    .line 584
    :cond_0
    :goto_0
    :sswitch_0
    if-nez v9, :cond_1

    invoke-direct/range {p0 .. p0}, Lcn/domob/android/ads/giftool/b;->g()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 621
    :cond_1
    return-void

    .line 585
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcn/domob/android/ads/giftool/b;->h()I

    move-result v2

    .line 586
    sparse-switch v2, :sswitch_data_0

    .line 618
    const/4 v2, 0x1

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcn/domob/android/ads/giftool/b;->d:I

    goto :goto_0

    .line 588
    :sswitch_1
    invoke-direct/range {p0 .. p0}, Lcn/domob/android/ads/giftool/b;->l()I

    move-result v2

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcn/domob/android/ads/giftool/b;->p:I

    invoke-direct/range {p0 .. p0}, Lcn/domob/android/ads/giftool/b;->l()I

    move-result v2

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcn/domob/android/ads/giftool/b;->q:I

    invoke-direct/range {p0 .. p0}, Lcn/domob/android/ads/giftool/b;->l()I

    move-result v2

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcn/domob/android/ads/giftool/b;->r:I

    invoke-direct/range {p0 .. p0}, Lcn/domob/android/ads/giftool/b;->l()I

    move-result v2

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcn/domob/android/ads/giftool/b;->s:I

    invoke-direct/range {p0 .. p0}, Lcn/domob/android/ads/giftool/b;->h()I

    move-result v2

    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_d

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcn/domob/android/ads/giftool/b;->m:Z

    and-int/lit8 v3, v2, 0x40

    if-eqz v3, :cond_e

    const/4 v3, 0x1

    :goto_2
    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcn/domob/android/ads/giftool/b;->n:Z

    const/4 v3, 0x2

    and-int/lit8 v2, v2, 0x7

    shl-int v2, v3, v2

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcn/domob/android/ads/giftool/b;->o:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/domob/android/ads/giftool/b;->m:Z

    move v2, v0

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcn/domob/android/ads/giftool/b;->o:I

    move v2, v0

    move-object/from16 v0, p0

    move v1, v2

    invoke-direct {v0, v1}, Lcn/domob/android/ads/giftool/b;->b(I)[I

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/domob/android/ads/giftool/b;->h:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/giftool/b;->h:[I

    move-object v2, v0

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/domob/android/ads/giftool/b;->i:[I

    :cond_3
    :goto_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/domob/android/ads/giftool/b;->F:Z

    move v3, v0

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/giftool/b;->i:[I

    move-object v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/domob/android/ads/giftool/b;->H:I

    move v3, v0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/giftool/b;->i:[I

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/domob/android/ads/giftool/b;->H:I

    move v4, v0

    const/4 v5, 0x0

    aput v5, v3, v4

    :cond_4
    move v10, v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/giftool/b;->i:[I

    move-object v2, v0

    if-nez v2, :cond_5

    const/4 v2, 0x1

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcn/domob/android/ads/giftool/b;->d:I

    :cond_5
    invoke-direct/range {p0 .. p0}, Lcn/domob/android/ads/giftool/b;->g()Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/domob/android/ads/giftool/b;->r:I

    move v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/domob/android/ads/giftool/b;->s:I

    move v3, v0

    mul-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/giftool/b;->L:[B

    move-object v3, v0

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/giftool/b;->L:[B

    move-object v3, v0

    array-length v3, v3

    if-ge v3, v2, :cond_7

    :cond_6
    new-array v3, v2, [B

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/domob/android/ads/giftool/b;->L:[B

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/giftool/b;->I:[S

    move-object v3, v0

    if-nez v3, :cond_8

    const/16 v3, 0x1000

    new-array v3, v3, [S

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/domob/android/ads/giftool/b;->I:[S

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/giftool/b;->J:[B

    move-object v3, v0

    if-nez v3, :cond_9

    const/16 v3, 0x1000

    new-array v3, v3, [B

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/domob/android/ads/giftool/b;->J:[B

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/giftool/b;->K:[B

    move-object v3, v0

    if-nez v3, :cond_a

    const/16 v3, 0x1001

    new-array v3, v3, [B

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/domob/android/ads/giftool/b;->K:[B

    :cond_a
    invoke-direct/range {p0 .. p0}, Lcn/domob/android/ads/giftool/b;->h()I

    move-result v3

    const/4 v4, 0x1

    shl-int/2addr v4, v3

    add-int/lit8 v5, v4, 0x1

    add-int/lit8 v6, v4, 0x2

    const/4 v7, -0x1

    add-int/lit8 v8, v3, 0x1

    const/4 v11, 0x1

    shl-int/2addr v11, v8

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    const/4 v12, 0x0

    :goto_4
    if-lt v12, v4, :cond_10

    const/4 v12, 0x0

    const/4 v13, 0x0

    move v14, v12

    move v15, v12

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v11

    move/from16 v19, v6

    move v8, v12

    move v11, v12

    move v6, v12

    move v7, v12

    :goto_5
    if-lt v13, v2, :cond_11

    :cond_b
    move v3, v6

    :goto_6
    if-lt v3, v2, :cond_18

    invoke-direct/range {p0 .. p0}, Lcn/domob/android/ads/giftool/b;->m()V

    invoke-direct/range {p0 .. p0}, Lcn/domob/android/ads/giftool/b;->g()Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/domob/android/ads/giftool/b;->N:I

    move v2, v0

    add-int/lit8 v2, v2, 0x1

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcn/domob/android/ads/giftool/b;->N:I

    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lcn/domob/android/ads/giftool/b;->a:I

    move v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/domob/android/ads/giftool/b;->b:I

    move v3, v0

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/domob/android/ads/giftool/b;->x:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    invoke-direct/range {p0 .. p0}, Lcn/domob/android/ads/giftool/b;->e()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/giftool/b;->O:Lcn/domob/android/ads/giftool/a;

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    iget v3, v2, Landroid/util/DisplayMetrics;->density:F

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v7, v3, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/giftool/b;->x:Landroid/graphics/Bitmap;

    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/giftool/b;->x:Landroid/graphics/Bitmap;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/giftool/b;->x:Landroid/graphics/Bitmap;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/giftool/b;->M:Lcn/domob/android/ads/giftool/c;

    move-object v3, v0

    if-nez v3, :cond_19

    new-instance v3, Lcn/domob/android/ads/giftool/c;

    move-object/from16 v0, p0

    iget v0, v0, Lcn/domob/android/ads/giftool/b;->G:I

    move v4, v0

    invoke-direct {v3, v2, v4}, Lcn/domob/android/ads/giftool/c;-><init>(Landroid/graphics/Bitmap;I)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/domob/android/ads/giftool/b;->M:Lcn/domob/android/ads/giftool/c;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/giftool/b;->M:Lcn/domob/android/ads/giftool/c;

    move-object v2, v0

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/domob/android/ads/giftool/b;->z:Lcn/domob/android/ads/giftool/c;

    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/domob/android/ads/giftool/b;->F:Z

    move v2, v0

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/giftool/b;->i:[I

    move-object v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/domob/android/ads/giftool/b;->H:I

    move v3, v0

    aput v10, v2, v3

    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcn/domob/android/ads/giftool/b;->D:I

    move v2, v0

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcn/domob/android/ads/giftool/b;->E:I

    move-object/from16 v0, p0

    iget v0, v0, Lcn/domob/android/ads/giftool/b;->p:I

    move v2, v0

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcn/domob/android/ads/giftool/b;->t:I

    move-object/from16 v0, p0

    iget v0, v0, Lcn/domob/android/ads/giftool/b;->q:I

    move v2, v0

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcn/domob/android/ads/giftool/b;->u:I

    move-object/from16 v0, p0

    iget v0, v0, Lcn/domob/android/ads/giftool/b;->r:I

    move v2, v0

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcn/domob/android/ads/giftool/b;->v:I

    move-object/from16 v0, p0

    iget v0, v0, Lcn/domob/android/ads/giftool/b;->s:I

    move v2, v0

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcn/domob/android/ads/giftool/b;->w:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/giftool/b;->x:Landroid/graphics/Bitmap;

    move-object v2, v0

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/domob/android/ads/giftool/b;->y:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget v0, v0, Lcn/domob/android/ads/giftool/b;->k:I

    move v2, v0

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcn/domob/android/ads/giftool/b;->l:I

    const/4 v2, 0x0

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcn/domob/android/ads/giftool/b;->D:I

    const/4 v2, 0x0

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcn/domob/android/ads/giftool/b;->F:Z

    const/4 v2, 0x0

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcn/domob/android/ads/giftool/b;->G:I

    const/4 v2, 0x0

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/domob/android/ads/giftool/b;->h:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/giftool/b;->O:Lcn/domob/android/ads/giftool/a;

    move-object v2, v0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcn/domob/android/ads/giftool/b;->N:I

    move v4, v0

    invoke-interface {v2, v3, v4}, Lcn/domob/android/ads/giftool/a;->parseOk(ZI)V

    goto/16 :goto_0

    :cond_d
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_e
    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/giftool/b;->g:[I

    move-object v2, v0

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/domob/android/ads/giftool/b;->i:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcn/domob/android/ads/giftool/b;->j:I

    move v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/domob/android/ads/giftool/b;->H:I

    move v3, v0

    if-ne v2, v3, :cond_3

    const/4 v2, 0x0

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcn/domob/android/ads/giftool/b;->k:I

    goto/16 :goto_3

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/giftool/b;->I:[S

    move-object v13, v0

    const/4 v14, 0x0

    aput-short v14, v13, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/giftool/b;->J:[B

    move-object v13, v0

    int-to-byte v14, v12

    aput-byte v14, v13, v12

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_4

    :cond_11
    if-nez v8, :cond_16

    move v0, v15

    move/from16 v1, v17

    if-ge v0, v1, :cond_13

    if-nez v14, :cond_12

    invoke-direct/range {p0 .. p0}, Lcn/domob/android/ads/giftool/b;->i()I

    move-result v7

    if-lez v7, :cond_b

    const/4 v14, 0x0

    move/from16 v24, v14

    move v14, v7

    move/from16 v7, v24

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/giftool/b;->B:[B

    move-object/from16 v20, v0

    aget-byte v20, v20, v7

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shl-int v20, v20, v15

    add-int v12, v12, v20

    add-int/lit8 v15, v15, 0x8

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_5

    :cond_13
    and-int v20, v12, v18

    shr-int v12, v12, v17

    sub-int v15, v15, v17

    move/from16 v0, v20

    move/from16 v1, v19

    if-gt v0, v1, :cond_b

    move/from16 v0, v20

    move v1, v5

    if-eq v0, v1, :cond_b

    move/from16 v0, v20

    move v1, v4

    if-ne v0, v1, :cond_14

    add-int/lit8 v16, v3, 0x1

    const/16 v17, 0x1

    shl-int v17, v17, v16

    const/16 v18, 0x1

    sub-int v17, v17, v18

    add-int/lit8 v18, v4, 0x2

    const/16 v19, -0x1

    move/from16 v24, v19

    move/from16 v19, v18

    move/from16 v18, v17

    move/from16 v17, v16

    move/from16 v16, v24

    goto/16 :goto_5

    :cond_14
    const/16 v21, -0x1

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/giftool/b;->K:[B

    move-object v11, v0

    add-int/lit8 v16, v8, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/giftool/b;->J:[B

    move-object/from16 v21, v0

    aget-byte v21, v21, v20

    aput-byte v21, v11, v8

    move/from16 v8, v16

    move/from16 v11, v20

    move/from16 v16, v20

    goto/16 :goto_5

    :cond_15
    move/from16 v0, v20

    move/from16 v1, v19

    if-ne v0, v1, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/giftool/b;->K:[B

    move-object/from16 v21, v0

    add-int/lit8 v22, v8, 0x1

    int-to-byte v11, v11

    aput-byte v11, v21, v8

    move/from16 v8, v22

    move/from16 v11, v16

    :goto_8
    if-gt v11, v4, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/giftool/b;->J:[B

    move-object/from16 v21, v0

    aget-byte v11, v21, v11

    and-int/lit16 v11, v11, 0xff

    const/16 v21, 0x1000

    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/giftool/b;->K:[B

    move-object/from16 v21, v0

    add-int/lit8 v22, v8, 0x1

    move v0, v11

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v21, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/giftool/b;->I:[S

    move-object v8, v0

    move/from16 v0, v16

    int-to-short v0, v0

    move/from16 v16, v0

    aput-short v16, v8, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/giftool/b;->J:[B

    move-object v8, v0

    move v0, v11

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, v8, v19

    add-int/lit8 v8, v19, 0x1

    and-int v16, v8, v18

    if-nez v16, :cond_1f

    const/16 v16, 0x1000

    move v0, v8

    move/from16 v1, v16

    if-ge v0, v1, :cond_1f

    add-int/lit8 v16, v17, 0x1

    add-int v17, v18, v8

    :goto_9
    move/from16 v18, v17

    move/from16 v19, v8

    move/from16 v17, v16

    move/from16 v8, v22

    move/from16 v16, v20

    :cond_16
    add-int/lit8 v8, v8, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/giftool/b;->L:[B

    move-object/from16 v20, v0

    add-int/lit8 v21, v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/giftool/b;->K:[B

    move-object/from16 v22, v0

    aget-byte v22, v22, v8

    aput-byte v22, v20, v6

    add-int/lit8 v6, v13, 0x1

    move v13, v6

    move/from16 v6, v21

    goto/16 :goto_5

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/giftool/b;->K:[B

    move-object/from16 v21, v0

    add-int/lit8 v22, v8, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/giftool/b;->J:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v11

    aput-byte v23, v21, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/giftool/b;->I:[S

    move-object v8, v0

    aget-short v8, v8, v11

    move v11, v8

    move/from16 v8, v22

    goto/16 :goto_8

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/giftool/b;->L:[B

    move-object v4, v0

    const/4 v5, 0x0

    aput-byte v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6

    :catch_0
    move-exception v2

    const-string v2, "gif"

    const-string v3, "out of memory"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_1
    move-exception v2

    const-string v2, "gif"

    const-string v3, "out of memory"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_2
    move-exception v2

    const-string v2, "gif"

    const-string v3, "out of memory"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_3
    move-exception v2

    const-string v2, "gif"

    const-string v3, "out of memory"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/giftool/b;->M:Lcn/domob/android/ads/giftool/c;

    move-object v3, v0

    :goto_a
    iget-object v4, v3, Lcn/domob/android/ads/giftool/c;->c:Lcn/domob/android/ads/giftool/c;

    if-nez v4, :cond_1a

    new-instance v4, Lcn/domob/android/ads/giftool/c;

    move-object/from16 v0, p0

    iget v0, v0, Lcn/domob/android/ads/giftool/b;->G:I

    move v5, v0

    invoke-direct {v4, v2, v5}, Lcn/domob/android/ads/giftool/c;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v4, v3, Lcn/domob/android/ads/giftool/c;->c:Lcn/domob/android/ads/giftool/c;

    goto/16 :goto_7

    :cond_1a
    iget-object v3, v3, Lcn/domob/android/ads/giftool/c;->c:Lcn/domob/android/ads/giftool/c;

    goto :goto_a

    .line 591
    :sswitch_2
    invoke-direct/range {p0 .. p0}, Lcn/domob/android/ads/giftool/b;->h()I

    move-result v2

    .line 592
    sparse-switch v2, :sswitch_data_1

    .line 609
    invoke-direct/range {p0 .. p0}, Lcn/domob/android/ads/giftool/b;->m()V

    goto/16 :goto_0

    .line 594
    :sswitch_3
    invoke-direct/range {p0 .. p0}, Lcn/domob/android/ads/giftool/b;->h()I

    invoke-direct/range {p0 .. p0}, Lcn/domob/android/ads/giftool/b;->h()I

    move-result v2

    and-int/lit8 v3, v2, 0x1c

    shr-int/lit8 v3, v3, 0x2

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcn/domob/android/ads/giftool/b;->D:I

    move-object/from16 v0, p0

    iget v0, v0, Lcn/domob/android/ads/giftool/b;->D:I

    move v3, v0

    if-nez v3, :cond_1b

    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcn/domob/android/ads/giftool/b;->D:I

    :cond_1b
    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1c

    const/4 v2, 0x1

    :goto_b
    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcn/domob/android/ads/giftool/b;->F:Z

    invoke-direct/range {p0 .. p0}, Lcn/domob/android/ads/giftool/b;->l()I

    move-result v2

    mul-int/lit8 v2, v2, 0xa

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcn/domob/android/ads/giftool/b;->G:I

    invoke-direct/range {p0 .. p0}, Lcn/domob/android/ads/giftool/b;->h()I

    move-result v2

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcn/domob/android/ads/giftool/b;->H:I

    invoke-direct/range {p0 .. p0}, Lcn/domob/android/ads/giftool/b;->h()I

    goto/16 :goto_0

    :cond_1c
    const/4 v2, 0x0

    goto :goto_b

    .line 597
    :sswitch_4
    invoke-direct/range {p0 .. p0}, Lcn/domob/android/ads/giftool/b;->i()I

    .line 598
    const-string v2, ""

    .line 599
    const/4 v3, 0x0

    move/from16 v24, v3

    move-object v3, v2

    move/from16 v2, v24

    :goto_c
    const/16 v4, 0xb

    if-lt v2, v4, :cond_1d

    .line 602
    const-string v2, "NETSCAPE2.0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 603
    invoke-direct/range {p0 .. p0}, Lcn/domob/android/ads/giftool/b;->k()V

    goto/16 :goto_0

    .line 600
    :cond_1d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/giftool/b;->B:[B

    move-object v3, v0

    aget-byte v3, v3, v2

    int-to-char v3, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 599
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 605
    :cond_1e
    invoke-direct/range {p0 .. p0}, Lcn/domob/android/ads/giftool/b;->m()V

    goto/16 :goto_0

    .line 613
    :sswitch_5
    const/4 v2, 0x1

    move v9, v2

    .line 614
    goto/16 :goto_0

    :cond_1f
    move/from16 v16, v17

    move/from16 v17, v18

    goto/16 :goto_9

    :cond_20
    move/from16 v11, v20

    goto/16 :goto_8

    .line 586
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x21 -> :sswitch_2
        0x2c -> :sswitch_1
        0x3b -> :sswitch_5
    .end sparse-switch

    .line 592
    :sswitch_data_1
    .sparse-switch
        0xf9 -> :sswitch_3
        0xff -> :sswitch_4
    .end sparse-switch
.end method

.method private k()V
    .locals 2

    .prologue
    .line 754
    :cond_0
    invoke-direct {p0}, Lcn/domob/android/ads/giftool/b;->i()I

    .line 755
    iget-object v0, p0, Lcn/domob/android/ads/giftool/b;->B:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 757
    iget-object v0, p0, Lcn/domob/android/ads/giftool/b;->B:[B

    .line 758
    iget-object v0, p0, Lcn/domob/android/ads/giftool/b;->B:[B

    .line 759
    :cond_1
    iget v0, p0, Lcn/domob/android/ads/giftool/b;->C:I

    if-lez v0, :cond_2

    invoke-direct {p0}, Lcn/domob/android/ads/giftool/b;->g()Z

    move-result v0

    .line 753
    if-eqz v0, :cond_0

    .line 762
    :cond_2
    return-void
.end method

.method private l()I
    .locals 2

    .prologue
    .line 766
    invoke-direct {p0}, Lcn/domob/android/ads/giftool/b;->h()I

    move-result v0

    invoke-direct {p0}, Lcn/domob/android/ads/giftool/b;->h()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method private m()V
    .locals 1

    .prologue
    .line 788
    :cond_0
    invoke-direct {p0}, Lcn/domob/android/ads/giftool/b;->i()I

    .line 789
    iget v0, p0, Lcn/domob/android/ads/giftool/b;->C:I

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcn/domob/android/ads/giftool/b;->g()Z

    move-result v0

    .line 787
    if-eqz v0, :cond_0

    .line 790
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 109
    iget-object v0, p0, Lcn/domob/android/ads/giftool/b;->M:Lcn/domob/android/ads/giftool/c;

    .line 110
    :goto_0
    if-nez v0, :cond_1

    .line 117
    iget-object v0, p0, Lcn/domob/android/ads/giftool/b;->c:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 119
    :try_start_0
    iget-object v0, p0, Lcn/domob/android/ads/giftool/b;->c:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_1
    iput-object v2, p0, Lcn/domob/android/ads/giftool/b;->c:Ljava/io/InputStream;

    .line 123
    :cond_0
    iput-object v2, p0, Lcn/domob/android/ads/giftool/b;->P:[B

    .line 124
    return-void

    .line 111
    :cond_1
    iget-object v1, v0, Lcn/domob/android/ads/giftool/c;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 112
    iput-object v2, v0, Lcn/domob/android/ads/giftool/c;->a:Landroid/graphics/Bitmap;

    .line 113
    iget-object v0, p0, Lcn/domob/android/ads/giftool/b;->M:Lcn/domob/android/ads/giftool/c;

    iget-object v0, v0, Lcn/domob/android/ads/giftool/c;->c:Lcn/domob/android/ads/giftool/c;

    iput-object v0, p0, Lcn/domob/android/ads/giftool/b;->M:Lcn/domob/android/ads/giftool/c;

    .line 115
    iget-object v0, p0, Lcn/domob/android/ads/giftool/b;->M:Lcn/domob/android/ads/giftool/c;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcn/domob/android/ads/giftool/b;->N:I

    return v0
.end method

.method public final c()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/domob/android/ads/giftool/b;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcn/domob/android/ads/giftool/c;
    .locals 1

    .prologue
    .line 341
    iget-boolean v0, p0, Lcn/domob/android/ads/giftool/b;->A:Z

    if-nez v0, :cond_0

    .line 342
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/giftool/b;->A:Z

    .line 343
    iget-object v0, p0, Lcn/domob/android/ads/giftool/b;->M:Lcn/domob/android/ads/giftool/c;

    .line 355
    :goto_0
    return-object v0

    .line 345
    :cond_0
    iget v0, p0, Lcn/domob/android/ads/giftool/b;->d:I

    if-nez v0, :cond_2

    .line 346
    iget-object v0, p0, Lcn/domob/android/ads/giftool/b;->z:Lcn/domob/android/ads/giftool/c;

    iget-object v0, v0, Lcn/domob/android/ads/giftool/c;->c:Lcn/domob/android/ads/giftool/c;

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p0, Lcn/domob/android/ads/giftool/b;->z:Lcn/domob/android/ads/giftool/c;

    iget-object v0, v0, Lcn/domob/android/ads/giftool/c;->c:Lcn/domob/android/ads/giftool/c;

    iput-object v0, p0, Lcn/domob/android/ads/giftool/b;->z:Lcn/domob/android/ads/giftool/c;

    .line 355
    :cond_1
    :goto_1
    iget-object v0, p0, Lcn/domob/android/ads/giftool/b;->z:Lcn/domob/android/ads/giftool/c;

    goto :goto_0

    .line 350
    :cond_2
    iget-object v0, p0, Lcn/domob/android/ads/giftool/b;->z:Lcn/domob/android/ads/giftool/c;

    iget-object v0, v0, Lcn/domob/android/ads/giftool/c;->c:Lcn/domob/android/ads/giftool/c;

    iput-object v0, p0, Lcn/domob/android/ads/giftool/b;->z:Lcn/domob/android/ads/giftool/c;

    .line 351
    iget-object v0, p0, Lcn/domob/android/ads/giftool/b;->z:Lcn/domob/android/ads/giftool/c;

    if-nez v0, :cond_1

    .line 352
    iget-object v0, p0, Lcn/domob/android/ads/giftool/b;->M:Lcn/domob/android/ads/giftool/c;

    iput-object v0, p0, Lcn/domob/android/ads/giftool/b;->z:Lcn/domob/android/ads/giftool/c;

    goto :goto_1
.end method

.method public final run()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcn/domob/android/ads/giftool/b;->c:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 99
    invoke-direct {p0}, Lcn/domob/android/ads/giftool/b;->f()I

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v0, p0, Lcn/domob/android/ads/giftool/b;->P:[B

    if-eqz v0, :cond_0

    .line 101
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcn/domob/android/ads/giftool/b;->P:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcn/domob/android/ads/giftool/b;->c:Ljava/io/InputStream;

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/domob/android/ads/giftool/b;->P:[B

    invoke-direct {p0}, Lcn/domob/android/ads/giftool/b;->f()I

    goto :goto_0
.end method
