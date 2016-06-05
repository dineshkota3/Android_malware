.class public Lcom/masshabit/common/LevelLoader;
.super Ljava/lang/Object;
.source "LevelLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/masshabit/common/LevelLoader$MinBounds;
    }
.end annotation


# static fields
.field public static final MATRIX_DEFINITION:Ljava/util/regex/Pattern;

.field public static final TAG:Ljava/lang/String; = "LevelLoader"


# instance fields
.field protected mFactory:Lcom/masshabit/common/entity/IEntityFactory;

.field protected mLevel:Lcom/masshabit/common/Level;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    const-string v0, "matrix\\((.*)\\)"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/masshabit/common/LevelLoader;->MATRIX_DEFINITION:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/masshabit/common/Level;Lcom/masshabit/common/entity/IEntityFactory;)V
    .locals 0
    .param p1, "level"    # Lcom/masshabit/common/Level;
    .param p2, "factory"    # Lcom/masshabit/common/entity/IEntityFactory;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/masshabit/common/LevelLoader;->mLevel:Lcom/masshabit/common/Level;

    .line 65
    iput-object p2, p0, Lcom/masshabit/common/LevelLoader;->mFactory:Lcom/masshabit/common/entity/IEntityFactory;

    .line 66
    return-void
.end method


# virtual methods
.method protected createEntity(Lorg/w3c/dom/Element;Lcom/masshabit/common/LevelLoader$MinBounds;)Lcom/masshabit/common/entity/Entity;
    .locals 26
    .param p1, "elem"    # Lorg/w3c/dom/Element;
    .param p2, "bounds"    # Lcom/masshabit/common/LevelLoader$MinBounds;

    .prologue
    .line 354
    const-string v23, "id"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v24, "xlink:href"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v25, "onclick"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v23 .. v25}, Lcom/masshabit/common/entity/EntityProperties;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/masshabit/common/entity/EntityProperties;

    move-result-object v18

    .line 362
    .local v18, "props":Lcom/masshabit/common/entity/EntityProperties;
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v23

    const-string v24, "text"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 364
    const/high16 v10, -0x1000000

    .line 365
    .local v10, "color":I
    const-string v23, "fill"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 367
    const-string v23, "fill"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    .line 369
    :cond_0
    const/high16 v19, 0x41400000    # 12.0f

    .line 370
    .local v19, "size":F
    const-string v23, "font-size"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 372
    const-string v23, "font-size"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v19

    .line 374
    :cond_1
    new-instance v13, Lcom/masshabit/squibble/TextEntity;

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v23

    move-object v0, v13

    move-object/from16 v1, v23

    move v2, v10

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/masshabit/squibble/TextEntity;-><init>(Ljava/lang/String;IF)V

    .line 412
    .end local v10    # "color":I
    .end local v19    # "size":F
    .local v13, "entity":Lcom/masshabit/common/entity/Entity;
    :cond_2
    :goto_0
    move-object/from16 v0, v18

    move-object v1, v13

    iput-object v0, v1, Lcom/masshabit/common/entity/Entity;->mProps:Lcom/masshabit/common/entity/EntityProperties;

    .line 414
    const-string v23, "width"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_9

    const-string v23, "width"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v23

    :goto_1
    move/from16 v0, v23

    move-object v1, v13

    iput v0, v1, Lcom/masshabit/common/entity/Entity;->mWidth:F

    .line 415
    const-string v23, "height"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_a

    const-string v23, "height"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v23

    :goto_2
    move/from16 v0, v23

    move-object v1, v13

    iput v0, v1, Lcom/masshabit/common/entity/Entity;->mHeight:F

    .line 417
    const/high16 v23, 0x3f800000    # 1.0f

    move/from16 v0, v23

    move-object v1, v13

    iput v0, v1, Lcom/masshabit/common/entity/Entity;->mScaleX:F

    .line 418
    const/high16 v23, 0x3f800000    # 1.0f

    move/from16 v0, v23

    move-object v1, v13

    iput v0, v1, Lcom/masshabit/common/entity/Entity;->mScaleY:F

    .line 419
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object v1, v13

    iput v0, v1, Lcom/masshabit/common/entity/Entity;->mRadians:F

    .line 421
    const/4 v14, 0x0

    .line 424
    .local v14, "hasNoTransform":Z
    const-string v23, "transform"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 425
    .local v17, "matrixDefinition":Ljava/lang/String;
    move-object v0, v13

    iget-object v0, v0, Lcom/masshabit/common/entity/Entity;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/masshabit/common/LevelLoader;->readMatrix(Ljava/lang/String;Landroid/graphics/Matrix;)Z

    move-result v23

    if-eqz v23, :cond_b

    .line 427
    const/16 v23, 0x9

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v16, v0

    .line 428
    .local v16, "m":[F
    move-object v0, v13

    iget-object v0, v0, Lcom/masshabit/common/entity/Entity;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 430
    move-object v0, v13

    iget-object v0, v0, Lcom/masshabit/common/entity/Entity;->mPos:Lcom/masshabit/common/physics/Vector2;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget v24, v16, v24

    const/16 v25, 0x5

    aget v25, v16, v25

    invoke-virtual/range {v23 .. v25}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 432
    new-instance v4, Lcom/masshabit/common/physics/Vector2;

    const/16 v23, 0x0

    aget v23, v16, v23

    const/16 v24, 0x3

    aget v24, v16, v24

    move-object v0, v4

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/masshabit/common/physics/Vector2;-><init>(FF)V

    .line 433
    .local v4, "basisX":Lcom/masshabit/common/physics/Vector2;
    new-instance v5, Lcom/masshabit/common/physics/Vector2;

    const/16 v23, 0x1

    aget v23, v16, v23

    const/16 v24, 0x4

    aget v24, v16, v24

    move-object v0, v5

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/masshabit/common/physics/Vector2;-><init>(FF)V

    .line 435
    .local v5, "basisY":Lcom/masshabit/common/physics/Vector2;
    invoke-virtual {v4}, Lcom/masshabit/common/physics/Vector2;->length()F

    move-result v23

    invoke-virtual {v4, v5}, Lcom/masshabit/common/physics/Vector2;->cross(Lcom/masshabit/common/physics/Vector2;)F

    move-result v24

    mul-float v23, v23, v24

    move/from16 v0, v23

    move-object v1, v13

    iput v0, v1, Lcom/masshabit/common/entity/Entity;->mScaleX:F

    .line 436
    invoke-virtual {v5}, Lcom/masshabit/common/physics/Vector2;->length()F

    move-result v23

    move/from16 v0, v23

    move-object v1, v13

    iput v0, v1, Lcom/masshabit/common/entity/Entity;->mScaleY:F

    .line 438
    move-object v0, v13

    iget v0, v0, Lcom/masshabit/common/entity/Entity;->mScaleX:F

    move/from16 v23, v0

    move-object v0, v4

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/masshabit/common/physics/Vector2;->divide(F)V

    .line 439
    move-object v0, v13

    iget v0, v0, Lcom/masshabit/common/entity/Entity;->mScaleY:F

    move/from16 v23, v0

    move-object v0, v5

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/masshabit/common/physics/Vector2;->divide(F)V

    .line 441
    invoke-virtual {v4}, Lcom/masshabit/common/physics/Vector2;->angle()F

    move-result v23

    move/from16 v0, v23

    move-object v1, v13

    iput v0, v1, Lcom/masshabit/common/entity/Entity;->mRadians:F

    .line 444
    const/16 v23, 0x8

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    aput v24, v20, v23

    const/16 v23, 0x1

    const/16 v24, 0x0

    aput v24, v20, v23

    const/16 v23, 0x2

    move-object v0, v13

    iget v0, v0, Lcom/masshabit/common/entity/Entity;->mWidth:F

    move/from16 v24, v0

    aput v24, v20, v23

    const/16 v23, 0x3

    const/16 v24, 0x0

    aput v24, v20, v23

    const/16 v23, 0x4

    move-object v0, v13

    iget v0, v0, Lcom/masshabit/common/entity/Entity;->mWidth:F

    move/from16 v24, v0

    aput v24, v20, v23

    const/16 v23, 0x5

    move-object v0, v13

    iget v0, v0, Lcom/masshabit/common/entity/Entity;->mHeight:F

    move/from16 v24, v0

    aput v24, v20, v23

    const/16 v23, 0x6

    const/16 v24, 0x0

    aput v24, v20, v23

    const/16 v23, 0x7

    move-object v0, v13

    iget v0, v0, Lcom/masshabit/common/entity/Entity;->mHeight:F

    move/from16 v24, v0

    aput v24, v20, v23

    .line 450
    .local v20, "values":[F
    move-object v0, v13

    iget-object v0, v0, Lcom/masshabit/common/entity/Entity;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 451
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_3
    const/16 v23, 0x4

    move v0, v15

    move/from16 v1, v23

    if-ge v0, v1, :cond_c

    .line 453
    mul-int/lit8 v23, v15, 0x2

    aget v21, v20, v23

    .line 454
    .local v21, "x":F
    mul-int/lit8 v23, v15, 0x2

    add-int/lit8 v23, v23, 0x1

    aget v22, v20, v23

    .line 455
    .local v22, "y":F
    move-object/from16 v0, p2

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/masshabit/common/LevelLoader$MinBounds;->addChild(FF)V

    .line 451
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 376
    .end local v4    # "basisX":Lcom/masshabit/common/physics/Vector2;
    .end local v5    # "basisY":Lcom/masshabit/common/physics/Vector2;
    .end local v13    # "entity":Lcom/masshabit/common/entity/Entity;
    .end local v14    # "hasNoTransform":Z
    .end local v15    # "i":I
    .end local v16    # "m":[F
    .end local v17    # "matrixDefinition":Ljava/lang/String;
    .end local v20    # "values":[F
    .end local v21    # "x":F
    .end local v22    # "y":F
    :cond_3
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/masshabit/common/entity/EntityProperties;->type:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_5

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/masshabit/common/LevelLoader;->mFactory:Lcom/masshabit/common/entity/IEntityFactory;

    move-object/from16 v23, v0

    if-eqz v23, :cond_4

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/masshabit/common/LevelLoader;->mFactory:Lcom/masshabit/common/entity/IEntityFactory;

    move-object/from16 v23, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/masshabit/common/entity/EntityProperties;->type:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lcom/masshabit/common/entity/IEntityFactory;->create(Ljava/lang/String;Lorg/w3c/dom/Element;)Lcom/masshabit/common/entity/Entity;

    move-result-object v13

    .line 381
    .restart local v13    # "entity":Lcom/masshabit/common/entity/Entity;
    if-nez v13, :cond_2

    .line 383
    const-string v23, "LevelLoader"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Caller-provided factory failed to instantiate: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/masshabit/common/entity/EntityProperties;->type:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const/16 v23, 0x0

    .line 521
    .end local v13    # "entity":Lcom/masshabit/common/entity/Entity;
    .end local p0    # "this":Lcom/masshabit/common/LevelLoader;
    :goto_4
    return-object v23

    .line 389
    .restart local p0    # "this":Lcom/masshabit/common/LevelLoader;
    :cond_4
    const-string v23, "LevelLoader"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Custom entity creation failed, no factory provided.  Entity type: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/masshabit/common/entity/EntityProperties;->type:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const/16 v23, 0x0

    goto :goto_4

    .line 393
    :cond_5
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/masshabit/common/entity/EntityProperties;->animationFile:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_6

    .line 395
    new-instance v13, Lcom/masshabit/common/entity/AnimatedEntity;

    invoke-direct {v13}, Lcom/masshabit/common/entity/AnimatedEntity;-><init>()V

    .restart local v13    # "entity":Lcom/masshabit/common/entity/Entity;
    goto/16 :goto_0

    .line 397
    .end local v13    # "entity":Lcom/masshabit/common/entity/Entity;
    :cond_6
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v23

    const-string v24, "g"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 399
    new-instance v13, Lcom/masshabit/common/entity/Entity;

    invoke-direct {v13}, Lcom/masshabit/common/entity/Entity;-><init>()V

    .restart local v13    # "entity":Lcom/masshabit/common/entity/Entity;
    goto/16 :goto_0

    .line 401
    .end local v13    # "entity":Lcom/masshabit/common/entity/Entity;
    :cond_7
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v23

    const-string v24, "path"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_8

    .line 403
    const-string v23, "d"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/masshabit/common/curve/CurveParser;->parse(Ljava/lang/String;)Lcom/masshabit/common/curve/PolyCubicBezier;

    move-result-object v11

    .line 404
    .local v11, "curve":Lcom/masshabit/common/curve/PolyCubicBezier;
    new-instance v13, Lcom/masshabit/common/entity/PathEntity;

    invoke-direct {v13, v11}, Lcom/masshabit/common/entity/PathEntity;-><init>(Lcom/masshabit/common/curve/PolyCubicBezier;)V

    .line 405
    .restart local v13    # "entity":Lcom/masshabit/common/entity/Entity;
    goto/16 :goto_0

    .line 408
    .end local v11    # "curve":Lcom/masshabit/common/curve/PolyCubicBezier;
    .end local v13    # "entity":Lcom/masshabit/common/entity/Entity;
    :cond_8
    new-instance v13, Lcom/masshabit/common/entity/StaticEntity;

    invoke-direct {v13}, Lcom/masshabit/common/entity/StaticEntity;-><init>()V

    .restart local v13    # "entity":Lcom/masshabit/common/entity/Entity;
    goto/16 :goto_0

    .line 414
    :cond_9
    const/16 v23, 0x0

    goto/16 :goto_1

    .line 415
    :cond_a
    const/16 v23, 0x0

    goto/16 :goto_2

    .line 458
    .restart local v14    # "hasNoTransform":Z
    .restart local v17    # "matrixDefinition":Ljava/lang/String;
    :cond_b
    const-string v23, "cx"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_d

    .line 461
    const-string v23, "cx"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v21

    .line 462
    .restart local v21    # "x":F
    const-string v23, "cy"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v22

    .line 463
    .restart local v22    # "y":F
    move-object v0, v13

    iget-object v0, v0, Lcom/masshabit/common/entity/Entity;->mPos:Lcom/masshabit/common/physics/Vector2;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 464
    move-object v0, v13

    iget-object v0, v0, Lcom/masshabit/common/entity/Entity;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 467
    move-object/from16 v0, p2

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/masshabit/common/LevelLoader$MinBounds;->addChild(FF)V

    .line 482
    .end local v21    # "x":F
    .end local v22    # "y":F
    :cond_c
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/masshabit/common/LevelLoader;->mLevel:Lcom/masshabit/common/Level;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/masshabit/common/Level;->mEntities:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    move-object v1, v13

    iput v0, v1, Lcom/masshabit/common/entity/Entity;->mUid:I

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/masshabit/common/LevelLoader;->mLevel:Lcom/masshabit/common/Level;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/masshabit/common/Level;->mEntities:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 487
    .local v9, "children":Lorg/w3c/dom/NodeList;
    new-instance v12, Ljava/util/ArrayList;

    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v23

    move-object v0, v12

    move/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 489
    .local v12, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/masshabit/common/entity/Entity;>;"
    new-instance v7, Lcom/masshabit/common/LevelLoader$MinBounds;

    move-object v0, v7

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/masshabit/common/LevelLoader$MinBounds;-><init>(Lcom/masshabit/common/LevelLoader;)V

    .line 491
    .local v7, "childBounds":Lcom/masshabit/common/LevelLoader$MinBounds;
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_6
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v23

    move v0, v15

    move/from16 v1, v23

    if-ge v0, v1, :cond_10

    .line 493
    invoke-interface {v9, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 494
    .local v6, "child":Lorg/w3c/dom/Node;
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v23

    const-string v24, "#text"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_f

    .line 496
    move-object v0, v6

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v8, v0

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/masshabit/common/LevelLoader;->createEntity(Lorg/w3c/dom/Element;Lcom/masshabit/common/LevelLoader$MinBounds;)Lcom/masshabit/common/entity/Entity;

    move-result-object v8

    .line 497
    .local v8, "childEntity":Lcom/masshabit/common/entity/Entity;
    if-nez v8, :cond_e

    .line 499
    const/16 v23, 0x0

    goto/16 :goto_4

    .line 472
    .end local v6    # "child":Lorg/w3c/dom/Node;
    .end local v7    # "childBounds":Lcom/masshabit/common/LevelLoader$MinBounds;
    .end local v8    # "childEntity":Lcom/masshabit/common/entity/Entity;
    .end local v9    # "children":Lorg/w3c/dom/NodeList;
    .end local v12    # "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/masshabit/common/entity/Entity;>;"
    .end local v15    # "i":I
    :cond_d
    move-object v0, v13

    iget-object v0, v0, Lcom/masshabit/common/entity/Entity;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Matrix;->reset()V

    .line 473
    move-object v0, v13

    iget-object v0, v0, Lcom/masshabit/common/entity/Entity;->mPos:Lcom/masshabit/common/physics/Vector2;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 476
    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/masshabit/common/LevelLoader$MinBounds;->addChild(FF)V

    .line 478
    const/4 v14, 0x1

    goto/16 :goto_5

    .line 502
    .restart local v6    # "child":Lorg/w3c/dom/Node;
    .restart local v7    # "childBounds":Lcom/masshabit/common/LevelLoader$MinBounds;
    .restart local v8    # "childEntity":Lcom/masshabit/common/entity/Entity;
    .restart local v9    # "children":Lorg/w3c/dom/NodeList;
    .restart local v12    # "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/masshabit/common/entity/Entity;>;"
    .restart local v15    # "i":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/masshabit/common/LevelLoader;->mLevel:Lcom/masshabit/common/Level;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/masshabit/common/Level;->mEntityIds:Ljava/util/HashMap;

    move-object/from16 v23, v0

    check-cast v6, Lorg/w3c/dom/Element;

    .end local v6    # "child":Lorg/w3c/dom/Node;
    const-string v24, "id"

    move-object v0, v6

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    .end local v8    # "childEntity":Lcom/masshabit/common/entity/Entity;
    :cond_f
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 508
    :cond_10
    move-object v0, v7

    iget v0, v0, Lcom/masshabit/common/LevelLoader$MinBounds;->left:F

    move/from16 v23, v0

    move-object v0, v7

    iget v0, v0, Lcom/masshabit/common/LevelLoader$MinBounds;->top:F

    move/from16 v24, v0

    move-object/from16 v0, p2

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/masshabit/common/LevelLoader$MinBounds;->addChild(FF)V

    .line 510
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    new-array v0, v0, [Lcom/masshabit/common/entity/Entity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object v1, v13

    iput-object v0, v1, Lcom/masshabit/common/entity/Entity;->mChildren:[Lcom/masshabit/common/entity/Entity;

    .line 511
    move-object v0, v13

    iget-object v0, v0, Lcom/masshabit/common/entity/Entity;->mChildren:[Lcom/masshabit/common/entity/Entity;

    move-object/from16 v23, v0

    move-object v0, v12

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/masshabit/common/LevelLoader;
    check-cast p0, [Lcom/masshabit/common/entity/Entity;

    move-object/from16 v0, p0

    move-object v1, v13

    iput-object v0, v1, Lcom/masshabit/common/entity/Entity;->mChildren:[Lcom/masshabit/common/entity/Entity;

    .line 515
    if-eqz v14, :cond_11

    move-object v0, v13

    iget-object v0, v0, Lcom/masshabit/common/entity/Entity;->mChildren:[Lcom/masshabit/common/entity/Entity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    if-lez v23, :cond_11

    .line 517
    move-object v0, v13

    iget-object v0, v0, Lcom/masshabit/common/entity/Entity;->mPos:Lcom/masshabit/common/physics/Vector2;

    move-object/from16 v23, v0

    move-object v0, v7

    iget v0, v0, Lcom/masshabit/common/LevelLoader$MinBounds;->left:F

    move/from16 v24, v0

    move-object v0, v7

    iget v0, v0, Lcom/masshabit/common/LevelLoader$MinBounds;->top:F

    move/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 518
    move-object v0, v13

    iget-object v0, v0, Lcom/masshabit/common/entity/Entity;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v23, v0

    move-object v0, v7

    iget v0, v0, Lcom/masshabit/common/LevelLoader$MinBounds;->left:F

    move/from16 v24, v0

    move-object v0, v7

    iget v0, v0, Lcom/masshabit/common/LevelLoader$MinBounds;->top:F

    move/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Landroid/graphics/Matrix;->setTranslate(FF)V

    :cond_11
    move-object/from16 v23, v13

    .line 521
    goto/16 :goto_4
.end method

.method protected createVisualLayer(Lorg/w3c/dom/Element;)Lcom/masshabit/common/Layer;
    .locals 12
    .param p1, "elem"    # Lorg/w3c/dom/Element;

    .prologue
    const/4 v10, 0x0

    const-string v11, "id"

    .line 311
    new-instance v7, Lcom/masshabit/common/Layer;

    invoke-direct {v7}, Lcom/masshabit/common/Layer;-><init>()V

    .line 312
    .local v7, "layer":Lcom/masshabit/common/Layer;
    const-string v8, "id"

    invoke-interface {p1, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/masshabit/common/Layer;->mName:Ljava/lang/String;

    .line 313
    iget-object v8, v7, Lcom/masshabit/common/Layer;->mName:Ljava/lang/String;

    const-string v9, "onclick"

    invoke-interface {p1, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v10, v9}, Lcom/masshabit/common/entity/EntityProperties;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/masshabit/common/entity/EntityProperties;

    move-result-object v8

    iput-object v8, v7, Lcom/masshabit/common/Layer;->mProps:Lcom/masshabit/common/entity/EntityProperties;

    .line 319
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 321
    .local v3, "children":Lorg/w3c/dom/NodeList;
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 323
    .local v4, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/masshabit/common/entity/Entity;>;"
    new-instance v1, Lcom/masshabit/common/LevelLoader$MinBounds;

    invoke-direct {v1, p0}, Lcom/masshabit/common/LevelLoader$MinBounds;-><init>(Lcom/masshabit/common/LevelLoader;)V

    .line 325
    .local v1, "bounds":Lcom/masshabit/common/LevelLoader$MinBounds;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v6, v8, :cond_2

    .line 327
    invoke-interface {v3, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 328
    .local v2, "child":Lorg/w3c/dom/Node;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "#text"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 330
    move-object v0, v2

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v8, v0

    invoke-virtual {p0, v8, v1}, Lcom/masshabit/common/LevelLoader;->createEntity(Lorg/w3c/dom/Element;Lcom/masshabit/common/LevelLoader$MinBounds;)Lcom/masshabit/common/entity/Entity;

    move-result-object v5

    .line 331
    .local v5, "entity":Lcom/masshabit/common/entity/Entity;
    if-nez v5, :cond_0

    move-object v8, v10

    .line 345
    .end local v2    # "child":Lorg/w3c/dom/Node;
    .end local v5    # "entity":Lcom/masshabit/common/entity/Entity;
    .end local p0    # "this":Lcom/masshabit/common/LevelLoader;
    :goto_1
    return-object v8

    .line 335
    .restart local v2    # "child":Lorg/w3c/dom/Node;
    .restart local v5    # "entity":Lcom/masshabit/common/entity/Entity;
    .restart local p0    # "this":Lcom/masshabit/common/LevelLoader;
    :cond_0
    iget-object v8, p0, Lcom/masshabit/common/LevelLoader;->mLevel:Lcom/masshabit/common/Level;

    iget-object v8, v8, Lcom/masshabit/common/Level;->mEntityIds:Ljava/util/HashMap;

    check-cast v2, Lorg/w3c/dom/Element;

    .end local v2    # "child":Lorg/w3c/dom/Node;
    const-string v9, "id"

    invoke-interface {v2, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    .end local v5    # "entity":Lcom/masshabit/common/entity/Entity;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 339
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Lcom/masshabit/common/entity/Entity;

    iput-object v8, v7, Lcom/masshabit/common/Layer;->mChildren:[Lcom/masshabit/common/entity/Entity;

    .line 340
    iget-object v8, v7, Lcom/masshabit/common/Layer;->mChildren:[Lcom/masshabit/common/entity/Entity;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/masshabit/common/LevelLoader;
    check-cast p0, [Lcom/masshabit/common/entity/Entity;

    iput-object p0, v7, Lcom/masshabit/common/Layer;->mChildren:[Lcom/masshabit/common/entity/Entity;

    .line 342
    iget-object v8, v7, Lcom/masshabit/common/Layer;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v9, v1, Lcom/masshabit/common/LevelLoader$MinBounds;->left:F

    iget v10, v1, Lcom/masshabit/common/LevelLoader$MinBounds;->top:F

    invoke-virtual {v8, v9, v10}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 343
    iget-object v8, v7, Lcom/masshabit/common/Layer;->mMatrix:Landroid/graphics/Matrix;

    iget v9, v1, Lcom/masshabit/common/LevelLoader$MinBounds;->left:F

    iget v10, v1, Lcom/masshabit/common/LevelLoader$MinBounds;->top:F

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Matrix;->setTranslate(FF)V

    move-object v8, v7

    .line 345
    goto :goto_1
.end method

.method public load(Ljava/lang/String;)V
    .locals 20
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 70
    sget-object v7, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 71
    .local v7, "env":Lcom/masshabit/common/Environment;
    move-object v0, v7

    iget-object v0, v0, Lcom/masshabit/common/Environment;->mRes:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 75
    .local v3, "am":Landroid/content/res/AssetManager;
    :try_start_0
    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 87
    .local v9, "file":Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 99
    .local v4, "builder":Ljavax/xml/parsers/DocumentBuilder;
    :try_start_2
    invoke-virtual {v4, v9}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v5

    .line 114
    .local v5, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v5}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v16

    .line 115
    .local v16, "svg":Lorg/w3c/dom/Element;
    const-string v17, "Root element must be an svg element"

    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "svg"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    invoke-static/range {v17 .. v18}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 118
    const-string v17, "viewBox"

    invoke-interface/range {v16 .. v17}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 119
    .local v8, "extents":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/masshabit/common/LevelLoader;->mLevel:Lcom/masshabit/common/Level;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    aget-object v18, v8, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/masshabit/common/Level;->mWidth:F

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/masshabit/common/LevelLoader;->mLevel:Lcom/masshabit/common/Level;

    move-object/from16 v17, v0

    const/16 v18, 0x3

    aget-object v18, v8, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/masshabit/common/Level;->mHeight:F

    .line 122
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v13

    .line 123
    .local v13, "layerElems":Lorg/w3c/dom/NodeList;
    new-instance v15, Ljava/util/ArrayList;

    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v17

    move-object v0, v15

    move/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 124
    .local v15, "layers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/masshabit/common/Layer;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v17

    move v0, v10

    move/from16 v1, v17

    if-ge v0, v1, :cond_7

    .line 126
    invoke-interface {v13, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    .line 127
    .local v14, "layerNode":Lorg/w3c/dom/Node;
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "g"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 129
    move-object v0, v14

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v12, v0

    .line 130
    .local v12, "layerElem":Lorg/w3c/dom/Element;
    const-string v17, "id"

    move-object v0, v12

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "collision"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/masshabit/common/LevelLoader;->mLevel:Lcom/masshabit/common/Level;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/masshabit/common/Level;->mCollisionGeom:Lcom/masshabit/common/physics/CollisionGroup;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/masshabit/common/LevelLoader;->readCollisionLayer(Lorg/w3c/dom/Element;Lcom/masshabit/common/physics/CollisionGroup;)V

    .line 124
    .end local v12    # "layerElem":Lorg/w3c/dom/Element;
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 77
    .end local v4    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v5    # "doc":Lorg/w3c/dom/Document;
    .end local v8    # "extents":[Ljava/lang/String;
    .end local v9    # "file":Ljava/io/InputStream;
    .end local v10    # "i":I
    .end local v13    # "layerElems":Lorg/w3c/dom/NodeList;
    .end local v14    # "layerNode":Lorg/w3c/dom/Node;
    .end local v15    # "layers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/masshabit/common/Layer;>;"
    .end local v16    # "svg":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v6

    .line 79
    .local v6, "e":Ljava/io/IOException;
    const-string v17, "LevelLoader"

    const-string v18, "failed to open level file"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 182
    .end local v6    # "e":Ljava/io/IOException;
    .end local p1    # "path":Ljava/lang/String;
    :cond_1
    :goto_2
    return-void

    .line 89
    .restart local v9    # "file":Ljava/io/InputStream;
    .restart local p1    # "path":Ljava/lang/String;
    :catch_1
    move-exception v17

    move-object/from16 v6, v17

    .line 91
    .local v6, "e":Ljavax/xml/parsers/ParserConfigurationException;
    const-string v17, "LevelLoader"

    const-string v18, "failed to build create document builder"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {v6}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_2

    .line 101
    .end local v6    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v4    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    :catch_2
    move-exception v6

    .line 103
    .local v6, "e":Lorg/xml/sax/SAXException;
    const-string v17, "LevelLoader"

    const-string v18, "Sax error, failed to create document from level file"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {v6}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_2

    .line 107
    .end local v6    # "e":Lorg/xml/sax/SAXException;
    :catch_3
    move-exception v6

    .line 109
    .local v6, "e":Ljava/io/IOException;
    const-string v17, "LevelLoader"

    const-string v18, "IO error, failed to create document from level file"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 134
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v5    # "doc":Lorg/w3c/dom/Document;
    .restart local v8    # "extents":[Ljava/lang/String;
    .restart local v10    # "i":I
    .restart local v12    # "layerElem":Lorg/w3c/dom/Element;
    .restart local v13    # "layerElems":Lorg/w3c/dom/NodeList;
    .restart local v14    # "layerNode":Lorg/w3c/dom/Node;
    .restart local v15    # "layers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/masshabit/common/Layer;>;"
    .restart local v16    # "svg":Lorg/w3c/dom/Element;
    :cond_2
    const-string v17, "id"

    move-object v0, v12

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "boundary"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/masshabit/common/LevelLoader;->mLevel:Lcom/masshabit/common/Level;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/masshabit/common/Level;->mBoundaryGeom:Lcom/masshabit/common/physics/CollisionGroup;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/masshabit/common/LevelLoader;->readCollisionLayer(Lorg/w3c/dom/Element;Lcom/masshabit/common/physics/CollisionGroup;)V

    goto :goto_1

    .line 138
    :cond_3
    const-string v17, "id"

    move-object v0, v12

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "hurty"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/masshabit/common/LevelLoader;->mLevel:Lcom/masshabit/common/Level;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/masshabit/common/Level;->mHurtyGeom:Lcom/masshabit/common/physics/CollisionGroup;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/masshabit/common/LevelLoader;->readCollisionLayer(Lorg/w3c/dom/Element;Lcom/masshabit/common/physics/CollisionGroup;)V

    goto :goto_1

    .line 142
    :cond_4
    const-string v17, "id"

    move-object v0, v12

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "exit"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/masshabit/common/LevelLoader;->mLevel:Lcom/masshabit/common/Level;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/masshabit/common/Level;->mExitGeom:Lcom/masshabit/common/physics/CollisionGroup;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/masshabit/common/LevelLoader;->readCollisionLayer(Lorg/w3c/dom/Element;Lcom/masshabit/common/physics/CollisionGroup;)V

    goto/16 :goto_1

    .line 148
    :cond_5
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/masshabit/common/LevelLoader;->createVisualLayer(Lorg/w3c/dom/Element;)Lcom/masshabit/common/Layer;

    move-result-object v11

    .line 149
    .local v11, "layer":Lcom/masshabit/common/Layer;
    if-eqz v11, :cond_1

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/masshabit/common/LevelLoader;->mLevel:Lcom/masshabit/common/Level;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/masshabit/common/Level;->mEntityIds:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object v0, v11

    iget-object v0, v0, Lcom/masshabit/common/Layer;->mName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual {v0, v1}, Lcom/masshabit/common/LevelLoader;->relativize(Lcom/masshabit/common/entity/Entity;)V

    goto/16 :goto_1

    .line 161
    .end local v11    # "layer":Lcom/masshabit/common/Layer;
    .end local v12    # "layerElem":Lorg/w3c/dom/Element;
    :cond_6
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "#text"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 167
    const-string v17, "LevelLoader"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Skipping irrelevant node: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 170
    .end local v14    # "layerNode":Lorg/w3c/dom/Node;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/masshabit/common/LevelLoader;->mLevel:Lcom/masshabit/common/Level;

    move-object/from16 v17, v0

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [Lcom/masshabit/common/Layer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/masshabit/common/Level;->mLayers:[Lcom/masshabit/common/Layer;

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/masshabit/common/LevelLoader;->mLevel:Lcom/masshabit/common/Level;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/masshabit/common/LevelLoader;->mLevel:Lcom/masshabit/common/Level;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/masshabit/common/Level;->mLayers:[Lcom/masshabit/common/Layer;

    move-object/from16 v18, v0

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "path":Ljava/lang/String;
    check-cast p1, [Lcom/masshabit/common/Layer;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/masshabit/common/Level;->mLayers:[Lcom/masshabit/common/Layer;

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/masshabit/common/LevelLoader;->mLevel:Lcom/masshabit/common/Level;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/masshabit/common/Level;->mLoaded:Z

    .line 176
    :try_start_3
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_2

    .line 178
    :catch_4
    move-exception v6

    .line 180
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2
.end method

.method protected readCollisionLayer(Lorg/w3c/dom/Element;Lcom/masshabit/common/physics/CollisionGroup;)V
    .locals 31
    .param p1, "elem"    # Lorg/w3c/dom/Element;
    .param p2, "group"    # Lcom/masshabit/common/physics/CollisionGroup;

    .prologue
    .line 228
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "More than one collision layer detected!   id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/masshabit/common/physics/CollisionGroup;->size()I

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    invoke-static {v4, v5}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 230
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v13

    .line 232
    .local v13, "children":Lorg/w3c/dom/NodeList;
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_1
    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    move/from16 v0, v18

    move v1, v4

    if-ge v0, v1, :cond_8

    .line 234
    move-object v0, v13

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    .line 235
    .local v12, "child":Lorg/w3c/dom/Node;
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "line"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 237
    move-object v0, v12

    check-cast v0, Lorg/w3c/dom/Element;

    move-object/from16 v21, v0

    .line 238
    .local v21, "line":Lorg/w3c/dom/Element;
    const-string v4, "x1"

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 239
    .local v6, "x1":F
    const-string v4, "y1"

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    .line 240
    .local v7, "y1":F
    const-string v4, "x2"

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    .line 241
    .local v8, "x2":F
    const-string v4, "y2"

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    .line 242
    .local v9, "y2":F
    new-instance v4, Lcom/masshabit/common/physics/SegmentParticle;

    sget-object v5, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    iget-object v5, v5, Lcom/masshabit/common/Environment;->mPhysics:Lcom/masshabit/common/physics/Physics;

    const/4 v10, 0x1

    invoke-direct/range {v4 .. v10}, Lcom/masshabit/common/physics/SegmentParticle;-><init>(Lcom/masshabit/common/physics/Physics;FFFFZ)V

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/masshabit/common/physics/CollisionGroup;->add(Lcom/masshabit/common/physics/Particle;)V

    .line 232
    .end local v6    # "x1":F
    .end local v7    # "y1":F
    .end local v8    # "x2":F
    .end local v9    # "y2":F
    .end local v12    # "child":Lorg/w3c/dom/Node;
    .end local v21    # "line":Lorg/w3c/dom/Element;
    :cond_0
    :goto_2
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 228
    .end local v13    # "children":Lorg/w3c/dom/NodeList;
    .end local v18    # "i":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 244
    .restart local v12    # "child":Lorg/w3c/dom/Node;
    .restart local v13    # "children":Lorg/w3c/dom/NodeList;
    .restart local v18    # "i":I
    :cond_2
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "rect"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 246
    move-object v0, v12

    check-cast v0, Lorg/w3c/dom/Element;

    move-object/from16 v24, v0

    .line 247
    .local v24, "rect":Lorg/w3c/dom/Element;
    const/16 v20, 0x0

    .line 250
    .local v20, "left":F
    :try_start_0
    const-string v4, "x"

    move-object/from16 v0, v24

    move-object v1, v4

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v20

    .line 254
    :goto_3
    const/16 v26, 0x0

    .line 257
    .local v26, "top":F
    :try_start_1
    const-string v4, "y"

    move-object/from16 v0, v24

    move-object v1, v4

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v26

    .line 261
    :goto_4
    const-string v4, "width"

    move-object/from16 v0, v24

    move-object v1, v4

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    add-float v25, v20, v4

    .line 262
    .local v25, "right":F
    const-string v4, "height"

    move-object/from16 v0, v24

    move-object v1, v4

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    add-float v11, v26, v4

    .line 264
    .local v11, "bottom":F
    const/16 v4, 0x8

    move v0, v4

    new-array v0, v0, [F

    move-object/from16 v27, v0

    const/4 v4, 0x0

    aput v20, v27, v4

    const/4 v4, 0x1

    aput v26, v27, v4

    const/4 v4, 0x2

    aput v20, v27, v4

    const/4 v4, 0x3

    aput v11, v27, v4

    const/4 v4, 0x4

    aput v25, v27, v4

    const/4 v4, 0x5

    aput v11, v27, v4

    const/4 v4, 0x6

    aput v25, v27, v4

    const/4 v4, 0x7

    aput v26, v27, v4

    .line 268
    .local v27, "values":[F
    new-instance v22, Landroid/graphics/Matrix;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Matrix;-><init>()V

    .line 269
    .local v22, "m":Landroid/graphics/Matrix;
    const-string v4, "transform"

    move-object/from16 v0, v24

    move-object v1, v4

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 270
    .local v16, "definition":Ljava/lang/String;
    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/masshabit/common/LevelLoader;->readMatrix(Ljava/lang/String;Landroid/graphics/Matrix;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 272
    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 275
    :cond_3
    const/4 v4, 0x4

    move v0, v4

    new-array v0, v0, [Lcom/masshabit/common/physics/Vector2;

    move-object/from16 v28, v0

    const/4 v4, 0x0

    new-instance v5, Lcom/masshabit/common/physics/Vector2;

    const/4 v6, 0x0

    aget v6, v27, v6

    const/4 v7, 0x1

    aget v7, v27, v7

    invoke-direct {v5, v6, v7}, Lcom/masshabit/common/physics/Vector2;-><init>(FF)V

    aput-object v5, v28, v4

    const/4 v4, 0x1

    new-instance v5, Lcom/masshabit/common/physics/Vector2;

    const/4 v6, 0x2

    aget v6, v27, v6

    const/4 v7, 0x3

    aget v7, v27, v7

    invoke-direct {v5, v6, v7}, Lcom/masshabit/common/physics/Vector2;-><init>(FF)V

    aput-object v5, v28, v4

    const/4 v4, 0x2

    new-instance v5, Lcom/masshabit/common/physics/Vector2;

    const/4 v6, 0x4

    aget v6, v27, v6

    const/4 v7, 0x5

    aget v7, v27, v7

    invoke-direct {v5, v6, v7}, Lcom/masshabit/common/physics/Vector2;-><init>(FF)V

    aput-object v5, v28, v4

    const/4 v4, 0x3

    new-instance v5, Lcom/masshabit/common/physics/Vector2;

    const/4 v6, 0x6

    aget v6, v27, v6

    const/4 v7, 0x7

    aget v7, v27, v7

    invoke-direct {v5, v6, v7}, Lcom/masshabit/common/physics/Vector2;-><init>(FF)V

    aput-object v5, v28, v4

    .line 280
    .local v28, "vectors":[Lcom/masshabit/common/physics/Vector2;
    new-instance v17, Lcom/masshabit/common/physics/ConvexHull;

    sget-object v4, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    iget-object v4, v4, Lcom/masshabit/common/Environment;->mPhysics:Lcom/masshabit/common/physics/Physics;

    const/4 v5, 0x1

    move-object/from16 v0, v17

    move-object v1, v4

    move v2, v5

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/masshabit/common/physics/ConvexHull;-><init>(Lcom/masshabit/common/physics/Physics;Z[Lcom/masshabit/common/physics/Vector2;)V

    .line 281
    .local v17, "hull":Lcom/masshabit/common/physics/ConvexHull;
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/masshabit/common/physics/CollisionGroup;->add(Lcom/masshabit/common/physics/Particle;)V

    goto/16 :goto_2

    .line 283
    .end local v11    # "bottom":F
    .end local v16    # "definition":Ljava/lang/String;
    .end local v17    # "hull":Lcom/masshabit/common/physics/ConvexHull;
    .end local v20    # "left":F
    .end local v22    # "m":Landroid/graphics/Matrix;
    .end local v24    # "rect":Lorg/w3c/dom/Element;
    .end local v25    # "right":F
    .end local v26    # "top":F
    .end local v27    # "values":[F
    .end local v28    # "vectors":[Lcom/masshabit/common/physics/Vector2;
    :cond_4
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "polygon"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 285
    check-cast v12, Lorg/w3c/dom/Element;

    .end local v12    # "child":Lorg/w3c/dom/Node;
    const-string v4, "points"

    invoke-interface {v12, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\s+"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 286
    .local v15, "coords":[Ljava/lang/String;
    array-length v4, v15

    move v0, v4

    new-array v0, v0, [Lcom/masshabit/common/physics/Vector2;

    move-object/from16 v23, v0

    .line 287
    .local v23, "points":[Lcom/masshabit/common/physics/Vector2;
    const/16 v19, 0x0

    .local v19, "j":I
    :goto_5
    array-length v4, v15

    move/from16 v0, v19

    move v1, v4

    if-ge v0, v1, :cond_5

    .line 289
    aget-object v4, v15, v19

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 290
    .local v14, "components":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v14, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v29

    .line 291
    .local v29, "x":F
    const/4 v4, 0x1

    aget-object v4, v14, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v30

    .line 292
    .local v30, "y":F
    new-instance v4, Lcom/masshabit/common/physics/Vector2;

    move-object v0, v4

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/masshabit/common/physics/Vector2;-><init>(FF)V

    aput-object v4, v23, v19

    .line 287
    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    .line 294
    .end local v14    # "components":[Ljava/lang/String;
    .end local v29    # "x":F
    .end local v30    # "y":F
    :cond_5
    const-string v4, "polygon must contain more than two points"

    move-object/from16 v0, v23

    array-length v0, v0

    move v5, v0

    const/4 v6, 0x2

    if-le v5, v6, :cond_6

    const/4 v5, 0x1

    :goto_6
    invoke-static {v4, v5}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 295
    new-instance v17, Lcom/masshabit/common/physics/ConvexHull;

    sget-object v4, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    iget-object v4, v4, Lcom/masshabit/common/Environment;->mPhysics:Lcom/masshabit/common/physics/Physics;

    const/4 v5, 0x1

    move-object/from16 v0, v17

    move-object v1, v4

    move v2, v5

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/masshabit/common/physics/ConvexHull;-><init>(Lcom/masshabit/common/physics/Physics;Z[Lcom/masshabit/common/physics/Vector2;)V

    .line 296
    .restart local v17    # "hull":Lcom/masshabit/common/physics/ConvexHull;
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/masshabit/common/physics/CollisionGroup;->add(Lcom/masshabit/common/physics/Particle;)V

    goto/16 :goto_2

    .line 294
    .end local v17    # "hull":Lcom/masshabit/common/physics/ConvexHull;
    :cond_6
    const/4 v5, 0x0

    goto :goto_6

    .line 298
    .end local v15    # "coords":[Ljava/lang/String;
    .end local v19    # "j":I
    .end local v23    # "points":[Lcom/masshabit/common/physics/Vector2;
    .restart local v12    # "child":Lorg/w3c/dom/Node;
    :cond_7
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "#text"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 304
    const-string v4, "LevelLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping irrelevant collision node: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 307
    .end local v12    # "child":Lorg/w3c/dom/Node;
    :cond_8
    return-void

    .line 259
    .restart local v12    # "child":Lorg/w3c/dom/Node;
    .restart local v20    # "left":F
    .restart local v24    # "rect":Lorg/w3c/dom/Element;
    .restart local v26    # "top":F
    :catch_0
    move-exception v4

    goto/16 :goto_4

    .line 252
    .end local v26    # "top":F
    :catch_1
    move-exception v4

    goto/16 :goto_3
.end method

.method protected readMatrix(Ljava/lang/String;Landroid/graphics/Matrix;)Z
    .locals 9
    .param p1, "definition"    # Ljava/lang/String;
    .param p2, "out"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 208
    sget-object v2, Lcom/masshabit/common/LevelLoader;->MATRIX_DEFINITION:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 209
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 211
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, "matrixValues":[Ljava/lang/String;
    const/16 v2, 0x9

    new-array v2, v2, [F

    aget-object v3, v1, v4

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    aput v3, v2, v4

    aget-object v3, v1, v7

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    aput v3, v2, v5

    const/4 v3, 0x4

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    aput v3, v2, v7

    aget-object v3, v1, v5

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    aput v3, v2, v8

    const/4 v3, 0x4

    aget-object v4, v1, v8

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x5

    const/4 v4, 0x5

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x6

    aput v6, v2, v3

    const/4 v3, 0x7

    aput v6, v2, v3

    const/16 v3, 0x8

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    invoke-virtual {p2, v2}, Landroid/graphics/Matrix;->setValues([F)V

    move v2, v5

    .line 223
    .end local v1    # "matrixValues":[Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    move v2, v4

    goto :goto_0
.end method

.method protected relativize(Lcom/masshabit/common/entity/Entity;)V
    .locals 0
    .param p1, "entity"    # Lcom/masshabit/common/entity/Entity;

    .prologue
    .line 200
    return-void
.end method
