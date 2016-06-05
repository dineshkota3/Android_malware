.class public Lcom/gp/monolith/SimpleGameData;
.super Ljava/lang/Object;
.source "SimpleGameData.java"

# interfaces
.implements Lcom/gp/monolith/Game;


# static fields
.field public static final STATUS_EVOLVING:I = 0x4

.field public static final STATUS_GAME_OVER:I = 0x3

.field public static final STATUS_PAUSE:I = 0x2

.field public static final STATUS_PLAYING:I = 0x1

.field public static final STATUS_STARTUP:I


# instance fields
.field private blockPlaced:Z

.field private clearedLines:[I

.field public currentBlock:Lcom/gp/monolith/Block;

.field private grid:[[I

.field public gridMaxHeight:I

.field public gridMaxWidth:I

.field public level:I

.field public lines:I

.field newLevel:I

.field public nextBlock:Lcom/gp/monolith/Block;

.field public score:I

.field startingLevel:I

.field private status:I

.field private step:I

.field public timer:I

.field timerEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sput-boolean v4, Lcom/gp/monolith/Block;->enableMonolithBlocks:Z

    .line 13
    iput v4, p0, Lcom/gp/monolith/SimpleGameData;->score:I

    .line 14
    iput v4, p0, Lcom/gp/monolith/SimpleGameData;->lines:I

    .line 15
    iput v3, p0, Lcom/gp/monolith/SimpleGameData;->level:I

    .line 16
    const/16 v2, 0x3e8

    iput v2, p0, Lcom/gp/monolith/SimpleGameData;->timer:I

    .line 17
    iput-boolean v4, p0, Lcom/gp/monolith/SimpleGameData;->timerEnabled:Z

    .line 18
    iput v3, p0, Lcom/gp/monolith/SimpleGameData;->newLevel:I

    .line 19
    iput v3, p0, Lcom/gp/monolith/SimpleGameData;->startingLevel:I

    .line 20
    const/16 v2, 0xa

    iput v2, p0, Lcom/gp/monolith/SimpleGameData;->gridMaxWidth:I

    .line 21
    const/16 v2, 0x14

    iput v2, p0, Lcom/gp/monolith/SimpleGameData;->gridMaxHeight:I

    .line 22
    iget v2, p0, Lcom/gp/monolith/SimpleGameData;->gridMaxWidth:I

    iget v3, p0, Lcom/gp/monolith/SimpleGameData;->gridMaxHeight:I

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    iput-object v2, p0, Lcom/gp/monolith/SimpleGameData;->grid:[[I

    .line 23
    const/4 v1, 0x0

    .local v1, "y":I
    :goto_0
    iget v2, p0, Lcom/gp/monolith/SimpleGameData;->gridMaxHeight:I

    if-lt v1, v2, :cond_0

    .line 30
    iget v2, p0, Lcom/gp/monolith/SimpleGameData;->gridMaxHeight:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/gp/monolith/SimpleGameData;->clearedLines:[I

    .line 31
    const/4 v1, 0x0

    :goto_1
    iget v2, p0, Lcom/gp/monolith/SimpleGameData;->gridMaxHeight:I

    if-lt v1, v2, :cond_2

    .line 35
    return-void

    .line 25
    :cond_0
    const/4 v0, 0x0

    .local v0, "x":I
    :goto_2
    iget v2, p0, Lcom/gp/monolith/SimpleGameData;->gridMaxWidth:I

    if-lt v0, v2, :cond_1

    .line 23
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 27
    :cond_1
    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->grid:[[I

    aget-object v2, v2, v0

    const/4 v3, -0x1

    aput v3, v2, v1

    .line 25
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 33
    .end local v0    # "x":I
    :cond_2
    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->clearedLines:[I

    aput v4, v2, v1

    .line 31
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 0
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 545
    return-void
.end method


# virtual methods
.method public canMoveBlockDown()Z
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 226
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 234
    iget-object v1, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v1, v1, Lcom/gp/monolith/Block;->height:I

    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v2, v2, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/gp/monolith/SimpleGameData;->gridMaxHeight:I

    if-ge v1, v2, :cond_2

    .line 237
    iget-object v1, p0, Lcom/gp/monolith/SimpleGameData;->grid:[[I

    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v5

    iget v2, v2, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v3, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v2, v3

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v5

    iget v2, v2, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v3, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    if-ne v1, v4, :cond_2

    .line 238
    iget-object v1, p0, Lcom/gp/monolith/SimpleGameData;->grid:[[I

    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v6

    iget v2, v2, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v3, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v2, v3

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v6

    iget v2, v2, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v3, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    if-ne v1, v4, :cond_2

    .line 239
    iget-object v1, p0, Lcom/gp/monolith/SimpleGameData;->grid:[[I

    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v7

    iget v2, v2, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v3, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v2, v3

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v7

    iget v2, v2, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v3, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    if-ne v1, v4, :cond_2

    .line 240
    iget-object v1, p0, Lcom/gp/monolith/SimpleGameData;->grid:[[I

    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v8

    iget v2, v2, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v3, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v2, v3

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v8

    iget v2, v2, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v3, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    if-ne v1, v4, :cond_2

    move v1, v6

    .line 247
    :goto_1
    return v1

    .line 228
    :cond_0
    iget-object v1, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v1, v1, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v2, v2, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/gp/monolith/SimpleGameData;->gridMaxHeight:I

    add-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_1

    move v1, v5

    .line 230
    goto :goto_1

    .line 226
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_2
    move v1, v5

    .line 247
    goto :goto_1
.end method

.method public clearCompleteLines()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, -0x1

    const/16 v9, 0xc8

    const/16 v8, 0x64

    .line 272
    iget v5, p0, Lcom/gp/monolith/SimpleGameData;->gridMaxHeight:I

    sub-int v0, v5, v11

    .line 273
    .local v0, "currentline":I
    const/4 v2, 0x0

    .line 274
    .local v2, "linescleared":I
    iget v5, p0, Lcom/gp/monolith/SimpleGameData;->level:I

    iput v5, p0, Lcom/gp/monolith/SimpleGameData;->newLevel:I

    .line 275
    :goto_0
    if-gtz v0, :cond_1

    .line 308
    packed-switch v2, :pswitch_data_0

    .line 326
    :goto_1
    :pswitch_0
    iget v5, p0, Lcom/gp/monolith/SimpleGameData;->lines:I

    .line 329
    add-int/2addr v5, v2

    iput v5, p0, Lcom/gp/monolith/SimpleGameData;->lines:I

    .line 330
    iget v5, p0, Lcom/gp/monolith/SimpleGameData;->lines:I

    const/16 v6, 0x14

    if-le v5, v6, :cond_8

    iget v5, p0, Lcom/gp/monolith/SimpleGameData;->lines:I

    const/16 v6, 0x28

    if-gt v5, v6, :cond_8

    .line 332
    iput v12, p0, Lcom/gp/monolith/SimpleGameData;->newLevel:I

    .line 333
    const/16 v5, 0x384

    iput v5, p0, Lcom/gp/monolith/SimpleGameData;->timer:I

    .line 390
    :cond_0
    :goto_2
    return-void

    .line 277
    :cond_1
    const/4 v1, 0x1

    .line 278
    .local v1, "linecomplete":Z
    const/4 v3, 0x0

    .local v3, "x":I
    :goto_3
    iget v5, p0, Lcom/gp/monolith/SimpleGameData;->gridMaxWidth:I

    if-lt v3, v5, :cond_2

    .line 285
    if-eqz v1, :cond_7

    .line 287
    move v4, v0

    .local v4, "y":I
    :goto_4
    if-gtz v4, :cond_4

    .line 301
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 280
    .end local v4    # "y":I
    :cond_2
    iget-object v5, p0, Lcom/gp/monolith/SimpleGameData;->grid:[[I

    aget-object v5, v5, v3

    aget v5, v5, v0

    if-ne v5, v10, :cond_3

    .line 282
    const/4 v1, 0x0

    .line 278
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 289
    .restart local v4    # "y":I
    :cond_4
    const/4 v3, 0x0

    :goto_5
    iget v5, p0, Lcom/gp/monolith/SimpleGameData;->gridMaxWidth:I

    if-lt v3, v5, :cond_5

    .line 287
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .line 291
    :cond_5
    if-lez v4, :cond_6

    .line 293
    iget-object v5, p0, Lcom/gp/monolith/SimpleGameData;->grid:[[I

    aget-object v5, v5, v3

    iget-object v6, p0, Lcom/gp/monolith/SimpleGameData;->grid:[[I

    aget-object v6, v6, v3

    sub-int v7, v4, v11

    aget v6, v6, v7

    aput v6, v5, v4

    .line 289
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 297
    :cond_6
    iget-object v5, p0, Lcom/gp/monolith/SimpleGameData;->grid:[[I

    aget-object v5, v5, v3

    aput v10, v5, v4

    goto :goto_6

    .line 305
    .end local v4    # "y":I
    :cond_7
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 313
    .end local v1    # "linecomplete":Z
    .end local v3    # "x":I
    :pswitch_1
    iget v5, p0, Lcom/gp/monolith/SimpleGameData;->score:I

    add-int/lit8 v5, v5, 0x19

    iput v5, p0, Lcom/gp/monolith/SimpleGameData;->score:I

    goto :goto_1

    .line 316
    :pswitch_2
    iget v5, p0, Lcom/gp/monolith/SimpleGameData;->score:I

    add-int/lit8 v5, v5, 0x4b

    iput v5, p0, Lcom/gp/monolith/SimpleGameData;->score:I

    goto :goto_1

    .line 320
    :pswitch_3
    iget v5, p0, Lcom/gp/monolith/SimpleGameData;->score:I

    add-int/lit8 v5, v5, 0x64

    iput v5, p0, Lcom/gp/monolith/SimpleGameData;->score:I

    goto :goto_1

    .line 323
    :pswitch_4
    iget v5, p0, Lcom/gp/monolith/SimpleGameData;->score:I

    add-int/lit16 v5, v5, 0xc8

    iput v5, p0, Lcom/gp/monolith/SimpleGameData;->score:I

    goto :goto_1

    .line 336
    :cond_8
    iget v5, p0, Lcom/gp/monolith/SimpleGameData;->lines:I

    const/16 v6, 0x28

    if-le v5, v6, :cond_9

    iget v5, p0, Lcom/gp/monolith/SimpleGameData;->lines:I

    const/16 v6, 0x3c

    if-gt v5, v6, :cond_9

    .line 338
    iput v12, p0, Lcom/gp/monolith/SimpleGameData;->newLevel:I

    .line 339
    const/16 v5, 0x320

    iput v5, p0, Lcom/gp/monolith/SimpleGameData;->timer:I

    goto :goto_2

    .line 342
    :cond_9
    iget v5, p0, Lcom/gp/monolith/SimpleGameData;->lines:I

    const/16 v6, 0x3c

    if-le v5, v6, :cond_a

    iget v5, p0, Lcom/gp/monolith/SimpleGameData;->lines:I

    const/16 v6, 0x50

    if-gt v5, v6, :cond_a

    .line 344
    const/4 v5, 0x3

    iput v5, p0, Lcom/gp/monolith/SimpleGameData;->newLevel:I

    .line 345
    const/16 v5, 0x2bc

    iput v5, p0, Lcom/gp/monolith/SimpleGameData;->timer:I

    goto/16 :goto_2

    .line 348
    :cond_a
    iget v5, p0, Lcom/gp/monolith/SimpleGameData;->lines:I

    const/16 v6, 0x50

    if-le v5, v6, :cond_b

    iget v5, p0, Lcom/gp/monolith/SimpleGameData;->lines:I

    if-gt v5, v8, :cond_b

    .line 350
    const/4 v5, 0x4

    iput v5, p0, Lcom/gp/monolith/SimpleGameData;->newLevel:I

    .line 351
    const/16 v5, 0x258

    iput v5, p0, Lcom/gp/monolith/SimpleGameData;->timer:I

    goto/16 :goto_2

    .line 354
    :cond_b
    iget v5, p0, Lcom/gp/monolith/SimpleGameData;->lines:I

    if-le v5, v8, :cond_c

    iget v5, p0, Lcom/gp/monolith/SimpleGameData;->lines:I

    const/16 v6, 0x78

    if-gt v5, v6, :cond_c

    .line 356
    const/4 v5, 0x5

    iput v5, p0, Lcom/gp/monolith/SimpleGameData;->newLevel:I

    .line 357
    const/16 v5, 0x1f4

    iput v5, p0, Lcom/gp/monolith/SimpleGameData;->timer:I

    goto/16 :goto_2

    .line 360
    :cond_c
    iget v5, p0, Lcom/gp/monolith/SimpleGameData;->lines:I

    const/16 v6, 0x78

    if-le v5, v6, :cond_d

    iget v5, p0, Lcom/gp/monolith/SimpleGameData;->lines:I

    const/16 v6, 0x8c

    if-gt v5, v6, :cond_d

    .line 362
    const/4 v5, 0x6

    iput v5, p0, Lcom/gp/monolith/SimpleGameData;->newLevel:I

    .line 363
    const/16 v5, 0x190

    iput v5, p0, Lcom/gp/monolith/SimpleGameData;->timer:I

    goto/16 :goto_2

    .line 366
    :cond_d
    iget v5, p0, Lcom/gp/monolith/SimpleGameData;->lines:I

    const/16 v6, 0x8c

    if-le v5, v6, :cond_e

    iget v5, p0, Lcom/gp/monolith/SimpleGameData;->lines:I

    const/16 v6, 0xa0

    if-gt v5, v6, :cond_e

    .line 368
    const/4 v5, 0x7

    iput v5, p0, Lcom/gp/monolith/SimpleGameData;->newLevel:I

    .line 369
    const/16 v5, 0x12c

    iput v5, p0, Lcom/gp/monolith/SimpleGameData;->timer:I

    goto/16 :goto_2

    .line 372
    :cond_e
    iget v5, p0, Lcom/gp/monolith/SimpleGameData;->lines:I

    const/16 v6, 0xa0

    if-le v5, v6, :cond_f

    iget v5, p0, Lcom/gp/monolith/SimpleGameData;->lines:I

    const/16 v6, 0xb4

    if-gt v5, v6, :cond_f

    .line 374
    const/16 v5, 0x8

    iput v5, p0, Lcom/gp/monolith/SimpleGameData;->newLevel:I

    .line 375
    iput v9, p0, Lcom/gp/monolith/SimpleGameData;->timer:I

    goto/16 :goto_2

    .line 378
    :cond_f
    iget v5, p0, Lcom/gp/monolith/SimpleGameData;->lines:I

    const/16 v6, 0xb4

    if-le v5, v6, :cond_10

    iget v5, p0, Lcom/gp/monolith/SimpleGameData;->lines:I

    if-gt v5, v9, :cond_10

    .line 380
    const/16 v5, 0x9

    iput v5, p0, Lcom/gp/monolith/SimpleGameData;->newLevel:I

    .line 381
    iput v8, p0, Lcom/gp/monolith/SimpleGameData;->timer:I

    goto/16 :goto_2

    .line 384
    :cond_10
    iget v5, p0, Lcom/gp/monolith/SimpleGameData;->lines:I

    if-le v5, v9, :cond_0

    .line 386
    const/16 v5, 0xa

    iput v5, p0, Lcom/gp/monolith/SimpleGameData;->newLevel:I

    .line 387
    const/16 v5, 0x32

    iput v5, p0, Lcom/gp/monolith/SimpleGameData;->timer:I

    goto/16 :goto_2

    .line 308
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public clearGrid()V
    .locals 4

    .prologue
    .line 39
    const/4 v0, 0x0

    .local v0, "x":I
    :goto_0
    iget v2, p0, Lcom/gp/monolith/SimpleGameData;->gridMaxWidth:I

    if-lt v0, v2, :cond_0

    .line 46
    const/4 v1, 0x0

    .local v1, "y":I
    :goto_1
    iget v2, p0, Lcom/gp/monolith/SimpleGameData;->gridMaxHeight:I

    if-lt v1, v2, :cond_2

    .line 50
    return-void

    .line 41
    .end local v1    # "y":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "y":I
    :goto_2
    iget v2, p0, Lcom/gp/monolith/SimpleGameData;->gridMaxHeight:I

    if-lt v1, v2, :cond_1

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    :cond_1
    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->grid:[[I

    aget-object v2, v2, v0

    const/4 v3, -0x1

    aput v3, v2, v1

    .line 41
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 48
    :cond_2
    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->clearedLines:[I

    const/4 v3, 0x0

    aput v3, v2, v1

    .line 46
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public flagCompletedLines()V
    .locals 5

    .prologue
    .line 393
    const/4 v2, 0x0

    .local v2, "y":I
    :goto_0
    iget v3, p0, Lcom/gp/monolith/SimpleGameData;->gridMaxHeight:I

    if-lt v2, v3, :cond_0

    .line 414
    return-void

    .line 396
    :cond_0
    const/4 v0, 0x1

    .line 397
    .local v0, "linecleared":Z
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_1
    iget v3, p0, Lcom/gp/monolith/SimpleGameData;->gridMaxWidth:I

    if-lt v1, v3, :cond_1

    .line 405
    :goto_2
    if-eqz v0, :cond_3

    .line 407
    iget-object v3, p0, Lcom/gp/monolith/SimpleGameData;->clearedLines:[I

    const/4 v4, 0x1

    aput v4, v3, v2

    .line 393
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 399
    :cond_1
    iget-object v3, p0, Lcom/gp/monolith/SimpleGameData;->grid:[[I

    aget-object v3, v3, v1

    aget v3, v3, v2

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 401
    const/4 v0, 0x0

    .line 402
    goto :goto_2

    .line 397
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 411
    :cond_3
    iget-object v3, p0, Lcom/gp/monolith/SimpleGameData;->clearedLines:[I

    const/4 v4, 0x0

    aput v4, v3, v2

    goto :goto_3
.end method

.method public gameLoop()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 118
    invoke-virtual {p0}, Lcom/gp/monolith/SimpleGameData;->moveBlockDown()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 120
    invoke-virtual {p0}, Lcom/gp/monolith/SimpleGameData;->clearCompleteLines()V

    .line 121
    iget v2, p0, Lcom/gp/monolith/SimpleGameData;->newLevel:I

    iget v3, p0, Lcom/gp/monolith/SimpleGameData;->level:I

    if-eq v2, v3, :cond_0

    .line 123
    iget v2, p0, Lcom/gp/monolith/SimpleGameData;->newLevel:I

    iput v2, p0, Lcom/gp/monolith/SimpleGameData;->level:I

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/4 v2, 0x4

    if-lt v1, v2, :cond_2

    .line 138
    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->nextBlock:Lcom/gp/monolith/Block;

    iput-object v2, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    .line 139
    new-instance v0, Lcom/gp/monolith/Block;

    invoke-direct {v0}, Lcom/gp/monolith/Block;-><init>()V

    .line 141
    .local v0, "bl":Lcom/gp/monolith/Block;
    iput-object v0, p0, Lcom/gp/monolith/SimpleGameData;->nextBlock:Lcom/gp/monolith/Block;

    goto :goto_0

    .line 131
    .end local v0    # "bl":Lcom/gp/monolith/Block;
    :cond_2
    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->grid:[[I

    iget-object v3, p0, Lcom/gp/monolith/SimpleGameData;->nextBlock:Lcom/gp/monolith/Block;

    iget-object v3, v3, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v3, v3, v5

    iget v3, v3, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v4, p0, Lcom/gp/monolith/SimpleGameData;->nextBlock:Lcom/gp/monolith/Block;

    iget v4, v4, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v3, v4

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v3, v3, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v3, v3, v5

    iget v3, v3, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v4, p0, Lcom/gp/monolith/SimpleGameData;->nextBlock:Lcom/gp/monolith/Block;

    iget v4, v4, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v3, v4

    aget v2, v2, v3

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 133
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/gp/monolith/SimpleGameData;->setStatus(I)V

    goto :goto_0

    .line 129
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getClearedLineCount()I
    .locals 3

    .prologue
    .line 417
    const/4 v0, 0x0

    .line 418
    .local v0, "cleared":I
    const/4 v1, 0x0

    .local v1, "line":I
    :goto_0
    iget v2, p0, Lcom/gp/monolith/SimpleGameData;->gridMaxHeight:I

    if-lt v1, v2, :cond_0

    .line 425
    return v0

    .line 420
    :cond_0
    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->clearedLines:[I

    aget v2, v2, v1

    if-eqz v2, :cond_1

    .line 422
    add-int/lit8 v0, v0, 0x1

    .line 418
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getClearedLines()[I
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/gp/monolith/SimpleGameData;->clearedLines:[I

    return-object v0
.end method

.method public getCurrentBlock()Lcom/gp/monolith/Block;
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    return-object v0
.end method

.method public getCurrentStep()I
    .locals 1

    .prologue
    .line 528
    iget v0, p0, Lcom/gp/monolith/SimpleGameData;->step:I

    return v0
.end method

.method public getEnergy()I
    .locals 1

    .prologue
    .line 513
    const/4 v0, 0x0

    return v0
.end method

.method public getGameType()I
    .locals 1

    .prologue
    .line 548
    const/4 v0, 0x0

    return v0
.end method

.method public getGridValue(II)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lcom/gp/monolith/SimpleGameData;->grid:[[I

    aget-object v0, v0, p1

    aget v0, v0, p2

    return v0
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 470
    iget v0, p0, Lcom/gp/monolith/SimpleGameData;->level:I

    return v0
.end method

.method public getLevelName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 474
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/gp/monolith/SimpleGameData;->level:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 475
    .local v0, "str":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 479
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "C"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 480
    return-object v0

    .line 477
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLevels()[I
    .locals 2

    .prologue
    .line 266
    const/16 v1, 0xa

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 267
    .local v0, "retval":[I
    return-object v0

    .line 266
    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
    .end array-data
.end method

.method public getLines()I
    .locals 1

    .prologue
    .line 489
    iget v0, p0, Lcom/gp/monolith/SimpleGameData;->lines:I

    return v0
.end method

.method public getNextBlock()Lcom/gp/monolith/Block;
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/gp/monolith/SimpleGameData;->nextBlock:Lcom/gp/monolith/Block;

    return-object v0
.end method

.method public getPreviousGridValue(II)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 110
    iget-object v0, p0, Lcom/gp/monolith/SimpleGameData;->grid:[[I

    aget-object v0, v0, p1

    aget v0, v0, p2

    return v0
.end method

.method public getScore()I
    .locals 1

    .prologue
    .line 462
    iget v0, p0, Lcom/gp/monolith/SimpleGameData;->score:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/gp/monolith/SimpleGameData;->status:I

    return v0
.end method

.method public getTimer()I
    .locals 1

    .prologue
    .line 509
    iget v0, p0, Lcom/gp/monolith/SimpleGameData;->timer:I

    return v0
.end method

.method public initGame(I)V
    .locals 3
    .param p1, "theStartingLevel"    # I

    .prologue
    const/4 v2, 0x0

    .line 53
    iput v2, p0, Lcom/gp/monolith/SimpleGameData;->score:I

    .line 54
    iput v2, p0, Lcom/gp/monolith/SimpleGameData;->lines:I

    .line 55
    iget v2, p0, Lcom/gp/monolith/SimpleGameData;->startingLevel:I

    iput v2, p0, Lcom/gp/monolith/SimpleGameData;->level:I

    .line 56
    iget v2, p0, Lcom/gp/monolith/SimpleGameData;->startingLevel:I

    iput v2, p0, Lcom/gp/monolith/SimpleGameData;->newLevel:I

    .line 57
    iput p1, p0, Lcom/gp/monolith/SimpleGameData;->startingLevel:I

    .line 58
    new-instance v0, Lcom/gp/monolith/Block;

    invoke-direct {v0}, Lcom/gp/monolith/Block;-><init>()V

    .line 59
    .local v0, "newblock":Lcom/gp/monolith/Block;
    iput-object v0, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    .line 60
    new-instance v1, Lcom/gp/monolith/Block;

    invoke-direct {v1}, Lcom/gp/monolith/Block;-><init>()V

    .line 61
    .local v1, "newnextblock":Lcom/gp/monolith/Block;
    iput-object v1, p0, Lcom/gp/monolith/SimpleGameData;->nextBlock:Lcom/gp/monolith/Block;

    .line 62
    packed-switch p1, :pswitch_data_0

    .line 95
    :goto_0
    return-void

    .line 65
    :pswitch_0
    const/16 v2, 0x1f4

    iput v2, p0, Lcom/gp/monolith/SimpleGameData;->timer:I

    goto :goto_0

    .line 68
    :pswitch_1
    const/16 v2, 0x1c2

    iput v2, p0, Lcom/gp/monolith/SimpleGameData;->timer:I

    goto :goto_0

    .line 71
    :pswitch_2
    const/16 v2, 0x190

    iput v2, p0, Lcom/gp/monolith/SimpleGameData;->timer:I

    goto :goto_0

    .line 74
    :pswitch_3
    const/16 v2, 0x15e

    iput v2, p0, Lcom/gp/monolith/SimpleGameData;->timer:I

    goto :goto_0

    .line 77
    :pswitch_4
    const/16 v2, 0x12c

    iput v2, p0, Lcom/gp/monolith/SimpleGameData;->timer:I

    goto :goto_0

    .line 80
    :pswitch_5
    const/16 v2, 0xfa

    iput v2, p0, Lcom/gp/monolith/SimpleGameData;->timer:I

    goto :goto_0

    .line 83
    :pswitch_6
    const/16 v2, 0xc8

    iput v2, p0, Lcom/gp/monolith/SimpleGameData;->timer:I

    goto :goto_0

    .line 86
    :pswitch_7
    const/16 v2, 0xa6

    iput v2, p0, Lcom/gp/monolith/SimpleGameData;->timer:I

    goto :goto_0

    .line 89
    :pswitch_8
    const/16 v2, 0x85

    iput v2, p0, Lcom/gp/monolith/SimpleGameData;->timer:I

    goto :goto_0

    .line 92
    :pswitch_9
    const/16 v2, 0x64

    iput v2, p0, Lcom/gp/monolith/SimpleGameData;->timer:I

    goto :goto_0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public isBlockPlaced()Z
    .locals 1

    .prologue
    .line 538
    iget-boolean v0, p0, Lcom/gp/monolith/SimpleGameData;->blockPlaced:Z

    return v0
.end method

.method public isTimerEnabled()Z
    .locals 1

    .prologue
    .line 497
    iget-boolean v0, p0, Lcom/gp/monolith/SimpleGameData;->timerEnabled:Z

    return v0
.end method

.method public loadGame(Landroid/content/SharedPreferences;)V
    .locals 9
    .param p1, "preferences"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 552
    const-string v5, "SimpleGameData.enableMonolithBlocks"

    invoke-interface {p1, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/gp/monolith/Block;->enableMonolithBlocks:Z

    .line 553
    const-string v5, "SimpleGameData.score"

    invoke-interface {p1, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/gp/monolith/SimpleGameData;->score:I

    .line 554
    const-string v5, "SimpleGameData.lines"

    invoke-interface {p1, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/gp/monolith/SimpleGameData;->lines:I

    .line 555
    const-string v5, "SimpleGameData.level"

    invoke-interface {p1, v5, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/gp/monolith/SimpleGameData;->level:I

    .line 556
    const-string v5, "SimpleGameData.timer"

    const/16 v6, 0x3e8

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/gp/monolith/SimpleGameData;->timer:I

    .line 557
    const-string v5, "SimpleGameData.timerEnabled"

    invoke-interface {p1, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/gp/monolith/SimpleGameData;->timerEnabled:Z

    .line 558
    const-string v5, "SimpleGameData.newLevel"

    invoke-interface {p1, v5, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/gp/monolith/SimpleGameData;->newLevel:I

    .line 559
    const-string v5, "SimpleGameData.startingLevel"

    invoke-interface {p1, v5, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/gp/monolith/SimpleGameData;->startingLevel:I

    .line 560
    const-string v5, "SimpleGameData.gridMaxWidth"

    const/16 v6, 0xa

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/gp/monolith/SimpleGameData;->gridMaxWidth:I

    .line 561
    const-string v5, "SimpleGameData.gridMaxHeight"

    const/16 v6, 0x14

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/gp/monolith/SimpleGameData;->gridMaxHeight:I

    .line 562
    iget v5, p0, Lcom/gp/monolith/SimpleGameData;->gridMaxWidth:I

    iget v6, p0, Lcom/gp/monolith/SimpleGameData;->gridMaxHeight:I

    filled-new-array {v5, v6}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[I

    iput-object v5, p0, Lcom/gp/monolith/SimpleGameData;->grid:[[I

    .line 563
    iput v7, p0, Lcom/gp/monolith/SimpleGameData;->step:I

    .line 564
    iput-boolean v7, p0, Lcom/gp/monolith/SimpleGameData;->blockPlaced:Z

    .line 566
    const/4 v4, 0x0

    .local v4, "y":I
    :goto_0
    iget v5, p0, Lcom/gp/monolith/SimpleGameData;->gridMaxHeight:I

    if-lt v4, v5, :cond_0

    .line 601
    iget v5, p0, Lcom/gp/monolith/SimpleGameData;->gridMaxHeight:I

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/gp/monolith/SimpleGameData;->clearedLines:[I

    .line 602
    const/4 v4, 0x0

    :goto_1
    iget v5, p0, Lcom/gp/monolith/SimpleGameData;->gridMaxHeight:I

    if-lt v4, v5, :cond_6

    .line 606
    return-void

    .line 568
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SimpleGameData.line"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 570
    .local v1, "line":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "x":I
    :goto_2
    iget v5, p0, Lcom/gp/monolith/SimpleGameData;->gridMaxWidth:I

    if-lt v3, v5, :cond_1

    .line 566
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 572
    :cond_1
    const/4 v0, -0x1

    .line 573
    .local v0, "currentSubblock":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    iget v6, p0, Lcom/gp/monolith/SimpleGameData;->gridMaxWidth:I

    if-ge v5, v6, :cond_2

    .line 575
    const/4 v0, -0x1

    .line 596
    :goto_3
    iget-object v5, p0, Lcom/gp/monolith/SimpleGameData;->grid:[[I

    aget-object v5, v5, v3

    aput v0, v5, v4

    .line 570
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 579
    :cond_2
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 581
    const/4 v0, -0x1

    goto :goto_3

    .line 585
    :cond_3
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 586
    .local v2, "subblock":I
    if-ltz v2, :cond_4

    const/4 v5, 0x6

    if-le v2, v5, :cond_5

    .line 588
    :cond_4
    const/4 v0, -0x1

    goto :goto_3

    .line 592
    :cond_5
    move v0, v2

    goto :goto_3

    .line 604
    .end local v0    # "currentSubblock":I
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "subblock":I
    .end local v3    # "x":I
    :cond_6
    iget-object v5, p0, Lcom/gp/monolith/SimpleGameData;->clearedLines:[I

    aput v7, v5, v4

    .line 602
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public moveBlockDown()Z
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 187
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v1, v1, Lcom/gp/monolith/Block;->height:I

    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v2, v2, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/gp/monolith/SimpleGameData;->gridMaxHeight:I

    if-ge v1, v2, :cond_2

    .line 205
    iget-object v1, p0, Lcom/gp/monolith/SimpleGameData;->grid:[[I

    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v4

    iget v2, v2, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v3, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v2, v3

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v4

    iget v2, v2, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v3, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    if-ne v1, v8, :cond_2

    .line 206
    iget-object v1, p0, Lcom/gp/monolith/SimpleGameData;->grid:[[I

    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v5

    iget v2, v2, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v3, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v2, v3

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v5

    iget v2, v2, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v3, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    if-ne v1, v8, :cond_2

    .line 207
    iget-object v1, p0, Lcom/gp/monolith/SimpleGameData;->grid:[[I

    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v6

    iget v2, v2, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v3, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v2, v3

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v6

    iget v2, v2, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v3, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    if-ne v1, v8, :cond_2

    .line 208
    iget-object v1, p0, Lcom/gp/monolith/SimpleGameData;->grid:[[I

    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v7

    iget v2, v2, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v3, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v2, v3

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v7

    iget v2, v2, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v3, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    if-ne v1, v8, :cond_2

    .line 211
    iget-object v1, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v2, v1, Lcom/gp/monolith/Block;->yPos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/gp/monolith/Block;->yPos:I

    move v1, v5

    .line 221
    :goto_1
    return v1

    .line 189
    :cond_0
    iget-object v1, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v1, v1, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v2, v2, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/gp/monolith/SimpleGameData;->gridMaxHeight:I

    add-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_1

    .line 191
    iget-object v1, p0, Lcom/gp/monolith/SimpleGameData;->grid:[[I

    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v4

    iget v2, v2, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v3, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v2, v3

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v4

    iget v2, v2, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v3, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->color:I

    aput v3, v1, v2

    .line 192
    iget-object v1, p0, Lcom/gp/monolith/SimpleGameData;->grid:[[I

    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v5

    iget v2, v2, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v3, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v2, v3

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v5

    iget v2, v2, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v3, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->color:I

    aput v3, v1, v2

    .line 193
    iget-object v1, p0, Lcom/gp/monolith/SimpleGameData;->grid:[[I

    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v6

    iget v2, v2, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v3, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v2, v3

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v6

    iget v2, v2, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v3, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->color:I

    aput v3, v1, v2

    .line 194
    iget-object v1, p0, Lcom/gp/monolith/SimpleGameData;->grid:[[I

    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v7

    iget v2, v2, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v3, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v2, v3

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v7

    iget v2, v2, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v3, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->color:I

    aput v3, v1, v2

    move v1, v4

    .line 198
    goto/16 :goto_1

    .line 187
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 216
    :cond_2
    iget v1, p0, Lcom/gp/monolith/SimpleGameData;->score:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/gp/monolith/SimpleGameData;->score:I

    .line 217
    iget-object v1, p0, Lcom/gp/monolith/SimpleGameData;->grid:[[I

    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v4

    iget v2, v2, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v3, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v2, v3

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v4

    iget v2, v2, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v3, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->color:I

    aput v3, v1, v2

    .line 218
    iget-object v1, p0, Lcom/gp/monolith/SimpleGameData;->grid:[[I

    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v5

    iget v2, v2, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v3, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v2, v3

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v5

    iget v2, v2, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v3, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->color:I

    aput v3, v1, v2

    .line 219
    iget-object v1, p0, Lcom/gp/monolith/SimpleGameData;->grid:[[I

    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v6

    iget v2, v2, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v3, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v2, v3

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v6

    iget v2, v2, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v3, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->color:I

    aput v3, v1, v2

    .line 220
    iget-object v1, p0, Lcom/gp/monolith/SimpleGameData;->grid:[[I

    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v7

    iget v2, v2, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v3, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v2, v3

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v7

    iget v2, v2, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v3, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->color:I

    aput v3, v1, v2

    move v1, v4

    .line 221
    goto/16 :goto_1
.end method

.method public moveBlockLeft()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 148
    iget-object v0, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v0, v0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v5

    iget v0, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v1, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v1, v1, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v0, v1

    if-lez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v0, v0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v3

    iget v0, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v1, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v1, v1, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v0, v1

    if-lez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v0, v0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v6

    iget v0, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v1, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v1, v1, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v0, v1

    if-lez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v0, v0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v7

    iget v0, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v1, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v1, v1, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v0, v1

    if-lez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/gp/monolith/SimpleGameData;->grid:[[I

    iget-object v1, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v1, v1, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v1, v1, v5

    iget v1, v1, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v2, v2, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v1, v2

    sub-int/2addr v1, v3

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v1, v1, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v1, v1, v5

    iget v1, v1, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v2, v2, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v1, v2

    aget v0, v0, v1

    if-ne v0, v4, :cond_0

    .line 156
    iget-object v0, p0, Lcom/gp/monolith/SimpleGameData;->grid:[[I

    iget-object v1, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v1, v1, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v1, v1, v3

    iget v1, v1, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v2, v2, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v1, v2

    sub-int/2addr v1, v3

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v1, v1, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v1, v1, v3

    iget v1, v1, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v2, v2, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v1, v2

    aget v0, v0, v1

    if-ne v0, v4, :cond_0

    .line 157
    iget-object v0, p0, Lcom/gp/monolith/SimpleGameData;->grid:[[I

    iget-object v1, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v1, v1, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v1, v1, v6

    iget v1, v1, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v2, v2, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v1, v2

    sub-int/2addr v1, v3

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v1, v1, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v1, v1, v6

    iget v1, v1, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v2, v2, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v1, v2

    aget v0, v0, v1

    if-ne v0, v4, :cond_0

    .line 158
    iget-object v0, p0, Lcom/gp/monolith/SimpleGameData;->grid:[[I

    iget-object v1, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v1, v1, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v1, v1, v7

    iget v1, v1, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v2, v2, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v1, v2

    sub-int/2addr v1, v3

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v1, v1, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v1, v1, v7

    iget v1, v1, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v2, v2, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v1, v2

    aget v0, v0, v1

    if-ne v0, v4, :cond_0

    .line 161
    iget-object v0, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v1, v0, Lcom/gp/monolith/Block;->xPos:I

    sub-int/2addr v1, v3

    iput v1, v0, Lcom/gp/monolith/Block;->xPos:I

    .line 164
    :cond_0
    return-void
.end method

.method public moveBlockRight()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 168
    iget-object v0, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v0, v0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v5

    iget v0, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v1, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v1, v1, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/gp/monolith/SimpleGameData;->gridMaxWidth:I

    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_0

    .line 169
    iget-object v0, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v0, v0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v3

    iget v0, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v1, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v1, v1, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/gp/monolith/SimpleGameData;->gridMaxWidth:I

    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_0

    .line 170
    iget-object v0, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v0, v0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v6

    iget v0, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v1, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v1, v1, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/gp/monolith/SimpleGameData;->gridMaxWidth:I

    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_0

    .line 171
    iget-object v0, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v0, v0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v7

    iget v0, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v1, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v1, v1, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/gp/monolith/SimpleGameData;->gridMaxWidth:I

    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_0

    .line 175
    iget-object v0, p0, Lcom/gp/monolith/SimpleGameData;->grid:[[I

    iget-object v1, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v1, v1, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v1, v1, v5

    iget v1, v1, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v2, v2, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v1, v1, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v1, v1, v5

    iget v1, v1, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v2, v2, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v1, v2

    aget v0, v0, v1

    if-ne v0, v4, :cond_0

    .line 176
    iget-object v0, p0, Lcom/gp/monolith/SimpleGameData;->grid:[[I

    iget-object v1, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v1, v1, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v1, v1, v3

    iget v1, v1, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v2, v2, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v1, v1, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v1, v1, v3

    iget v1, v1, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v2, v2, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v1, v2

    aget v0, v0, v1

    if-ne v0, v4, :cond_0

    .line 177
    iget-object v0, p0, Lcom/gp/monolith/SimpleGameData;->grid:[[I

    iget-object v1, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v1, v1, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v1, v1, v6

    iget v1, v1, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v2, v2, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v1, v1, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v1, v1, v6

    iget v1, v1, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v2, v2, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v1, v2

    aget v0, v0, v1

    if-ne v0, v4, :cond_0

    .line 178
    iget-object v0, p0, Lcom/gp/monolith/SimpleGameData;->grid:[[I

    iget-object v1, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v1, v1, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v1, v1, v7

    iget v1, v1, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v2, v2, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v1, v1, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v1, v1, v7

    iget v1, v1, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v2, v2, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v1, v2

    aget v0, v0, v1

    if-ne v0, v4, :cond_0

    .line 181
    iget-object v0, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v1, v0, Lcom/gp/monolith/Block;->xPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/gp/monolith/Block;->xPos:I

    .line 184
    :cond_0
    return-void
.end method

.method public rotateCurrentBlockClockwise()V
    .locals 5

    .prologue
    .line 429
    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v0, v2, Lcom/gp/monolith/Block;->orientation:I

    .line 430
    .local v0, "currentorientation":I
    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    invoke-virtual {v2}, Lcom/gp/monolith/Block;->rotateClockwise()V

    .line 431
    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    invoke-virtual {v2}, Lcom/gp/monolith/Block;->recalcBlockOrientation()V

    .line 432
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 455
    :goto_1
    return-void

    .line 434
    :cond_0
    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v2, v2, Lcom/gp/monolith/Block;->xPos:I

    iget-object v3, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v3, v3, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/gp/monolith/SubBlock;->xpos:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/gp/monolith/SimpleGameData;->gridMaxWidth:I

    if-lt v2, v3, :cond_1

    .line 436
    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iput v0, v2, Lcom/gp/monolith/Block;->orientation:I

    .line 437
    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    invoke-virtual {v2}, Lcom/gp/monolith/Block;->recalcBlockOrientation()V

    goto :goto_1

    .line 440
    :cond_1
    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v2, v2, Lcom/gp/monolith/Block;->yPos:I

    iget-object v3, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v3, v3, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/gp/monolith/SubBlock;->ypos:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/gp/monolith/SimpleGameData;->gridMaxHeight:I

    if-lt v2, v3, :cond_2

    .line 442
    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iput v0, v2, Lcom/gp/monolith/Block;->orientation:I

    .line 443
    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    invoke-virtual {v2}, Lcom/gp/monolith/Block;->recalcBlockOrientation()V

    goto :goto_1

    .line 447
    :cond_2
    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->grid:[[I

    iget-object v3, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v3, v3, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v4, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v4, v4, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v3, v4

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v3, v3, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v4, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v4, v4, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v3, v4

    aget v2, v2, v3

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 449
    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iput v0, v2, Lcom/gp/monolith/Block;->orientation:I

    .line 450
    iget-object v2, p0, Lcom/gp/monolith/SimpleGameData;->currentBlock:Lcom/gp/monolith/Block;

    invoke-virtual {v2}, Lcom/gp/monolith/Block;->recalcBlockOrientation()V

    goto :goto_1

    .line 432
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public saveGame(Landroid/content/SharedPreferences;)V
    .locals 7
    .param p1, "preferences"    # Landroid/content/SharedPreferences;

    .prologue
    .line 610
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 611
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "gamesaved"

    const/4 v6, 0x1

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 612
    const-string v5, "gametype"

    const/4 v6, 0x0

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 613
    const-string v5, "SimpleGameData.enableMonolithBlocks"

    sget-boolean v6, Lcom/gp/monolith/Block;->enableMonolithBlocks:Z

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 614
    const-string v5, "SimpleGameData.score"

    iget v6, p0, Lcom/gp/monolith/SimpleGameData;->score:I

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 615
    const-string v5, "SimpleGameData.lines"

    iget v6, p0, Lcom/gp/monolith/SimpleGameData;->lines:I

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 616
    const-string v5, "SimpleGameData.level"

    iget v6, p0, Lcom/gp/monolith/SimpleGameData;->level:I

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 617
    const-string v5, "SimpleGameData.timer"

    iget v6, p0, Lcom/gp/monolith/SimpleGameData;->timer:I

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 618
    const-string v5, "SimpleGameData.newLevel"

    iget v6, p0, Lcom/gp/monolith/SimpleGameData;->newLevel:I

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 619
    const-string v5, "SimpleGameData.startingLevel"

    iget v6, p0, Lcom/gp/monolith/SimpleGameData;->startingLevel:I

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 620
    const-string v5, "SimpleGameData.gridMaxWidth"

    iget v6, p0, Lcom/gp/monolith/SimpleGameData;->gridMaxWidth:I

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 621
    const-string v5, "SimpleGameData.gridMaxHeight"

    iget v6, p0, Lcom/gp/monolith/SimpleGameData;->gridMaxHeight:I

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 623
    const/4 v4, 0x0

    .local v4, "y":I
    :goto_0
    iget v5, p0, Lcom/gp/monolith/SimpleGameData;->gridMaxHeight:I

    if-lt v4, v5, :cond_0

    .line 643
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 644
    return-void

    .line 625
    :cond_0
    const-string v2, ""

    .line 626
    .local v2, "line":Ljava/lang/String;
    const-string v0, ""

    .line 627
    .local v0, "currentChar":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "x":I
    :goto_1
    iget v5, p0, Lcom/gp/monolith/SimpleGameData;->gridMaxWidth:I

    if-lt v3, v5, :cond_1

    .line 641
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SimpleGameData.line"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 623
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 629
    :cond_1
    iget-object v5, p0, Lcom/gp/monolith/SimpleGameData;->grid:[[I

    aget-object v5, v5, v3

    aget v5, v5, v4

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 631
    const-string v0, " "

    .line 638
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 627
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 635
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/gp/monolith/SimpleGameData;->grid:[[I

    aget-object v6, v6, v3

    aget v6, v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public setEnergy(I)V
    .locals 0
    .param p1, "energy"    # I

    .prologue
    .line 518
    return-void
.end method

.method public setGridValue(III)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "value"    # I

    .prologue
    .line 114
    iget-object v0, p0, Lcom/gp/monolith/SimpleGameData;->grid:[[I

    aget-object v0, v0, p1

    aput p3, v0, p2

    .line 115
    return-void
.end method

.method public setLevel(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 466
    iput p1, p0, Lcom/gp/monolith/SimpleGameData;->level:I

    .line 467
    return-void
.end method

.method public setLines(I)V
    .locals 0
    .param p1, "lines"    # I

    .prologue
    .line 484
    iput p1, p0, Lcom/gp/monolith/SimpleGameData;->lines:I

    .line 486
    return-void
.end method

.method public setScore(I)V
    .locals 0
    .param p1, "score"    # I

    .prologue
    .line 458
    iput p1, p0, Lcom/gp/monolith/SimpleGameData;->score:I

    .line 459
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 98
    iput p1, p0, Lcom/gp/monolith/SimpleGameData;->status:I

    .line 99
    return-void
.end method

.method public setStep(I)V
    .locals 0
    .param p1, "step"    # I

    .prologue
    .line 532
    iput p1, p0, Lcom/gp/monolith/SimpleGameData;->step:I

    .line 533
    return-void
.end method

.method public setTimer(I)V
    .locals 0
    .param p1, "time"    # I

    .prologue
    .line 252
    iput p1, p0, Lcom/gp/monolith/SimpleGameData;->timer:I

    .line 253
    return-void
.end method

.method public setTimerEnabled(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 493
    iput-boolean p1, p0, Lcom/gp/monolith/SimpleGameData;->timerEnabled:Z

    .line 494
    return-void
.end method
