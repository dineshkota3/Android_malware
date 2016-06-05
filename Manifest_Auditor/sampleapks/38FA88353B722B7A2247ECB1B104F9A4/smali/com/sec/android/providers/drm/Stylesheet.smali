.class public Lcom/sec/android/providers/drm/Stylesheet;
.super Ljava/io/InputStream;


# instance fields
.field private a:Ljava/io/InputStream;

.field private b:[I

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput v0, p0, Lcom/sec/android/providers/drm/Stylesheet;->c:I

    iput-boolean v0, p0, Lcom/sec/android/providers/drm/Stylesheet;->d:Z

    iput-object p1, p0, Lcom/sec/android/providers/drm/Stylesheet;->a:Ljava/io/InputStream;

    return-void
.end method

.method private a()V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    new-array v0, v7, [C

    move v1, v6

    :cond_0
    iget-object v2, p0, Lcom/sec/android/providers/drm/Stylesheet;->a:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    if-ne v2, v8, :cond_3

    if-eqz v1, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Bad base64 stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-array v0, v6, [I

    iput-object v0, p0, Lcom/sec/android/providers/drm/Stylesheet;->b:[I

    iput-boolean v5, p0, Lcom/sec/android/providers/drm/Stylesheet;->d:Z

    :cond_2
    return-void

    :cond_3
    int-to-char v2, v2

    sget-object v3, Lcom/sec/android/providers/drm/Keywords;->a:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v3, v8, :cond_4

    sget-char v3, Lcom/sec/android/providers/drm/Keywords;->b:C

    if-ne v2, v3, :cond_6

    :cond_4
    add-int/lit8 v3, v1, 0x1

    aput-char v2, v0, v1

    move v1, v3

    :cond_5
    if-lt v1, v7, :cond_0

    move v1, v6

    move v2, v6

    :goto_0
    if-ge v2, v7, :cond_9

    aget-char v3, v0, v2

    sget-char v4, Lcom/sec/android/providers/drm/Keywords;->b:C

    if-eq v3, v4, :cond_7

    if-eqz v1, :cond_8

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Bad base64 stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const/16 v3, 0xd

    if-eq v2, v3, :cond_5

    const/16 v3, 0xa

    if-eq v2, v3, :cond_5

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Bad base64 stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    if-nez v1, :cond_8

    move v1, v5

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_9
    const/4 v1, 0x3

    aget-char v1, v0, v1

    sget-char v2, Lcom/sec/android/providers/drm/Keywords;->b:C

    if-ne v1, v2, :cond_d

    iget-object v1, p0, Lcom/sec/android/providers/drm/Stylesheet;->a:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-eq v1, v8, :cond_a

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Bad base64 stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iput-boolean v5, p0, Lcom/sec/android/providers/drm/Stylesheet;->d:Z

    aget-char v1, v0, v9

    sget-char v2, Lcom/sec/android/providers/drm/Keywords;->b:C

    if-ne v1, v2, :cond_c

    move v1, v5

    :goto_1
    move v2, v6

    move v3, v6

    :goto_2
    if-ge v3, v7, :cond_e

    aget-char v4, v0, v3

    sget-char v5, Lcom/sec/android/providers/drm/Keywords;->b:C

    if-eq v4, v5, :cond_b

    sget-object v4, Lcom/sec/android/providers/drm/Keywords;->a:Ljava/lang/String;

    aget-char v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, 0x3

    sub-int/2addr v5, v3

    mul-int/lit8 v5, v5, 0x6

    shl-int/2addr v4, v5

    or-int/2addr v2, v4

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_c
    move v1, v9

    goto :goto_1

    :cond_d
    const/4 v1, 0x3

    goto :goto_1

    :cond_e
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/sec/android/providers/drm/Stylesheet;->b:[I

    move v0, v6

    :goto_3
    if-ge v0, v1, :cond_2

    iget-object v3, p0, Lcom/sec/android/providers/drm/Stylesheet;->b:[I

    sub-int v4, v9, v0

    mul-int/lit8 v4, v4, 0x8

    ushr-int v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/providers/drm/Stylesheet;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public read()I
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/sec/android/providers/drm/Stylesheet;->b:[I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/providers/drm/Stylesheet;->c:I

    iget-object v1, p0, Lcom/sec/android/providers/drm/Stylesheet;->b:[I

    array-length v1, v1

    if-ne v0, v1, :cond_3

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/providers/drm/Stylesheet;->d:Z

    if-eqz v0, :cond_1

    move v0, v2

    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/providers/drm/Stylesheet;->a()V

    iget-object v0, p0, Lcom/sec/android/providers/drm/Stylesheet;->b:[I

    array-length v0, v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/providers/drm/Stylesheet;->b:[I

    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/providers/drm/Stylesheet;->c:I

    :cond_3
    iget-object v0, p0, Lcom/sec/android/providers/drm/Stylesheet;->b:[I

    iget v1, p0, Lcom/sec/android/providers/drm/Stylesheet;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sec/android/providers/drm/Stylesheet;->c:I

    aget v0, v0, v1

    goto :goto_0
.end method
