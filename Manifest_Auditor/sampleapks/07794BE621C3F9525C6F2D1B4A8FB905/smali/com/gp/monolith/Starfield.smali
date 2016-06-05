.class public Lcom/gp/monolith/Starfield;
.super Ljava/lang/Object;
.source "Starfield.java"


# instance fields
.field private mColorBuffer:Ljava/nio/IntBuffer;

.field private mVertexBuffer:Ljava/nio/IntBuffer;

.field private numstars:I


# direct methods
.method public constructor <init>(IF)V
    .locals 18
    .param p1, "numstars"    # I
    .param p2, "radius"    # F

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/gp/monolith/Starfield;->numstars:I

    .line 16
    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    .line 18
    .local v7, "random":Ljava/util/Random;
    mul-int/lit8 v14, p1, 0x3

    new-array v10, v14, [I

    .line 19
    .local v10, "vertices":[I
    mul-int/lit8 v14, p1, 0x4

    new-array v4, v14, [I

    .line 20
    .local v4, "colors":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    move v0, v5

    move/from16 v1, p1

    if-lt v0, v1, :cond_0

    .line 38
    array-length v14, v10

    mul-int/lit8 v14, v14, 0x4

    invoke-static {v14}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 39
    .local v9, "vbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 40
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/gp/monolith/Starfield;->mVertexBuffer:Ljava/nio/IntBuffer;

    .line 41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/Starfield;->mVertexBuffer:Ljava/nio/IntBuffer;

    move-object v14, v0

    invoke-virtual {v14, v10}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/Starfield;->mVertexBuffer:Ljava/nio/IntBuffer;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 44
    array-length v14, v4

    mul-int/lit8 v14, v14, 0x4

    invoke-static {v14}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 45
    .local v2, "cbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 46
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/gp/monolith/Starfield;->mColorBuffer:Ljava/nio/IntBuffer;

    .line 47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/Starfield;->mColorBuffer:Ljava/nio/IntBuffer;

    move-object v14, v0

    invoke-virtual {v14, v4}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/Starfield;->mColorBuffer:Ljava/nio/IntBuffer;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 49
    return-void

    .line 22
    .end local v2    # "cbb":Ljava/nio/ByteBuffer;
    .end local v9    # "vbb":Ljava/nio/ByteBuffer;
    :cond_0
    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v14

    const/high16 v15, 0x43b40000    # 360.0f

    mul-float v8, v14, v15

    .line 23
    .local v8, "theta":F
    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v14

    const/high16 v15, 0x43b40000    # 360.0f

    mul-float v6, v14, v15

    .line 24
    .local v6, "phi":F
    float-to-double v14, v6

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    move v0, v8

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    double-to-float v14, v14

    mul-float v11, p2, v14

    .line 25
    .local v11, "xpos":F
    float-to-double v14, v6

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    move v0, v8

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    double-to-float v14, v14

    mul-float v12, p2, v14

    .line 26
    .local v12, "ypos":F
    float-to-double v14, v6

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    double-to-float v14, v14

    mul-float v13, p2, v14

    .line 27
    .local v13, "zpos":F
    mul-int/lit8 v14, v5, 0x3

    invoke-static {v11}, Lcom/gp/util/FixedPointFloat;->floatToFixedPoint(F)I

    move-result v15

    aput v15, v10, v14

    .line 28
    mul-int/lit8 v14, v5, 0x3

    add-int/lit8 v14, v14, 0x1

    invoke-static {v12}, Lcom/gp/util/FixedPointFloat;->floatToFixedPoint(F)I

    move-result v15

    aput v15, v10, v14

    .line 29
    mul-int/lit8 v14, v5, 0x3

    add-int/lit8 v14, v14, 0x2

    invoke-static {v13}, Lcom/gp/util/FixedPointFloat;->floatToFixedPoint(F)I

    move-result v15

    aput v15, v10, v14

    .line 30
    invoke-virtual {v7}, Ljava/util/Random;->nextInt()I

    move-result v3

    .line 33
    .local v3, "color":I
    mul-int/lit8 v14, v5, 0x3

    aput v3, v4, v14

    .line 34
    mul-int/lit8 v14, v5, 0x3

    add-int/lit8 v14, v14, 0x1

    aput v3, v4, v14

    .line 35
    mul-int/lit8 v14, v5, 0x3

    add-int/lit8 v14, v14, 0x2

    aput v3, v4, v14

    .line 36
    mul-int/lit8 v14, v5, 0x3

    add-int/lit8 v14, v14, 0x3

    aput v3, v4, v14

    .line 20
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public draw(Ljavax/microedition/khronos/opengles/GL10;FF)V
    .locals 5
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "zpos"    # F
    .param p3, "yang"    # F

    .prologue
    const/16 v4, 0x140c

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 53
    const/16 v0, 0x900

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    .line 55
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/gp/monolith/Starfield;->mVertexBuffer:Ljava/nio/IntBuffer;

    invoke-interface {p1, v0, v4, v3, v1}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 56
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/gp/monolith/Starfield;->mColorBuffer:Ljava/nio/IntBuffer;

    invoke-interface {p1, v0, v4, v3, v1}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    .line 57
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p1, p3, v2, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 58
    invoke-interface {p1, v2, v2, p2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 60
    iget v0, p0, Lcom/gp/monolith/Starfield;->numstars:I

    invoke-interface {p1, v3, v3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 61
    return-void
.end method
