.class Lcom/gp/monolith/Cube;
.super Ljava/lang/Object;
.source "Cube.java"


# instance fields
.field private mColorBuffer:Ljava/nio/IntBuffer;

.field private mIndexBuffer:Ljava/nio/ByteBuffer;

.field private mVertexBuffer:Ljava/nio/IntBuffer;

.field private xpos:F

.field private ypos:F

.field private zpos:F


# direct methods
.method public constructor <init>()V
    .locals 13

    .prologue
    const/4 v12, 0x7

    const/4 v11, 0x6

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x4

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/high16 v3, 0x10000

    .line 15
    .local v3, "one":I
    const/16 v6, 0x18

    new-array v5, v6, [I

    const/4 v6, 0x0

    .line 16
    neg-int v7, v3

    aput v7, v5, v6

    neg-int v6, v3

    aput v6, v5, v9

    const/4 v6, 0x2

    neg-int v7, v3

    aput v7, v5, v6

    .line 17
    aput v3, v5, v10

    neg-int v6, v3

    aput v6, v5, v8

    const/4 v6, 0x5

    neg-int v7, v3

    aput v7, v5, v6

    .line 18
    aput v3, v5, v11

    aput v3, v5, v12

    const/16 v6, 0x8

    neg-int v7, v3

    aput v7, v5, v6

    const/16 v6, 0x9

    .line 19
    neg-int v7, v3

    aput v7, v5, v6

    const/16 v6, 0xa

    aput v3, v5, v6

    const/16 v6, 0xb

    neg-int v7, v3

    aput v7, v5, v6

    const/16 v6, 0xc

    .line 20
    neg-int v7, v3

    aput v7, v5, v6

    const/16 v6, 0xd

    neg-int v7, v3

    aput v7, v5, v6

    const/16 v6, 0xe

    aput v3, v5, v6

    const/16 v6, 0xf

    .line 21
    aput v3, v5, v6

    const/16 v6, 0x10

    neg-int v7, v3

    aput v7, v5, v6

    const/16 v6, 0x11

    aput v3, v5, v6

    const/16 v6, 0x12

    .line 22
    aput v3, v5, v6

    const/16 v6, 0x13

    aput v3, v5, v6

    const/16 v6, 0x14

    aput v3, v5, v6

    const/16 v6, 0x15

    .line 23
    neg-int v7, v3

    aput v7, v5, v6

    const/16 v6, 0x16

    aput v3, v5, v6

    const/16 v6, 0x17

    aput v3, v5, v6

    .line 26
    .local v5, "vertices":[I
    const/16 v6, 0x20

    new-array v1, v6, [I

    .line 27
    aput v3, v1, v10

    .line 28
    aput v3, v1, v8

    aput v3, v1, v12

    const/16 v6, 0x8

    .line 29
    aput v3, v1, v6

    const/16 v6, 0x9

    aput v3, v1, v6

    const/16 v6, 0xb

    aput v3, v1, v6

    const/16 v6, 0xd

    .line 30
    aput v3, v1, v6

    const/16 v6, 0xf

    aput v3, v1, v6

    const/16 v6, 0x12

    .line 31
    aput v3, v1, v6

    const/16 v6, 0x13

    aput v3, v1, v6

    const/16 v6, 0x14

    .line 32
    aput v3, v1, v6

    const/16 v6, 0x16

    aput v3, v1, v6

    const/16 v6, 0x17

    aput v3, v1, v6

    const/16 v6, 0x18

    .line 33
    aput v3, v1, v6

    const/16 v6, 0x19

    aput v3, v1, v6

    const/16 v6, 0x1a

    aput v3, v1, v6

    const/16 v6, 0x1b

    aput v3, v1, v6

    const/16 v6, 0x1d

    .line 34
    aput v3, v1, v6

    const/16 v6, 0x1e

    aput v3, v1, v6

    const/16 v6, 0x1f

    aput v3, v1, v6

    .line 37
    .local v1, "colors":[I
    const/16 v6, 0x24

    new-array v2, v6, [B

    .line 38
    aput-byte v8, v2, v9

    const/4 v6, 0x2

    const/4 v7, 0x5

    aput-byte v7, v2, v6

    const/4 v6, 0x5

    aput-byte v6, v2, v8

    const/4 v6, 0x5

    aput-byte v9, v2, v6

    .line 39
    aput-byte v9, v2, v11

    const/4 v6, 0x5

    aput-byte v6, v2, v12

    const/16 v6, 0x8

    aput-byte v11, v2, v6

    const/16 v6, 0x9

    aput-byte v9, v2, v6

    const/16 v6, 0xa

    aput-byte v11, v2, v6

    const/16 v6, 0xb

    const/4 v7, 0x2

    aput-byte v7, v2, v6

    const/16 v6, 0xc

    .line 40
    const/4 v7, 0x2

    aput-byte v7, v2, v6

    const/16 v6, 0xd

    aput-byte v11, v2, v6

    const/16 v6, 0xe

    aput-byte v12, v2, v6

    const/16 v6, 0xf

    const/4 v7, 0x2

    aput-byte v7, v2, v6

    const/16 v6, 0x10

    aput-byte v12, v2, v6

    const/16 v6, 0x11

    aput-byte v10, v2, v6

    const/16 v6, 0x12

    .line 41
    aput-byte v10, v2, v6

    const/16 v6, 0x13

    aput-byte v12, v2, v6

    const/16 v6, 0x14

    aput-byte v8, v2, v6

    const/16 v6, 0x15

    aput-byte v10, v2, v6

    const/16 v6, 0x16

    aput-byte v8, v2, v6

    const/16 v6, 0x18

    .line 42
    aput-byte v8, v2, v6

    const/16 v6, 0x19

    aput-byte v12, v2, v6

    const/16 v6, 0x1a

    aput-byte v11, v2, v6

    const/16 v6, 0x1b

    aput-byte v8, v2, v6

    const/16 v6, 0x1c

    aput-byte v11, v2, v6

    const/16 v6, 0x1d

    const/4 v7, 0x5

    aput-byte v7, v2, v6

    const/16 v6, 0x1e

    .line 43
    aput-byte v10, v2, v6

    const/16 v6, 0x20

    aput-byte v9, v2, v6

    const/16 v6, 0x21

    aput-byte v10, v2, v6

    const/16 v6, 0x22

    aput-byte v9, v2, v6

    const/16 v6, 0x23

    const/4 v7, 0x2

    aput-byte v7, v2, v6

    .line 54
    .local v2, "indices":[B
    array-length v6, v5

    mul-int/lit8 v6, v6, 0x4

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 55
    .local v4, "vbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 56
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v6

    iput-object v6, p0, Lcom/gp/monolith/Cube;->mVertexBuffer:Ljava/nio/IntBuffer;

    .line 57
    iget-object v6, p0, Lcom/gp/monolith/Cube;->mVertexBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v6, v5}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 58
    iget-object v6, p0, Lcom/gp/monolith/Cube;->mVertexBuffer:Ljava/nio/IntBuffer;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 60
    array-length v6, v1

    mul-int/lit8 v6, v6, 0x4

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 61
    .local v0, "cbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 62
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v6

    iput-object v6, p0, Lcom/gp/monolith/Cube;->mColorBuffer:Ljava/nio/IntBuffer;

    .line 63
    iget-object v6, p0, Lcom/gp/monolith/Cube;->mColorBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v6, v1}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 64
    iget-object v6, p0, Lcom/gp/monolith/Cube;->mColorBuffer:Ljava/nio/IntBuffer;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 66
    array-length v6, v2

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    iput-object v6, p0, Lcom/gp/monolith/Cube;->mIndexBuffer:Ljava/nio/ByteBuffer;

    .line 67
    iget-object v6, p0, Lcom/gp/monolith/Cube;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 68
    iget-object v6, p0, Lcom/gp/monolith/Cube;->mIndexBuffer:Ljava/nio/ByteBuffer;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 69
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 8
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I
    .param p4, "a"    # I

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/high16 v3, 0x10000

    .line 74
    .local v3, "one":I
    const/16 v6, 0x18

    new-array v5, v6, [I

    const/4 v6, 0x0

    .line 75
    neg-int v7, v3

    aput v7, v5, v6

    const/4 v6, 0x1

    neg-int v7, v3

    aput v7, v5, v6

    const/4 v6, 0x2

    neg-int v7, v3

    aput v7, v5, v6

    const/4 v6, 0x3

    .line 76
    aput v3, v5, v6

    const/4 v6, 0x4

    neg-int v7, v3

    aput v7, v5, v6

    const/4 v6, 0x5

    neg-int v7, v3

    aput v7, v5, v6

    const/4 v6, 0x6

    .line 77
    aput v3, v5, v6

    const/4 v6, 0x7

    aput v3, v5, v6

    const/16 v6, 0x8

    neg-int v7, v3

    aput v7, v5, v6

    const/16 v6, 0x9

    .line 78
    neg-int v7, v3

    aput v7, v5, v6

    const/16 v6, 0xa

    aput v3, v5, v6

    const/16 v6, 0xb

    neg-int v7, v3

    aput v7, v5, v6

    const/16 v6, 0xc

    .line 79
    neg-int v7, v3

    aput v7, v5, v6

    const/16 v6, 0xd

    neg-int v7, v3

    aput v7, v5, v6

    const/16 v6, 0xe

    aput v3, v5, v6

    const/16 v6, 0xf

    .line 80
    aput v3, v5, v6

    const/16 v6, 0x10

    neg-int v7, v3

    aput v7, v5, v6

    const/16 v6, 0x11

    aput v3, v5, v6

    const/16 v6, 0x12

    .line 81
    aput v3, v5, v6

    const/16 v6, 0x13

    aput v3, v5, v6

    const/16 v6, 0x14

    aput v3, v5, v6

    const/16 v6, 0x15

    .line 82
    neg-int v7, v3

    aput v7, v5, v6

    const/16 v6, 0x16

    aput v3, v5, v6

    const/16 v6, 0x17

    aput v3, v5, v6

    .line 85
    .local v5, "vertices":[I
    const/16 v6, 0x20

    new-array v1, v6, [I

    const/4 v6, 0x0

    .line 86
    aput p1, v1, v6

    const/4 v6, 0x1

    aput p2, v1, v6

    const/4 v6, 0x2

    aput p3, v1, v6

    const/4 v6, 0x3

    aput p4, v1, v6

    const/4 v6, 0x4

    .line 87
    shr-int/lit8 v7, p1, 0x1

    aput v7, v1, v6

    const/4 v6, 0x5

    shr-int/lit8 v7, p2, 0x1

    aput v7, v1, v6

    const/4 v6, 0x6

    shr-int/lit8 v7, p3, 0x1

    aput v7, v1, v6

    const/4 v6, 0x7

    aput p4, v1, v6

    const/16 v6, 0x8

    .line 88
    shr-int/lit8 v7, p1, 0x2

    aput v7, v1, v6

    const/16 v6, 0x9

    shr-int/lit8 v7, p2, 0x2

    aput v7, v1, v6

    const/16 v6, 0xa

    shr-int/lit8 v7, p3, 0x2

    aput v7, v1, v6

    const/16 v6, 0xb

    aput p4, v1, v6

    const/16 v6, 0xc

    .line 89
    aput p1, v1, v6

    const/16 v6, 0xd

    aput p2, v1, v6

    const/16 v6, 0xe

    aput p3, v1, v6

    const/16 v6, 0xf

    aput p4, v1, v6

    const/16 v6, 0x10

    .line 90
    aput p1, v1, v6

    const/16 v6, 0x11

    aput p2, v1, v6

    const/16 v6, 0x12

    aput p3, v1, v6

    const/16 v6, 0x13

    aput p4, v1, v6

    const/16 v6, 0x14

    .line 91
    shr-int/lit8 v7, p1, 0x1

    aput v7, v1, v6

    const/16 v6, 0x15

    shr-int/lit8 v7, p2, 0x1

    aput v7, v1, v6

    const/16 v6, 0x16

    shr-int/lit8 v7, p3, 0x1

    aput v7, v1, v6

    const/16 v6, 0x17

    aput p4, v1, v6

    const/16 v6, 0x18

    .line 92
    shr-int/lit8 v7, p1, 0x2

    aput v7, v1, v6

    const/16 v6, 0x19

    shr-int/lit8 v7, p2, 0x2

    aput v7, v1, v6

    const/16 v6, 0x1a

    shr-int/lit8 v7, p3, 0x2

    aput v7, v1, v6

    const/16 v6, 0x1b

    aput p4, v1, v6

    const/16 v6, 0x1c

    .line 93
    aput p1, v1, v6

    const/16 v6, 0x1d

    aput p2, v1, v6

    const/16 v6, 0x1e

    aput p3, v1, v6

    const/16 v6, 0x1f

    aput p4, v1, v6

    .line 96
    .local v1, "colors":[I
    const/16 v6, 0x24

    new-array v2, v6, [B

    const/4 v6, 0x1

    .line 97
    const/4 v7, 0x4

    aput-byte v7, v2, v6

    const/4 v6, 0x2

    const/4 v7, 0x5

    aput-byte v7, v2, v6

    const/4 v6, 0x4

    const/4 v7, 0x5

    aput-byte v7, v2, v6

    const/4 v6, 0x5

    const/4 v7, 0x1

    aput-byte v7, v2, v6

    const/4 v6, 0x6

    .line 98
    const/4 v7, 0x1

    aput-byte v7, v2, v6

    const/4 v6, 0x7

    const/4 v7, 0x5

    aput-byte v7, v2, v6

    const/16 v6, 0x8

    const/4 v7, 0x6

    aput-byte v7, v2, v6

    const/16 v6, 0x9

    const/4 v7, 0x1

    aput-byte v7, v2, v6

    const/16 v6, 0xa

    const/4 v7, 0x6

    aput-byte v7, v2, v6

    const/16 v6, 0xb

    const/4 v7, 0x2

    aput-byte v7, v2, v6

    const/16 v6, 0xc

    .line 99
    const/4 v7, 0x2

    aput-byte v7, v2, v6

    const/16 v6, 0xd

    const/4 v7, 0x6

    aput-byte v7, v2, v6

    const/16 v6, 0xe

    const/4 v7, 0x7

    aput-byte v7, v2, v6

    const/16 v6, 0xf

    const/4 v7, 0x2

    aput-byte v7, v2, v6

    const/16 v6, 0x10

    const/4 v7, 0x7

    aput-byte v7, v2, v6

    const/16 v6, 0x11

    const/4 v7, 0x3

    aput-byte v7, v2, v6

    const/16 v6, 0x12

    .line 100
    const/4 v7, 0x3

    aput-byte v7, v2, v6

    const/16 v6, 0x13

    const/4 v7, 0x7

    aput-byte v7, v2, v6

    const/16 v6, 0x14

    const/4 v7, 0x4

    aput-byte v7, v2, v6

    const/16 v6, 0x15

    const/4 v7, 0x3

    aput-byte v7, v2, v6

    const/16 v6, 0x16

    const/4 v7, 0x4

    aput-byte v7, v2, v6

    const/16 v6, 0x18

    .line 101
    const/4 v7, 0x4

    aput-byte v7, v2, v6

    const/16 v6, 0x19

    const/4 v7, 0x7

    aput-byte v7, v2, v6

    const/16 v6, 0x1a

    const/4 v7, 0x6

    aput-byte v7, v2, v6

    const/16 v6, 0x1b

    const/4 v7, 0x4

    aput-byte v7, v2, v6

    const/16 v6, 0x1c

    const/4 v7, 0x6

    aput-byte v7, v2, v6

    const/16 v6, 0x1d

    const/4 v7, 0x5

    aput-byte v7, v2, v6

    const/16 v6, 0x1e

    .line 102
    const/4 v7, 0x3

    aput-byte v7, v2, v6

    const/16 v6, 0x20

    const/4 v7, 0x1

    aput-byte v7, v2, v6

    const/16 v6, 0x21

    const/4 v7, 0x3

    aput-byte v7, v2, v6

    const/16 v6, 0x22

    const/4 v7, 0x1

    aput-byte v7, v2, v6

    const/16 v6, 0x23

    const/4 v7, 0x2

    aput-byte v7, v2, v6

    .line 113
    .local v2, "indices":[B
    array-length v6, v5

    mul-int/lit8 v6, v6, 0x4

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 114
    .local v4, "vbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 115
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v6

    iput-object v6, p0, Lcom/gp/monolith/Cube;->mVertexBuffer:Ljava/nio/IntBuffer;

    .line 116
    iget-object v6, p0, Lcom/gp/monolith/Cube;->mVertexBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v6, v5}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 117
    iget-object v6, p0, Lcom/gp/monolith/Cube;->mVertexBuffer:Ljava/nio/IntBuffer;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 119
    array-length v6, v1

    mul-int/lit8 v6, v6, 0x4

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 120
    .local v0, "cbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 121
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v6

    iput-object v6, p0, Lcom/gp/monolith/Cube;->mColorBuffer:Ljava/nio/IntBuffer;

    .line 122
    iget-object v6, p0, Lcom/gp/monolith/Cube;->mColorBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v6, v1}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 123
    iget-object v6, p0, Lcom/gp/monolith/Cube;->mColorBuffer:Ljava/nio/IntBuffer;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 125
    array-length v6, v2

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    iput-object v6, p0, Lcom/gp/monolith/Cube;->mIndexBuffer:Ljava/nio/ByteBuffer;

    .line 126
    iget-object v6, p0, Lcom/gp/monolith/Cube;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 127
    iget-object v6, p0, Lcom/gp/monolith/Cube;->mIndexBuffer:Ljava/nio/ByteBuffer;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 128
    return-void
.end method

.method public constructor <init>(IIIIZ)V
    .locals 8
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I
    .param p4, "a"    # I
    .param p5, "color"    # Z

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const/high16 v3, 0x10000

    .line 135
    .local v3, "one":I
    const/16 v6, 0x18

    new-array v5, v6, [I

    const/4 v6, 0x0

    .line 136
    neg-int v7, v3

    aput v7, v5, v6

    const/4 v6, 0x1

    neg-int v7, v3

    aput v7, v5, v6

    const/4 v6, 0x2

    neg-int v7, v3

    aput v7, v5, v6

    const/4 v6, 0x3

    .line 137
    aput v3, v5, v6

    const/4 v6, 0x4

    neg-int v7, v3

    aput v7, v5, v6

    const/4 v6, 0x5

    neg-int v7, v3

    aput v7, v5, v6

    const/4 v6, 0x6

    .line 138
    aput v3, v5, v6

    const/4 v6, 0x7

    aput v3, v5, v6

    const/16 v6, 0x8

    neg-int v7, v3

    aput v7, v5, v6

    const/16 v6, 0x9

    .line 139
    neg-int v7, v3

    aput v7, v5, v6

    const/16 v6, 0xa

    aput v3, v5, v6

    const/16 v6, 0xb

    neg-int v7, v3

    aput v7, v5, v6

    const/16 v6, 0xc

    .line 140
    neg-int v7, v3

    aput v7, v5, v6

    const/16 v6, 0xd

    neg-int v7, v3

    aput v7, v5, v6

    const/16 v6, 0xe

    aput v3, v5, v6

    const/16 v6, 0xf

    .line 141
    aput v3, v5, v6

    const/16 v6, 0x10

    neg-int v7, v3

    aput v7, v5, v6

    const/16 v6, 0x11

    aput v3, v5, v6

    const/16 v6, 0x12

    .line 142
    aput v3, v5, v6

    const/16 v6, 0x13

    aput v3, v5, v6

    const/16 v6, 0x14

    aput v3, v5, v6

    const/16 v6, 0x15

    .line 143
    neg-int v7, v3

    aput v7, v5, v6

    const/16 v6, 0x16

    aput v3, v5, v6

    const/16 v6, 0x17

    aput v3, v5, v6

    .line 146
    .local v5, "vertices":[I
    const/16 v6, 0x20

    new-array v1, v6, [I

    const/4 v6, 0x0

    .line 147
    aput p1, v1, v6

    const/4 v6, 0x1

    aput p2, v1, v6

    const/4 v6, 0x2

    aput p3, v1, v6

    const/4 v6, 0x3

    aput p4, v1, v6

    const/4 v6, 0x4

    .line 148
    aput p1, v1, v6

    const/4 v6, 0x5

    aput p2, v1, v6

    const/4 v6, 0x6

    aput p3, v1, v6

    const/4 v6, 0x7

    aput p4, v1, v6

    const/16 v6, 0x8

    .line 149
    aput p1, v1, v6

    const/16 v6, 0x9

    aput p2, v1, v6

    const/16 v6, 0xa

    aput p3, v1, v6

    const/16 v6, 0xb

    aput p4, v1, v6

    const/16 v6, 0xc

    .line 150
    aput p1, v1, v6

    const/16 v6, 0xd

    aput p2, v1, v6

    const/16 v6, 0xe

    aput p3, v1, v6

    const/16 v6, 0xf

    aput p4, v1, v6

    const/16 v6, 0x10

    .line 151
    aput p1, v1, v6

    const/16 v6, 0x11

    aput p2, v1, v6

    const/16 v6, 0x12

    aput p3, v1, v6

    const/16 v6, 0x13

    aput p4, v1, v6

    const/16 v6, 0x14

    .line 152
    aput p1, v1, v6

    const/16 v6, 0x15

    aput p2, v1, v6

    const/16 v6, 0x16

    aput p3, v1, v6

    const/16 v6, 0x17

    aput p4, v1, v6

    const/16 v6, 0x18

    .line 153
    aput p1, v1, v6

    const/16 v6, 0x19

    aput p2, v1, v6

    const/16 v6, 0x1a

    aput p3, v1, v6

    const/16 v6, 0x1b

    aput p4, v1, v6

    const/16 v6, 0x1c

    .line 154
    aput p1, v1, v6

    const/16 v6, 0x1d

    aput p2, v1, v6

    const/16 v6, 0x1e

    aput p3, v1, v6

    const/16 v6, 0x1f

    aput p4, v1, v6

    .line 157
    .local v1, "colors":[I
    const/16 v6, 0x24

    new-array v2, v6, [B

    const/4 v6, 0x1

    .line 158
    const/4 v7, 0x4

    aput-byte v7, v2, v6

    const/4 v6, 0x2

    const/4 v7, 0x5

    aput-byte v7, v2, v6

    const/4 v6, 0x4

    const/4 v7, 0x5

    aput-byte v7, v2, v6

    const/4 v6, 0x5

    const/4 v7, 0x1

    aput-byte v7, v2, v6

    const/4 v6, 0x6

    .line 159
    const/4 v7, 0x1

    aput-byte v7, v2, v6

    const/4 v6, 0x7

    const/4 v7, 0x5

    aput-byte v7, v2, v6

    const/16 v6, 0x8

    const/4 v7, 0x6

    aput-byte v7, v2, v6

    const/16 v6, 0x9

    const/4 v7, 0x1

    aput-byte v7, v2, v6

    const/16 v6, 0xa

    const/4 v7, 0x6

    aput-byte v7, v2, v6

    const/16 v6, 0xb

    const/4 v7, 0x2

    aput-byte v7, v2, v6

    const/16 v6, 0xc

    .line 160
    const/4 v7, 0x2

    aput-byte v7, v2, v6

    const/16 v6, 0xd

    const/4 v7, 0x6

    aput-byte v7, v2, v6

    const/16 v6, 0xe

    const/4 v7, 0x7

    aput-byte v7, v2, v6

    const/16 v6, 0xf

    const/4 v7, 0x2

    aput-byte v7, v2, v6

    const/16 v6, 0x10

    const/4 v7, 0x7

    aput-byte v7, v2, v6

    const/16 v6, 0x11

    const/4 v7, 0x3

    aput-byte v7, v2, v6

    const/16 v6, 0x12

    .line 161
    const/4 v7, 0x3

    aput-byte v7, v2, v6

    const/16 v6, 0x13

    const/4 v7, 0x7

    aput-byte v7, v2, v6

    const/16 v6, 0x14

    const/4 v7, 0x4

    aput-byte v7, v2, v6

    const/16 v6, 0x15

    const/4 v7, 0x3

    aput-byte v7, v2, v6

    const/16 v6, 0x16

    const/4 v7, 0x4

    aput-byte v7, v2, v6

    const/16 v6, 0x18

    .line 162
    const/4 v7, 0x4

    aput-byte v7, v2, v6

    const/16 v6, 0x19

    const/4 v7, 0x7

    aput-byte v7, v2, v6

    const/16 v6, 0x1a

    const/4 v7, 0x6

    aput-byte v7, v2, v6

    const/16 v6, 0x1b

    const/4 v7, 0x4

    aput-byte v7, v2, v6

    const/16 v6, 0x1c

    const/4 v7, 0x6

    aput-byte v7, v2, v6

    const/16 v6, 0x1d

    const/4 v7, 0x5

    aput-byte v7, v2, v6

    const/16 v6, 0x1e

    .line 163
    const/4 v7, 0x3

    aput-byte v7, v2, v6

    const/16 v6, 0x20

    const/4 v7, 0x1

    aput-byte v7, v2, v6

    const/16 v6, 0x21

    const/4 v7, 0x3

    aput-byte v7, v2, v6

    const/16 v6, 0x22

    const/4 v7, 0x1

    aput-byte v7, v2, v6

    const/16 v6, 0x23

    const/4 v7, 0x2

    aput-byte v7, v2, v6

    .line 174
    .local v2, "indices":[B
    array-length v6, v5

    mul-int/lit8 v6, v6, 0x4

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 175
    .local v4, "vbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 176
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v6

    iput-object v6, p0, Lcom/gp/monolith/Cube;->mVertexBuffer:Ljava/nio/IntBuffer;

    .line 177
    iget-object v6, p0, Lcom/gp/monolith/Cube;->mVertexBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v6, v5}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 178
    iget-object v6, p0, Lcom/gp/monolith/Cube;->mVertexBuffer:Ljava/nio/IntBuffer;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 180
    array-length v6, v1

    mul-int/lit8 v6, v6, 0x4

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 181
    .local v0, "cbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 182
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v6

    iput-object v6, p0, Lcom/gp/monolith/Cube;->mColorBuffer:Ljava/nio/IntBuffer;

    .line 183
    iget-object v6, p0, Lcom/gp/monolith/Cube;->mColorBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v6, v1}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 184
    iget-object v6, p0, Lcom/gp/monolith/Cube;->mColorBuffer:Ljava/nio/IntBuffer;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 186
    array-length v6, v2

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    iput-object v6, p0, Lcom/gp/monolith/Cube;->mIndexBuffer:Ljava/nio/ByteBuffer;

    .line 187
    iget-object v6, p0, Lcom/gp/monolith/Cube;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 188
    iget-object v6, p0, Lcom/gp/monolith/Cube;->mIndexBuffer:Ljava/nio/ByteBuffer;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 189
    return-void
.end method


# virtual methods
.method public draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/16 v4, 0x140c

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 200
    const/16 v0, 0x900

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    .line 201
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/gp/monolith/Cube;->mVertexBuffer:Ljava/nio/IntBuffer;

    invoke-interface {p1, v0, v4, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 202
    iget-object v0, p0, Lcom/gp/monolith/Cube;->mColorBuffer:Ljava/nio/IntBuffer;

    invoke-interface {p1, v3, v4, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    .line 203
    iget v0, p0, Lcom/gp/monolith/Cube;->xpos:F

    iget v1, p0, Lcom/gp/monolith/Cube;->ypos:F

    iget v2, p0, Lcom/gp/monolith/Cube;->zpos:F

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 204
    const/16 v0, 0x24

    const/16 v1, 0x1401

    iget-object v2, p0, Lcom/gp/monolith/Cube;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v3, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 206
    return-void
.end method

.method public draw(Ljavax/microedition/khronos/opengles/GL10;F)V
    .locals 5
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "scale"    # F

    .prologue
    const/16 v4, 0x140c

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 209
    const/16 v0, 0x900

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    .line 210
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/gp/monolith/Cube;->mVertexBuffer:Ljava/nio/IntBuffer;

    invoke-interface {p1, v0, v4, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 211
    iget-object v0, p0, Lcom/gp/monolith/Cube;->mColorBuffer:Ljava/nio/IntBuffer;

    invoke-interface {p1, v3, v4, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    .line 212
    iget v0, p0, Lcom/gp/monolith/Cube;->xpos:F

    iget v1, p0, Lcom/gp/monolith/Cube;->ypos:F

    iget v2, p0, Lcom/gp/monolith/Cube;->zpos:F

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 213
    invoke-interface {p1, p2, p2, p2}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 214
    const/16 v0, 0x24

    const/16 v1, 0x1401

    iget-object v2, p0, Lcom/gp/monolith/Cube;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v3, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 215
    return-void
.end method

.method public draw(Ljavax/microedition/khronos/opengles/GL10;FFF)V
    .locals 5
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "scalex"    # F
    .param p3, "scaley"    # F
    .param p4, "scalez"    # F

    .prologue
    const/16 v4, 0x140c

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 218
    const/16 v0, 0x900

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    .line 219
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/gp/monolith/Cube;->mVertexBuffer:Ljava/nio/IntBuffer;

    invoke-interface {p1, v0, v4, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 220
    iget-object v0, p0, Lcom/gp/monolith/Cube;->mColorBuffer:Ljava/nio/IntBuffer;

    invoke-interface {p1, v3, v4, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    .line 221
    iget v0, p0, Lcom/gp/monolith/Cube;->xpos:F

    iget v1, p0, Lcom/gp/monolith/Cube;->ypos:F

    iget v2, p0, Lcom/gp/monolith/Cube;->zpos:F

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 222
    invoke-interface {p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 223
    const/16 v0, 0x24

    const/16 v1, 0x1401

    iget-object v2, p0, Lcom/gp/monolith/Cube;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v3, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 224
    return-void
.end method

.method public setPosition(FFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 194
    iput p1, p0, Lcom/gp/monolith/Cube;->xpos:F

    .line 195
    iput p2, p0, Lcom/gp/monolith/Cube;->ypos:F

    .line 196
    iput p3, p0, Lcom/gp/monolith/Cube;->zpos:F

    .line 197
    return-void
.end method
