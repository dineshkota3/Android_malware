.class public Lcom/gp/monolith/PuzzleGameData;
.super Ljava/lang/Object;
.source "PuzzleGameData.java"

# interfaces
.implements Lcom/gp/monolith/Game;


# static fields
.field public static BOUNDARY_CONDITION_WRAPAROUND:I

.field public static BOUNDARY_CONDITION_ZEROES:I


# instance fields
.field blockIndex:I

.field private blockPlaced:Z

.field private boundaryCondition:I

.field private clearedLines:[I

.field public currentBlock:Lcom/gp/monolith/Block;

.field public energy:I

.field private grid:[[I

.field public gridMaxHeight:I

.field public gridMaxWidth:I

.field public level:I

.field public lines:I

.field newLevel:I

.field public nextBlock:Lcom/gp/monolith/Block;

.field private oldgrid:[[I

.field public score:I

.field startingLevel:I

.field private status:I

.field private step:I

.field public timer:I

.field timerEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const/4 v0, 0x0

    sput v0, Lcom/gp/monolith/PuzzleGameData;->BOUNDARY_CONDITION_ZEROES:I

    .line 6
    const/4 v0, 0x1

    sput v0, Lcom/gp/monolith/PuzzleGameData;->BOUNDARY_CONDITION_WRAPAROUND:I

    .line 3
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    sget v2, Lcom/gp/monolith/PuzzleGameData;->BOUNDARY_CONDITION_ZEROES:I

    iput v2, p0, Lcom/gp/monolith/PuzzleGameData;->boundaryCondition:I

    .line 11
    sput-boolean v4, Lcom/gp/monolith/Block;->enableMonolithBlocks:Z

    .line 12
    iput v4, p0, Lcom/gp/monolith/PuzzleGameData;->score:I

    .line 13
    iput v4, p0, Lcom/gp/monolith/PuzzleGameData;->lines:I

    .line 14
    iput v3, p0, Lcom/gp/monolith/PuzzleGameData;->level:I

    .line 15
    const/16 v2, 0x3e8

    iput v2, p0, Lcom/gp/monolith/PuzzleGameData;->timer:I

    .line 16
    iput-boolean v4, p0, Lcom/gp/monolith/PuzzleGameData;->timerEnabled:Z

    .line 17
    iput v3, p0, Lcom/gp/monolith/PuzzleGameData;->newLevel:I

    .line 18
    iput v3, p0, Lcom/gp/monolith/PuzzleGameData;->startingLevel:I

    .line 19
    const/16 v2, 0xa

    iput v2, p0, Lcom/gp/monolith/PuzzleGameData;->gridMaxWidth:I

    .line 20
    const/16 v2, 0x14

    iput v2, p0, Lcom/gp/monolith/PuzzleGameData;->gridMaxHeight:I

    .line 21
    iget v2, p0, Lcom/gp/monolith/PuzzleGameData;->gridMaxWidth:I

    iget v3, p0, Lcom/gp/monolith/PuzzleGameData;->gridMaxHeight:I

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    iput-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->grid:[[I

    .line 23
    iget v2, p0, Lcom/gp/monolith/PuzzleGameData;->gridMaxWidth:I

    iget v3, p0, Lcom/gp/monolith/PuzzleGameData;->gridMaxHeight:I

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    iput-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->oldgrid:[[I

    .line 25
    iput v4, p0, Lcom/gp/monolith/PuzzleGameData;->energy:I

    .line 26
    const/4 v1, 0x0

    .local v1, "y":I
    :goto_0
    iget v2, p0, Lcom/gp/monolith/PuzzleGameData;->gridMaxHeight:I

    if-lt v1, v2, :cond_0

    .line 35
    iget v2, p0, Lcom/gp/monolith/PuzzleGameData;->gridMaxHeight:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->clearedLines:[I

    .line 36
    const/4 v1, 0x0

    :goto_1
    iget v2, p0, Lcom/gp/monolith/PuzzleGameData;->gridMaxHeight:I

    if-lt v1, v2, :cond_2

    .line 40
    return-void

    .line 28
    :cond_0
    const/4 v0, 0x0

    .local v0, "x":I
    :goto_2
    iget v2, p0, Lcom/gp/monolith/PuzzleGameData;->gridMaxWidth:I

    if-lt v0, v2, :cond_1

    .line 26
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 30
    :cond_1
    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->grid:[[I

    aget-object v2, v2, v0

    aput v5, v2, v1

    .line 31
    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->oldgrid:[[I

    aget-object v2, v2, v0

    aput v5, v2, v1

    .line 28
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 38
    .end local v0    # "x":I
    :cond_2
    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->clearedLines:[I

    aput v4, v2, v1

    .line 36
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 0
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 732
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

    .line 378
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 386
    iget-object v1, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v1, v1, Lcom/gp/monolith/Block;->height:I

    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v2, v2, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/gp/monolith/PuzzleGameData;->gridMaxHeight:I

    if-ge v1, v2, :cond_2

    .line 389
    iget-object v1, p0, Lcom/gp/monolith/PuzzleGameData;->grid:[[I

    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v5

    iget v2, v2, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v3, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v2, v3

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v5

    iget v2, v2, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v3, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    if-ne v1, v4, :cond_2

    .line 390
    iget-object v1, p0, Lcom/gp/monolith/PuzzleGameData;->grid:[[I

    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v6

    iget v2, v2, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v3, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v2, v3

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v6

    iget v2, v2, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v3, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    if-ne v1, v4, :cond_2

    .line 391
    iget-object v1, p0, Lcom/gp/monolith/PuzzleGameData;->grid:[[I

    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v7

    iget v2, v2, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v3, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v2, v3

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v7

    iget v2, v2, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v3, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    if-ne v1, v4, :cond_2

    .line 392
    iget-object v1, p0, Lcom/gp/monolith/PuzzleGameData;->grid:[[I

    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v8

    iget v2, v2, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v3, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v2, v3

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v8

    iget v2, v2, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v3, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    if-ne v1, v4, :cond_2

    move v1, v6

    .line 399
    :goto_1
    return v1

    .line 380
    :cond_0
    iget-object v1, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v1, v1, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v2, v2, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/gp/monolith/PuzzleGameData;->gridMaxHeight:I

    add-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_1

    move v1, v5

    .line 382
    goto :goto_1

    .line 378
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_2
    move v1, v5

    .line 399
    goto :goto_1
.end method

.method public clearCompleteLines()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v12, -0x1

    const/16 v11, 0xc8

    const/16 v10, 0x64

    .line 423
    iget v7, p0, Lcom/gp/monolith/PuzzleGameData;->gridMaxHeight:I

    sub-int v0, v7, v13

    .line 424
    .local v0, "currentline":I
    const/4 v2, 0x0

    .line 425
    .local v2, "linescleared":I
    iget v7, p0, Lcom/gp/monolith/PuzzleGameData;->level:I

    iput v7, p0, Lcom/gp/monolith/PuzzleGameData;->newLevel:I

    .line 426
    :goto_0
    if-gtz v0, :cond_1

    .line 475
    packed-switch v2, :pswitch_data_0

    .line 493
    :goto_1
    :pswitch_0
    iget v7, p0, Lcom/gp/monolith/PuzzleGameData;->lines:I

    .line 496
    add-int/2addr v7, v2

    iput v7, p0, Lcom/gp/monolith/PuzzleGameData;->lines:I

    .line 497
    iget v7, p0, Lcom/gp/monolith/PuzzleGameData;->lines:I

    const/16 v8, 0x14

    if-le v7, v8, :cond_c

    iget v7, p0, Lcom/gp/monolith/PuzzleGameData;->lines:I

    const/16 v8, 0x28

    if-gt v7, v8, :cond_c

    .line 499
    iput v14, p0, Lcom/gp/monolith/PuzzleGameData;->newLevel:I

    .line 500
    const/16 v7, 0x384

    iput v7, p0, Lcom/gp/monolith/PuzzleGameData;->timer:I

    .line 557
    :cond_0
    :goto_2
    return-void

    .line 428
    :cond_1
    const/4 v1, 0x1

    .line 429
    .local v1, "linecomplete":Z
    const/4 v3, 0x0

    .local v3, "x":I
    :goto_3
    iget v7, p0, Lcom/gp/monolith/PuzzleGameData;->gridMaxWidth:I

    if-lt v3, v7, :cond_2

    .line 436
    if-eqz v1, :cond_b

    .line 438
    const/4 v3, 0x0

    :goto_4
    iget v7, p0, Lcom/gp/monolith/PuzzleGameData;->gridMaxWidth:I

    if-lt v3, v7, :cond_4

    .line 453
    move v5, v0

    .local v5, "y":I
    :goto_5
    if-gtz v5, :cond_8

    .line 467
    add-int/lit8 v2, v2, 0x1

    .line 468
    iget v7, p0, Lcom/gp/monolith/PuzzleGameData;->energy:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/gp/monolith/PuzzleGameData;->energy:I

    goto :goto_0

    .line 431
    .end local v5    # "y":I
    :cond_2
    iget-object v7, p0, Lcom/gp/monolith/PuzzleGameData;->grid:[[I

    aget-object v7, v7, v3

    aget v7, v7, v0

    if-ne v7, v12, :cond_3

    .line 433
    const/4 v1, 0x0

    .line 429
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 440
    :cond_4
    iget-object v7, p0, Lcom/gp/monolith/PuzzleGameData;->grid:[[I

    aget-object v7, v7, v3

    aget v7, v7, v0

    const/4 v8, 0x7

    if-ne v7, v8, :cond_5

    iget v7, p0, Lcom/gp/monolith/PuzzleGameData;->energy:I

    if-lez v7, :cond_5

    .line 442
    const/4 v7, 0x4

    iput v7, p0, Lcom/gp/monolith/PuzzleGameData;->status:I

    .line 443
    const/4 v6, 0x0

    .local v6, "ypos":I
    :goto_6
    iget v7, p0, Lcom/gp/monolith/PuzzleGameData;->gridMaxHeight:I

    if-lt v6, v7, :cond_6

    .line 438
    .end local v6    # "ypos":I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 445
    .restart local v6    # "ypos":I
    :cond_6
    const/4 v4, 0x0

    .local v4, "xpos":I
    :goto_7
    iget v7, p0, Lcom/gp/monolith/PuzzleGameData;->gridMaxWidth:I

    if-lt v4, v7, :cond_7

    .line 443
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 447
    :cond_7
    iget-object v7, p0, Lcom/gp/monolith/PuzzleGameData;->oldgrid:[[I

    aget-object v7, v7, v4

    iget-object v8, p0, Lcom/gp/monolith/PuzzleGameData;->grid:[[I

    aget-object v8, v8, v4

    aget v8, v8, v6

    aput v8, v7, v6

    .line 445
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 455
    .end local v4    # "xpos":I
    .end local v6    # "ypos":I
    .restart local v5    # "y":I
    :cond_8
    const/4 v3, 0x0

    :goto_8
    iget v7, p0, Lcom/gp/monolith/PuzzleGameData;->gridMaxWidth:I

    if-lt v3, v7, :cond_9

    .line 453
    add-int/lit8 v5, v5, -0x1

    goto :goto_5

    .line 457
    :cond_9
    if-lez v5, :cond_a

    .line 459
    iget-object v7, p0, Lcom/gp/monolith/PuzzleGameData;->grid:[[I

    aget-object v7, v7, v3

    iget-object v8, p0, Lcom/gp/monolith/PuzzleGameData;->grid:[[I

    aget-object v8, v8, v3

    sub-int v9, v5, v13

    aget v8, v8, v9

    aput v8, v7, v5

    .line 455
    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 463
    :cond_a
    iget-object v7, p0, Lcom/gp/monolith/PuzzleGameData;->grid:[[I

    aget-object v7, v7, v3

    aput v12, v7, v5

    goto :goto_9

    .line 472
    .end local v5    # "y":I
    :cond_b
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 480
    .end local v1    # "linecomplete":Z
    .end local v3    # "x":I
    :pswitch_1
    iget v7, p0, Lcom/gp/monolith/PuzzleGameData;->score:I

    add-int/lit8 v7, v7, 0x19

    iput v7, p0, Lcom/gp/monolith/PuzzleGameData;->score:I

    goto/16 :goto_1

    .line 483
    :pswitch_2
    iget v7, p0, Lcom/gp/monolith/PuzzleGameData;->score:I

    add-int/lit8 v7, v7, 0x4b

    iput v7, p0, Lcom/gp/monolith/PuzzleGameData;->score:I

    goto/16 :goto_1

    .line 487
    :pswitch_3
    iget v7, p0, Lcom/gp/monolith/PuzzleGameData;->score:I

    add-int/lit8 v7, v7, 0x64

    iput v7, p0, Lcom/gp/monolith/PuzzleGameData;->score:I

    goto/16 :goto_1

    .line 490
    :pswitch_4
    iget v7, p0, Lcom/gp/monolith/PuzzleGameData;->score:I

    add-int/lit16 v7, v7, 0xc8

    iput v7, p0, Lcom/gp/monolith/PuzzleGameData;->score:I

    goto/16 :goto_1

    .line 503
    :cond_c
    iget v7, p0, Lcom/gp/monolith/PuzzleGameData;->lines:I

    const/16 v8, 0x28

    if-le v7, v8, :cond_d

    iget v7, p0, Lcom/gp/monolith/PuzzleGameData;->lines:I

    const/16 v8, 0x3c

    if-gt v7, v8, :cond_d

    .line 505
    iput v14, p0, Lcom/gp/monolith/PuzzleGameData;->newLevel:I

    .line 506
    const/16 v7, 0x320

    iput v7, p0, Lcom/gp/monolith/PuzzleGameData;->timer:I

    goto/16 :goto_2

    .line 509
    :cond_d
    iget v7, p0, Lcom/gp/monolith/PuzzleGameData;->lines:I

    const/16 v8, 0x3c

    if-le v7, v8, :cond_e

    iget v7, p0, Lcom/gp/monolith/PuzzleGameData;->lines:I

    const/16 v8, 0x50

    if-gt v7, v8, :cond_e

    .line 511
    const/4 v7, 0x3

    iput v7, p0, Lcom/gp/monolith/PuzzleGameData;->newLevel:I

    .line 512
    const/16 v7, 0x2bc

    iput v7, p0, Lcom/gp/monolith/PuzzleGameData;->timer:I

    goto/16 :goto_2

    .line 515
    :cond_e
    iget v7, p0, Lcom/gp/monolith/PuzzleGameData;->lines:I

    const/16 v8, 0x50

    if-le v7, v8, :cond_f

    iget v7, p0, Lcom/gp/monolith/PuzzleGameData;->lines:I

    if-gt v7, v10, :cond_f

    .line 517
    const/4 v7, 0x4

    iput v7, p0, Lcom/gp/monolith/PuzzleGameData;->newLevel:I

    .line 518
    const/16 v7, 0x258

    iput v7, p0, Lcom/gp/monolith/PuzzleGameData;->timer:I

    goto/16 :goto_2

    .line 521
    :cond_f
    iget v7, p0, Lcom/gp/monolith/PuzzleGameData;->lines:I

    if-le v7, v10, :cond_10

    iget v7, p0, Lcom/gp/monolith/PuzzleGameData;->lines:I

    const/16 v8, 0x78

    if-gt v7, v8, :cond_10

    .line 523
    const/4 v7, 0x5

    iput v7, p0, Lcom/gp/monolith/PuzzleGameData;->newLevel:I

    .line 524
    const/16 v7, 0x1f4

    iput v7, p0, Lcom/gp/monolith/PuzzleGameData;->timer:I

    goto/16 :goto_2

    .line 527
    :cond_10
    iget v7, p0, Lcom/gp/monolith/PuzzleGameData;->lines:I

    const/16 v8, 0x78

    if-le v7, v8, :cond_11

    iget v7, p0, Lcom/gp/monolith/PuzzleGameData;->lines:I

    const/16 v8, 0x8c

    if-gt v7, v8, :cond_11

    .line 529
    const/4 v7, 0x6

    iput v7, p0, Lcom/gp/monolith/PuzzleGameData;->newLevel:I

    .line 530
    const/16 v7, 0x190

    iput v7, p0, Lcom/gp/monolith/PuzzleGameData;->timer:I

    goto/16 :goto_2

    .line 533
    :cond_11
    iget v7, p0, Lcom/gp/monolith/PuzzleGameData;->lines:I

    const/16 v8, 0x8c

    if-le v7, v8, :cond_12

    iget v7, p0, Lcom/gp/monolith/PuzzleGameData;->lines:I

    const/16 v8, 0xa0

    if-gt v7, v8, :cond_12

    .line 535
    const/4 v7, 0x7

    iput v7, p0, Lcom/gp/monolith/PuzzleGameData;->newLevel:I

    .line 536
    const/16 v7, 0x12c

    iput v7, p0, Lcom/gp/monolith/PuzzleGameData;->timer:I

    goto/16 :goto_2

    .line 539
    :cond_12
    iget v7, p0, Lcom/gp/monolith/PuzzleGameData;->lines:I

    const/16 v8, 0xa0

    if-le v7, v8, :cond_13

    iget v7, p0, Lcom/gp/monolith/PuzzleGameData;->lines:I

    const/16 v8, 0xb4

    if-gt v7, v8, :cond_13

    .line 541
    const/16 v7, 0x8

    iput v7, p0, Lcom/gp/monolith/PuzzleGameData;->newLevel:I

    .line 542
    iput v11, p0, Lcom/gp/monolith/PuzzleGameData;->timer:I

    goto/16 :goto_2

    .line 545
    :cond_13
    iget v7, p0, Lcom/gp/monolith/PuzzleGameData;->lines:I

    const/16 v8, 0xb4

    if-le v7, v8, :cond_14

    iget v7, p0, Lcom/gp/monolith/PuzzleGameData;->lines:I

    if-gt v7, v11, :cond_14

    .line 547
    const/16 v7, 0x9

    iput v7, p0, Lcom/gp/monolith/PuzzleGameData;->newLevel:I

    .line 548
    iput v10, p0, Lcom/gp/monolith/PuzzleGameData;->timer:I

    goto/16 :goto_2

    .line 551
    :cond_14
    iget v7, p0, Lcom/gp/monolith/PuzzleGameData;->lines:I

    if-le v7, v11, :cond_0

    .line 553
    const/16 v7, 0xa

    iput v7, p0, Lcom/gp/monolith/PuzzleGameData;->newLevel:I

    .line 554
    const/16 v7, 0x32

    iput v7, p0, Lcom/gp/monolith/PuzzleGameData;->timer:I

    goto/16 :goto_2

    .line 475
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
    const/4 v3, -0x1

    .line 44
    const/4 v0, 0x0

    .local v0, "x":I
    :goto_0
    iget v2, p0, Lcom/gp/monolith/PuzzleGameData;->gridMaxWidth:I

    if-lt v0, v2, :cond_0

    .line 52
    const/4 v1, 0x0

    .local v1, "y":I
    :goto_1
    iget v2, p0, Lcom/gp/monolith/PuzzleGameData;->gridMaxHeight:I

    if-lt v1, v2, :cond_2

    .line 56
    return-void

    .line 46
    .end local v1    # "y":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "y":I
    :goto_2
    iget v2, p0, Lcom/gp/monolith/PuzzleGameData;->gridMaxHeight:I

    if-lt v1, v2, :cond_1

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    :cond_1
    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->grid:[[I

    aget-object v2, v2, v0

    aput v3, v2, v1

    .line 49
    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->oldgrid:[[I

    aget-object v2, v2, v0

    aput v3, v2, v1

    .line 46
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 54
    :cond_2
    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->clearedLines:[I

    const/4 v3, 0x0

    aput v3, v2, v1

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public flagCompletedLines()V
    .locals 5

    .prologue
    .line 560
    const/4 v2, 0x0

    .local v2, "y":I
    :goto_0
    iget v3, p0, Lcom/gp/monolith/PuzzleGameData;->gridMaxHeight:I

    if-lt v2, v3, :cond_0

    .line 581
    return-void

    .line 563
    :cond_0
    const/4 v0, 0x1

    .line 564
    .local v0, "linecleared":Z
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_1
    iget v3, p0, Lcom/gp/monolith/PuzzleGameData;->gridMaxWidth:I

    if-lt v1, v3, :cond_1

    .line 572
    :goto_2
    if-eqz v0, :cond_3

    .line 574
    iget-object v3, p0, Lcom/gp/monolith/PuzzleGameData;->clearedLines:[I

    const/4 v4, 0x1

    aput v4, v3, v2

    .line 560
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 566
    :cond_1
    iget-object v3, p0, Lcom/gp/monolith/PuzzleGameData;->grid:[[I

    aget-object v3, v3, v1

    aget v3, v3, v2

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 568
    const/4 v0, 0x0

    .line 569
    goto :goto_2

    .line 564
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 578
    :cond_3
    iget-object v3, p0, Lcom/gp/monolith/PuzzleGameData;->clearedLines:[I

    const/4 v4, 0x0

    aput v4, v3, v2

    goto :goto_3
.end method

.method public gameLoop()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 275
    invoke-virtual {p0}, Lcom/gp/monolith/PuzzleGameData;->moveBlockDown()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 277
    invoke-virtual {p0}, Lcom/gp/monolith/PuzzleGameData;->clearCompleteLines()V

    .line 278
    iget v2, p0, Lcom/gp/monolith/PuzzleGameData;->newLevel:I

    iget v3, p0, Lcom/gp/monolith/PuzzleGameData;->level:I

    if-eq v2, v3, :cond_0

    .line 280
    iget v2, p0, Lcom/gp/monolith/PuzzleGameData;->newLevel:I

    iput v2, p0, Lcom/gp/monolith/PuzzleGameData;->level:I

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/4 v2, 0x4

    if-lt v1, v2, :cond_2

    .line 293
    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->nextBlock:Lcom/gp/monolith/Block;

    iput-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    .line 294
    new-instance v0, Lcom/gp/monolith/Block;

    invoke-direct {v0}, Lcom/gp/monolith/Block;-><init>()V

    .line 295
    .local v0, "bl":Lcom/gp/monolith/Block;
    iput-object v0, p0, Lcom/gp/monolith/PuzzleGameData;->nextBlock:Lcom/gp/monolith/Block;

    goto :goto_0

    .line 287
    .end local v0    # "bl":Lcom/gp/monolith/Block;
    :cond_2
    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->grid:[[I

    iget-object v3, p0, Lcom/gp/monolith/PuzzleGameData;->nextBlock:Lcom/gp/monolith/Block;

    iget-object v3, v3, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v3, v3, v5

    iget v3, v3, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v4, p0, Lcom/gp/monolith/PuzzleGameData;->nextBlock:Lcom/gp/monolith/Block;

    iget v4, v4, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v3, v4

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v3, v3, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v3, v3, v5

    iget v3, v3, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v4, p0, Lcom/gp/monolith/PuzzleGameData;->nextBlock:Lcom/gp/monolith/Block;

    iget v4, v4, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v3, v4

    aget v2, v2, v3

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 289
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/gp/monolith/PuzzleGameData;->setStatus(I)V

    goto :goto_0

    .line 285
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getBlockIndex()I
    .locals 1

    .prologue
    .line 704
    iget v0, p0, Lcom/gp/monolith/PuzzleGameData;->blockIndex:I

    return v0
.end method

.method public getClearedLineCount()I
    .locals 3

    .prologue
    .line 584
    const/4 v0, 0x0

    .line 585
    .local v0, "cleared":I
    const/4 v1, 0x0

    .local v1, "line":I
    :goto_0
    iget v2, p0, Lcom/gp/monolith/PuzzleGameData;->gridMaxHeight:I

    if-lt v1, v2, :cond_0

    .line 592
    return v0

    .line 587
    :cond_0
    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->clearedLines:[I

    aget v2, v2, v1

    if-eqz v2, :cond_1

    .line 589
    add-int/lit8 v0, v0, 0x1

    .line 585
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getClearedLines()[I
    .locals 1

    .prologue
    .line 700
    iget-object v0, p0, Lcom/gp/monolith/PuzzleGameData;->clearedLines:[I

    return-object v0
.end method

.method public getCurrentBlock()Lcom/gp/monolith/Block;
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    return-object v0
.end method

.method public getCurrentStep()I
    .locals 1

    .prologue
    .line 713
    iget v0, p0, Lcom/gp/monolith/PuzzleGameData;->step:I

    return v0
.end method

.method public getEnergy()I
    .locals 1

    .prologue
    .line 692
    iget v0, p0, Lcom/gp/monolith/PuzzleGameData;->energy:I

    return v0
.end method

.method public getGameType()I
    .locals 1

    .prologue
    .line 657
    const/4 v0, 0x2

    return v0
.end method

.method public getGridValue(II)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 112
    iget-object v0, p0, Lcom/gp/monolith/PuzzleGameData;->grid:[[I

    aget-object v0, v0, p1

    aget v0, v0, p2

    return v0
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 638
    iget v0, p0, Lcom/gp/monolith/PuzzleGameData;->level:I

    return v0
.end method

.method public getLevelName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 642
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/gp/monolith/PuzzleGameData;->level:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 643
    .local v0, "str":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 647
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "P"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 648
    return-object v0

    .line 645
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
    .line 652
    const/16 v1, 0xa

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 653
    .local v0, "retval":[I
    return-object v0

    .line 652
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
    .line 666
    iget v0, p0, Lcom/gp/monolith/PuzzleGameData;->lines:I

    return v0
.end method

.method public getNeighbourCount(II)I
    .locals 12
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 124
    iget v9, p0, Lcom/gp/monolith/PuzzleGameData;->boundaryCondition:I

    sget v10, Lcom/gp/monolith/PuzzleGameData;->BOUNDARY_CONDITION_WRAPAROUND:I

    if-ne v9, v10, :cond_6

    .line 126
    const/16 v9, 0x8

    new-array v3, v9, [I

    .line 127
    .local v3, "neighbourx":[I
    const/16 v9, 0x8

    new-array v4, v9, [I

    .line 128
    .local v4, "neighboury":[I
    const/4 v9, 0x1

    sub-int v6, p1, v9

    .line 129
    .local v6, "xprev":I
    add-int/lit8 v5, p1, 0x1

    .line 130
    .local v5, "xnext":I
    const/4 v9, 0x1

    sub-int v8, p2, v9

    .line 131
    .local v8, "yprev":I
    add-int/lit8 v7, p2, 0x1

    .line 132
    .local v7, "ynext":I
    if-nez p1, :cond_0

    .line 134
    iget v9, p0, Lcom/gp/monolith/PuzzleGameData;->gridMaxWidth:I

    const/4 v10, 0x1

    sub-int v6, v9, v10

    .line 135
    add-int/lit8 v5, p1, 0x1

    .line 138
    :cond_0
    iget v9, p0, Lcom/gp/monolith/PuzzleGameData;->gridMaxWidth:I

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    if-ne p1, v9, :cond_1

    .line 140
    const/4 v9, 0x1

    sub-int v6, p1, v9

    .line 141
    const/4 v5, 0x0

    .line 143
    :cond_1
    if-nez p2, :cond_2

    .line 145
    iget v9, p0, Lcom/gp/monolith/PuzzleGameData;->gridMaxHeight:I

    const/4 v10, 0x1

    sub-int v8, v9, v10

    .line 146
    add-int/lit8 v7, p2, 0x1

    .line 148
    :cond_2
    iget v9, p0, Lcom/gp/monolith/PuzzleGameData;->gridMaxHeight:I

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    if-ne p2, v9, :cond_3

    .line 150
    const/4 v9, 0x1

    sub-int v8, p2, v9

    .line 151
    const/4 v7, 0x0

    .line 154
    :cond_3
    const/4 v9, 0x0

    aput v6, v3, v9

    .line 155
    const/4 v9, 0x0

    aput v8, v4, v9

    .line 156
    const/4 v9, 0x1

    aput p1, v3, v9

    .line 157
    const/4 v9, 0x1

    aput v8, v4, v9

    .line 158
    const/4 v9, 0x2

    aput v5, v3, v9

    .line 159
    const/4 v9, 0x2

    aput v8, v4, v9

    .line 160
    const/4 v9, 0x3

    aput v6, v3, v9

    .line 161
    const/4 v9, 0x3

    aput p2, v4, v9

    .line 162
    const/4 v9, 0x4

    aput v5, v3, v9

    .line 163
    const/4 v9, 0x4

    aput p2, v4, v9

    .line 164
    const/4 v9, 0x5

    aput v6, v3, v9

    .line 165
    const/4 v9, 0x5

    aput v7, v4, v9

    .line 166
    const/4 v9, 0x6

    aput p1, v3, v9

    .line 167
    const/4 v9, 0x6

    aput v7, v4, v9

    .line 168
    const/4 v9, 0x7

    aput v5, v3, v9

    .line 169
    const/4 v9, 0x7

    aput v7, v4, v9

    .line 170
    const/4 v0, 0x0

    .line 171
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v9, 0x8

    if-lt v1, v9, :cond_4

    move v9, v0

    .line 252
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v3    # "neighbourx":[I
    .end local v4    # "neighboury":[I
    .end local v5    # "xnext":I
    .end local v6    # "xprev":I
    .end local v7    # "ynext":I
    .end local v8    # "yprev":I
    :goto_1
    return v9

    .line 173
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v3    # "neighbourx":[I
    .restart local v4    # "neighboury":[I
    .restart local v5    # "xnext":I
    .restart local v6    # "xprev":I
    .restart local v7    # "ynext":I
    .restart local v8    # "yprev":I
    :cond_4
    iget-object v9, p0, Lcom/gp/monolith/PuzzleGameData;->grid:[[I

    aget v10, v3, v1

    aget-object v9, v9, v10

    aget v10, v4, v1

    aget v9, v9, v10

    const/4 v10, -0x1

    if-eq v9, v10, :cond_5

    .line 175
    add-int/lit8 v0, v0, 0x1

    .line 171
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 180
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v3    # "neighbourx":[I
    .end local v4    # "neighboury":[I
    .end local v5    # "xnext":I
    .end local v6    # "xprev":I
    .end local v7    # "ynext":I
    .end local v8    # "yprev":I
    :cond_6
    iget v9, p0, Lcom/gp/monolith/PuzzleGameData;->boundaryCondition:I

    sget v10, Lcom/gp/monolith/PuzzleGameData;->BOUNDARY_CONDITION_ZEROES:I

    if-ne v9, v10, :cond_15

    .line 182
    const/16 v9, 0x8

    new-array v2, v9, [I

    .line 183
    .local v2, "neighbour":[I
    if-nez p1, :cond_7

    .line 185
    const/4 v9, 0x0

    const/4 v10, -0x1

    aput v10, v2, v9

    .line 186
    const/4 v9, 0x3

    const/4 v10, -0x1

    aput v10, v2, v9

    .line 187
    const/4 v9, 0x5

    const/4 v10, -0x1

    aput v10, v2, v9

    .line 190
    :cond_7
    if-nez p2, :cond_8

    .line 192
    const/4 v9, 0x0

    const/4 v10, -0x1

    aput v10, v2, v9

    .line 193
    const/4 v9, 0x1

    const/4 v10, -0x1

    aput v10, v2, v9

    .line 194
    const/4 v9, 0x2

    const/4 v10, -0x1

    aput v10, v2, v9

    .line 196
    :cond_8
    iget v9, p0, Lcom/gp/monolith/PuzzleGameData;->gridMaxWidth:I

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    if-ne p1, v9, :cond_9

    .line 198
    const/4 v9, 0x2

    const/4 v10, -0x1

    aput v10, v2, v9

    .line 199
    const/4 v9, 0x4

    const/4 v10, -0x1

    aput v10, v2, v9

    .line 200
    const/4 v9, 0x7

    const/4 v10, -0x1

    aput v10, v2, v9

    .line 202
    :cond_9
    iget v9, p0, Lcom/gp/monolith/PuzzleGameData;->gridMaxHeight:I

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    if-ne p2, v9, :cond_a

    .line 204
    const/4 v9, 0x5

    const/4 v10, -0x1

    aput v10, v2, v9

    .line 205
    const/4 v9, 0x6

    const/4 v10, -0x1

    aput v10, v2, v9

    .line 206
    const/4 v9, 0x7

    const/4 v10, -0x1

    aput v10, v2, v9

    .line 208
    :cond_a
    const/4 v9, 0x0

    aget v9, v2, v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_b

    .line 210
    const/4 v9, 0x0

    iget-object v10, p0, Lcom/gp/monolith/PuzzleGameData;->grid:[[I

    const/4 v11, 0x1

    sub-int v11, p1, v11

    aget-object v10, v10, v11

    const/4 v11, 0x1

    sub-int v11, p2, v11

    aget v10, v10, v11

    aput v10, v2, v9

    .line 212
    :cond_b
    const/4 v9, 0x1

    aget v9, v2, v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_c

    .line 214
    const/4 v9, 0x1

    iget-object v10, p0, Lcom/gp/monolith/PuzzleGameData;->grid:[[I

    aget-object v10, v10, p1

    const/4 v11, 0x1

    sub-int v11, p2, v11

    aget v10, v10, v11

    aput v10, v2, v9

    .line 217
    :cond_c
    const/4 v9, 0x2

    aget v9, v2, v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_d

    .line 219
    const/4 v9, 0x2

    iget-object v10, p0, Lcom/gp/monolith/PuzzleGameData;->grid:[[I

    add-int/lit8 v11, p1, 0x1

    aget-object v10, v10, v11

    const/4 v11, 0x1

    sub-int v11, p2, v11

    aget v10, v10, v11

    aput v10, v2, v9

    .line 221
    :cond_d
    const/4 v9, 0x3

    aget v9, v2, v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_e

    .line 223
    const/4 v9, 0x3

    iget-object v10, p0, Lcom/gp/monolith/PuzzleGameData;->grid:[[I

    const/4 v11, 0x1

    sub-int v11, p1, v11

    aget-object v10, v10, v11

    aget v10, v10, p2

    aput v10, v2, v9

    .line 226
    :cond_e
    const/4 v9, 0x4

    aget v9, v2, v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_f

    .line 228
    const/4 v9, 0x4

    iget-object v10, p0, Lcom/gp/monolith/PuzzleGameData;->grid:[[I

    add-int/lit8 v11, p1, 0x1

    aget-object v10, v10, v11

    aget v10, v10, p2

    aput v10, v2, v9

    .line 230
    :cond_f
    const/4 v9, 0x5

    aget v9, v2, v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_10

    .line 232
    const/4 v9, 0x5

    iget-object v10, p0, Lcom/gp/monolith/PuzzleGameData;->grid:[[I

    const/4 v11, 0x1

    sub-int v11, p1, v11

    aget-object v10, v10, v11

    add-int/lit8 v11, p2, 0x1

    aget v10, v10, v11

    aput v10, v2, v9

    .line 234
    :cond_10
    const/4 v9, 0x6

    aget v9, v2, v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_11

    .line 236
    const/4 v9, 0x6

    iget-object v10, p0, Lcom/gp/monolith/PuzzleGameData;->grid:[[I

    aget-object v10, v10, p1

    add-int/lit8 v11, p2, 0x1

    aget v10, v10, v11

    aput v10, v2, v9

    .line 238
    :cond_11
    const/4 v9, 0x7

    aget v9, v2, v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_12

    .line 240
    const/4 v9, 0x7

    iget-object v10, p0, Lcom/gp/monolith/PuzzleGameData;->grid:[[I

    add-int/lit8 v11, p1, 0x1

    aget-object v10, v10, v11

    add-int/lit8 v11, p2, 0x1

    aget v10, v10, v11

    aput v10, v2, v9

    .line 242
    :cond_12
    const/4 v0, 0x0

    .line 243
    .restart local v0    # "count":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    array-length v9, v2

    if-lt v1, v9, :cond_13

    move v9, v0

    .line 250
    goto/16 :goto_1

    .line 245
    :cond_13
    aget v9, v2, v1

    const/4 v10, -0x1

    if-eq v9, v10, :cond_14

    .line 247
    add-int/lit8 v0, v0, 0x1

    .line 243
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 252
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "neighbour":[I
    :cond_15
    const/4 v9, 0x0

    goto/16 :goto_1
.end method

.method public getNextBlock()Lcom/gp/monolith/Block;
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lcom/gp/monolith/PuzzleGameData;->nextBlock:Lcom/gp/monolith/Block;

    return-object v0
.end method

.method public getPreviousGridValue(II)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 116
    iget-object v0, p0, Lcom/gp/monolith/PuzzleGameData;->oldgrid:[[I

    aget-object v0, v0, p1

    aget v0, v0, p2

    return v0
.end method

.method public getScore()I
    .locals 1

    .prologue
    .line 630
    iget v0, p0, Lcom/gp/monolith/PuzzleGameData;->score:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/gp/monolith/PuzzleGameData;->status:I

    return v0
.end method

.method public getTimer()I
    .locals 1

    .prologue
    .line 688
    iget v0, p0, Lcom/gp/monolith/PuzzleGameData;->timer:I

    return v0
.end method

.method public initGame(I)V
    .locals 3
    .param p1, "theStartingLevel"    # I

    .prologue
    const/4 v2, 0x0

    .line 59
    iput v2, p0, Lcom/gp/monolith/PuzzleGameData;->score:I

    .line 60
    iput v2, p0, Lcom/gp/monolith/PuzzleGameData;->lines:I

    .line 61
    iget v2, p0, Lcom/gp/monolith/PuzzleGameData;->startingLevel:I

    iput v2, p0, Lcom/gp/monolith/PuzzleGameData;->level:I

    .line 62
    iget v2, p0, Lcom/gp/monolith/PuzzleGameData;->startingLevel:I

    iput v2, p0, Lcom/gp/monolith/PuzzleGameData;->newLevel:I

    .line 63
    iput p1, p0, Lcom/gp/monolith/PuzzleGameData;->startingLevel:I

    .line 64
    new-instance v0, Lcom/gp/monolith/Block;

    invoke-direct {v0}, Lcom/gp/monolith/Block;-><init>()V

    .line 65
    .local v0, "newblock":Lcom/gp/monolith/Block;
    iput-object v0, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    .line 66
    new-instance v1, Lcom/gp/monolith/Block;

    invoke-direct {v1}, Lcom/gp/monolith/Block;-><init>()V

    .line 67
    .local v1, "newnextblock":Lcom/gp/monolith/Block;
    iput-object v1, p0, Lcom/gp/monolith/PuzzleGameData;->nextBlock:Lcom/gp/monolith/Block;

    .line 68
    packed-switch p1, :pswitch_data_0

    .line 101
    :goto_0
    return-void

    .line 71
    :pswitch_0
    const/16 v2, 0x3e8

    iput v2, p0, Lcom/gp/monolith/PuzzleGameData;->timer:I

    goto :goto_0

    .line 74
    :pswitch_1
    const/16 v2, 0x384

    iput v2, p0, Lcom/gp/monolith/PuzzleGameData;->timer:I

    goto :goto_0

    .line 77
    :pswitch_2
    const/16 v2, 0x320

    iput v2, p0, Lcom/gp/monolith/PuzzleGameData;->timer:I

    goto :goto_0

    .line 80
    :pswitch_3
    const/16 v2, 0x2bc

    iput v2, p0, Lcom/gp/monolith/PuzzleGameData;->timer:I

    goto :goto_0

    .line 83
    :pswitch_4
    const/16 v2, 0x258

    iput v2, p0, Lcom/gp/monolith/PuzzleGameData;->timer:I

    goto :goto_0

    .line 86
    :pswitch_5
    const/16 v2, 0x1f4

    iput v2, p0, Lcom/gp/monolith/PuzzleGameData;->timer:I

    goto :goto_0

    .line 89
    :pswitch_6
    const/16 v2, 0x190

    iput v2, p0, Lcom/gp/monolith/PuzzleGameData;->timer:I

    goto :goto_0

    .line 92
    :pswitch_7
    const/16 v2, 0x12c

    iput v2, p0, Lcom/gp/monolith/PuzzleGameData;->timer:I

    goto :goto_0

    .line 95
    :pswitch_8
    const/16 v2, 0xc8

    iput v2, p0, Lcom/gp/monolith/PuzzleGameData;->timer:I

    goto :goto_0

    .line 98
    :pswitch_9
    const/16 v2, 0x64

    iput v2, p0, Lcom/gp/monolith/PuzzleGameData;->timer:I

    goto :goto_0

    .line 68
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
    .line 727
    iget-boolean v0, p0, Lcom/gp/monolith/PuzzleGameData;->blockPlaced:Z

    return v0
.end method

.method public isGridEmpty()Z
    .locals 4

    .prologue
    .line 259
    const/4 v1, 0x0

    .local v1, "y":I
    :goto_0
    iget v2, p0, Lcom/gp/monolith/PuzzleGameData;->gridMaxHeight:I

    if-lt v1, v2, :cond_0

    .line 269
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 261
    :cond_0
    const/4 v0, 0x0

    .local v0, "x":I
    :goto_2
    iget v2, p0, Lcom/gp/monolith/PuzzleGameData;->gridMaxWidth:I

    if-lt v0, v2, :cond_1

    .line 259
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 263
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/gp/monolith/PuzzleGameData;->getGridValue(II)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 265
    const/4 v2, 0x0

    goto :goto_1

    .line 261
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public isTimerEnabled()Z
    .locals 1

    .prologue
    .line 674
    iget-boolean v0, p0, Lcom/gp/monolith/PuzzleGameData;->timerEnabled:Z

    return v0
.end method

.method public loadGame(Landroid/content/SharedPreferences;)V
    .locals 0
    .param p1, "preferences"    # Landroid/content/SharedPreferences;

    .prologue
    .line 736
    return-void
.end method

.method public moveBlockDown()Z
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 340
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 355
    iget-object v1, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v1, v1, Lcom/gp/monolith/Block;->height:I

    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v2, v2, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/gp/monolith/PuzzleGameData;->gridMaxHeight:I

    if-ge v1, v2, :cond_2

    .line 358
    iget-object v1, p0, Lcom/gp/monolith/PuzzleGameData;->grid:[[I

    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v4

    iget v2, v2, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v3, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v2, v3

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v4

    iget v2, v2, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v3, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    if-ne v1, v8, :cond_2

    .line 359
    iget-object v1, p0, Lcom/gp/monolith/PuzzleGameData;->grid:[[I

    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v5

    iget v2, v2, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v3, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v2, v3

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v5

    iget v2, v2, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v3, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    if-ne v1, v8, :cond_2

    .line 360
    iget-object v1, p0, Lcom/gp/monolith/PuzzleGameData;->grid:[[I

    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v6

    iget v2, v2, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v3, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v2, v3

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v6

    iget v2, v2, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v3, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    if-ne v1, v8, :cond_2

    .line 361
    iget-object v1, p0, Lcom/gp/monolith/PuzzleGameData;->grid:[[I

    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v7

    iget v2, v2, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v3, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v2, v3

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v7

    iget v2, v2, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v3, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    if-ne v1, v8, :cond_2

    .line 364
    iget-object v1, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v2, v1, Lcom/gp/monolith/Block;->yPos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/gp/monolith/Block;->yPos:I

    move v1, v5

    .line 374
    :goto_1
    return v1

    .line 342
    :cond_0
    iget-object v1, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v1, v1, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v2, v2, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/gp/monolith/PuzzleGameData;->gridMaxHeight:I

    add-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_1

    .line 344
    iget-object v1, p0, Lcom/gp/monolith/PuzzleGameData;->grid:[[I

    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v4

    iget v2, v2, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v3, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v2, v3

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v4

    iget v2, v2, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v3, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->color:I

    aput v3, v1, v2

    .line 345
    iget-object v1, p0, Lcom/gp/monolith/PuzzleGameData;->grid:[[I

    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v5

    iget v2, v2, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v3, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v2, v3

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v5

    iget v2, v2, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v3, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->color:I

    aput v3, v1, v2

    .line 346
    iget-object v1, p0, Lcom/gp/monolith/PuzzleGameData;->grid:[[I

    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v6

    iget v2, v2, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v3, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v2, v3

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v6

    iget v2, v2, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v3, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->color:I

    aput v3, v1, v2

    .line 347
    iget-object v1, p0, Lcom/gp/monolith/PuzzleGameData;->grid:[[I

    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v7

    iget v2, v2, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v3, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v2, v3

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v7

    iget v2, v2, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v3, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->color:I

    aput v3, v1, v2

    move v1, v4

    .line 351
    goto/16 :goto_1

    .line 340
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 369
    :cond_2
    iget v1, p0, Lcom/gp/monolith/PuzzleGameData;->score:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/gp/monolith/PuzzleGameData;->score:I

    .line 370
    iget-object v1, p0, Lcom/gp/monolith/PuzzleGameData;->grid:[[I

    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v4

    iget v2, v2, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v3, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v2, v3

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v4

    iget v2, v2, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v3, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->color:I

    aput v3, v1, v2

    .line 371
    iget-object v1, p0, Lcom/gp/monolith/PuzzleGameData;->grid:[[I

    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v5

    iget v2, v2, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v3, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v2, v3

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v5

    iget v2, v2, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v3, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->color:I

    aput v3, v1, v2

    .line 372
    iget-object v1, p0, Lcom/gp/monolith/PuzzleGameData;->grid:[[I

    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v6

    iget v2, v2, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v3, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v2, v3

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v6

    iget v2, v2, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v3, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->color:I

    aput v3, v1, v2

    .line 373
    iget-object v1, p0, Lcom/gp/monolith/PuzzleGameData;->grid:[[I

    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v7

    iget v2, v2, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v3, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v2, v3

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v7

    iget v2, v2, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v3, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->color:I

    aput v3, v1, v2

    move v1, v4

    .line 374
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

    .line 301
    iget-object v0, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v0, v0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v5

    iget v0, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v1, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v1, v1, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v0, v1

    if-lez v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v0, v0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v3

    iget v0, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v1, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v1, v1, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v0, v1

    if-lez v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v0, v0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v6

    iget v0, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v1, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v1, v1, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v0, v1

    if-lez v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v0, v0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v7

    iget v0, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v1, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v1, v1, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v0, v1

    if-lez v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/gp/monolith/PuzzleGameData;->grid:[[I

    iget-object v1, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v1, v1, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v1, v1, v5

    iget v1, v1, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v2, v2, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v1, v2

    sub-int/2addr v1, v3

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v1, v1, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v1, v1, v5

    iget v1, v1, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v2, v2, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v1, v2

    aget v0, v0, v1

    if-ne v0, v4, :cond_0

    .line 309
    iget-object v0, p0, Lcom/gp/monolith/PuzzleGameData;->grid:[[I

    iget-object v1, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v1, v1, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v1, v1, v3

    iget v1, v1, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v2, v2, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v1, v2

    sub-int/2addr v1, v3

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v1, v1, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v1, v1, v3

    iget v1, v1, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v2, v2, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v1, v2

    aget v0, v0, v1

    if-ne v0, v4, :cond_0

    .line 310
    iget-object v0, p0, Lcom/gp/monolith/PuzzleGameData;->grid:[[I

    iget-object v1, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v1, v1, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v1, v1, v6

    iget v1, v1, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v2, v2, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v1, v2

    sub-int/2addr v1, v3

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v1, v1, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v1, v1, v6

    iget v1, v1, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v2, v2, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v1, v2

    aget v0, v0, v1

    if-ne v0, v4, :cond_0

    .line 311
    iget-object v0, p0, Lcom/gp/monolith/PuzzleGameData;->grid:[[I

    iget-object v1, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v1, v1, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v1, v1, v7

    iget v1, v1, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v2, v2, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v1, v2

    sub-int/2addr v1, v3

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v1, v1, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v1, v1, v7

    iget v1, v1, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v2, v2, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v1, v2

    aget v0, v0, v1

    if-ne v0, v4, :cond_0

    .line 314
    iget-object v0, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v1, v0, Lcom/gp/monolith/Block;->xPos:I

    sub-int/2addr v1, v3

    iput v1, v0, Lcom/gp/monolith/Block;->xPos:I

    .line 317
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

    .line 321
    iget-object v0, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v0, v0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v5

    iget v0, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v1, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v1, v1, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/gp/monolith/PuzzleGameData;->gridMaxWidth:I

    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_0

    .line 322
    iget-object v0, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v0, v0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v3

    iget v0, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v1, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v1, v1, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/gp/monolith/PuzzleGameData;->gridMaxWidth:I

    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_0

    .line 323
    iget-object v0, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v0, v0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v6

    iget v0, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v1, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v1, v1, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/gp/monolith/PuzzleGameData;->gridMaxWidth:I

    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_0

    .line 324
    iget-object v0, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v0, v0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v7

    iget v0, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v1, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v1, v1, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/gp/monolith/PuzzleGameData;->gridMaxWidth:I

    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_0

    .line 328
    iget-object v0, p0, Lcom/gp/monolith/PuzzleGameData;->grid:[[I

    iget-object v1, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v1, v1, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v1, v1, v5

    iget v1, v1, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v2, v2, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v1, v1, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v1, v1, v5

    iget v1, v1, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v2, v2, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v1, v2

    aget v0, v0, v1

    if-ne v0, v4, :cond_0

    .line 329
    iget-object v0, p0, Lcom/gp/monolith/PuzzleGameData;->grid:[[I

    iget-object v1, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v1, v1, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v1, v1, v3

    iget v1, v1, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v2, v2, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v1, v1, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v1, v1, v3

    iget v1, v1, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v2, v2, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v1, v2

    aget v0, v0, v1

    if-ne v0, v4, :cond_0

    .line 330
    iget-object v0, p0, Lcom/gp/monolith/PuzzleGameData;->grid:[[I

    iget-object v1, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v1, v1, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v1, v1, v6

    iget v1, v1, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v2, v2, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v1, v1, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v1, v1, v6

    iget v1, v1, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v2, v2, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v1, v2

    aget v0, v0, v1

    if-ne v0, v4, :cond_0

    .line 331
    iget-object v0, p0, Lcom/gp/monolith/PuzzleGameData;->grid:[[I

    iget-object v1, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v1, v1, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v1, v1, v7

    iget v1, v1, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v2, v2, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v1, v1, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v1, v1, v7

    iget v1, v1, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v2, v2, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v1, v2

    aget v0, v0, v1

    if-ne v0, v4, :cond_0

    .line 334
    iget-object v0, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v1, v0, Lcom/gp/monolith/Block;->xPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/gp/monolith/Block;->xPos:I

    .line 337
    :cond_0
    return-void
.end method

.method public rotateCurrentBlockClockwise()V
    .locals 5

    .prologue
    .line 596
    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v0, v2, Lcom/gp/monolith/Block;->orientation:I

    .line 597
    .local v0, "currentorientation":I
    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    invoke-virtual {v2}, Lcom/gp/monolith/Block;->rotateClockwise()V

    .line 598
    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    invoke-virtual {v2}, Lcom/gp/monolith/Block;->recalcBlockOrientation()V

    .line 599
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 622
    :goto_1
    return-void

    .line 601
    :cond_0
    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v2, v2, Lcom/gp/monolith/Block;->xPos:I

    iget-object v3, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v3, v3, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/gp/monolith/SubBlock;->xpos:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/gp/monolith/PuzzleGameData;->gridMaxWidth:I

    if-lt v2, v3, :cond_1

    .line 603
    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iput v0, v2, Lcom/gp/monolith/Block;->orientation:I

    .line 604
    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    invoke-virtual {v2}, Lcom/gp/monolith/Block;->recalcBlockOrientation()V

    goto :goto_1

    .line 607
    :cond_1
    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v2, v2, Lcom/gp/monolith/Block;->yPos:I

    iget-object v3, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v3, v3, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/gp/monolith/SubBlock;->ypos:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/gp/monolith/PuzzleGameData;->gridMaxHeight:I

    if-lt v2, v3, :cond_2

    .line 609
    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iput v0, v2, Lcom/gp/monolith/Block;->orientation:I

    .line 610
    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    invoke-virtual {v2}, Lcom/gp/monolith/Block;->recalcBlockOrientation()V

    goto :goto_1

    .line 614
    :cond_2
    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->grid:[[I

    iget-object v3, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v3, v3, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v4, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v4, v4, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v3, v4

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v3, v3, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v4, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v4, v4, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v3, v4

    aget v2, v2, v3

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 616
    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    iput v0, v2, Lcom/gp/monolith/Block;->orientation:I

    .line 617
    iget-object v2, p0, Lcom/gp/monolith/PuzzleGameData;->currentBlock:Lcom/gp/monolith/Block;

    invoke-virtual {v2}, Lcom/gp/monolith/Block;->recalcBlockOrientation()V

    goto :goto_1

    .line 599
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public saveGame(Landroid/content/SharedPreferences;)V
    .locals 0
    .param p1, "preferences"    # Landroid/content/SharedPreferences;

    .prologue
    .line 740
    return-void
.end method

.method public setEnergy(I)V
    .locals 0
    .param p1, "energy"    # I

    .prologue
    .line 696
    iput p1, p0, Lcom/gp/monolith/PuzzleGameData;->energy:I

    .line 697
    return-void
.end method

.method public setGridValue(III)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "value"    # I

    .prologue
    .line 120
    iget-object v0, p0, Lcom/gp/monolith/PuzzleGameData;->grid:[[I

    aget-object v0, v0, p1

    aput p3, v0, p2

    .line 121
    return-void
.end method

.method public setLevel(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 634
    iput p1, p0, Lcom/gp/monolith/PuzzleGameData;->level:I

    .line 635
    return-void
.end method

.method public setLines(I)V
    .locals 0
    .param p1, "lines"    # I

    .prologue
    .line 661
    iput p1, p0, Lcom/gp/monolith/PuzzleGameData;->lines:I

    .line 663
    return-void
.end method

.method public setScore(I)V
    .locals 0
    .param p1, "score"    # I

    .prologue
    .line 626
    iput p1, p0, Lcom/gp/monolith/PuzzleGameData;->score:I

    .line 627
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 104
    iput p1, p0, Lcom/gp/monolith/PuzzleGameData;->status:I

    .line 105
    return-void
.end method

.method public setStep(I)V
    .locals 0
    .param p1, "step"    # I

    .prologue
    .line 717
    iput p1, p0, Lcom/gp/monolith/PuzzleGameData;->step:I

    .line 718
    return-void
.end method

.method public setTimer(I)V
    .locals 0
    .param p1, "time"    # I

    .prologue
    .line 418
    iput p1, p0, Lcom/gp/monolith/PuzzleGameData;->timer:I

    .line 419
    return-void
.end method

.method public setTimerEnabled(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 670
    iput-boolean p1, p0, Lcom/gp/monolith/PuzzleGameData;->timerEnabled:Z

    .line 671
    return-void
.end method
