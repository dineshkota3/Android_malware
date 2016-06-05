.class public final Lcom/adwo/adsdk/N;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x14

    const/4 v2, 0x1

    .line 17
    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v3, v0, v1

    const/16 v1, 0xa

    aput-byte v1, v0, v2

    const/4 v1, 0x2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    .line 18
    aput-byte v3, v0, v1

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a([B)Lcom/adwo/adsdk/f;
    .locals 6

    .prologue
    const/4 v5, 0x7

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "UTF-8"

    const-string v2, "Adwo SDK"

    .line 52
    array-length v0, p0

    if-ne v0, v4, :cond_9

    .line 53
    aget-byte v0, p0, v3

    const/16 v1, -0x1d

    if-ne v0, v1, :cond_1

    .line 54
    const-string v0, "Adwo SDK"

    const-string v0, "Adwo_Pid inexist"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :goto_0
    const/4 v0, 0x0

    .line 183
    :cond_0
    :goto_1
    return-object v0

    .line 55
    :cond_1
    aget-byte v0, p0, v3

    const/16 v1, -0x20

    if-ne v0, v1, :cond_2

    .line 56
    const-string v0, "Adwo SDK"

    const-string v0, "Server busy"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 57
    :cond_2
    aget-byte v0, p0, v3

    const/16 v1, -0x1c

    if-ne v0, v1, :cond_3

    .line 58
    const-string v0, "Adwo SDK"

    const-string v0, "Adwo_Pid inactive"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 59
    :cond_3
    aget-byte v0, p0, v3

    const/16 v1, -0x1f

    if-eq v0, v1, :cond_4

    aget-byte v0, p0, v3

    const/16 v1, -0x18

    if-eq v0, v1, :cond_4

    .line 60
    aget-byte v0, p0, v3

    const/16 v1, -0x17

    if-eq v0, v1, :cond_4

    aget-byte v0, p0, v3

    const/16 v1, -0x19

    if-ne v0, v1, :cond_5

    .line 61
    :cond_4
    const-string v0, "Adwo SDK"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No ad available: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v1, p0, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 62
    :cond_5
    aget-byte v0, p0, v3

    const/16 v1, -0x1e

    if-ne v0, v1, :cond_6

    .line 63
    const-string v0, "Adwo SDK"

    const-string v0, "Unknown Error"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 64
    :cond_6
    aget-byte v0, p0, v3

    const/16 v1, -0x1a

    if-ne v0, v1, :cond_7

    .line 65
    const-string v0, "Adwo SDK"

    const-string v0, "Error in receiving data"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 66
    :cond_7
    aget-byte v0, p0, v3

    const/16 v1, -0x1b

    if-ne v0, v1, :cond_8

    .line 67
    const-string v0, "Adwo SDK"

    const-string v0, "Error in request data"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 69
    :cond_8
    const-string v0, "Adwo SDK"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown Error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v1, p0, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 74
    :cond_9
    array-length v0, p0

    if-ge v0, v5, :cond_a

    .line 75
    const-string v0, "Adwo SDK"

    const-string v0, "Error in receiving data"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 79
    :cond_a
    new-instance v0, Lcom/adwo/adsdk/f;

    invoke-direct {v0}, Lcom/adwo/adsdk/f;-><init>()V

    .line 82
    aget-byte v1, p0, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v1, v1, 0x0

    aget-byte v2, p0, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v1, v2

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    const/4 v2, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x0

    add-int/2addr v1, v2

    .line 83
    iput v1, v0, Lcom/adwo/adsdk/f;->b:I

    .line 84
    add-int/lit8 v1, v3, 0x4

    .line 86
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    .line 89
    add-int/lit8 v1, v1, 0x1

    .line 90
    add-int/lit8 v1, v1, 0x1

    aget-byte v2, p0, v5

    const/16 v3, 0x8

    add-int/lit8 v1, v1, 0x1

    aget-byte v3, p0, v3

    invoke-static {v2, v3}, Lcom/adwo/adsdk/N;->a(BB)S

    move-result v2

    .line 92
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const/16 v4, 0x9

    const-string v5, "UTF-8"

    invoke-direct {v3, p0, v4, v2, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 94
    iput-object v3, v0, Lcom/adwo/adsdk/f;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 95
    add-int/lit8 v1, v2, 0x9

    .line 101
    :goto_2
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p0, v1

    .line 102
    iput-byte v1, v0, Lcom/adwo/adsdk/f;->f:B

    .line 106
    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p0, v2

    const/16 v3, -0x5f

    if-ne v2, v3, :cond_b

    .line 107
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    .line 110
    if-eqz v1, :cond_c

    .line 111
    :try_start_1
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, p0, v2, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 113
    iput-object v3, v0, Lcom/adwo/adsdk/f;->c:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 114
    add-int/2addr v1, v2

    .line 127
    :cond_b
    :goto_3
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p0, v1

    const/16 v3, -0x5e

    if-ne v1, v3, :cond_10

    .line 128
    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p0, v2

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, p0, v1

    invoke-static {v2, v1}, Lcom/adwo/adsdk/N;->a(BB)S

    move-result v1

    .line 131
    if-eqz v1, :cond_d

    .line 132
    :try_start_2
    new-instance v2, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v2, p0, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 134
    iput-object v2, v0, Lcom/adwo/adsdk/f;->e:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 135
    add-int/2addr v1, v3

    .line 146
    :goto_4
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p0, v1

    const/16 v3, -0x5d

    if-ne v1, v3, :cond_f

    .line 147
    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p0, v2

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, p0, v1

    invoke-static {v2, v1}, Lcom/adwo/adsdk/N;->a(BB)S

    move-result v1

    .line 150
    if-eqz v1, :cond_e

    .line 151
    :try_start_3
    new-instance v2, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v2, p0, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 153
    iput-object v2, v0, Lcom/adwo/adsdk/f;->h:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 154
    add-int/2addr v1, v3

    .line 165
    :goto_5
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p0, v1

    const/16 v3, -0x5c

    if-ne v1, v3, :cond_0

    .line 166
    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p0, v2

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, p0, v1

    invoke-static {v2, v1}, Lcom/adwo/adsdk/N;->a(BB)S

    move-result v1

    .line 169
    if-eqz v1, :cond_0

    .line 170
    :try_start_4
    new-instance v2, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v2, p0, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 172
    iput-object v2, v0, Lcom/adwo/adsdk/f;->g:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v1

    goto/16 :goto_1

    .line 96
    :catch_1
    move-exception v2

    .line 98
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_2

    .line 118
    :catch_2
    move-exception v1

    .line 120
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c
    move v1, v2

    goto :goto_3

    .line 138
    :catch_3
    move-exception v1

    .line 140
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_d
    move v1, v3

    goto :goto_4

    .line 157
    :catch_4
    move-exception v1

    .line 159
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_e
    move v1, v3

    goto :goto_5

    :cond_f
    move v1, v2

    goto :goto_5

    :cond_10
    move v1, v2

    goto :goto_4
.end method

.method private static a(BB)S
    .locals 2

    .prologue
    .line 21
    shl-int/lit8 v0, p0, 0x8

    and-int/lit16 v1, p1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public static a(BBBBBZ[BBS[B[B[BSSSBB[B[BZDDBS[Ljava/lang/Integer;S)[B
    .locals 2

    .prologue
    .line 306
    new-instance p12, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p12}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 307
    const/4 p13, 0x2

    new-array p13, p13, [B

    .line 309
    :try_start_0
    invoke-virtual {p12, p13}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 310
    move-object v0, p12

    move/from16 v1, p24

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 312
    invoke-virtual {p12, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 313
    invoke-virtual {p12, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 314
    invoke-virtual {p12, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 315
    invoke-virtual {p12, p3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 316
    invoke-virtual {p12, p4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 317
    if-eqz p5, :cond_0

    .line 318
    const/4 p0, 0x0

    invoke-virtual {p12, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 324
    :goto_0
    invoke-virtual {p12, p6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 326
    if-eqz p7, :cond_8

    const/4 p0, 0x3

    if-eq p7, p0, :cond_8

    .line 327
    const/4 p0, 0x0

    .line 331
    :goto_1
    invoke-virtual {p12, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 333
    invoke-static {p8}, Lcom/adwo/adsdk/N;->a(S)[B

    move-result-object p0

    invoke-virtual {p12, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 335
    if-eqz p9, :cond_1

    .line 336
    const/16 p0, 0x49

    invoke-virtual {p12, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 338
    array-length p0, p9

    int-to-byte p0, p0

    invoke-virtual {p12, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 339
    invoke-virtual {p12, p9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 345
    :goto_2
    const/4 p0, 0x0

    invoke-static {p0}, Lcom/adwo/adsdk/N;->a(S)[B

    move-result-object p0

    invoke-virtual {p12, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 346
    const/4 p0, 0x0

    invoke-static {p0}, Lcom/adwo/adsdk/N;->a(S)[B

    move-result-object p0

    invoke-virtual {p12, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 348
    if-eqz p10, :cond_2

    .line 349
    const/16 p0, 0x4d

    invoke-virtual {p12, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 351
    array-length p0, p10

    int-to-byte p0, p0

    invoke-virtual {p12, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 352
    invoke-virtual {p12, p10}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 357
    :goto_3
    if-eqz p11, :cond_3

    .line 358
    const/16 p0, 0x42

    invoke-virtual {p12, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 360
    array-length p0, p11

    int-to-byte p0, p0

    invoke-virtual {p12, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 361
    invoke-virtual {p12, p11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 366
    :goto_4
    invoke-static/range {p14 .. p14}, Lcom/adwo/adsdk/N;->a(S)[B

    move-result-object p0

    invoke-virtual {p12, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 367
    move-object v0, p12

    move/from16 v1, p15

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 368
    move-object v0, p12

    move/from16 v1, p16

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 371
    if-eqz p17, :cond_4

    .line 372
    const/16 p0, 0x4e

    invoke-virtual {p12, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 374
    move-object/from16 v0, p17

    array-length v0, v0

    move p0, v0

    int-to-byte p0, p0

    invoke-virtual {p12, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 375
    move-object v0, p12

    move-object/from16 v1, p17

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 380
    :goto_5
    if-eqz p18, :cond_5

    .line 381
    const/16 p0, 0x50

    invoke-virtual {p12, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 383
    move-object/from16 v0, p18

    array-length v0, v0

    move p0, v0

    int-to-byte p0, p0

    invoke-virtual {p12, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 384
    move-object v0, p12

    move-object/from16 v1, p18

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 390
    :goto_6
    if-eqz p19, :cond_6

    .line 391
    const/16 p0, 0x4c

    invoke-virtual {p12, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 392
    invoke-static/range {p20 .. p21}, Lcom/adwo/adsdk/N;->a(D)[B

    move-result-object p0

    .line 393
    const/16 p1, 0x10

    invoke-virtual {p12, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 394
    invoke-virtual {p12, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 395
    invoke-static/range {p22 .. p23}, Lcom/adwo/adsdk/N;->a(D)[B

    move-result-object p0

    .line 396
    invoke-virtual {p12, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 403
    :goto_7
    invoke-static/range {p25 .. p25}, Lcom/adwo/adsdk/N;->a(S)[B

    move-result-object p0

    invoke-virtual {p12, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 404
    const/4 p0, 0x0

    :goto_8
    move v0, p0

    move/from16 v1, p25

    if-lt v0, v1, :cond_7

    .line 410
    invoke-static/range {p27 .. p27}, Lcom/adwo/adsdk/N;->a(S)[B

    move-result-object p0

    invoke-virtual {p12, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    :goto_9
    invoke-virtual {p12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 417
    array-length p1, p0

    const/4 p2, 0x2

    sub-int/2addr p1, p2

    int-to-short p1, p1

    .line 418
    const/4 p2, 0x0

    const p3, 0xff00

    and-int/2addr p3, p1

    shr-int/lit8 p3, p3, 0x8

    int-to-byte p3, p3

    aput-byte p3, p0, p2

    .line 419
    const/4 p2, 0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, p0, p2

    .line 421
    return-object p0

    .line 320
    :cond_0
    const/4 p0, 0x1

    :try_start_1
    invoke-virtual {p12, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 411
    :catch_0
    move-exception p0

    .line 413
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 341
    :cond_1
    const/16 p0, 0x49

    :try_start_2
    invoke-virtual {p12, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 342
    const/4 p0, 0x0

    invoke-virtual {p12, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_2

    .line 354
    :cond_2
    const/16 p0, 0x4d

    invoke-virtual {p12, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 355
    const/4 p0, 0x0

    invoke-virtual {p12, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_3

    .line 363
    :cond_3
    const/16 p0, 0x42

    invoke-virtual {p12, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 364
    const/4 p0, 0x0

    invoke-virtual {p12, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_4

    .line 377
    :cond_4
    const/16 p0, 0x4e

    invoke-virtual {p12, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 378
    const/4 p0, 0x0

    invoke-virtual {p12, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_5

    .line 386
    :cond_5
    const/16 p0, 0x50

    invoke-virtual {p12, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 387
    const/4 p0, 0x0

    invoke-virtual {p12, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_6

    .line 399
    :cond_6
    const/16 p0, 0x4c

    invoke-virtual {p12, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 400
    const/4 p0, 0x0

    invoke-virtual {p12, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_7

    .line 405
    :cond_7
    aget-object p1, p26, p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x4

    new-array p2, p2, [B

    const/4 p3, 0x0

    ushr-int/lit8 p4, p1, 0x18

    int-to-byte p4, p4

    aput-byte p4, p2, p3

    const/4 p3, 0x1

    ushr-int/lit8 p4, p1, 0x10

    int-to-byte p4, p4

    aput-byte p4, p2, p3

    const/4 p3, 0x2

    ushr-int/lit8 p4, p1, 0x8

    int-to-byte p4, p4

    aput-byte p4, p2, p3

    const/4 p3, 0x3

    int-to-byte p1, p1

    aput-byte p1, p2, p3

    .line 407
    invoke-virtual {p12, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 404
    add-int/lit8 p0, p0, 0x1

    goto/16 :goto_8

    :cond_8
    move p0, p7

    goto/16 :goto_1
.end method

.method private static a(D)[B
    .locals 9

    .prologue
    const/16 v8, 0x8

    const-wide/16 v6, 0xff

    .line 207
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 208
    new-array v2, v8, [B

    .line 209
    const/4 v3, 0x0

    const/16 v4, 0x38

    shr-long v4, v0, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 210
    const/4 v3, 0x1

    const/16 v4, 0x30

    shr-long v4, v0, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 211
    const/4 v3, 0x2

    const/16 v4, 0x28

    shr-long v4, v0, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 212
    const/4 v3, 0x3

    const/16 v4, 0x20

    shr-long v4, v0, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 213
    const/4 v3, 0x4

    const/16 v4, 0x18

    shr-long v4, v0, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 214
    const/4 v3, 0x5

    const/16 v4, 0x10

    shr-long v4, v0, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 215
    const/4 v3, 0x6

    shr-long v4, v0, v8

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 216
    const/4 v3, 0x7

    and-long/2addr v0, v6

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    .line 217
    return-object v2
.end method

.method private static a(S)[B
    .locals 3

    .prologue
    .line 203
    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    const v2, 0xff00

    and-int/2addr v2, p0

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method
