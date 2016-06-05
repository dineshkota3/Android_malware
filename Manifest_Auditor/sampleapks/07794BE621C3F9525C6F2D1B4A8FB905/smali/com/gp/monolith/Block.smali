.class public Lcom/gp/monolith/Block;
.super Ljava/lang/Object;
.source "Block.java"


# static fields
.field public static final BLOCKTYPE_GAMMA:I = 0x5

.field public static final BLOCKTYPE_GAMMAINV:I = 0x6

.field public static final BLOCKTYPE_LETTERS:I = 0x3

.field public static final BLOCKTYPE_LETTERT:I = 0x2

.field public static final BLOCKTYPE_NUMBER2:I = 0x4

.field public static final BLOCKTYPE_SQUARE:I = 0x1

.field public static final BLOCKTYPE_STICK:I

.field public static enableMonolithBlocks:Z

.field public static randomgen:Ljava/util/Random;


# instance fields
.field public blocktype:I

.field public color:I

.field public height:I

.field public isMonolithBlock:Z

.field public orientation:I

.field public subblocks:[Lcom/gp/monolith/SubBlock;

.field public xPos:I

.field public yPos:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 422
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/gp/monolith/Block;->randomgen:Ljava/util/Random;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-array v1, v7, [Lcom/gp/monolith/SubBlock;

    iput-object v1, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    .line 21
    iget-object v1, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    new-instance v2, Lcom/gp/monolith/SubBlock;

    invoke-direct {v2}, Lcom/gp/monolith/SubBlock;-><init>()V

    aput-object v2, v1, v3

    .line 22
    iget-object v1, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    new-instance v2, Lcom/gp/monolith/SubBlock;

    invoke-direct {v2}, Lcom/gp/monolith/SubBlock;-><init>()V

    aput-object v2, v1, v4

    .line 23
    iget-object v1, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    new-instance v2, Lcom/gp/monolith/SubBlock;

    invoke-direct {v2}, Lcom/gp/monolith/SubBlock;-><init>()V

    aput-object v2, v1, v6

    .line 24
    iget-object v1, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    new-instance v2, Lcom/gp/monolith/SubBlock;

    invoke-direct {v2}, Lcom/gp/monolith/SubBlock;-><init>()V

    aput-object v2, v1, v5

    .line 25
    iput v5, p0, Lcom/gp/monolith/Block;->xPos:I

    .line 26
    iput v3, p0, Lcom/gp/monolith/Block;->yPos:I

    .line 27
    sget-object v1, Lcom/gp/monolith/Block;->randomgen:Ljava/util/Random;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 28
    .local v0, "blocktype":I
    sget-boolean v1, Lcom/gp/monolith/Block;->enableMonolithBlocks:Z

    if-eqz v1, :cond_2

    .line 30
    sget-object v1, Lcom/gp/monolith/Block;->randomgen:Ljava/util/Random;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 32
    iput-boolean v4, p0, Lcom/gp/monolith/Block;->isMonolithBlock:Z

    .line 43
    :goto_0
    iput v3, p0, Lcom/gp/monolith/Block;->orientation:I

    .line 44
    packed-switch v0, :pswitch_data_0

    .line 78
    :goto_1
    iget-boolean v1, p0, Lcom/gp/monolith/Block;->isMonolithBlock:Z

    if-eqz v1, :cond_0

    .line 80
    const/4 v1, 0x7

    iput v1, p0, Lcom/gp/monolith/Block;->color:I

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/gp/monolith/Block;->recalcBlockOrientation()V

    .line 83
    return-void

    .line 36
    :cond_1
    iput-boolean v3, p0, Lcom/gp/monolith/Block;->isMonolithBlock:Z

    goto :goto_0

    .line 41
    :cond_2
    iput-boolean v3, p0, Lcom/gp/monolith/Block;->isMonolithBlock:Z

    goto :goto_0

    .line 47
    :pswitch_0
    iput v3, p0, Lcom/gp/monolith/Block;->blocktype:I

    .line 48
    iput v3, p0, Lcom/gp/monolith/Block;->color:I

    goto :goto_1

    .line 51
    :pswitch_1
    iput v4, p0, Lcom/gp/monolith/Block;->blocktype:I

    .line 52
    iput v4, p0, Lcom/gp/monolith/Block;->color:I

    goto :goto_1

    .line 55
    :pswitch_2
    iput v6, p0, Lcom/gp/monolith/Block;->blocktype:I

    .line 56
    iput v6, p0, Lcom/gp/monolith/Block;->color:I

    goto :goto_1

    .line 59
    :pswitch_3
    iput v5, p0, Lcom/gp/monolith/Block;->blocktype:I

    .line 60
    iput v5, p0, Lcom/gp/monolith/Block;->color:I

    goto :goto_1

    .line 64
    :pswitch_4
    iput v7, p0, Lcom/gp/monolith/Block;->blocktype:I

    .line 65
    iput v7, p0, Lcom/gp/monolith/Block;->color:I

    goto :goto_1

    .line 68
    :pswitch_5
    const/4 v1, 0x5

    iput v1, p0, Lcom/gp/monolith/Block;->blocktype:I

    .line 69
    const/4 v1, 0x5

    iput v1, p0, Lcom/gp/monolith/Block;->color:I

    goto :goto_1

    .line 72
    :pswitch_6
    const/4 v1, 0x6

    iput v1, p0, Lcom/gp/monolith/Block;->blocktype:I

    .line 73
    const/4 v1, 0x6

    iput v1, p0, Lcom/gp/monolith/Block;->color:I

    goto :goto_1

    .line 44
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public constructor <init>(III)V
    .locals 7
    .param p1, "theType"    # I
    .param p2, "xPos"    # I
    .param p3, "yPos"    # I

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-array v0, v6, [Lcom/gp/monolith/SubBlock;

    iput-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    .line 87
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    new-instance v1, Lcom/gp/monolith/SubBlock;

    invoke-direct {v1}, Lcom/gp/monolith/SubBlock;-><init>()V

    aput-object v1, v0, v2

    .line 88
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    new-instance v1, Lcom/gp/monolith/SubBlock;

    invoke-direct {v1}, Lcom/gp/monolith/SubBlock;-><init>()V

    aput-object v1, v0, v3

    .line 89
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    new-instance v1, Lcom/gp/monolith/SubBlock;

    invoke-direct {v1}, Lcom/gp/monolith/SubBlock;-><init>()V

    aput-object v1, v0, v4

    .line 90
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    new-instance v1, Lcom/gp/monolith/SubBlock;

    invoke-direct {v1}, Lcom/gp/monolith/SubBlock;-><init>()V

    aput-object v1, v0, v5

    .line 91
    iput p1, p0, Lcom/gp/monolith/Block;->blocktype:I

    .line 92
    iput v2, p0, Lcom/gp/monolith/Block;->orientation:I

    .line 93
    iget v0, p0, Lcom/gp/monolith/Block;->blocktype:I

    packed-switch v0, :pswitch_data_0

    .line 123
    :goto_0
    iget-boolean v0, p0, Lcom/gp/monolith/Block;->isMonolithBlock:Z

    if-eqz v0, :cond_0

    .line 125
    const/4 v0, 0x7

    iput v0, p0, Lcom/gp/monolith/Block;->color:I

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/gp/monolith/Block;->recalcBlockOrientation()V

    .line 129
    return-void

    .line 96
    :pswitch_0
    iput v2, p0, Lcom/gp/monolith/Block;->color:I

    goto :goto_0

    .line 100
    :pswitch_1
    iput v3, p0, Lcom/gp/monolith/Block;->color:I

    goto :goto_0

    .line 103
    :pswitch_2
    iput v4, p0, Lcom/gp/monolith/Block;->color:I

    goto :goto_0

    .line 106
    :pswitch_3
    iput v5, p0, Lcom/gp/monolith/Block;->color:I

    goto :goto_0

    .line 109
    :pswitch_4
    iput v6, p0, Lcom/gp/monolith/Block;->color:I

    goto :goto_0

    .line 113
    :pswitch_5
    const/4 v0, 0x5

    iput v0, p0, Lcom/gp/monolith/Block;->color:I

    goto :goto_0

    .line 117
    :pswitch_6
    const/4 v0, 0x6

    iput v0, p0, Lcom/gp/monolith/Block;->color:I

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public recalcBlockOrientation()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 157
    iget v0, p0, Lcom/gp/monolith/Block;->blocktype:I

    packed-switch v0, :pswitch_data_0

    .line 412
    :goto_0
    return-void

    .line 160
    :pswitch_0
    iget v0, p0, Lcom/gp/monolith/Block;->orientation:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/gp/monolith/Block;->orientation:I

    if-ne v0, v3, :cond_1

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v1

    iput v1, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 164
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v1

    iput v1, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 165
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v2

    iput v2, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 166
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v2

    iput v1, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 167
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v3

    iput v3, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 168
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v3

    iput v1, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 169
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v4

    iput v4, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 170
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v4

    iput v1, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 171
    iput v2, p0, Lcom/gp/monolith/Block;->height:I

    goto :goto_0

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v1

    iput v1, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 176
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v1

    iput v1, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 177
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v2

    iput v1, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 178
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v2

    iput v2, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 179
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v3

    iput v1, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 180
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v3

    iput v3, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 181
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v4

    iput v1, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 182
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v4

    iput v4, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 183
    const/4 v0, 0x4

    iput v0, p0, Lcom/gp/monolith/Block;->height:I

    goto :goto_0

    .line 188
    :pswitch_1
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v1

    iput v1, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 189
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v1

    iput v1, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 190
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v2

    iput v2, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 191
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v2

    iput v1, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 192
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v3

    iput v1, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 193
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v3

    iput v2, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 194
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v4

    iput v2, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 195
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v4

    iput v2, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 196
    iput v3, p0, Lcom/gp/monolith/Block;->height:I

    goto/16 :goto_0

    .line 200
    :pswitch_2
    iget v0, p0, Lcom/gp/monolith/Block;->orientation:I

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 203
    :pswitch_3
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v1

    iput v1, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 204
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v1

    iput v1, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 205
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v2

    iput v2, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 206
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v2

    iput v1, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 207
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v3

    iput v3, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 208
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v3

    iput v1, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 209
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v4

    iput v2, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 210
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v4

    iput v2, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 211
    iput v3, p0, Lcom/gp/monolith/Block;->height:I

    goto/16 :goto_0

    .line 214
    :pswitch_4
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v1

    iput v2, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 215
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v1

    iput v1, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 216
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v2

    iput v1, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 217
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v2

    iput v2, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 218
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v3

    iput v2, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 219
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v3

    iput v2, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 220
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v4

    iput v2, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 221
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v4

    iput v3, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 222
    iput v4, p0, Lcom/gp/monolith/Block;->height:I

    goto/16 :goto_0

    .line 225
    :pswitch_5
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v1

    iput v2, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 226
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v1

    iput v1, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 227
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v2

    iput v1, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 228
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v2

    iput v2, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 229
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v3

    iput v2, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 230
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v3

    iput v2, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 231
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v4

    iput v3, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 232
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v4

    iput v2, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 233
    iput v3, p0, Lcom/gp/monolith/Block;->height:I

    goto/16 :goto_0

    .line 236
    :pswitch_6
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v1

    iput v1, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 237
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v1

    iput v1, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 238
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v2

    iput v1, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 239
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v2

    iput v2, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 240
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v3

    iput v2, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 241
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v3

    iput v2, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 242
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v4

    iput v1, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 243
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v4

    iput v3, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 244
    iput v4, p0, Lcom/gp/monolith/Block;->height:I

    goto/16 :goto_0

    .line 253
    :pswitch_7
    iget v0, p0, Lcom/gp/monolith/Block;->orientation:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/gp/monolith/Block;->orientation:I

    if-ne v0, v3, :cond_3

    .line 256
    :cond_2
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v1

    iput v2, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 257
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v1

    iput v1, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 258
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v2

    iput v3, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 259
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v2

    iput v1, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 260
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v3

    iput v1, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 261
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v3

    iput v2, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 262
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v4

    iput v2, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 263
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v4

    iput v2, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 264
    iput v3, p0, Lcom/gp/monolith/Block;->height:I

    goto/16 :goto_0

    .line 268
    :cond_3
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v1

    iput v1, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 269
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v1

    iput v1, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 270
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v2

    iput v1, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 271
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v2

    iput v2, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 272
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v3

    iput v2, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 273
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v3

    iput v2, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 274
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v4

    iput v2, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 275
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v4

    iput v3, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 276
    iput v4, p0, Lcom/gp/monolith/Block;->height:I

    goto/16 :goto_0

    .line 282
    :pswitch_8
    iget v0, p0, Lcom/gp/monolith/Block;->orientation:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/gp/monolith/Block;->orientation:I

    if-ne v0, v3, :cond_5

    .line 285
    :cond_4
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v1

    iput v1, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 286
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v1

    iput v1, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 287
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v2

    iput v2, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 288
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v2

    iput v1, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 289
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v3

    iput v2, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 290
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v3

    iput v2, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 291
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v4

    iput v3, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 292
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v4

    iput v2, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 293
    iput v3, p0, Lcom/gp/monolith/Block;->height:I

    goto/16 :goto_0

    .line 297
    :cond_5
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v1

    iput v2, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 298
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v1

    iput v1, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 299
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v2

    iput v1, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 300
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v2

    iput v2, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 301
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v3

    iput v2, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 302
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v3

    iput v2, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 303
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v4

    iput v1, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 304
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v4

    iput v3, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 305
    iput v4, p0, Lcom/gp/monolith/Block;->height:I

    goto/16 :goto_0

    .line 311
    :pswitch_9
    iget v0, p0, Lcom/gp/monolith/Block;->orientation:I

    packed-switch v0, :pswitch_data_2

    goto/16 :goto_0

    .line 314
    :pswitch_a
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v1

    iput v1, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 315
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v1

    iput v1, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 316
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v2

    iput v1, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 317
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v2

    iput v2, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 318
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v3

    iput v2, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 319
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v3

    iput v2, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 320
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v4

    iput v3, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 321
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v4

    iput v2, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 322
    iput v3, p0, Lcom/gp/monolith/Block;->height:I

    goto/16 :goto_0

    .line 326
    :pswitch_b
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v1

    iput v1, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 327
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v1

    iput v1, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 328
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v2

    iput v2, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 329
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v2

    iput v1, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 330
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v3

    iput v1, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 331
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v3

    iput v2, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 332
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v4

    iput v1, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 333
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v4

    iput v3, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 334
    iput v4, p0, Lcom/gp/monolith/Block;->height:I

    goto/16 :goto_0

    .line 338
    :pswitch_c
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v1

    iput v1, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 339
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v1

    iput v1, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 340
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v2

    iput v2, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 341
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v2

    iput v1, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 342
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v3

    iput v3, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 343
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v3

    iput v1, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 344
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v4

    iput v3, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 345
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v4

    iput v2, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 346
    iput v3, p0, Lcom/gp/monolith/Block;->height:I

    goto/16 :goto_0

    .line 350
    :pswitch_d
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v1

    iput v2, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 351
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v1

    iput v1, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 352
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v2

    iput v2, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 353
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v2

    iput v2, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 354
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v3

    iput v1, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 355
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v3

    iput v3, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 356
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v4

    iput v2, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 357
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v4

    iput v3, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 358
    iput v4, p0, Lcom/gp/monolith/Block;->height:I

    goto/16 :goto_0

    .line 363
    :pswitch_e
    iget v0, p0, Lcom/gp/monolith/Block;->orientation:I

    packed-switch v0, :pswitch_data_3

    goto/16 :goto_0

    .line 366
    :pswitch_f
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v1

    iput v3, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 367
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v1

    iput v1, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 368
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v2

    iput v1, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 369
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v2

    iput v2, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 370
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v3

    iput v2, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 371
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v3

    iput v2, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 372
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v4

    iput v3, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 373
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v4

    iput v2, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 374
    iput v3, p0, Lcom/gp/monolith/Block;->height:I

    goto/16 :goto_0

    .line 377
    :pswitch_10
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v1

    iput v1, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 378
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v1

    iput v1, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 379
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v2

    iput v1, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 380
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v2

    iput v2, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 381
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v3

    iput v1, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 382
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v3

    iput v3, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 383
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v4

    iput v2, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 384
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v4

    iput v3, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 385
    iput v4, p0, Lcom/gp/monolith/Block;->height:I

    goto/16 :goto_0

    .line 388
    :pswitch_11
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v1

    iput v1, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 389
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v1

    iput v1, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 390
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v2

    iput v2, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 391
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v2

    iput v1, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 392
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v3

    iput v3, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 393
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v3

    iput v1, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 394
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v4

    iput v1, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 395
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v4

    iput v2, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 396
    iput v3, p0, Lcom/gp/monolith/Block;->height:I

    goto/16 :goto_0

    .line 399
    :pswitch_12
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v1

    iput v1, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 400
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v1

    iput v1, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 401
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v2

    iput v2, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 402
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v2

    iput v1, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 403
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v3

    iput v2, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 404
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v3

    iput v2, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 405
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v4

    iput v2, v0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 406
    iget-object v0, p0, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v0, v0, v4

    iput v3, v0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 407
    iput v4, p0, Lcom/gp/monolith/Block;->height:I

    goto/16 :goto_0

    .line 157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_e
    .end packed-switch

    .line 200
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 311
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 363
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method public rotateClockwise()V
    .locals 2

    .prologue
    .line 132
    iget v0, p0, Lcom/gp/monolith/Block;->orientation:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 134
    iget v0, p0, Lcom/gp/monolith/Block;->orientation:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gp/monolith/Block;->orientation:I

    .line 140
    :goto_0
    invoke-virtual {p0}, Lcom/gp/monolith/Block;->recalcBlockOrientation()V

    .line 141
    return-void

    .line 138
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/gp/monolith/Block;->orientation:I

    goto :goto_0
.end method

.method public rotateCounterClockwise()V
    .locals 2

    .prologue
    .line 144
    iget v0, p0, Lcom/gp/monolith/Block;->orientation:I

    if-lez v0, :cond_0

    .line 146
    iget v0, p0, Lcom/gp/monolith/Block;->orientation:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/gp/monolith/Block;->orientation:I

    .line 152
    :goto_0
    invoke-virtual {p0}, Lcom/gp/monolith/Block;->recalcBlockOrientation()V

    .line 153
    return-void

    .line 150
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/gp/monolith/Block;->orientation:I

    goto :goto_0
.end method
