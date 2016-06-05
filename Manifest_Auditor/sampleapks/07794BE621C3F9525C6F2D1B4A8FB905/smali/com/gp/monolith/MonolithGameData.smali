.class public Lcom/gp/monolith/MonolithGameData;
.super Ljava/lang/Object;
.source "MonolithGameData.java"

# interfaces
.implements Lcom/gp/monolith/Game;


# static fields
.field public static BOUNDARY_CONDITION_WRAPAROUND:I

.field public static BOUNDARY_CONDITION_ZEROES:I


# instance fields
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

.field private newgrid:[[I

.field public nextBlock:Lcom/gp/monolith/Block;

.field private oldgrid:[[I

.field private randomgen:Ljava/util/Random;

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
    .line 6
    const/4 v0, 0x0

    sput v0, Lcom/gp/monolith/MonolithGameData;->BOUNDARY_CONDITION_ZEROES:I

    .line 7
    const/4 v0, 0x1

    sput v0, Lcom/gp/monolith/MonolithGameData;->BOUNDARY_CONDITION_WRAPAROUND:I

    .line 4
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    sget v2, Lcom/gp/monolith/MonolithGameData;->BOUNDARY_CONDITION_ZEROES:I

    iput v2, p0, Lcom/gp/monolith/MonolithGameData;->boundaryCondition:I

    .line 12
    sput-boolean v3, Lcom/gp/monolith/Block;->enableMonolithBlocks:Z

    .line 13
    iput v4, p0, Lcom/gp/monolith/MonolithGameData;->score:I

    .line 14
    iput v4, p0, Lcom/gp/monolith/MonolithGameData;->lines:I

    .line 15
    iput v3, p0, Lcom/gp/monolith/MonolithGameData;->level:I

    .line 16
    const/16 v2, 0x3e8

    iput v2, p0, Lcom/gp/monolith/MonolithGameData;->timer:I

    .line 17
    iput-boolean v4, p0, Lcom/gp/monolith/MonolithGameData;->timerEnabled:Z

    .line 18
    iput v3, p0, Lcom/gp/monolith/MonolithGameData;->newLevel:I

    .line 19
    iput v3, p0, Lcom/gp/monolith/MonolithGameData;->startingLevel:I

    .line 20
    const/16 v2, 0xa

    iput v2, p0, Lcom/gp/monolith/MonolithGameData;->gridMaxWidth:I

    .line 21
    const/16 v2, 0x14

    iput v2, p0, Lcom/gp/monolith/MonolithGameData;->gridMaxHeight:I

    .line 22
    iget v2, p0, Lcom/gp/monolith/MonolithGameData;->gridMaxWidth:I

    iget v3, p0, Lcom/gp/monolith/MonolithGameData;->gridMaxHeight:I

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    iput-object v2, p0, Lcom/gp/monolith/MonolithGameData;->grid:[[I

    .line 23
    iget v2, p0, Lcom/gp/monolith/MonolithGameData;->gridMaxWidth:I

    iget v3, p0, Lcom/gp/monolith/MonolithGameData;->gridMaxHeight:I

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    iput-object v2, p0, Lcom/gp/monolith/MonolithGameData;->newgrid:[[I

    .line 24
    iget v2, p0, Lcom/gp/monolith/MonolithGameData;->gridMaxWidth:I

    iget v3, p0, Lcom/gp/monolith/MonolithGameData;->gridMaxHeight:I

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    iput-object v2, p0, Lcom/gp/monolith/MonolithGameData;->oldgrid:[[I

    .line 25
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    iput-object v2, p0, Lcom/gp/monolith/MonolithGameData;->randomgen:Ljava/util/Random;

    .line 26
    iput v4, p0, Lcom/gp/monolith/MonolithGameData;->energy:I

    .line 27
    iput v4, p0, Lcom/gp/monolith/MonolithGameData;->step:I

    .line 28
    iput-boolean v4, p0, Lcom/gp/monolith/MonolithGameData;->blockPlaced:Z

    .line 30
    const/4 v1, 0x0

    .local v1, "y":I
    :goto_0
    iget v2, p0, Lcom/gp/monolith/MonolithGameData;->gridMaxHeight:I

    if-lt v1, v2, :cond_0

    .line 39
    iget v2, p0, Lcom/gp/monolith/MonolithGameData;->gridMaxHeight:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/gp/monolith/MonolithGameData;->clearedLines:[I

    .line 40
    const/4 v1, 0x0

    :goto_1
    iget v2, p0, Lcom/gp/monolith/MonolithGameData;->gridMaxHeight:I

    if-lt v1, v2, :cond_2

    .line 44
    return-void

    .line 32
    :cond_0
    const/4 v0, 0x0

    .local v0, "x":I
    :goto_2
    iget v2, p0, Lcom/gp/monolith/MonolithGameData;->gridMaxWidth:I

    if-lt v0, v2, :cond_1

    .line 30
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34
    :cond_1
    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->grid:[[I

    aget-object v2, v2, v0

    aput v5, v2, v1

    .line 35
    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->oldgrid:[[I

    aget-object v2, v2, v0

    aput v5, v2, v1

    .line 32
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 42
    .end local v0    # "x":I
    :cond_2
    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->clearedLines:[I

    aput v4, v2, v1

    .line 40
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 0
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 809
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

    .line 431
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 439
    iget-object v1, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v1, v1, Lcom/gp/monolith/Block;->height:I

    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v2, v2, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/gp/monolith/MonolithGameData;->gridMaxHeight:I

    if-ge v1, v2, :cond_2

    .line 442
    iget-object v1, p0, Lcom/gp/monolith/MonolithGameData;->grid:[[I

    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v5

    iget v2, v2, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v3, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v2, v3

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v5

    iget v2, v2, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v3, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    if-ne v1, v4, :cond_2

    .line 443
    iget-object v1, p0, Lcom/gp/monolith/MonolithGameData;->grid:[[I

    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v6

    iget v2, v2, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v3, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v2, v3

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v6

    iget v2, v2, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v3, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    if-ne v1, v4, :cond_2

    .line 444
    iget-object v1, p0, Lcom/gp/monolith/MonolithGameData;->grid:[[I

    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v7

    iget v2, v2, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v3, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v2, v3

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v7

    iget v2, v2, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v3, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    if-ne v1, v4, :cond_2

    .line 445
    iget-object v1, p0, Lcom/gp/monolith/MonolithGameData;->grid:[[I

    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v8

    iget v2, v2, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v3, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v2, v3

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v8

    iget v2, v2, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v3, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    if-ne v1, v4, :cond_2

    move v1, v6

    .line 452
    :goto_1
    return v1

    .line 433
    :cond_0
    iget-object v1, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v1, v1, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v2, v2, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/gp/monolith/MonolithGameData;->gridMaxHeight:I

    add-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_1

    move v1, v5

    .line 435
    goto :goto_1

    .line 431
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_2
    move v1, v5

    .line 452
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

    .line 513
    iget v7, p0, Lcom/gp/monolith/MonolithGameData;->gridMaxHeight:I

    sub-int v0, v7, v13

    .line 514
    .local v0, "currentline":I
    const/4 v2, 0x0

    .line 515
    .local v2, "linescleared":I
    iget v7, p0, Lcom/gp/monolith/MonolithGameData;->level:I

    iput v7, p0, Lcom/gp/monolith/MonolithGameData;->newLevel:I

    .line 516
    :goto_0
    if-gtz v0, :cond_1

    .line 565
    packed-switch v2, :pswitch_data_0

    .line 583
    :goto_1
    :pswitch_0
    iget v7, p0, Lcom/gp/monolith/MonolithGameData;->lines:I

    .line 586
    add-int/2addr v7, v2

    iput v7, p0, Lcom/gp/monolith/MonolithGameData;->lines:I

    .line 587
    iget v7, p0, Lcom/gp/monolith/MonolithGameData;->lines:I

    const/16 v8, 0x14

    if-le v7, v8, :cond_c

    iget v7, p0, Lcom/gp/monolith/MonolithGameData;->lines:I

    const/16 v8, 0x28

    if-gt v7, v8, :cond_c

    .line 589
    iput v14, p0, Lcom/gp/monolith/MonolithGameData;->newLevel:I

    .line 590
    const/16 v7, 0x384

    iput v7, p0, Lcom/gp/monolith/MonolithGameData;->timer:I

    .line 647
    :cond_0
    :goto_2
    return-void

    .line 518
    :cond_1
    const/4 v1, 0x1

    .line 519
    .local v1, "linecomplete":Z
    const/4 v3, 0x0

    .local v3, "x":I
    :goto_3
    iget v7, p0, Lcom/gp/monolith/MonolithGameData;->gridMaxWidth:I

    if-lt v3, v7, :cond_2

    .line 526
    if-eqz v1, :cond_b

    .line 528
    const/4 v3, 0x0

    :goto_4
    iget v7, p0, Lcom/gp/monolith/MonolithGameData;->gridMaxWidth:I

    if-lt v3, v7, :cond_4

    .line 543
    move v5, v0

    .local v5, "y":I
    :goto_5
    if-gtz v5, :cond_8

    .line 557
    add-int/lit8 v2, v2, 0x1

    .line 558
    iget v7, p0, Lcom/gp/monolith/MonolithGameData;->energy:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/gp/monolith/MonolithGameData;->energy:I

    goto :goto_0

    .line 521
    .end local v5    # "y":I
    :cond_2
    iget-object v7, p0, Lcom/gp/monolith/MonolithGameData;->grid:[[I

    aget-object v7, v7, v3

    aget v7, v7, v0

    if-ne v7, v12, :cond_3

    .line 523
    const/4 v1, 0x0

    .line 519
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 530
    :cond_4
    iget-object v7, p0, Lcom/gp/monolith/MonolithGameData;->grid:[[I

    aget-object v7, v7, v3

    aget v7, v7, v0

    const/4 v8, 0x7

    if-ne v7, v8, :cond_5

    iget v7, p0, Lcom/gp/monolith/MonolithGameData;->energy:I

    if-lez v7, :cond_5

    .line 532
    const/4 v7, 0x4

    iput v7, p0, Lcom/gp/monolith/MonolithGameData;->status:I

    .line 533
    const/4 v6, 0x0

    .local v6, "ypos":I
    :goto_6
    iget v7, p0, Lcom/gp/monolith/MonolithGameData;->gridMaxHeight:I

    if-lt v6, v7, :cond_6

    .line 528
    .end local v6    # "ypos":I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 535
    .restart local v6    # "ypos":I
    :cond_6
    const/4 v4, 0x0

    .local v4, "xpos":I
    :goto_7
    iget v7, p0, Lcom/gp/monolith/MonolithGameData;->gridMaxWidth:I

    if-lt v4, v7, :cond_7

    .line 533
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 537
    :cond_7
    iget-object v7, p0, Lcom/gp/monolith/MonolithGameData;->oldgrid:[[I

    aget-object v7, v7, v4

    iget-object v8, p0, Lcom/gp/monolith/MonolithGameData;->grid:[[I

    aget-object v8, v8, v4

    aget v8, v8, v6

    aput v8, v7, v6

    .line 535
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 545
    .end local v4    # "xpos":I
    .end local v6    # "ypos":I
    .restart local v5    # "y":I
    :cond_8
    const/4 v3, 0x0

    :goto_8
    iget v7, p0, Lcom/gp/monolith/MonolithGameData;->gridMaxWidth:I

    if-lt v3, v7, :cond_9

    .line 543
    add-int/lit8 v5, v5, -0x1

    goto :goto_5

    .line 547
    :cond_9
    if-lez v5, :cond_a

    .line 549
    iget-object v7, p0, Lcom/gp/monolith/MonolithGameData;->grid:[[I

    aget-object v7, v7, v3

    iget-object v8, p0, Lcom/gp/monolith/MonolithGameData;->grid:[[I

    aget-object v8, v8, v3

    sub-int v9, v5, v13

    aget v8, v8, v9

    aput v8, v7, v5

    .line 545
    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 553
    :cond_a
    iget-object v7, p0, Lcom/gp/monolith/MonolithGameData;->grid:[[I

    aget-object v7, v7, v3

    aput v12, v7, v5

    goto :goto_9

    .line 562
    .end local v5    # "y":I
    :cond_b
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 570
    .end local v1    # "linecomplete":Z
    .end local v3    # "x":I
    :pswitch_1
    iget v7, p0, Lcom/gp/monolith/MonolithGameData;->score:I

    add-int/lit8 v7, v7, 0x19

    iput v7, p0, Lcom/gp/monolith/MonolithGameData;->score:I

    goto/16 :goto_1

    .line 573
    :pswitch_2
    iget v7, p0, Lcom/gp/monolith/MonolithGameData;->score:I

    add-int/lit8 v7, v7, 0x4b

    iput v7, p0, Lcom/gp/monolith/MonolithGameData;->score:I

    goto/16 :goto_1

    .line 577
    :pswitch_3
    iget v7, p0, Lcom/gp/monolith/MonolithGameData;->score:I

    add-int/lit8 v7, v7, 0x64

    iput v7, p0, Lcom/gp/monolith/MonolithGameData;->score:I

    goto/16 :goto_1

    .line 580
    :pswitch_4
    iget v7, p0, Lcom/gp/monolith/MonolithGameData;->score:I

    add-int/lit16 v7, v7, 0xc8

    iput v7, p0, Lcom/gp/monolith/MonolithGameData;->score:I

    goto/16 :goto_1

    .line 593
    :cond_c
    iget v7, p0, Lcom/gp/monolith/MonolithGameData;->lines:I

    const/16 v8, 0x28

    if-le v7, v8, :cond_d

    iget v7, p0, Lcom/gp/monolith/MonolithGameData;->lines:I

    const/16 v8, 0x3c

    if-gt v7, v8, :cond_d

    .line 595
    iput v14, p0, Lcom/gp/monolith/MonolithGameData;->newLevel:I

    .line 596
    const/16 v7, 0x320

    iput v7, p0, Lcom/gp/monolith/MonolithGameData;->timer:I

    goto/16 :goto_2

    .line 599
    :cond_d
    iget v7, p0, Lcom/gp/monolith/MonolithGameData;->lines:I

    const/16 v8, 0x3c

    if-le v7, v8, :cond_e

    iget v7, p0, Lcom/gp/monolith/MonolithGameData;->lines:I

    const/16 v8, 0x50

    if-gt v7, v8, :cond_e

    .line 601
    const/4 v7, 0x3

    iput v7, p0, Lcom/gp/monolith/MonolithGameData;->newLevel:I

    .line 602
    const/16 v7, 0x2bc

    iput v7, p0, Lcom/gp/monolith/MonolithGameData;->timer:I

    goto/16 :goto_2

    .line 605
    :cond_e
    iget v7, p0, Lcom/gp/monolith/MonolithGameData;->lines:I

    const/16 v8, 0x50

    if-le v7, v8, :cond_f

    iget v7, p0, Lcom/gp/monolith/MonolithGameData;->lines:I

    if-gt v7, v10, :cond_f

    .line 607
    const/4 v7, 0x4

    iput v7, p0, Lcom/gp/monolith/MonolithGameData;->newLevel:I

    .line 608
    const/16 v7, 0x258

    iput v7, p0, Lcom/gp/monolith/MonolithGameData;->timer:I

    goto/16 :goto_2

    .line 611
    :cond_f
    iget v7, p0, Lcom/gp/monolith/MonolithGameData;->lines:I

    if-le v7, v10, :cond_10

    iget v7, p0, Lcom/gp/monolith/MonolithGameData;->lines:I

    const/16 v8, 0x78

    if-gt v7, v8, :cond_10

    .line 613
    const/4 v7, 0x5

    iput v7, p0, Lcom/gp/monolith/MonolithGameData;->newLevel:I

    .line 614
    const/16 v7, 0x1f4

    iput v7, p0, Lcom/gp/monolith/MonolithGameData;->timer:I

    goto/16 :goto_2

    .line 617
    :cond_10
    iget v7, p0, Lcom/gp/monolith/MonolithGameData;->lines:I

    const/16 v8, 0x78

    if-le v7, v8, :cond_11

    iget v7, p0, Lcom/gp/monolith/MonolithGameData;->lines:I

    const/16 v8, 0x8c

    if-gt v7, v8, :cond_11

    .line 619
    const/4 v7, 0x6

    iput v7, p0, Lcom/gp/monolith/MonolithGameData;->newLevel:I

    .line 620
    const/16 v7, 0x190

    iput v7, p0, Lcom/gp/monolith/MonolithGameData;->timer:I

    goto/16 :goto_2

    .line 623
    :cond_11
    iget v7, p0, Lcom/gp/monolith/MonolithGameData;->lines:I

    const/16 v8, 0x8c

    if-le v7, v8, :cond_12

    iget v7, p0, Lcom/gp/monolith/MonolithGameData;->lines:I

    const/16 v8, 0xa0

    if-gt v7, v8, :cond_12

    .line 625
    const/4 v7, 0x7

    iput v7, p0, Lcom/gp/monolith/MonolithGameData;->newLevel:I

    .line 626
    const/16 v7, 0x12c

    iput v7, p0, Lcom/gp/monolith/MonolithGameData;->timer:I

    goto/16 :goto_2

    .line 629
    :cond_12
    iget v7, p0, Lcom/gp/monolith/MonolithGameData;->lines:I

    const/16 v8, 0xa0

    if-le v7, v8, :cond_13

    iget v7, p0, Lcom/gp/monolith/MonolithGameData;->lines:I

    const/16 v8, 0xb4

    if-gt v7, v8, :cond_13

    .line 631
    const/16 v7, 0x8

    iput v7, p0, Lcom/gp/monolith/MonolithGameData;->newLevel:I

    .line 632
    iput v11, p0, Lcom/gp/monolith/MonolithGameData;->timer:I

    goto/16 :goto_2

    .line 635
    :cond_13
    iget v7, p0, Lcom/gp/monolith/MonolithGameData;->lines:I

    const/16 v8, 0xb4

    if-le v7, v8, :cond_14

    iget v7, p0, Lcom/gp/monolith/MonolithGameData;->lines:I

    if-gt v7, v11, :cond_14

    .line 637
    const/16 v7, 0x9

    iput v7, p0, Lcom/gp/monolith/MonolithGameData;->newLevel:I

    .line 638
    iput v10, p0, Lcom/gp/monolith/MonolithGameData;->timer:I

    goto/16 :goto_2

    .line 641
    :cond_14
    iget v7, p0, Lcom/gp/monolith/MonolithGameData;->lines:I

    if-le v7, v11, :cond_0

    .line 643
    const/16 v7, 0xa

    iput v7, p0, Lcom/gp/monolith/MonolithGameData;->newLevel:I

    .line 644
    const/16 v7, 0x32

    iput v7, p0, Lcom/gp/monolith/MonolithGameData;->timer:I

    goto/16 :goto_2

    .line 565
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

    .line 56
    const/4 v0, 0x0

    .local v0, "x":I
    :goto_0
    iget v2, p0, Lcom/gp/monolith/MonolithGameData;->gridMaxWidth:I

    if-lt v0, v2, :cond_0

    .line 64
    const/4 v1, 0x0

    .local v1, "y":I
    :goto_1
    iget v2, p0, Lcom/gp/monolith/MonolithGameData;->gridMaxHeight:I

    if-lt v1, v2, :cond_2

    .line 68
    return-void

    .line 58
    .end local v1    # "y":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "y":I
    :goto_2
    iget v2, p0, Lcom/gp/monolith/MonolithGameData;->gridMaxHeight:I

    if-lt v1, v2, :cond_1

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_1
    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->grid:[[I

    aget-object v2, v2, v0

    aput v3, v2, v1

    .line 61
    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->oldgrid:[[I

    aget-object v2, v2, v0

    aput v3, v2, v1

    .line 58
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 66
    :cond_2
    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->clearedLines:[I

    const/4 v3, 0x0

    aput v3, v2, v1

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public evolve()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x3

    const/4 v6, -0x1

    .line 293
    iget v3, p0, Lcom/gp/monolith/MonolithGameData;->energy:I

    if-lez v3, :cond_9

    invoke-virtual {p0}, Lcom/gp/monolith/MonolithGameData;->isGridEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    .line 295
    const/4 v2, 0x0

    .local v2, "y":I
    :goto_0
    iget v3, p0, Lcom/gp/monolith/MonolithGameData;->gridMaxHeight:I

    if-lt v2, v3, :cond_0

    .line 333
    iget v3, p0, Lcom/gp/monolith/MonolithGameData;->energy:I

    sub-int/2addr v3, v8

    iput v3, p0, Lcom/gp/monolith/MonolithGameData;->energy:I

    .line 334
    const/4 v2, 0x0

    :goto_1
    iget v3, p0, Lcom/gp/monolith/MonolithGameData;->gridMaxHeight:I

    if-lt v2, v3, :cond_7

    .line 350
    .end local v2    # "y":I
    :goto_2
    return-void

    .line 297
    .restart local v2    # "y":I
    :cond_0
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_3
    iget v3, p0, Lcom/gp/monolith/MonolithGameData;->gridMaxWidth:I

    if-lt v1, v3, :cond_1

    .line 295
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 299
    :cond_1
    iget-object v3, p0, Lcom/gp/monolith/MonolithGameData;->oldgrid:[[I

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/gp/monolith/MonolithGameData;->grid:[[I

    aget-object v4, v4, v1

    aget v4, v4, v2

    aput v4, v3, v2

    .line 300
    invoke-virtual {p0, v1, v2}, Lcom/gp/monolith/MonolithGameData;->getNeighbourCount(II)I

    move-result v0

    .line 301
    .local v0, "count":I
    iget-object v3, p0, Lcom/gp/monolith/MonolithGameData;->grid:[[I

    aget-object v3, v3, v1

    aget v3, v3, v2

    if-eq v3, v6, :cond_5

    .line 303
    const/4 v3, 0x2

    if-ge v0, v3, :cond_2

    .line 305
    iget-object v3, p0, Lcom/gp/monolith/MonolithGameData;->newgrid:[[I

    aget-object v3, v3, v1

    aput v6, v3, v2

    .line 307
    :cond_2
    if-ne v0, v7, :cond_3

    .line 309
    iget-object v3, p0, Lcom/gp/monolith/MonolithGameData;->newgrid:[[I

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/gp/monolith/MonolithGameData;->grid:[[I

    aget-object v4, v4, v1

    aget v4, v4, v2

    aput v4, v3, v2

    .line 310
    iget v3, p0, Lcom/gp/monolith/MonolithGameData;->score:I

    add-int/lit8 v3, v3, 0x3

    iput v3, p0, Lcom/gp/monolith/MonolithGameData;->score:I

    .line 312
    :cond_3
    if-le v0, v7, :cond_4

    .line 314
    iget-object v3, p0, Lcom/gp/monolith/MonolithGameData;->newgrid:[[I

    aget-object v3, v3, v1

    aput v6, v3, v2

    .line 297
    :cond_4
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 319
    :cond_5
    if-ne v0, v7, :cond_6

    .line 321
    iget-object v3, p0, Lcom/gp/monolith/MonolithGameData;->newgrid:[[I

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/gp/monolith/MonolithGameData;->randomgen:Ljava/util/Random;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aput v4, v3, v2

    .line 322
    iget v3, p0, Lcom/gp/monolith/MonolithGameData;->score:I

    add-int/lit8 v3, v3, 0x3

    iput v3, p0, Lcom/gp/monolith/MonolithGameData;->score:I

    goto :goto_4

    .line 326
    :cond_6
    iget-object v3, p0, Lcom/gp/monolith/MonolithGameData;->newgrid:[[I

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/gp/monolith/MonolithGameData;->grid:[[I

    aget-object v4, v4, v1

    aget v4, v4, v2

    aput v4, v3, v2

    goto :goto_4

    .line 336
    .end local v0    # "count":I
    .end local v1    # "x":I
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "x":I
    :goto_5
    iget v3, p0, Lcom/gp/monolith/MonolithGameData;->gridMaxWidth:I

    if-lt v1, v3, :cond_8

    .line 334
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 338
    :cond_8
    iget-object v3, p0, Lcom/gp/monolith/MonolithGameData;->grid:[[I

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/gp/monolith/MonolithGameData;->newgrid:[[I

    aget-object v4, v4, v1

    aget v4, v4, v2

    aput v4, v3, v2

    .line 336
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 344
    .end local v1    # "x":I
    .end local v2    # "y":I
    :cond_9
    iget v3, p0, Lcom/gp/monolith/MonolithGameData;->energy:I

    if-gez v3, :cond_a

    .line 346
    const/4 v3, 0x0

    iput v3, p0, Lcom/gp/monolith/MonolithGameData;->energy:I

    .line 348
    :cond_a
    iput v8, p0, Lcom/gp/monolith/MonolithGameData;->status:I

    goto/16 :goto_2
.end method

.method public flagCompletedLines()V
    .locals 5

    .prologue
    .line 650
    const/4 v2, 0x0

    .local v2, "y":I
    :goto_0
    iget v3, p0, Lcom/gp/monolith/MonolithGameData;->gridMaxHeight:I

    if-lt v2, v3, :cond_0

    .line 671
    return-void

    .line 653
    :cond_0
    const/4 v0, 0x1

    .line 654
    .local v0, "linecleared":Z
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_1
    iget v3, p0, Lcom/gp/monolith/MonolithGameData;->gridMaxWidth:I

    if-lt v1, v3, :cond_1

    .line 662
    :goto_2
    if-eqz v0, :cond_3

    .line 664
    iget-object v3, p0, Lcom/gp/monolith/MonolithGameData;->clearedLines:[I

    const/4 v4, 0x1

    aput v4, v3, v2

    .line 650
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 656
    :cond_1
    iget-object v3, p0, Lcom/gp/monolith/MonolithGameData;->grid:[[I

    aget-object v3, v3, v1

    aget v3, v3, v2

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 658
    const/4 v0, 0x0

    .line 659
    goto :goto_2

    .line 654
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 668
    :cond_3
    iget-object v3, p0, Lcom/gp/monolith/MonolithGameData;->clearedLines:[I

    const/4 v4, 0x0

    aput v4, v3, v2

    goto :goto_3
.end method

.method public gameLoop()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 353
    iput-boolean v5, p0, Lcom/gp/monolith/MonolithGameData;->blockPlaced:Z

    .line 354
    iget v2, p0, Lcom/gp/monolith/MonolithGameData;->step:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/gp/monolith/MonolithGameData;->step:I

    .line 355
    iget v2, p0, Lcom/gp/monolith/MonolithGameData;->status:I

    if-ne v2, v6, :cond_1

    .line 357
    invoke-virtual {p0}, Lcom/gp/monolith/MonolithGameData;->evolve()V

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 361
    :cond_1
    invoke-virtual {p0}, Lcom/gp/monolith/MonolithGameData;->moveBlockDown()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 363
    invoke-virtual {p0}, Lcom/gp/monolith/MonolithGameData;->clearCompleteLines()V

    .line 364
    iget v2, p0, Lcom/gp/monolith/MonolithGameData;->newLevel:I

    iget v3, p0, Lcom/gp/monolith/MonolithGameData;->level:I

    if-eq v2, v3, :cond_0

    .line 366
    iget v2, p0, Lcom/gp/monolith/MonolithGameData;->newLevel:I

    iput v2, p0, Lcom/gp/monolith/MonolithGameData;->level:I

    goto :goto_0

    .line 372
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v6, :cond_3

    .line 381
    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->nextBlock:Lcom/gp/monolith/Block;

    iput-object v2, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    .line 382
    new-instance v0, Lcom/gp/monolith/Block;

    invoke-direct {v0}, Lcom/gp/monolith/Block;-><init>()V

    .line 383
    .local v0, "bl":Lcom/gp/monolith/Block;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/gp/monolith/MonolithGameData;->blockPlaced:Z

    .line 384
    iput-object v0, p0, Lcom/gp/monolith/MonolithGameData;->nextBlock:Lcom/gp/monolith/Block;

    goto :goto_0

    .line 374
    .end local v0    # "bl":Lcom/gp/monolith/Block;
    :cond_3
    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->grid:[[I

    iget-object v3, p0, Lcom/gp/monolith/MonolithGameData;->nextBlock:Lcom/gp/monolith/Block;

    iget-object v3, v3, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v3, v3, v5

    iget v3, v3, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v4, p0, Lcom/gp/monolith/MonolithGameData;->nextBlock:Lcom/gp/monolith/Block;

    iget v4, v4, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v3, v4

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v3, v3, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v3, v3, v5

    iget v3, v3, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v4, p0, Lcom/gp/monolith/MonolithGameData;->nextBlock:Lcom/gp/monolith/Block;

    iget v4, v4, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v3, v4

    aget v2, v2, v3

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    .line 376
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/gp/monolith/MonolithGameData;->setStatus(I)V

    goto :goto_0

    .line 372
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getClearedLineCount()I
    .locals 3

    .prologue
    .line 674
    const/4 v0, 0x0

    .line 675
    .local v0, "cleared":I
    const/4 v1, 0x0

    .local v1, "line":I
    :goto_0
    iget v2, p0, Lcom/gp/monolith/MonolithGameData;->gridMaxHeight:I

    if-lt v1, v2, :cond_0

    .line 682
    return v0

    .line 677
    :cond_0
    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->clearedLines:[I

    aget v2, v2, v1

    if-eqz v2, :cond_1

    .line 679
    add-int/lit8 v0, v0, 0x1

    .line 675
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getClearedLines()[I
    .locals 1

    .prologue
    .line 779
    iget-object v0, p0, Lcom/gp/monolith/MonolithGameData;->clearedLines:[I

    return-object v0
.end method

.method public getCurrentBlock()Lcom/gp/monolith/Block;
    .locals 1

    .prologue
    .line 759
    iget-object v0, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    return-object v0
.end method

.method public getCurrentStep()I
    .locals 1

    .prologue
    .line 789
    iget v0, p0, Lcom/gp/monolith/MonolithGameData;->step:I

    return v0
.end method

.method public getEnergy()I
    .locals 1

    .prologue
    .line 771
    iget v0, p0, Lcom/gp/monolith/MonolithGameData;->energy:I

    return v0
.end method

.method public getGameType()I
    .locals 1

    .prologue
    .line 804
    const/4 v0, 0x1

    return v0
.end method

.method public getGridValue(II)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 130
    iget-object v0, p0, Lcom/gp/monolith/MonolithGameData;->grid:[[I

    aget-object v0, v0, p1

    aget v0, v0, p2

    return v0
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 728
    iget v0, p0, Lcom/gp/monolith/MonolithGameData;->level:I

    return v0
.end method

.method public getLevelName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 732
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/gp/monolith/MonolithGameData;->level:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 733
    .local v0, "str":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 737
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "M"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 738
    return-object v0

    .line 735
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
    .line 72
    const/16 v1, 0xa

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 73
    .local v0, "retval":[I
    return-object v0

    .line 72
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
    .line 747
    iget v0, p0, Lcom/gp/monolith/MonolithGameData;->lines:I

    return v0
.end method

.method public getNeighbourCount(II)I
    .locals 12
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 142
    iget v9, p0, Lcom/gp/monolith/MonolithGameData;->boundaryCondition:I

    sget v10, Lcom/gp/monolith/MonolithGameData;->BOUNDARY_CONDITION_WRAPAROUND:I

    if-ne v9, v10, :cond_6

    .line 144
    const/16 v9, 0x8

    new-array v3, v9, [I

    .line 145
    .local v3, "neighbourx":[I
    const/16 v9, 0x8

    new-array v4, v9, [I

    .line 146
    .local v4, "neighboury":[I
    const/4 v9, 0x1

    sub-int v6, p1, v9

    .line 147
    .local v6, "xprev":I
    add-int/lit8 v5, p1, 0x1

    .line 148
    .local v5, "xnext":I
    const/4 v9, 0x1

    sub-int v8, p2, v9

    .line 149
    .local v8, "yprev":I
    add-int/lit8 v7, p2, 0x1

    .line 150
    .local v7, "ynext":I
    if-nez p1, :cond_0

    .line 152
    iget v9, p0, Lcom/gp/monolith/MonolithGameData;->gridMaxWidth:I

    const/4 v10, 0x1

    sub-int v6, v9, v10

    .line 153
    add-int/lit8 v5, p1, 0x1

    .line 156
    :cond_0
    iget v9, p0, Lcom/gp/monolith/MonolithGameData;->gridMaxWidth:I

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    if-ne p1, v9, :cond_1

    .line 158
    const/4 v9, 0x1

    sub-int v6, p1, v9

    .line 159
    const/4 v5, 0x0

    .line 161
    :cond_1
    if-nez p2, :cond_2

    .line 163
    iget v9, p0, Lcom/gp/monolith/MonolithGameData;->gridMaxHeight:I

    const/4 v10, 0x1

    sub-int v8, v9, v10

    .line 164
    add-int/lit8 v7, p2, 0x1

    .line 166
    :cond_2
    iget v9, p0, Lcom/gp/monolith/MonolithGameData;->gridMaxHeight:I

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    if-ne p2, v9, :cond_3

    .line 168
    const/4 v9, 0x1

    sub-int v8, p2, v9

    .line 169
    const/4 v7, 0x0

    .line 172
    :cond_3
    const/4 v9, 0x0

    aput v6, v3, v9

    .line 173
    const/4 v9, 0x0

    aput v8, v4, v9

    .line 174
    const/4 v9, 0x1

    aput p1, v3, v9

    .line 175
    const/4 v9, 0x1

    aput v8, v4, v9

    .line 176
    const/4 v9, 0x2

    aput v5, v3, v9

    .line 177
    const/4 v9, 0x2

    aput v8, v4, v9

    .line 178
    const/4 v9, 0x3

    aput v6, v3, v9

    .line 179
    const/4 v9, 0x3

    aput p2, v4, v9

    .line 180
    const/4 v9, 0x4

    aput v5, v3, v9

    .line 181
    const/4 v9, 0x4

    aput p2, v4, v9

    .line 182
    const/4 v9, 0x5

    aput v6, v3, v9

    .line 183
    const/4 v9, 0x5

    aput v7, v4, v9

    .line 184
    const/4 v9, 0x6

    aput p1, v3, v9

    .line 185
    const/4 v9, 0x6

    aput v7, v4, v9

    .line 186
    const/4 v9, 0x7

    aput v5, v3, v9

    .line 187
    const/4 v9, 0x7

    aput v7, v4, v9

    .line 188
    const/4 v0, 0x0

    .line 189
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v9, 0x8

    if-lt v1, v9, :cond_4

    move v9, v0

    .line 270
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

    .line 191
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v3    # "neighbourx":[I
    .restart local v4    # "neighboury":[I
    .restart local v5    # "xnext":I
    .restart local v6    # "xprev":I
    .restart local v7    # "ynext":I
    .restart local v8    # "yprev":I
    :cond_4
    iget-object v9, p0, Lcom/gp/monolith/MonolithGameData;->grid:[[I

    aget v10, v3, v1

    aget-object v9, v9, v10

    aget v10, v4, v1

    aget v9, v9, v10

    const/4 v10, -0x1

    if-eq v9, v10, :cond_5

    .line 193
    add-int/lit8 v0, v0, 0x1

    .line 189
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 198
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v3    # "neighbourx":[I
    .end local v4    # "neighboury":[I
    .end local v5    # "xnext":I
    .end local v6    # "xprev":I
    .end local v7    # "ynext":I
    .end local v8    # "yprev":I
    :cond_6
    iget v9, p0, Lcom/gp/monolith/MonolithGameData;->boundaryCondition:I

    sget v10, Lcom/gp/monolith/MonolithGameData;->BOUNDARY_CONDITION_ZEROES:I

    if-ne v9, v10, :cond_15

    .line 200
    const/16 v9, 0x8

    new-array v2, v9, [I

    .line 201
    .local v2, "neighbour":[I
    if-nez p1, :cond_7

    .line 203
    const/4 v9, 0x0

    const/4 v10, -0x1

    aput v10, v2, v9

    .line 204
    const/4 v9, 0x3

    const/4 v10, -0x1

    aput v10, v2, v9

    .line 205
    const/4 v9, 0x5

    const/4 v10, -0x1

    aput v10, v2, v9

    .line 208
    :cond_7
    if-nez p2, :cond_8

    .line 210
    const/4 v9, 0x0

    const/4 v10, -0x1

    aput v10, v2, v9

    .line 211
    const/4 v9, 0x1

    const/4 v10, -0x1

    aput v10, v2, v9

    .line 212
    const/4 v9, 0x2

    const/4 v10, -0x1

    aput v10, v2, v9

    .line 214
    :cond_8
    iget v9, p0, Lcom/gp/monolith/MonolithGameData;->gridMaxWidth:I

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    if-ne p1, v9, :cond_9

    .line 216
    const/4 v9, 0x2

    const/4 v10, -0x1

    aput v10, v2, v9

    .line 217
    const/4 v9, 0x4

    const/4 v10, -0x1

    aput v10, v2, v9

    .line 218
    const/4 v9, 0x7

    const/4 v10, -0x1

    aput v10, v2, v9

    .line 220
    :cond_9
    iget v9, p0, Lcom/gp/monolith/MonolithGameData;->gridMaxHeight:I

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    if-ne p2, v9, :cond_a

    .line 222
    const/4 v9, 0x5

    const/4 v10, -0x1

    aput v10, v2, v9

    .line 223
    const/4 v9, 0x6

    const/4 v10, -0x1

    aput v10, v2, v9

    .line 224
    const/4 v9, 0x7

    const/4 v10, -0x1

    aput v10, v2, v9

    .line 226
    :cond_a
    const/4 v9, 0x0

    aget v9, v2, v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_b

    .line 228
    const/4 v9, 0x0

    iget-object v10, p0, Lcom/gp/monolith/MonolithGameData;->grid:[[I

    const/4 v11, 0x1

    sub-int v11, p1, v11

    aget-object v10, v10, v11

    const/4 v11, 0x1

    sub-int v11, p2, v11

    aget v10, v10, v11

    aput v10, v2, v9

    .line 230
    :cond_b
    const/4 v9, 0x1

    aget v9, v2, v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_c

    .line 232
    const/4 v9, 0x1

    iget-object v10, p0, Lcom/gp/monolith/MonolithGameData;->grid:[[I

    aget-object v10, v10, p1

    const/4 v11, 0x1

    sub-int v11, p2, v11

    aget v10, v10, v11

    aput v10, v2, v9

    .line 235
    :cond_c
    const/4 v9, 0x2

    aget v9, v2, v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_d

    .line 237
    const/4 v9, 0x2

    iget-object v10, p0, Lcom/gp/monolith/MonolithGameData;->grid:[[I

    add-int/lit8 v11, p1, 0x1

    aget-object v10, v10, v11

    const/4 v11, 0x1

    sub-int v11, p2, v11

    aget v10, v10, v11

    aput v10, v2, v9

    .line 239
    :cond_d
    const/4 v9, 0x3

    aget v9, v2, v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_e

    .line 241
    const/4 v9, 0x3

    iget-object v10, p0, Lcom/gp/monolith/MonolithGameData;->grid:[[I

    const/4 v11, 0x1

    sub-int v11, p1, v11

    aget-object v10, v10, v11

    aget v10, v10, p2

    aput v10, v2, v9

    .line 244
    :cond_e
    const/4 v9, 0x4

    aget v9, v2, v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_f

    .line 246
    const/4 v9, 0x4

    iget-object v10, p0, Lcom/gp/monolith/MonolithGameData;->grid:[[I

    add-int/lit8 v11, p1, 0x1

    aget-object v10, v10, v11

    aget v10, v10, p2

    aput v10, v2, v9

    .line 248
    :cond_f
    const/4 v9, 0x5

    aget v9, v2, v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_10

    .line 250
    const/4 v9, 0x5

    iget-object v10, p0, Lcom/gp/monolith/MonolithGameData;->grid:[[I

    const/4 v11, 0x1

    sub-int v11, p1, v11

    aget-object v10, v10, v11

    add-int/lit8 v11, p2, 0x1

    aget v10, v10, v11

    aput v10, v2, v9

    .line 252
    :cond_10
    const/4 v9, 0x6

    aget v9, v2, v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_11

    .line 254
    const/4 v9, 0x6

    iget-object v10, p0, Lcom/gp/monolith/MonolithGameData;->grid:[[I

    aget-object v10, v10, p1

    add-int/lit8 v11, p2, 0x1

    aget v10, v10, v11

    aput v10, v2, v9

    .line 256
    :cond_11
    const/4 v9, 0x7

    aget v9, v2, v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_12

    .line 258
    const/4 v9, 0x7

    iget-object v10, p0, Lcom/gp/monolith/MonolithGameData;->grid:[[I

    add-int/lit8 v11, p1, 0x1

    aget-object v10, v10, v11

    add-int/lit8 v11, p2, 0x1

    aget v10, v10, v11

    aput v10, v2, v9

    .line 260
    :cond_12
    const/4 v0, 0x0

    .line 261
    .restart local v0    # "count":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    array-length v9, v2

    if-lt v1, v9, :cond_13

    move v9, v0

    .line 268
    goto/16 :goto_1

    .line 263
    :cond_13
    aget v9, v2, v1

    const/4 v10, -0x1

    if-eq v9, v10, :cond_14

    .line 265
    add-int/lit8 v0, v0, 0x1

    .line 261
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 270
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
    .line 763
    iget-object v0, p0, Lcom/gp/monolith/MonolithGameData;->nextBlock:Lcom/gp/monolith/Block;

    return-object v0
.end method

.method public getPreviousGridValue(II)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 134
    iget-object v0, p0, Lcom/gp/monolith/MonolithGameData;->oldgrid:[[I

    aget-object v0, v0, p1

    aget v0, v0, p2

    return v0
.end method

.method public getScore()I
    .locals 1

    .prologue
    .line 720
    iget v0, p0, Lcom/gp/monolith/MonolithGameData;->score:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/gp/monolith/MonolithGameData;->status:I

    return v0
.end method

.method public getTimer()I
    .locals 1

    .prologue
    .line 767
    iget v0, p0, Lcom/gp/monolith/MonolithGameData;->timer:I

    return v0
.end method

.method public initGame(I)V
    .locals 3
    .param p1, "theStartingLevel"    # I

    .prologue
    const/4 v2, 0x0

    .line 77
    iput v2, p0, Lcom/gp/monolith/MonolithGameData;->score:I

    .line 78
    iput v2, p0, Lcom/gp/monolith/MonolithGameData;->lines:I

    .line 79
    iget v2, p0, Lcom/gp/monolith/MonolithGameData;->startingLevel:I

    iput v2, p0, Lcom/gp/monolith/MonolithGameData;->level:I

    .line 80
    iget v2, p0, Lcom/gp/monolith/MonolithGameData;->startingLevel:I

    iput v2, p0, Lcom/gp/monolith/MonolithGameData;->newLevel:I

    .line 81
    iput p1, p0, Lcom/gp/monolith/MonolithGameData;->startingLevel:I

    .line 82
    new-instance v0, Lcom/gp/monolith/Block;

    invoke-direct {v0}, Lcom/gp/monolith/Block;-><init>()V

    .line 83
    .local v0, "newblock":Lcom/gp/monolith/Block;
    iput-object v0, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    .line 84
    new-instance v1, Lcom/gp/monolith/Block;

    invoke-direct {v1}, Lcom/gp/monolith/Block;-><init>()V

    .line 85
    .local v1, "newnextblock":Lcom/gp/monolith/Block;
    iput-object v1, p0, Lcom/gp/monolith/MonolithGameData;->nextBlock:Lcom/gp/monolith/Block;

    .line 86
    packed-switch p1, :pswitch_data_0

    .line 119
    :goto_0
    return-void

    .line 89
    :pswitch_0
    const/16 v2, 0x1f4

    iput v2, p0, Lcom/gp/monolith/MonolithGameData;->timer:I

    goto :goto_0

    .line 92
    :pswitch_1
    const/16 v2, 0x1c2

    iput v2, p0, Lcom/gp/monolith/MonolithGameData;->timer:I

    goto :goto_0

    .line 95
    :pswitch_2
    const/16 v2, 0x190

    iput v2, p0, Lcom/gp/monolith/MonolithGameData;->timer:I

    goto :goto_0

    .line 98
    :pswitch_3
    const/16 v2, 0x15e

    iput v2, p0, Lcom/gp/monolith/MonolithGameData;->timer:I

    goto :goto_0

    .line 101
    :pswitch_4
    const/16 v2, 0x12c

    iput v2, p0, Lcom/gp/monolith/MonolithGameData;->timer:I

    goto :goto_0

    .line 104
    :pswitch_5
    const/16 v2, 0xfa

    iput v2, p0, Lcom/gp/monolith/MonolithGameData;->timer:I

    goto :goto_0

    .line 107
    :pswitch_6
    const/16 v2, 0xc8

    iput v2, p0, Lcom/gp/monolith/MonolithGameData;->timer:I

    goto :goto_0

    .line 110
    :pswitch_7
    const/16 v2, 0xa6

    iput v2, p0, Lcom/gp/monolith/MonolithGameData;->timer:I

    goto :goto_0

    .line 113
    :pswitch_8
    const/16 v2, 0x85

    iput v2, p0, Lcom/gp/monolith/MonolithGameData;->timer:I

    goto :goto_0

    .line 116
    :pswitch_9
    const/16 v2, 0x64

    iput v2, p0, Lcom/gp/monolith/MonolithGameData;->timer:I

    goto :goto_0

    .line 86
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
    .line 800
    iget-boolean v0, p0, Lcom/gp/monolith/MonolithGameData;->blockPlaced:Z

    return v0
.end method

.method public isGridEmpty()Z
    .locals 4

    .prologue
    .line 277
    const/4 v1, 0x0

    .local v1, "y":I
    :goto_0
    iget v2, p0, Lcom/gp/monolith/MonolithGameData;->gridMaxHeight:I

    if-lt v1, v2, :cond_0

    .line 287
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 279
    :cond_0
    const/4 v0, 0x0

    .local v0, "x":I
    :goto_2
    iget v2, p0, Lcom/gp/monolith/MonolithGameData;->gridMaxWidth:I

    if-lt v0, v2, :cond_1

    .line 277
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 281
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/gp/monolith/MonolithGameData;->getGridValue(II)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 283
    const/4 v2, 0x0

    goto :goto_1

    .line 279
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public isTimerEnabled()Z
    .locals 1

    .prologue
    .line 755
    iget-boolean v0, p0, Lcom/gp/monolith/MonolithGameData;->timerEnabled:Z

    return v0
.end method

.method public loadGame()Lcom/gp/monolith/Game;
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/gp/monolith/MonolithGameData;

    invoke-direct {v0}, Lcom/gp/monolith/MonolithGameData;-><init>()V

    return-object v0
.end method

.method public loadGame(Landroid/content/SharedPreferences;)V
    .locals 9
    .param p1, "preferences"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 812
    const-string v5, "MonolithGameData.boundaryCondition"

    sget v6, Lcom/gp/monolith/MonolithGameData;->BOUNDARY_CONDITION_ZEROES:I

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/gp/monolith/MonolithGameData;->boundaryCondition:I

    .line 813
    const-string v5, "MonolithGameData.enableMonolithBlocks"

    invoke-interface {p1, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/gp/monolith/Block;->enableMonolithBlocks:Z

    .line 814
    const-string v5, "MonolithGameData.score"

    invoke-interface {p1, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/gp/monolith/MonolithGameData;->score:I

    .line 815
    const-string v5, "MonolithGameData.lines"

    invoke-interface {p1, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/gp/monolith/MonolithGameData;->lines:I

    .line 816
    const-string v5, "MonolithGameData.level"

    invoke-interface {p1, v5, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/gp/monolith/MonolithGameData;->level:I

    .line 817
    const-string v5, "MonolithGameData.timer"

    const/16 v6, 0x3e8

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/gp/monolith/MonolithGameData;->timer:I

    .line 818
    const-string v5, "MonolithGameData.timerEnabled"

    invoke-interface {p1, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/gp/monolith/MonolithGameData;->timerEnabled:Z

    .line 819
    const-string v5, "MonolithGameData.newLevel"

    invoke-interface {p1, v5, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/gp/monolith/MonolithGameData;->newLevel:I

    .line 820
    const-string v5, "MonolithGameData.startingLevel"

    invoke-interface {p1, v5, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/gp/monolith/MonolithGameData;->startingLevel:I

    .line 821
    const-string v5, "MonolithGameData.gridMaxWidth"

    const/16 v6, 0xa

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/gp/monolith/MonolithGameData;->gridMaxWidth:I

    .line 822
    const-string v5, "MonolithGameData.gridMaxHeight"

    const/16 v6, 0x14

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/gp/monolith/MonolithGameData;->gridMaxHeight:I

    .line 823
    iget v5, p0, Lcom/gp/monolith/MonolithGameData;->gridMaxWidth:I

    iget v6, p0, Lcom/gp/monolith/MonolithGameData;->gridMaxHeight:I

    filled-new-array {v5, v6}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[I

    iput-object v5, p0, Lcom/gp/monolith/MonolithGameData;->grid:[[I

    .line 824
    iget v5, p0, Lcom/gp/monolith/MonolithGameData;->gridMaxWidth:I

    iget v6, p0, Lcom/gp/monolith/MonolithGameData;->gridMaxHeight:I

    filled-new-array {v5, v6}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[I

    iput-object v5, p0, Lcom/gp/monolith/MonolithGameData;->newgrid:[[I

    .line 825
    iget v5, p0, Lcom/gp/monolith/MonolithGameData;->gridMaxWidth:I

    iget v6, p0, Lcom/gp/monolith/MonolithGameData;->gridMaxHeight:I

    filled-new-array {v5, v6}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[I

    iput-object v5, p0, Lcom/gp/monolith/MonolithGameData;->oldgrid:[[I

    .line 826
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    iput-object v5, p0, Lcom/gp/monolith/MonolithGameData;->randomgen:Ljava/util/Random;

    .line 827
    const-string v5, "MonolithGameData.energy"

    invoke-interface {p1, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/gp/monolith/MonolithGameData;->energy:I

    .line 828
    iput v7, p0, Lcom/gp/monolith/MonolithGameData;->step:I

    .line 829
    iput-boolean v7, p0, Lcom/gp/monolith/MonolithGameData;->blockPlaced:Z

    .line 831
    const/4 v4, 0x0

    .local v4, "y":I
    :goto_0
    iget v5, p0, Lcom/gp/monolith/MonolithGameData;->gridMaxHeight:I

    if-lt v4, v5, :cond_0

    .line 866
    iget v5, p0, Lcom/gp/monolith/MonolithGameData;->gridMaxHeight:I

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/gp/monolith/MonolithGameData;->clearedLines:[I

    .line 867
    const/4 v4, 0x0

    :goto_1
    iget v5, p0, Lcom/gp/monolith/MonolithGameData;->gridMaxHeight:I

    if-lt v4, v5, :cond_6

    .line 871
    return-void

    .line 833
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "MonolithGameData.line"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 835
    .local v1, "line":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "x":I
    :goto_2
    iget v5, p0, Lcom/gp/monolith/MonolithGameData;->gridMaxWidth:I

    if-lt v3, v5, :cond_1

    .line 831
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 837
    :cond_1
    const/4 v0, -0x1

    .line 838
    .local v0, "currentSubblock":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    iget v6, p0, Lcom/gp/monolith/MonolithGameData;->gridMaxWidth:I

    if-ge v5, v6, :cond_2

    .line 840
    const/4 v0, -0x1

    .line 861
    :goto_3
    iget-object v5, p0, Lcom/gp/monolith/MonolithGameData;->grid:[[I

    aget-object v5, v5, v3

    aput v0, v5, v4

    .line 862
    iget-object v5, p0, Lcom/gp/monolith/MonolithGameData;->oldgrid:[[I

    aget-object v5, v5, v3

    aput v0, v5, v4

    .line 835
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 844
    :cond_2
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 846
    const/4 v0, -0x1

    goto :goto_3

    .line 850
    :cond_3
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 851
    .local v2, "subblock":I
    if-ltz v2, :cond_4

    const/4 v5, 0x6

    if-le v2, v5, :cond_5

    .line 853
    :cond_4
    const/4 v0, -0x1

    goto :goto_3

    .line 857
    :cond_5
    move v0, v2

    goto :goto_3

    .line 869
    .end local v0    # "currentSubblock":I
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "subblock":I
    .end local v3    # "x":I
    :cond_6
    iget-object v5, p0, Lcom/gp/monolith/MonolithGameData;->clearedLines:[I

    aput v7, v5, v4

    .line 867
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

    .line 457
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 472
    iget-object v1, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v1, v1, Lcom/gp/monolith/Block;->height:I

    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v2, v2, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/gp/monolith/MonolithGameData;->gridMaxHeight:I

    if-ge v1, v2, :cond_2

    .line 475
    iget-object v1, p0, Lcom/gp/monolith/MonolithGameData;->grid:[[I

    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v4

    iget v2, v2, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v3, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v2, v3

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v4

    iget v2, v2, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v3, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    if-ne v1, v8, :cond_2

    .line 476
    iget-object v1, p0, Lcom/gp/monolith/MonolithGameData;->grid:[[I

    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v5

    iget v2, v2, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v3, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v2, v3

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v5

    iget v2, v2, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v3, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    if-ne v1, v8, :cond_2

    .line 477
    iget-object v1, p0, Lcom/gp/monolith/MonolithGameData;->grid:[[I

    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v6

    iget v2, v2, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v3, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v2, v3

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v6

    iget v2, v2, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v3, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    if-ne v1, v8, :cond_2

    .line 478
    iget-object v1, p0, Lcom/gp/monolith/MonolithGameData;->grid:[[I

    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v7

    iget v2, v2, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v3, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v2, v3

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v7

    iget v2, v2, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v3, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    if-ne v1, v8, :cond_2

    .line 481
    iget-object v1, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v2, v1, Lcom/gp/monolith/Block;->yPos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/gp/monolith/Block;->yPos:I

    move v1, v5

    .line 491
    :goto_1
    return v1

    .line 459
    :cond_0
    iget-object v1, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v1, v1, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v2, v2, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/gp/monolith/MonolithGameData;->gridMaxHeight:I

    add-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_1

    .line 461
    iget-object v1, p0, Lcom/gp/monolith/MonolithGameData;->grid:[[I

    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v4

    iget v2, v2, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v3, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v2, v3

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v4

    iget v2, v2, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v3, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->color:I

    aput v3, v1, v2

    .line 462
    iget-object v1, p0, Lcom/gp/monolith/MonolithGameData;->grid:[[I

    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v5

    iget v2, v2, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v3, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v2, v3

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v5

    iget v2, v2, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v3, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->color:I

    aput v3, v1, v2

    .line 463
    iget-object v1, p0, Lcom/gp/monolith/MonolithGameData;->grid:[[I

    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v6

    iget v2, v2, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v3, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v2, v3

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v6

    iget v2, v2, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v3, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->color:I

    aput v3, v1, v2

    .line 464
    iget-object v1, p0, Lcom/gp/monolith/MonolithGameData;->grid:[[I

    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v7

    iget v2, v2, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v3, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v2, v3

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v7

    iget v2, v2, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v3, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->color:I

    aput v3, v1, v2

    move v1, v4

    .line 468
    goto/16 :goto_1

    .line 457
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 486
    :cond_2
    iget v1, p0, Lcom/gp/monolith/MonolithGameData;->score:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/gp/monolith/MonolithGameData;->score:I

    .line 487
    iget-object v1, p0, Lcom/gp/monolith/MonolithGameData;->grid:[[I

    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v4

    iget v2, v2, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v3, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v2, v3

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v4

    iget v2, v2, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v3, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->color:I

    aput v3, v1, v2

    .line 488
    iget-object v1, p0, Lcom/gp/monolith/MonolithGameData;->grid:[[I

    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v5

    iget v2, v2, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v3, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v2, v3

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v5

    iget v2, v2, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v3, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->color:I

    aput v3, v1, v2

    .line 489
    iget-object v1, p0, Lcom/gp/monolith/MonolithGameData;->grid:[[I

    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v6

    iget v2, v2, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v3, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v2, v3

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v6

    iget v2, v2, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v3, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->color:I

    aput v3, v1, v2

    .line 490
    iget-object v1, p0, Lcom/gp/monolith/MonolithGameData;->grid:[[I

    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v7

    iget v2, v2, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v3, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v2, v3

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v2, v2, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v2, v2, v7

    iget v2, v2, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v3, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v3, v3, Lcom/gp/monolith/Block;->color:I

    aput v3, v1, v2

    move v1, v4

    .line 491
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

    .line 392
    iget-object v0, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v0, v0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v5

    iget v0, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v1, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v1, v1, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v0, v1

    if-lez v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v0, v0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v3

    iget v0, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v1, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v1, v1, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v0, v1

    if-lez v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v0, v0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v6

    iget v0, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v1, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v1, v1, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v0, v1

    if-lez v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v0, v0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v7

    iget v0, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v1, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v1, v1, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v0, v1

    if-lez v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/gp/monolith/MonolithGameData;->grid:[[I

    iget-object v1, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v1, v1, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v1, v1, v5

    iget v1, v1, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v2, v2, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v1, v2

    sub-int/2addr v1, v3

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v1, v1, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v1, v1, v5

    iget v1, v1, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v2, v2, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v1, v2

    aget v0, v0, v1

    if-ne v0, v4, :cond_0

    .line 400
    iget-object v0, p0, Lcom/gp/monolith/MonolithGameData;->grid:[[I

    iget-object v1, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v1, v1, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v1, v1, v3

    iget v1, v1, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v2, v2, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v1, v2

    sub-int/2addr v1, v3

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v1, v1, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v1, v1, v3

    iget v1, v1, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v2, v2, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v1, v2

    aget v0, v0, v1

    if-ne v0, v4, :cond_0

    .line 401
    iget-object v0, p0, Lcom/gp/monolith/MonolithGameData;->grid:[[I

    iget-object v1, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v1, v1, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v1, v1, v6

    iget v1, v1, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v2, v2, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v1, v2

    sub-int/2addr v1, v3

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v1, v1, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v1, v1, v6

    iget v1, v1, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v2, v2, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v1, v2

    aget v0, v0, v1

    if-ne v0, v4, :cond_0

    .line 402
    iget-object v0, p0, Lcom/gp/monolith/MonolithGameData;->grid:[[I

    iget-object v1, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v1, v1, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v1, v1, v7

    iget v1, v1, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v2, v2, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v1, v2

    sub-int/2addr v1, v3

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v1, v1, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v1, v1, v7

    iget v1, v1, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v2, v2, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v1, v2

    aget v0, v0, v1

    if-ne v0, v4, :cond_0

    .line 405
    iget-object v0, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v1, v0, Lcom/gp/monolith/Block;->xPos:I

    sub-int/2addr v1, v3

    iput v1, v0, Lcom/gp/monolith/Block;->xPos:I

    .line 408
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

    .line 412
    iget-object v0, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v0, v0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v5

    iget v0, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v1, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v1, v1, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/gp/monolith/MonolithGameData;->gridMaxWidth:I

    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_0

    .line 413
    iget-object v0, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v0, v0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v3

    iget v0, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v1, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v1, v1, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/gp/monolith/MonolithGameData;->gridMaxWidth:I

    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_0

    .line 414
    iget-object v0, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v0, v0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v6

    iget v0, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v1, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v1, v1, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/gp/monolith/MonolithGameData;->gridMaxWidth:I

    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_0

    .line 415
    iget-object v0, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v0, v0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v7

    iget v0, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v1, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v1, v1, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/gp/monolith/MonolithGameData;->gridMaxWidth:I

    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_0

    .line 419
    iget-object v0, p0, Lcom/gp/monolith/MonolithGameData;->grid:[[I

    iget-object v1, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v1, v1, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v1, v1, v5

    iget v1, v1, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v2, v2, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v1, v1, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v1, v1, v5

    iget v1, v1, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v2, v2, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v1, v2

    aget v0, v0, v1

    if-ne v0, v4, :cond_0

    .line 420
    iget-object v0, p0, Lcom/gp/monolith/MonolithGameData;->grid:[[I

    iget-object v1, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v1, v1, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v1, v1, v3

    iget v1, v1, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v2, v2, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v1, v1, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v1, v1, v3

    iget v1, v1, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v2, v2, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v1, v2

    aget v0, v0, v1

    if-ne v0, v4, :cond_0

    .line 421
    iget-object v0, p0, Lcom/gp/monolith/MonolithGameData;->grid:[[I

    iget-object v1, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v1, v1, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v1, v1, v6

    iget v1, v1, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v2, v2, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v1, v1, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v1, v1, v6

    iget v1, v1, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v2, v2, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v1, v2

    aget v0, v0, v1

    if-ne v0, v4, :cond_0

    .line 422
    iget-object v0, p0, Lcom/gp/monolith/MonolithGameData;->grid:[[I

    iget-object v1, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v1, v1, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v1, v1, v7

    iget v1, v1, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v2, v2, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v1, v1, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v1, v1, v7

    iget v1, v1, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v2, v2, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v1, v2

    aget v0, v0, v1

    if-ne v0, v4, :cond_0

    .line 425
    iget-object v0, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v1, v0, Lcom/gp/monolith/Block;->xPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/gp/monolith/Block;->xPos:I

    .line 428
    :cond_0
    return-void
.end method

.method public rotateCurrentBlockClockwise()V
    .locals 5

    .prologue
    .line 686
    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v0, v2, Lcom/gp/monolith/Block;->orientation:I

    .line 687
    .local v0, "currentorientation":I
    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    invoke-virtual {v2}, Lcom/gp/monolith/Block;->rotateClockwise()V

    .line 688
    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    invoke-virtual {v2}, Lcom/gp/monolith/Block;->recalcBlockOrientation()V

    .line 689
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 712
    :goto_1
    return-void

    .line 691
    :cond_0
    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v2, v2, Lcom/gp/monolith/Block;->xPos:I

    iget-object v3, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v3, v3, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/gp/monolith/SubBlock;->xpos:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/gp/monolith/MonolithGameData;->gridMaxWidth:I

    if-lt v2, v3, :cond_1

    .line 693
    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iput v0, v2, Lcom/gp/monolith/Block;->orientation:I

    .line 694
    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    invoke-virtual {v2}, Lcom/gp/monolith/Block;->recalcBlockOrientation()V

    goto :goto_1

    .line 697
    :cond_1
    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v2, v2, Lcom/gp/monolith/Block;->yPos:I

    iget-object v3, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v3, v3, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/gp/monolith/SubBlock;->ypos:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/gp/monolith/MonolithGameData;->gridMaxHeight:I

    if-lt v2, v3, :cond_2

    .line 699
    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iput v0, v2, Lcom/gp/monolith/Block;->orientation:I

    .line 700
    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    invoke-virtual {v2}, Lcom/gp/monolith/Block;->recalcBlockOrientation()V

    goto :goto_1

    .line 704
    :cond_2
    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->grid:[[I

    iget-object v3, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v3, v3, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/gp/monolith/SubBlock;->xpos:I

    iget-object v4, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v4, v4, Lcom/gp/monolith/Block;->xPos:I

    add-int/2addr v3, v4

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget-object v3, v3, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/gp/monolith/SubBlock;->ypos:I

    iget-object v4, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iget v4, v4, Lcom/gp/monolith/Block;->yPos:I

    add-int/2addr v3, v4

    aget v2, v2, v3

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 706
    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    iput v0, v2, Lcom/gp/monolith/Block;->orientation:I

    .line 707
    iget-object v2, p0, Lcom/gp/monolith/MonolithGameData;->currentBlock:Lcom/gp/monolith/Block;

    invoke-virtual {v2}, Lcom/gp/monolith/Block;->recalcBlockOrientation()V

    goto :goto_1

    .line 689
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public saveGame(Landroid/content/SharedPreferences;)V
    .locals 7
    .param p1, "preferences"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v6, 0x1

    .line 875
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 876
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "gamesaved"

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 877
    const-string v5, "gametype"

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 878
    const-string v5, "MonolithGameData.boundaryCondition"

    iget v6, p0, Lcom/gp/monolith/MonolithGameData;->boundaryCondition:I

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 879
    const-string v5, "MonolithGameData.enableMonolithBlocks"

    sget-boolean v6, Lcom/gp/monolith/Block;->enableMonolithBlocks:Z

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 880
    const-string v5, "MonolithGameData.score"

    iget v6, p0, Lcom/gp/monolith/MonolithGameData;->score:I

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 881
    const-string v5, "MonolithGameData.lines"

    iget v6, p0, Lcom/gp/monolith/MonolithGameData;->lines:I

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 882
    const-string v5, "MonolithGameData.level"

    iget v6, p0, Lcom/gp/monolith/MonolithGameData;->level:I

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 883
    const-string v5, "MonolithGameData.timer"

    iget v6, p0, Lcom/gp/monolith/MonolithGameData;->timer:I

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 884
    const-string v5, "MonolithGameData.newLevel"

    iget v6, p0, Lcom/gp/monolith/MonolithGameData;->newLevel:I

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 885
    const-string v5, "MonolithGameData.startingLevel"

    iget v6, p0, Lcom/gp/monolith/MonolithGameData;->startingLevel:I

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 886
    const-string v5, "MonolithGameData.gridMaxWidth"

    iget v6, p0, Lcom/gp/monolith/MonolithGameData;->gridMaxWidth:I

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 887
    const-string v5, "MonolithGameData.gridMaxHeight"

    iget v6, p0, Lcom/gp/monolith/MonolithGameData;->gridMaxHeight:I

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 888
    const-string v5, "MonolithGameData.energy"

    iget v6, p0, Lcom/gp/monolith/MonolithGameData;->energy:I

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 889
    const/4 v4, 0x0

    .local v4, "y":I
    :goto_0
    iget v5, p0, Lcom/gp/monolith/MonolithGameData;->gridMaxHeight:I

    if-lt v4, v5, :cond_0

    .line 909
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 910
    return-void

    .line 891
    :cond_0
    const-string v2, ""

    .line 892
    .local v2, "line":Ljava/lang/String;
    const-string v0, ""

    .line 893
    .local v0, "currentChar":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "x":I
    :goto_1
    iget v5, p0, Lcom/gp/monolith/MonolithGameData;->gridMaxWidth:I

    if-lt v3, v5, :cond_1

    .line 907
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "MonolithGameData.line"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 889
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 895
    :cond_1
    iget-object v5, p0, Lcom/gp/monolith/MonolithGameData;->grid:[[I

    aget-object v5, v5, v3

    aget v5, v5, v4

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 897
    const-string v0, " "

    .line 904
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 893
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 901
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/gp/monolith/MonolithGameData;->grid:[[I

    aget-object v6, v6, v3

    aget v6, v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public saveGameAsString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-string v0, ""

    return-object v0
.end method

.method public setEnergy(I)V
    .locals 0
    .param p1, "energy"    # I

    .prologue
    .line 775
    iput p1, p0, Lcom/gp/monolith/MonolithGameData;->energy:I

    .line 776
    return-void
.end method

.method public setGridValue(III)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "value"    # I

    .prologue
    .line 138
    iget-object v0, p0, Lcom/gp/monolith/MonolithGameData;->grid:[[I

    aget-object v0, v0, p1

    aput p3, v0, p2

    .line 139
    return-void
.end method

.method public setLevel(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 724
    iput p1, p0, Lcom/gp/monolith/MonolithGameData;->level:I

    .line 725
    return-void
.end method

.method public setLines(I)V
    .locals 0
    .param p1, "lines"    # I

    .prologue
    .line 742
    iput p1, p0, Lcom/gp/monolith/MonolithGameData;->lines:I

    .line 744
    return-void
.end method

.method public setScore(I)V
    .locals 0
    .param p1, "score"    # I

    .prologue
    .line 716
    iput p1, p0, Lcom/gp/monolith/MonolithGameData;->score:I

    .line 717
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 122
    iput p1, p0, Lcom/gp/monolith/MonolithGameData;->status:I

    .line 123
    return-void
.end method

.method public setStep(I)V
    .locals 0
    .param p1, "step"    # I

    .prologue
    .line 793
    iput p1, p0, Lcom/gp/monolith/MonolithGameData;->step:I

    .line 794
    return-void
.end method

.method public setTimer(I)V
    .locals 0
    .param p1, "time"    # I

    .prologue
    .line 508
    iput p1, p0, Lcom/gp/monolith/MonolithGameData;->timer:I

    .line 509
    return-void
.end method

.method public setTimerEnabled(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 751
    iput-boolean p1, p0, Lcom/gp/monolith/MonolithGameData;->timerEnabled:Z

    .line 752
    return-void
.end method
