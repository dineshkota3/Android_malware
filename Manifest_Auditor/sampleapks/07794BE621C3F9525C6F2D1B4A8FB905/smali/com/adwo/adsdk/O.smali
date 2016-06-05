.class public final Lcom/adwo/adsdk/O;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static a:I

.field protected static b:I

.field protected static c:[B

.field protected static d:[B

.field protected static e:[B

.field protected static final f:[B

.field protected static final g:[B

.field protected static final h:[B

.field protected static final i:[B

.field protected static final j:[I

.field protected static final k:[I

.field private static final l:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0xa

    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 28
    const/16 v0, 0x2710

    sput v0, Lcom/adwo/adsdk/O;->a:I

    .line 29
    const/16 v0, 0x2710

    sput v0, Lcom/adwo/adsdk/O;->b:I

    .line 63
    const/4 v0, 0x0

    sput-object v0, Lcom/adwo/adsdk/O;->c:[B

    .line 70
    :try_start_0
    const-string v0, "http://r2.adwo.com/ad"

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/adwo/adsdk/O;->c:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    const/16 v0, 0x1d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/adwo/adsdk/O;->d:[B

    .line 100
    const/16 v0, 0x12

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/adwo/adsdk/O;->e:[B

    .line 112
    const/16 v0, 0x13

    new-array v0, v0, [B

    const/16 v1, 0x68

    aput-byte v1, v0, v4

    const/16 v1, 0x74

    aput-byte v1, v0, v5

    const/16 v1, 0x74

    aput-byte v1, v0, v6

    const/4 v1, 0x3

    const/16 v2, 0x70

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    .line 113
    const/16 v1, 0x2f

    aput-byte v1, v0, v7

    const/4 v1, 0x6

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x77

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x77

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x77

    aput-byte v2, v0, v1

    const/16 v1, 0x2e

    aput-byte v1, v0, v8

    const/16 v1, 0xb

    const/16 v2, 0x61

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x64

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x77

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x6f

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x63

    aput-byte v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x6f

    aput-byte v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x6d

    aput-byte v2, v0, v1

    .line 112
    const/16 v0, 0x18

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    .line 124
    sput-object v0, Lcom/adwo/adsdk/O;->f:[B

    .line 128
    const/16 v0, 0x16

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/adwo/adsdk/O;->g:[B

    .line 133
    new-array v0, v8, [B

    fill-array-data v0, :array_4

    sput-object v0, Lcom/adwo/adsdk/O;->h:[B

    .line 136
    new-array v0, v8, [B

    fill-array-data v0, :array_5

    sput-object v0, Lcom/adwo/adsdk/O;->i:[B

    .line 150
    new-array v0, v7, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/adwo/adsdk/O;->j:[I

    .line 152
    new-array v0, v7, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/adwo/adsdk/O;->k:[I

    .line 163
    const/16 v0, 0x1b

    new-array v0, v0, [[Ljava/lang/String;

    .line 167
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, ".3gp"

    aput-object v2, v1, v4

    const-string v2, "video/3gpp"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    .line 169
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, ".apk"

    aput-object v2, v1, v4

    const-string v2, "application/vnd.android.package-archive"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    .line 171
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, ".asf"

    aput-object v2, v1, v4

    const-string v2, "video/x-ms-asf"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    const/4 v1, 0x3

    .line 173
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".avi"

    aput-object v3, v2, v4

    const-string v3, "video/x-msvideo"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 175
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".bmp"

    aput-object v3, v2, v4

    const-string v3, "image/bmp"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    .line 177
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, ".gif"

    aput-object v2, v1, v4

    const-string v2, "image/gif"

    aput-object v2, v1, v5

    aput-object v1, v0, v7

    const/4 v1, 0x6

    .line 179
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".htm"

    aput-object v3, v2, v4

    const-string v3, "text/html"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 181
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".html"

    aput-object v3, v2, v4

    const-string v3, "text/html"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 183
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".jpeg"

    aput-object v3, v2, v4

    const-string v3, "image/jpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 185
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".jpg"

    aput-object v3, v2, v4

    const-string v3, "image/jpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    .line 187
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, ".m4v"

    aput-object v2, v1, v4

    const-string v2, "video/x-m4v"

    aput-object v2, v1, v5

    aput-object v1, v0, v8

    const/16 v1, 0xb

    .line 189
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".mov"

    aput-object v3, v2, v4

    const-string v3, "video/quicktime"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 191
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".mp2"

    aput-object v3, v2, v4

    const-string v3, "audio/x-mpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 193
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".mp3"

    aput-object v3, v2, v4

    const-string v3, "audio/x-mpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 195
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".mp4"

    aput-object v3, v2, v4

    const-string v3, "video/mp4"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 197
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".mpe"

    aput-object v3, v2, v4

    const-string v3, "video/mpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 199
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".mpeg"

    aput-object v3, v2, v4

    const-string v3, "video/mpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 201
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".mpg"

    aput-object v3, v2, v4

    const-string v3, "video/mpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 203
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".mpg4"

    aput-object v3, v2, v4

    const-string v3, "video/mp4"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 205
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".mpga"

    aput-object v3, v2, v4

    const-string v3, "audio/mpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 207
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".ogg"

    aput-object v3, v2, v4

    const-string v3, "audio/ogg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 209
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".png"

    aput-object v3, v2, v4

    const-string v3, "image/png"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 211
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".rmvb"

    aput-object v3, v2, v4

    const-string v3, "audio/x-pn-realaudio"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 213
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".wav"

    aput-object v3, v2, v4

    const-string v3, "audio/x-wav"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 215
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".wma"

    aput-object v3, v2, v4

    const-string v3, "audio/x-ms-wma"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 217
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".wmv"

    aput-object v3, v2, v4

    const-string v3, "audio/x-ms-wmv"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    .line 221
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v4

    const-string v3, "*/*"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    .line 163
    sput-object v0, Lcom/adwo/adsdk/O;->l:[[Ljava/lang/String;

    .line 25
    return-void

    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 81
    nop

    :array_0
    .array-data 1
        0x68t
        0x74t
        0x74t
        0x70t
        0x3at
        0x2ft
        0x2ft
        0x61t
        0x64t
        0x74t
        0x65t
        0x73t
        0x74t
        0x2et
        0x61t
        0x64t
        0x77t
        0x6ft
        0x2et
        0x63t
        0x6ft
        0x6dt
        0x2ft
        0x61t
        0x64t
        0x74t
        0x65t
        0x73t
        0x74t
    .end array-data

    .line 100
    nop

    :array_1
    .array-data 1
        0x68t
        0x74t
        0x74t
        0x70t
        0x3at
        0x2ft
        0x2ft
        0x72t
        0x32t
        0x2et
        0x61t
        0x64t
        0x77t
        0x6ft
        0x2et
        0x63t
        0x6ft
        0x6dt
    .end array-data

    .line 112
    nop

    :array_2
    .array-data 1
        0x68t
        0x74t
        0x74t
        0x70t
        0x3at
        0x2ft
        0x2ft
        0x31t
        0x30t
        0x2et
        0x30t
        0x2et
        0x30t
        0x2et
        0x31t
        0x37t
        0x32t
        0x2ft
        0x74t
        0x2ft
        0x74t
        0x65t
        0x73t
        0x74t
    .end array-data

    .line 128
    :array_3
    .array-data 1
        0x68t
        0x74t
        0x74t
        0x70t
        0x3at
        0x2ft
        0x2ft
        0x31t
        0x30t
        0x2et
        0x30t
        0x2et
        0x30t
        0x2et
        0x31t
        0x37t
        0x32t
        0x2ft
        0x61t
        0x2ft
        0x70t
        0x31t
    .end array-data

    .line 133
    nop

    :array_4
    .array-data 1
        0x31t
        0x30t
        0x2et
        0x30t
        0x2et
        0x30t
        0x2et
        0x32t
        0x30t
        0x30t
    .end array-data

    .line 136
    nop

    :array_5
    .array-data 1
        0x31t
        0x30t
        0x2et
        0x30t
        0x2et
        0x30t
        0x2et
        0x31t
        0x37t
        0x32t
    .end array-data

    .line 150
    nop

    :array_6
    .array-data 4
        0xd8
        0x140
        0x1e0
        0x280
        0x2d0
    .end array-data

    .line 152
    :array_7
    .array-data 4
        0x24
        0x32
        0x3c
        0x50
        0x5a
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 226
    const-string v0, "*/*"

    .line 229
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 230
    if-gez v1, :cond_1

    .line 245
    :cond_0
    :goto_0
    return-object v0

    .line 236
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 237
    const-string v2, ""

    if-eq v1, v2, :cond_0

    move-object v2, v0

    move v0, v4

    .line 240
    :goto_1
    sget-object v3, Lcom/adwo/adsdk/O;->l:[[Ljava/lang/String;

    array-length v3, v3

    if-lt v0, v3, :cond_2

    move-object v0, v2

    .line 245
    goto :goto_0

    .line 241
    :cond_2
    sget-object v3, Lcom/adwo/adsdk/O;->l:[[Ljava/lang/String;

    aget-object v3, v3, v0

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 242
    sget-object v2, Lcom/adwo/adsdk/O;->l:[[Ljava/lang/String;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    aget-object v2, v2, v3

    .line 240
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static a()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method
