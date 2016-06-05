.class public Lcom/gp/monolith/Square;
.super Ljava/lang/Object;
.source "Square.java"


# instance fields
.field private mColorBuffer:Ljava/nio/IntBuffer;

.field private mIndexBuffer:Ljava/nio/ByteBuffer;

.field private mTextureBuffer:Ljava/nio/IntBuffer;

.field private mVertexBuffer:Ljava/nio/IntBuffer;

.field private textureid:I

.field private textures:Lcom/gp/monolith/GLTextures;

.field private xpos:F

.field private ypos:F

.field private zpos:F


# direct methods
.method public constructor <init>()V
    .locals 15

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x1

    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/high16 v3, 0x10000

    .line 17
    .local v3, "one":I
    const/16 v8, 0x8

    new-array v5, v8, [I

    .line 20
    aput v3, v5, v10

    aput v3, v5, v11

    aput v3, v5, v13

    const/4 v8, 0x7

    aput v3, v5, v8

    .line 23
    .local v5, "texCoords":[I
    const/16 v8, 0xc

    new-array v7, v8, [I

    .line 24
    neg-int v8, v3

    aput v8, v7, v10

    neg-int v8, v3

    aput v8, v7, v12

    aput v3, v7, v11

    aput v3, v7, v13

    neg-int v8, v3

    aput v8, v7, v14

    const/4 v8, 0x5

    aput v3, v7, v8

    const/4 v8, 0x6

    .line 25
    neg-int v9, v3

    aput v9, v7, v8

    const/4 v8, 0x7

    aput v3, v7, v8

    const/16 v8, 0x8

    aput v3, v7, v8

    const/16 v8, 0x9

    aput v3, v7, v8

    const/16 v8, 0xa

    aput v3, v7, v8

    const/16 v8, 0xb

    aput v3, v7, v8

    .line 30
    .local v7, "vertices":[I
    const/16 v8, 0x10

    new-array v1, v8, [I

    .line 31
    aput v3, v1, v10

    aput v3, v1, v12

    aput v3, v1, v11

    aput v3, v1, v13

    .line 32
    aput v3, v1, v14

    const/4 v8, 0x5

    aput v3, v1, v8

    const/4 v8, 0x6

    aput v3, v1, v8

    const/4 v8, 0x7

    aput v3, v1, v8

    const/16 v8, 0x8

    .line 33
    aput v3, v1, v8

    const/16 v8, 0x9

    aput v3, v1, v8

    const/16 v8, 0xa

    aput v3, v1, v8

    const/16 v8, 0xb

    aput v3, v1, v8

    const/16 v8, 0xc

    .line 34
    aput v3, v1, v8

    const/16 v8, 0xd

    aput v3, v1, v8

    const/16 v8, 0xe

    aput v3, v1, v8

    const/16 v8, 0xf

    aput v3, v1, v8

    .line 38
    .local v1, "colors":[I
    const/4 v8, 0x6

    new-array v2, v8, [B

    .line 39
    aput-byte v12, v2, v12

    aput-byte v11, v2, v11

    aput-byte v12, v2, v13

    aput-byte v11, v2, v14

    const/4 v8, 0x5

    aput-byte v13, v2, v8

    .line 50
    .local v2, "indices":[B
    array-length v8, v7

    mul-int/lit8 v8, v8, 0x4

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 51
    .local v6, "vbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 52
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v8

    iput-object v8, p0, Lcom/gp/monolith/Square;->mVertexBuffer:Ljava/nio/IntBuffer;

    .line 53
    iget-object v8, p0, Lcom/gp/monolith/Square;->mVertexBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v8, v7}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 54
    iget-object v8, p0, Lcom/gp/monolith/Square;->mVertexBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v8, v10}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 56
    array-length v8, v1

    mul-int/lit8 v8, v8, 0x4

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 57
    .local v0, "cbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 58
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v8

    iput-object v8, p0, Lcom/gp/monolith/Square;->mColorBuffer:Ljava/nio/IntBuffer;

    .line 59
    iget-object v8, p0, Lcom/gp/monolith/Square;->mColorBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v8, v1}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 60
    iget-object v8, p0, Lcom/gp/monolith/Square;->mColorBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v8, v10}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 62
    array-length v8, v2

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    iput-object v8, p0, Lcom/gp/monolith/Square;->mIndexBuffer:Ljava/nio/ByteBuffer;

    .line 63
    iget-object v8, p0, Lcom/gp/monolith/Square;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 64
    iget-object v8, p0, Lcom/gp/monolith/Square;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 66
    array-length v8, v5

    mul-int/lit8 v8, v8, 0x4

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 67
    .local v4, "tbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 68
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v8

    iput-object v8, p0, Lcom/gp/monolith/Square;->mTextureBuffer:Ljava/nio/IntBuffer;

    .line 69
    iget-object v8, p0, Lcom/gp/monolith/Square;->mTextureBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v8, v5}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 70
    iget-object v8, p0, Lcom/gp/monolith/Square;->mTextureBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v8, v10}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 72
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 10
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I
    .param p4, "a"    # I

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/high16 v3, 0x10000

    .line 77
    .local v3, "one":I
    const/16 v8, 0x8

    new-array v5, v8, [I

    const/4 v8, 0x0

    .line 79
    aput v3, v5, v8

    const/4 v8, 0x1

    aput v3, v5, v8

    const/4 v8, 0x2

    .line 80
    aput v3, v5, v8

    const/4 v8, 0x7

    .line 82
    aput v3, v5, v8

    .line 84
    .local v5, "texCoords":[I
    const/16 v8, 0xc

    new-array v7, v8, [I

    const/4 v8, 0x0

    .line 85
    neg-int v9, v3

    aput v9, v7, v8

    const/4 v8, 0x1

    neg-int v9, v3

    aput v9, v7, v8

    const/4 v8, 0x2

    aput v3, v7, v8

    const/4 v8, 0x3

    .line 86
    neg-int v9, v3

    aput v9, v7, v8

    const/4 v8, 0x4

    aput v3, v7, v8

    const/4 v8, 0x5

    aput v3, v7, v8

    const/4 v8, 0x6

    .line 87
    aput v3, v7, v8

    const/4 v8, 0x7

    aput v3, v7, v8

    const/16 v8, 0x8

    aput v3, v7, v8

    const/16 v8, 0x9

    .line 88
    aput v3, v7, v8

    const/16 v8, 0xa

    neg-int v9, v3

    aput v9, v7, v8

    const/16 v8, 0xb

    aput v3, v7, v8

    .line 92
    .local v7, "vertices":[I
    const/16 v8, 0x10

    new-array v1, v8, [I

    const/4 v8, 0x0

    .line 93
    aput p1, v1, v8

    const/4 v8, 0x1

    aput p2, v1, v8

    const/4 v8, 0x2

    aput p3, v1, v8

    const/4 v8, 0x3

    aput p4, v1, v8

    const/4 v8, 0x4

    .line 94
    shr-int/lit8 v9, p1, 0x1

    aput v9, v1, v8

    const/4 v8, 0x5

    shr-int/lit8 v9, p2, 0x1

    aput v9, v1, v8

    const/4 v8, 0x6

    shr-int/lit8 v9, p3, 0x1

    aput v9, v1, v8

    const/4 v8, 0x7

    aput p4, v1, v8

    const/16 v8, 0x8

    .line 95
    shr-int/lit8 v9, p1, 0x2

    aput v9, v1, v8

    const/16 v8, 0x9

    shr-int/lit8 v9, p2, 0x2

    aput v9, v1, v8

    const/16 v8, 0xa

    shr-int/lit8 v9, p3, 0x2

    aput v9, v1, v8

    const/16 v8, 0xb

    aput p4, v1, v8

    const/16 v8, 0xc

    .line 96
    aput p1, v1, v8

    const/16 v8, 0xd

    aput p2, v1, v8

    const/16 v8, 0xe

    aput p3, v1, v8

    const/16 v8, 0xf

    aput p4, v1, v8

    .line 100
    .local v1, "colors":[I
    const/4 v8, 0x6

    new-array v2, v8, [B

    const/4 v8, 0x0

    .line 101
    const/4 v9, 0x1

    aput-byte v9, v2, v8

    const/4 v8, 0x1

    const/4 v9, 0x3

    aput-byte v9, v2, v8

    const/4 v8, 0x3

    const/4 v9, 0x1

    aput-byte v9, v2, v8

    const/4 v8, 0x4

    const/4 v9, 0x2

    aput-byte v9, v2, v8

    const/4 v8, 0x5

    const/4 v9, 0x3

    aput-byte v9, v2, v8

    .line 114
    .local v2, "indices":[B
    array-length v8, v7

    mul-int/lit8 v8, v8, 0x4

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 115
    .local v6, "vbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 116
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v8

    iput-object v8, p0, Lcom/gp/monolith/Square;->mVertexBuffer:Ljava/nio/IntBuffer;

    .line 117
    iget-object v8, p0, Lcom/gp/monolith/Square;->mVertexBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v8, v7}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 118
    iget-object v8, p0, Lcom/gp/monolith/Square;->mVertexBuffer:Ljava/nio/IntBuffer;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 120
    array-length v8, v1

    mul-int/lit8 v8, v8, 0x4

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 121
    .local v0, "cbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 122
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v8

    iput-object v8, p0, Lcom/gp/monolith/Square;->mColorBuffer:Ljava/nio/IntBuffer;

    .line 123
    iget-object v8, p0, Lcom/gp/monolith/Square;->mColorBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v8, v1}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 124
    iget-object v8, p0, Lcom/gp/monolith/Square;->mColorBuffer:Ljava/nio/IntBuffer;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 126
    array-length v8, v2

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    iput-object v8, p0, Lcom/gp/monolith/Square;->mIndexBuffer:Ljava/nio/ByteBuffer;

    .line 127
    iget-object v8, p0, Lcom/gp/monolith/Square;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 128
    iget-object v8, p0, Lcom/gp/monolith/Square;->mIndexBuffer:Ljava/nio/ByteBuffer;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 130
    array-length v8, v5

    mul-int/lit8 v8, v8, 0x4

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 131
    .local v4, "tbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 132
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v8

    iput-object v8, p0, Lcom/gp/monolith/Square;->mTextureBuffer:Ljava/nio/IntBuffer;

    .line 133
    iget-object v8, p0, Lcom/gp/monolith/Square;->mTextureBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v8, v5}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 134
    iget-object v8, p0, Lcom/gp/monolith/Square;->mTextureBuffer:Ljava/nio/IntBuffer;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 135
    return-void
.end method

.method public constructor <init>(IIIIZ)V
    .locals 10
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I
    .param p4, "a"    # I
    .param p5, "color"    # Z

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    const/high16 v3, 0x10000

    .line 142
    .local v3, "one":I
    const/16 v8, 0x8

    new-array v5, v8, [I

    const/4 v8, 0x1

    .line 144
    aput v3, v5, v8

    const/4 v8, 0x2

    aput v3, v5, v8

    const/4 v8, 0x3

    aput v3, v5, v8

    const/4 v8, 0x6

    aput v3, v5, v8

    .line 146
    .local v5, "texCoords":[I
    const/16 v8, 0xc

    new-array v7, v8, [I

    const/4 v8, 0x0

    .line 147
    neg-int v9, v3

    aput v9, v7, v8

    const/4 v8, 0x1

    neg-int v9, v3

    aput v9, v7, v8

    const/4 v8, 0x2

    aput v3, v7, v8

    const/4 v8, 0x3

    aput v3, v7, v8

    const/4 v8, 0x4

    neg-int v9, v3

    aput v9, v7, v8

    const/4 v8, 0x5

    aput v3, v7, v8

    const/4 v8, 0x6

    .line 148
    neg-int v9, v3

    aput v9, v7, v8

    const/4 v8, 0x7

    aput v3, v7, v8

    const/16 v8, 0x8

    aput v3, v7, v8

    const/16 v8, 0x9

    aput v3, v7, v8

    const/16 v8, 0xa

    aput v3, v7, v8

    const/16 v8, 0xb

    aput v3, v7, v8

    .line 154
    .local v7, "vertices":[I
    const/16 v8, 0x10

    new-array v1, v8, [I

    const/4 v8, 0x0

    .line 155
    aput p1, v1, v8

    const/4 v8, 0x1

    aput p2, v1, v8

    const/4 v8, 0x2

    aput p3, v1, v8

    const/4 v8, 0x3

    aput p4, v1, v8

    const/4 v8, 0x4

    .line 156
    aput p1, v1, v8

    const/4 v8, 0x5

    aput p2, v1, v8

    const/4 v8, 0x6

    aput p3, v1, v8

    const/4 v8, 0x7

    aput p4, v1, v8

    const/16 v8, 0x8

    .line 157
    aput p1, v1, v8

    const/16 v8, 0x9

    aput p2, v1, v8

    const/16 v8, 0xa

    aput p3, v1, v8

    const/16 v8, 0xb

    aput p4, v1, v8

    const/16 v8, 0xc

    .line 158
    aput p1, v1, v8

    const/16 v8, 0xd

    aput p2, v1, v8

    const/16 v8, 0xe

    aput p3, v1, v8

    const/16 v8, 0xf

    aput p4, v1, v8

    .line 162
    .local v1, "colors":[I
    const/4 v8, 0x6

    new-array v2, v8, [B

    const/4 v8, 0x1

    .line 163
    const/4 v9, 0x1

    aput-byte v9, v2, v8

    const/4 v8, 0x2

    const/4 v9, 0x2

    aput-byte v9, v2, v8

    const/4 v8, 0x3

    const/4 v9, 0x2

    aput-byte v9, v2, v8

    const/4 v8, 0x4

    const/4 v9, 0x1

    aput-byte v9, v2, v8

    const/4 v8, 0x5

    const/4 v9, 0x3

    aput-byte v9, v2, v8

    .line 174
    .local v2, "indices":[B
    array-length v8, v7

    mul-int/lit8 v8, v8, 0x4

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 175
    .local v6, "vbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 176
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v8

    iput-object v8, p0, Lcom/gp/monolith/Square;->mVertexBuffer:Ljava/nio/IntBuffer;

    .line 177
    iget-object v8, p0, Lcom/gp/monolith/Square;->mVertexBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v8, v7}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 178
    iget-object v8, p0, Lcom/gp/monolith/Square;->mVertexBuffer:Ljava/nio/IntBuffer;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 180
    array-length v8, v1

    mul-int/lit8 v8, v8, 0x4

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 181
    .local v0, "cbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 182
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v8

    iput-object v8, p0, Lcom/gp/monolith/Square;->mColorBuffer:Ljava/nio/IntBuffer;

    .line 183
    iget-object v8, p0, Lcom/gp/monolith/Square;->mColorBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v8, v1}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 184
    iget-object v8, p0, Lcom/gp/monolith/Square;->mColorBuffer:Ljava/nio/IntBuffer;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 186
    array-length v8, v2

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    iput-object v8, p0, Lcom/gp/monolith/Square;->mIndexBuffer:Ljava/nio/ByteBuffer;

    .line 187
    iget-object v8, p0, Lcom/gp/monolith/Square;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 188
    iget-object v8, p0, Lcom/gp/monolith/Square;->mIndexBuffer:Ljava/nio/ByteBuffer;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 190
    array-length v8, v5

    mul-int/lit8 v8, v8, 0x4

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 191
    .local v4, "tbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 192
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v8

    iput-object v8, p0, Lcom/gp/monolith/Square;->mTextureBuffer:Ljava/nio/IntBuffer;

    .line 193
    iget-object v8, p0, Lcom/gp/monolith/Square;->mTextureBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v8, v5}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 194
    iget-object v8, p0, Lcom/gp/monolith/Square;->mTextureBuffer:Ljava/nio/IntBuffer;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 196
    return-void
.end method

.method public constructor <init>(IIIIZZ)V
    .locals 10
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I
    .param p4, "a"    # I
    .param p5, "color"    # Z
    .param p6, "horizontal"    # Z

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    const/high16 v3, 0x10000

    .line 202
    .local v3, "one":I
    const/16 v8, 0x8

    new-array v5, v8, [I

    const/4 v8, 0x1

    .line 204
    aput v3, v5, v8

    const/4 v8, 0x2

    aput v3, v5, v8

    const/4 v8, 0x3

    aput v3, v5, v8

    const/4 v8, 0x6

    aput v3, v5, v8

    .line 206
    .local v5, "texCoords":[I
    const/16 v8, 0xc

    new-array v7, v8, [I

    const/4 v8, 0x0

    .line 207
    neg-int v9, v3

    aput v9, v7, v8

    const/4 v8, 0x2

    neg-int v9, v3

    aput v9, v7, v8

    const/4 v8, 0x3

    .line 208
    aput v3, v7, v8

    const/4 v8, 0x5

    neg-int v9, v3

    aput v9, v7, v8

    const/4 v8, 0x6

    .line 209
    neg-int v9, v3

    aput v9, v7, v8

    const/16 v8, 0x8

    aput v3, v7, v8

    const/16 v8, 0x9

    .line 210
    aput v3, v7, v8

    const/16 v8, 0xb

    aput v3, v7, v8

    .line 212
    .local v7, "vertices":[I
    const/16 v8, 0x10

    new-array v1, v8, [I

    const/4 v8, 0x0

    .line 213
    aput p1, v1, v8

    const/4 v8, 0x1

    aput p2, v1, v8

    const/4 v8, 0x2

    aput p3, v1, v8

    const/4 v8, 0x3

    aput p4, v1, v8

    const/4 v8, 0x4

    .line 214
    aput p1, v1, v8

    const/4 v8, 0x5

    aput p2, v1, v8

    const/4 v8, 0x6

    aput p3, v1, v8

    const/4 v8, 0x7

    aput p4, v1, v8

    const/16 v8, 0x8

    .line 215
    aput p1, v1, v8

    const/16 v8, 0x9

    aput p2, v1, v8

    const/16 v8, 0xa

    aput p3, v1, v8

    const/16 v8, 0xb

    aput p4, v1, v8

    const/16 v8, 0xc

    .line 216
    aput p1, v1, v8

    const/16 v8, 0xd

    aput p2, v1, v8

    const/16 v8, 0xe

    aput p3, v1, v8

    const/16 v8, 0xf

    aput p4, v1, v8

    .line 220
    .local v1, "colors":[I
    const/4 v8, 0x6

    new-array v2, v8, [B

    const/4 v8, 0x1

    .line 221
    const/4 v9, 0x1

    aput-byte v9, v2, v8

    const/4 v8, 0x2

    const/4 v9, 0x2

    aput-byte v9, v2, v8

    const/4 v8, 0x3

    const/4 v9, 0x2

    aput-byte v9, v2, v8

    const/4 v8, 0x4

    const/4 v9, 0x1

    aput-byte v9, v2, v8

    const/4 v8, 0x5

    const/4 v9, 0x3

    aput-byte v9, v2, v8

    .line 232
    .local v2, "indices":[B
    array-length v8, v7

    mul-int/lit8 v8, v8, 0x4

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 233
    .local v6, "vbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 234
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v8

    iput-object v8, p0, Lcom/gp/monolith/Square;->mVertexBuffer:Ljava/nio/IntBuffer;

    .line 235
    iget-object v8, p0, Lcom/gp/monolith/Square;->mVertexBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v8, v7}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 236
    iget-object v8, p0, Lcom/gp/monolith/Square;->mVertexBuffer:Ljava/nio/IntBuffer;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 238
    array-length v8, v1

    mul-int/lit8 v8, v8, 0x4

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 239
    .local v0, "cbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 240
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v8

    iput-object v8, p0, Lcom/gp/monolith/Square;->mColorBuffer:Ljava/nio/IntBuffer;

    .line 241
    iget-object v8, p0, Lcom/gp/monolith/Square;->mColorBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v8, v1}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 242
    iget-object v8, p0, Lcom/gp/monolith/Square;->mColorBuffer:Ljava/nio/IntBuffer;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 244
    array-length v8, v2

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    iput-object v8, p0, Lcom/gp/monolith/Square;->mIndexBuffer:Ljava/nio/ByteBuffer;

    .line 245
    iget-object v8, p0, Lcom/gp/monolith/Square;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 246
    iget-object v8, p0, Lcom/gp/monolith/Square;->mIndexBuffer:Ljava/nio/ByteBuffer;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 248
    array-length v8, v5

    mul-int/lit8 v8, v8, 0x4

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 249
    .local v4, "tbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 250
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v8

    iput-object v8, p0, Lcom/gp/monolith/Square;->mTextureBuffer:Ljava/nio/IntBuffer;

    .line 251
    iget-object v8, p0, Lcom/gp/monolith/Square;->mTextureBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v8, v5}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 252
    iget-object v8, p0, Lcom/gp/monolith/Square;->mTextureBuffer:Ljava/nio/IntBuffer;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 254
    return-void
.end method


# virtual methods
.method public draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/16 v5, 0x140c

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 264
    const/16 v0, 0x900

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    .line 265
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/gp/monolith/Square;->mVertexBuffer:Ljava/nio/IntBuffer;

    invoke-interface {p1, v0, v5, v3, v1}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 266
    iget-object v0, p0, Lcom/gp/monolith/Square;->mColorBuffer:Ljava/nio/IntBuffer;

    invoke-interface {p1, v4, v5, v3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    .line 267
    iget v0, p0, Lcom/gp/monolith/Square;->xpos:F

    iget v1, p0, Lcom/gp/monolith/Square;->ypos:F

    iget v2, p0, Lcom/gp/monolith/Square;->zpos:F

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 268
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/gp/monolith/Square;->mTextureBuffer:Ljava/nio/IntBuffer;

    invoke-interface {p1, v0, v5, v3, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 269
    invoke-interface {p1, v4, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 271
    return-void
.end method

.method public draw(Ljavax/microedition/khronos/opengles/GL10;F)V
    .locals 6
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "scale"    # F

    .prologue
    const/4 v5, 0x4

    const/16 v4, 0x140c

    const/4 v3, 0x0

    .line 274
    const/16 v0, 0x900

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    .line 275
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/gp/monolith/Square;->mVertexBuffer:Ljava/nio/IntBuffer;

    invoke-interface {p1, v0, v4, v3, v1}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 276
    iget-object v0, p0, Lcom/gp/monolith/Square;->mColorBuffer:Ljava/nio/IntBuffer;

    invoke-interface {p1, v5, v4, v3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    .line 277
    iget v0, p0, Lcom/gp/monolith/Square;->xpos:F

    iget v1, p0, Lcom/gp/monolith/Square;->ypos:F

    iget v2, p0, Lcom/gp/monolith/Square;->zpos:F

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 278
    invoke-interface {p1, p2, p2, p2}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 279
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/gp/monolith/Square;->mTextureBuffer:Ljava/nio/IntBuffer;

    invoke-interface {p1, v0, v4, v3, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 280
    const/4 v0, 0x6

    invoke-interface {p1, v5, v3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 281
    return-void
.end method

.method public draw(Ljavax/microedition/khronos/opengles/GL10;FFF)V
    .locals 7
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "scalex"    # F
    .param p3, "scaley"    # F
    .param p4, "scalez"    # F

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/16 v4, 0x140c

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 284
    const/16 v0, 0x900

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    .line 285
    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 286
    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 287
    iget-object v0, p0, Lcom/gp/monolith/Square;->textures:Lcom/gp/monolith/GLTextures;

    iget v1, p0, Lcom/gp/monolith/Square;->textureid:I

    invoke-virtual {v0, v1}, Lcom/gp/monolith/GLTextures;->setTexture(I)V

    .line 290
    const/16 v0, 0x302

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 291
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/gp/monolith/Square;->mVertexBuffer:Ljava/nio/IntBuffer;

    invoke-interface {p1, v0, v4, v3, v1}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 292
    invoke-interface {p1, v2, v2, v2, v2}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 293
    iget-object v0, p0, Lcom/gp/monolith/Square;->mColorBuffer:Ljava/nio/IntBuffer;

    invoke-interface {p1, v6, v4, v3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    .line 294
    invoke-interface {p1, v5, v5, v2}, Ljavax/microedition/khronos/opengles/GL10;->glNormal3f(FFF)V

    .line 295
    iget v0, p0, Lcom/gp/monolith/Square;->xpos:F

    iget v1, p0, Lcom/gp/monolith/Square;->ypos:F

    iget v2, p0, Lcom/gp/monolith/Square;->zpos:F

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 297
    invoke-interface {p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 298
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/gp/monolith/Square;->mTextureBuffer:Ljava/nio/IntBuffer;

    invoke-interface {p1, v0, v4, v3, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 300
    const/4 v0, 0x6

    const/16 v1, 0x1401

    iget-object v2, p0, Lcom/gp/monolith/Square;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v6, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 304
    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 305
    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 306
    return-void
.end method

.method public draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V
    .locals 7
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "scalex"    # F
    .param p3, "scaley"    # F
    .param p4, "scalez"    # F
    .param p5, "angle"    # F

    .prologue
    const/16 v6, 0xbe2

    const/4 v5, 0x0

    const/16 v4, 0x140c

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 310
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 311
    const/16 v0, 0x901

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    .line 312
    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 313
    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 314
    iget-object v0, p0, Lcom/gp/monolith/Square;->textures:Lcom/gp/monolith/GLTextures;

    iget v1, p0, Lcom/gp/monolith/Square;->textureid:I

    invoke-virtual {v0, v1}, Lcom/gp/monolith/GLTextures;->setTexture(I)V

    .line 316
    const/16 v0, 0xb44

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 317
    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 318
    const/16 v0, 0x302

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 319
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/gp/monolith/Square;->mVertexBuffer:Ljava/nio/IntBuffer;

    invoke-interface {p1, v0, v4, v3, v1}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 320
    invoke-interface {p1, v2, v2, v2, v2}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 321
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/gp/monolith/Square;->mColorBuffer:Ljava/nio/IntBuffer;

    invoke-interface {p1, v0, v4, v3, v1}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    .line 322
    invoke-interface {p1, v5, v5, v2}, Ljavax/microedition/khronos/opengles/GL10;->glNormal3f(FFF)V

    .line 324
    iget v0, p0, Lcom/gp/monolith/Square;->xpos:F

    iget v1, p0, Lcom/gp/monolith/Square;->ypos:F

    iget v2, p0, Lcom/gp/monolith/Square;->zpos:F

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 325
    invoke-interface {p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 327
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/gp/monolith/Square;->mTextureBuffer:Ljava/nio/IntBuffer;

    invoke-interface {p1, v0, v4, v3, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 328
    const/16 v0, 0x2300

    const/16 v1, 0x2200

    .line 330
    const/high16 v2, 0x46040000    # 8448.0f

    .line 328
    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 336
    const/4 v0, 0x5

    const/4 v1, 0x6

    invoke-interface {p1, v0, v3, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 337
    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 338
    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 339
    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 341
    const/16 v0, 0xb71

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 343
    return-void
.end method

.method public setPosition(FFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 258
    iput p1, p0, Lcom/gp/monolith/Square;->xpos:F

    .line 259
    iput p2, p0, Lcom/gp/monolith/Square;->ypos:F

    .line 260
    iput p3, p0, Lcom/gp/monolith/Square;->zpos:F

    .line 261
    return-void
.end method

.method public setTextureId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 353
    iput p1, p0, Lcom/gp/monolith/Square;->textureid:I

    .line 354
    return-void
.end method

.method public setTextures(Lcom/gp/monolith/GLTextures;)V
    .locals 0
    .param p1, "textures"    # Lcom/gp/monolith/GLTextures;

    .prologue
    .line 349
    iput-object p1, p0, Lcom/gp/monolith/Square;->textures:Lcom/gp/monolith/GLTextures;

    .line 350
    return-void
.end method
