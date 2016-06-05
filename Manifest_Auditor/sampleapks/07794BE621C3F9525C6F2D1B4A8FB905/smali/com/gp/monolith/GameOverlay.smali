.class public Lcom/gp/monolith/GameOverlay;
.super Landroid/view/View;
.source "GameOverlay.java"


# static fields
.field public static final DRAW_GAME_OPTIONS:I = 0x2

.field public static final DRAW_NAME_ENTRY:I = 0x1

.field public static final DRAW_NORMAL:I = 0x0

.field public static final OVERLAY_TYPE_GAME_CLASSIC:I = 0x1

.field public static final OVERLAY_TYPE_GAME_MONOLITH:I = 0x2

.field public static final OVERLAY_TYPE_GAME_PUZZLE:I = 0x3

.field public static final OVERLAY_TYPE_INTRO:I = 0x0

.field public static final OVERLAY_TYPE_OPTIONS:I = 0x4


# instance fields
.field characters:Ljava/lang/String;

.field currentCharacter:I

.field currentCharacterPosition:I

.field private currentTextColor:I

.field private curtainPaint:Landroid/graphics/Paint;

.field private direction:I

.field private drawType:I

.field private energy:Ljava/lang/String;

.field private evolvingXPos:I

.field private gameOverPaint:Landroid/graphics/Paint;

.field private gameOverPaint2:Landroid/graphics/Paint;

.field private gameOverXPos:I

.field private goalpha:I

.field private hiscore:Ljava/lang/String;

.field private hsPaint:Landroid/graphics/Paint;

.field private hsTable:Lcom/gp/monolith/HighScoreTable;

.field private lastDrawTime:J

.field private leftarrow:Landroid/graphics/Bitmap;

.field private level:Ljava/lang/String;

.field private lines:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private nameEntry:Ljava/lang/String;

.field private nameEntryLength:I

.field private options:Lcom/gp/monolith/Options;

.field private optionsPaint:Landroid/graphics/Paint;

.field private overlayType:I

.field private res:Landroid/content/res/Resources;

.field private rightarrow:Landroid/graphics/Bitmap;

.field private score:Ljava/lang/String;

.field private selectedOptionsPaint:Landroid/graphics/Paint;

.field private statusTextPaint1:Landroid/graphics/Paint;

.field private statusTextPaint2:Landroid/graphics/Paint;

.field private timer:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/gp/monolith/HighScoreTable;Lcom/gp/monolith/Options;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "table"    # Lcom/gp/monolith/HighScoreTable;
    .param p3, "options"    # Lcom/gp/monolith/Options;

    .prologue
    const/high16 v7, 0x41600000    # 14.0f

    const/16 v6, 0x80

    const/4 v4, 0x0

    const/16 v3, 0xff

    const-string v5, "0"

    .line 14
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 599
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZ <@"

    iput-object v0, p0, Lcom/gp/monolith/GameOverlay;->characters:Ljava/lang/String;

    .line 601
    iput v4, p0, Lcom/gp/monolith/GameOverlay;->currentCharacter:I

    .line 603
    iput v4, p0, Lcom/gp/monolith/GameOverlay;->currentCharacterPosition:I

    .line 15
    iput-object p3, p0, Lcom/gp/monolith/GameOverlay;->options:Lcom/gp/monolith/Options;

    .line 16
    iput-object p2, p0, Lcom/gp/monolith/GameOverlay;->hsTable:Lcom/gp/monolith/HighScoreTable;

    .line 17
    const/4 v0, 0x2

    iput v0, p0, Lcom/gp/monolith/GameOverlay;->overlayType:I

    .line 18
    iput v4, p0, Lcom/gp/monolith/GameOverlay;->drawType:I

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/gp/monolith/GameOverlay;->res:Landroid/content/res/Resources;

    .line 20
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/gp/monolith/GameOverlay;->curtainPaint:Landroid/graphics/Paint;

    .line 21
    iget-object v0, p0, Lcom/gp/monolith/GameOverlay;->curtainPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v4, v4, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 22
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/gp/monolith/GameOverlay;->gameOverPaint:Landroid/graphics/Paint;

    .line 23
    iget-object v0, p0, Lcom/gp/monolith/GameOverlay;->gameOverPaint:Landroid/graphics/Paint;

    const/16 v1, 0xdc

    const/16 v2, 0x3c

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 24
    iget-object v0, p0, Lcom/gp/monolith/GameOverlay;->gameOverPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x42100000    # 36.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 25
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/gp/monolith/GameOverlay;->gameOverPaint2:Landroid/graphics/Paint;

    .line 26
    iget-object v0, p0, Lcom/gp/monolith/GameOverlay;->gameOverPaint2:Landroid/graphics/Paint;

    const/16 v1, 0x1e

    const/16 v2, 0x1e

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 27
    iget-object v0, p0, Lcom/gp/monolith/GameOverlay;->gameOverPaint2:Landroid/graphics/Paint;

    const/high16 v1, 0x42100000    # 36.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/gp/monolith/GameOverlay;->statusTextPaint1:Landroid/graphics/Paint;

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/gp/monolith/GameOverlay;->statusTextPaint2:Landroid/graphics/Paint;

    .line 30
    iget-object v0, p0, Lcom/gp/monolith/GameOverlay;->statusTextPaint1:Landroid/graphics/Paint;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1, v3, v4, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 31
    iget-object v0, p0, Lcom/gp/monolith/GameOverlay;->statusTextPaint1:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 32
    iget-object v0, p0, Lcom/gp/monolith/GameOverlay;->statusTextPaint2:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 33
    iget-object v0, p0, Lcom/gp/monolith/GameOverlay;->statusTextPaint2:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v6, v6, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/gp/monolith/GameOverlay;->optionsPaint:Landroid/graphics/Paint;

    .line 35
    iget-object v0, p0, Lcom/gp/monolith/GameOverlay;->optionsPaint:Landroid/graphics/Paint;

    const/16 v1, 0xa

    const/16 v2, 0xa

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 36
    iget-object v0, p0, Lcom/gp/monolith/GameOverlay;->optionsPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41b00000    # 22.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/gp/monolith/GameOverlay;->selectedOptionsPaint:Landroid/graphics/Paint;

    .line 38
    iget-object v0, p0, Lcom/gp/monolith/GameOverlay;->selectedOptionsPaint:Landroid/graphics/Paint;

    const/16 v1, 0xf0

    const/16 v2, 0xe6

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 39
    iget-object v0, p0, Lcom/gp/monolith/GameOverlay;->selectedOptionsPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41b00000    # 22.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/gp/monolith/GameOverlay;->hsPaint:Landroid/graphics/Paint;

    .line 41
    iget-object v0, p0, Lcom/gp/monolith/GameOverlay;->hsPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 42
    iget-object v0, p0, Lcom/gp/monolith/GameOverlay;->hsPaint:Landroid/graphics/Paint;

    const/16 v1, 0xdc

    const/16 v2, 0x3c

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 43
    const-string v0, "0"

    iput-object v5, p0, Lcom/gp/monolith/GameOverlay;->score:Ljava/lang/String;

    .line 44
    const-string v0, "1"

    iput-object v0, p0, Lcom/gp/monolith/GameOverlay;->level:Ljava/lang/String;

    .line 45
    const-string v0, "0"

    iput-object v5, p0, Lcom/gp/monolith/GameOverlay;->hiscore:Ljava/lang/String;

    .line 46
    const-string v0, "0"

    iput-object v5, p0, Lcom/gp/monolith/GameOverlay;->lines:Ljava/lang/String;

    .line 47
    const-string v0, "0"

    iput-object v5, p0, Lcom/gp/monolith/GameOverlay;->energy:Ljava/lang/String;

    .line 48
    const-string v0, "monolith android"

    iput-object v0, p0, Lcom/gp/monolith/GameOverlay;->message:Ljava/lang/String;

    .line 49
    iput v4, p0, Lcom/gp/monolith/GameOverlay;->goalpha:I

    .line 50
    const/16 v0, 0x8

    iput v0, p0, Lcom/gp/monolith/GameOverlay;->direction:I

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gp/monolith/GameOverlay;->lastDrawTime:J

    .line 53
    const/16 v0, 0x9

    iput v0, p0, Lcom/gp/monolith/GameOverlay;->nameEntryLength:I

    .line 54
    iget-object v0, p0, Lcom/gp/monolith/GameOverlay;->res:Landroid/content/res/Resources;

    const v1, 0x7f020007

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/gp/monolith/GameOverlay;->leftarrow:Landroid/graphics/Bitmap;

    .line 55
    iget-object v0, p0, Lcom/gp/monolith/GameOverlay;->res:Landroid/content/res/Resources;

    const v1, 0x7f02000a

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/gp/monolith/GameOverlay;->rightarrow:Landroid/graphics/Bitmap;

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gp/monolith/GameOverlay;->timer:J

    .line 61
    return-void
.end method

.method private drawCenteredOptionText(Landroid/graphics/Canvas;ILjava/lang/String;Landroid/graphics/Paint;ZZZ)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "y"    # I
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "thePaint"    # Landroid/graphics/Paint;
    .param p5, "leftArrow"    # Z
    .param p6, "rightArrow"    # Z
    .param p7, "animate"    # Z

    .prologue
    .line 265
    iget-wide v4, p0, Lcom/gp/monolith/GameOverlay;->timer:J

    const-wide/16 v6, 0x3e8

    rem-long/2addr v4, v6

    long-to-int v4, v4

    div-int/lit8 v0, v4, 0x64

    .line 266
    .local v0, "offset":I
    if-nez p7, :cond_3

    .line 268
    const/4 v0, 0x0

    .line 277
    :cond_0
    :goto_0
    invoke-virtual {p0, p3, p4}, Lcom/gp/monolith/GameOverlay;->getTextWidth(Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v2

    .line 278
    .local v2, "theWidth":I
    iget-object v4, p0, Lcom/gp/monolith/GameOverlay;->leftarrow:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int/2addr v4, v2

    iget-object v5, p0, Lcom/gp/monolith/GameOverlay;->rightarrow:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    add-int v1, v4, v5

    .line 279
    .local v1, "theFullWidth":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    sub-int/2addr v4, v1

    div-int/lit8 v3, v4, 0x2

    .line 280
    .local v3, "x":I
    if-eqz p5, :cond_1

    iget-object v4, p0, Lcom/gp/monolith/GameOverlay;->leftarrow:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    new-instance v6, Landroid/graphics/Rect;

    sub-int v7, v3, v0

    iget-object v8, p0, Lcom/gp/monolith/GameOverlay;->leftarrow:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    add-int/2addr v8, v3

    sub-int/2addr v8, v0

    iget-object v9, p0, Lcom/gp/monolith/GameOverlay;->leftarrow:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    add-int/2addr v9, p2

    invoke-direct {v6, v7, p2, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v4, v5, v6, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 281
    :cond_1
    iget-object v4, p0, Lcom/gp/monolith/GameOverlay;->leftarrow:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int/2addr v4, v3

    int-to-float v4, v4

    iget-object v5, p0, Lcom/gp/monolith/GameOverlay;->leftarrow:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/2addr v5, p2

    int-to-float v5, v5

    invoke-virtual {p1, p3, v4, v5, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 282
    if-eqz p6, :cond_2

    iget-object v4, p0, Lcom/gp/monolith/GameOverlay;->rightarrow:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    new-instance v6, Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/gp/monolith/GameOverlay;->leftarrow:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    add-int/2addr v7, v3

    add-int/2addr v7, v2

    add-int/2addr v7, v0

    iget-object v8, p0, Lcom/gp/monolith/GameOverlay;->leftarrow:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    add-int/2addr v8, v3

    add-int/2addr v8, v2

    iget-object v9, p0, Lcom/gp/monolith/GameOverlay;->rightarrow:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v0

    iget-object v9, p0, Lcom/gp/monolith/GameOverlay;->rightarrow:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    add-int/2addr v9, p2

    invoke-direct {v6, v7, p2, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v4, v5, v6, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 284
    :cond_2
    return-void

    .line 272
    .end local v1    # "theFullWidth":I
    .end local v2    # "theWidth":I
    .end local v3    # "x":I
    :cond_3
    const/4 v4, 0x5

    if-le v0, v4, :cond_0

    .line 274
    const/16 v4, 0xa

    sub-int v0, v4, v0

    goto :goto_0
.end method

.method private drawCenteredText(Landroid/graphics/Canvas;ILjava/lang/String;Landroid/graphics/Paint;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "y"    # I
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 248
    invoke-virtual {p0, p3, p4}, Lcom/gp/monolith/GameOverlay;->getTextWidth(Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v0

    .line 249
    .local v0, "theWidth":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    int-to-float v2, p2

    invoke-virtual {p1, p3, v1, v2, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 250
    return-void
.end method

.method private drawClassicGameOverlay(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v3, 0xa

    .line 404
    const/16 v0, 0x32

    .line 405
    .local v0, "adview":I
    iget-object v1, p0, Lcom/gp/monolith/GameOverlay;->res:Landroid/content/res/Resources;

    const v2, 0x7f050001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v0, 0xe

    invoke-virtual {p0, p1, v1, v3, v2}, Lcom/gp/monolith/GameOverlay;->drawString(Landroid/graphics/Canvas;Ljava/lang/String;II)V

    .line 406
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/gp/monolith/GameOverlay;->score:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v0, 0x22

    invoke-virtual {p0, p1, v1, v3, v2}, Lcom/gp/monolith/GameOverlay;->drawString(Landroid/graphics/Canvas;Ljava/lang/String;II)V

    .line 407
    iget-object v1, p0, Lcom/gp/monolith/GameOverlay;->res:Landroid/content/res/Resources;

    const v2, 0x7f050002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v0, 0x36

    invoke-virtual {p0, p1, v1, v3, v2}, Lcom/gp/monolith/GameOverlay;->drawString(Landroid/graphics/Canvas;Ljava/lang/String;II)V

    .line 408
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/gp/monolith/GameOverlay;->level:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v0, 0x4a

    invoke-virtual {p0, p1, v1, v3, v2}, Lcom/gp/monolith/GameOverlay;->drawString(Landroid/graphics/Canvas;Ljava/lang/String;II)V

    .line 409
    iget-object v1, p0, Lcom/gp/monolith/GameOverlay;->res:Landroid/content/res/Resources;

    const v2, 0x7f050003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v0, 0x5e

    invoke-virtual {p0, p1, v1, v3, v2}, Lcom/gp/monolith/GameOverlay;->drawString(Landroid/graphics/Canvas;Ljava/lang/String;II)V

    .line 410
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/gp/monolith/GameOverlay;->lines:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v0, 0x72

    invoke-virtual {p0, p1, v1, v3, v2}, Lcom/gp/monolith/GameOverlay;->drawString(Landroid/graphics/Canvas;Ljava/lang/String;II)V

    .line 411
    iget-object v1, p0, Lcom/gp/monolith/GameOverlay;->message:Ljava/lang/String;

    const-string v2, "Game Over"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    iget-object v1, p0, Lcom/gp/monolith/GameOverlay;->res:Landroid/content/res/Resources;

    const v2, 0x7f05000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/gp/monolith/GameOverlay;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/gp/monolith/GameOverlay;->gameOverXPos:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/gp/monolith/GameOverlay;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/gp/monolith/GameOverlay;->gameOverPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/gp/monolith/GameOverlay;->gameOverPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 416
    :cond_0
    return-void
.end method

.method private drawIntroOverlay(Landroid/graphics/Canvas;)V
    .locals 22
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 145
    .local v13, "now":Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameOverlay;->res:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const/high16 v19, 0x7f050000

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 147
    .local v11, "logo":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/gp/monolith/GameOverlay;->lastDrawTime:J

    move-wide/from16 v20, v0

    sub-long v18, v18, v20

    const-wide/32 v20, 0x88b8

    rem-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move v9, v0

    .line 149
    .local v9, "index":I
    move v0, v9

    move-object/from16 v1, p0

    iput v0, v1, Lcom/gp/monolith/GameOverlay;->currentTextColor:I

    .line 150
    if-ltz v9, :cond_0

    const/16 v18, 0x2710

    move v0, v9

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameOverlay;->res:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const/high16 v19, 0x7f050000

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 154
    :cond_0
    const/16 v18, 0x2710

    move v0, v9

    move/from16 v1, v18

    if-lt v0, v1, :cond_1

    const/16 v18, 0x3a98

    move v0, v9

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameOverlay;->res:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f050029

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 158
    :cond_1
    const/16 v18, 0x3a98

    move v0, v9

    move/from16 v1, v18

    if-lt v0, v1, :cond_2

    const/16 v18, 0x4e20

    move v0, v9

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameOverlay;->res:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f05002a

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 162
    :cond_2
    const/16 v18, 0x4e20

    move v0, v9

    move/from16 v1, v18

    if-lt v0, v1, :cond_3

    const/16 v18, 0x61a8

    move v0, v9

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameOverlay;->res:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f05002b

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 166
    :cond_3
    const/16 v18, 0x61a8

    move v0, v9

    move/from16 v1, v18

    if-lt v0, v1, :cond_8

    const v18, 0x88b8

    move v0, v9

    move/from16 v1, v18

    if-ge v0, v1, :cond_8

    .line 169
    const/16 v6, 0xd8

    .line 170
    .local v6, "highScoresHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v18

    sub-int v18, v18, v6

    div-int/lit8 v5, v18, 0x2

    .line 171
    .local v5, "basey":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameOverlay;->res:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f050015

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameOverlay;->hsPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/gp/monolith/GameOverlay;->getTextWidth(Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v7

    .line 172
    .local v7, "highScoresWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v18

    const/16 v19, 0xf8

    sub-int v18, v18, v19

    div-int/lit8 v17, v18, 0x2

    .line 173
    .local v17, "xoffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameOverlay;->res:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f050015

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v19

    sub-int v19, v19, v7

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move v0, v5

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameOverlay;->hsPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameOverlay;->res:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f050016

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    add-int/lit8 v19, v17, 0x20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-int/lit8 v20, v5, 0x12

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameOverlay;->hsPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameOverlay;->res:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f050001

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move/from16 v0, v17

    add-int/lit16 v0, v0, 0x96

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-int/lit8 v20, v5, 0x12

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameOverlay;->hsPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameOverlay;->res:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f050002

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move/from16 v0, v17

    add-int/lit16 v0, v0, 0xe6

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-int/lit8 v20, v5, 0x12

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameOverlay;->hsPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 179
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameOverlay;->hsTable:Lcom/gp/monolith/HighScoreTable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/gp/monolith/HighScoreTable;->getHighScoreCount()I

    move-result v18

    move v0, v8

    move/from16 v1, v18

    if-lt v0, v1, :cond_4

    .line 211
    .end local v5    # "basey":I
    .end local v6    # "highScoresHeight":I
    .end local v7    # "highScoresWidth":I
    .end local v8    # "i":I
    .end local v17    # "xoffset":I
    :goto_1
    return-void

    .line 181
    .restart local v5    # "basey":I
    .restart local v6    # "highScoresHeight":I
    .restart local v7    # "highScoresWidth":I
    .restart local v8    # "i":I
    .restart local v17    # "xoffset":I
    :cond_4
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v19, v8, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 182
    .local v14, "number":Ljava/lang/String;
    :goto_2
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_5

    .line 186
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameOverlay;->hsTable:Lcom/gp/monolith/HighScoreTable;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/gp/monolith/HighScoreTable;->getHighScore(I)Lcom/gp/monolith/HighScore;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/gp/monolith/HighScore;->getScore()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 187
    .local v15, "score":Ljava/lang/String;
    :goto_3
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_6

    .line 191
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameOverlay;->hsTable:Lcom/gp/monolith/HighScoreTable;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/gp/monolith/HighScoreTable;->getHighScore(I)Lcom/gp/monolith/HighScore;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/gp/monolith/HighScore;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 192
    .local v12, "name":Ljava/lang/String;
    :goto_4
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_7

    .line 196
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameOverlay;->hsTable:Lcom/gp/monolith/HighScoreTable;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/gp/monolith/HighScoreTable;->getHighScore(I)Lcom/gp/monolith/HighScore;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/gp/monolith/HighScore;->getLevel()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 197
    .local v10, "level":Ljava/lang/String;
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v18, v0

    add-int/lit8 v19, v5, 0x24

    mul-int/lit8 v20, v8, 0x12

    add-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameOverlay;->hsPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object v1, v14

    move/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 198
    add-int/lit8 v18, v17, 0x20

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-int/lit8 v19, v5, 0x24

    mul-int/lit8 v20, v8, 0x12

    add-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameOverlay;->hsPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object v1, v12

    move/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 199
    move/from16 v0, v17

    add-int/lit16 v0, v0, 0x96

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-int/lit8 v19, v5, 0x24

    mul-int/lit8 v20, v8, 0x12

    add-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameOverlay;->hsPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object v1, v15

    move/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 200
    move/from16 v0, v17

    add-int/lit16 v0, v0, 0xf0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-int/lit8 v19, v5, 0x24

    mul-int/lit8 v20, v8, 0x12

    add-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameOverlay;->hsPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object v1, v10

    move/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 179
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 184
    .end local v10    # "level":Ljava/lang/String;
    .end local v12    # "name":Ljava/lang/String;
    .end local v15    # "score":Ljava/lang/String;
    :cond_5
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, " "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_2

    .line 189
    .restart local v15    # "score":Ljava/lang/String;
    :cond_6
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "0"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_3

    .line 194
    .restart local v12    # "name":Ljava/lang/String;
    :cond_7
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, " "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_4

    .line 207
    .end local v5    # "basey":I
    .end local v6    # "highScoresHeight":I
    .end local v7    # "highScoresWidth":I
    .end local v8    # "i":I
    .end local v12    # "name":Ljava/lang/String;
    .end local v14    # "number":Ljava/lang/String;
    .end local v15    # "score":Ljava/lang/String;
    .end local v17    # "xoffset":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameOverlay;->gameOverPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/gp/monolith/GameOverlay;->getTextWidth(Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v16

    .line 208
    .local v16, "textxpos":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v18

    sub-int v18, v18, v16

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameOverlay;->gameOverPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Paint;->getTextSize()F

    move-result v20

    sub-float v19, v19, v20

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameOverlay;->gameOverPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object v1, v11

    move/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1
.end method

.method private drawMonolithGameOverlay(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/16 v3, 0xa

    .line 419
    const/16 v0, 0x32

    .line 420
    .local v0, "adview":I
    iget-object v1, p0, Lcom/gp/monolith/GameOverlay;->res:Landroid/content/res/Resources;

    const v2, 0x7f050001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v0, 0xe

    invoke-virtual {p0, p1, v1, v3, v2}, Lcom/gp/monolith/GameOverlay;->drawString(Landroid/graphics/Canvas;Ljava/lang/String;II)V

    .line 421
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/gp/monolith/GameOverlay;->score:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v0, 0x22

    invoke-virtual {p0, p1, v1, v3, v2}, Lcom/gp/monolith/GameOverlay;->drawString(Landroid/graphics/Canvas;Ljava/lang/String;II)V

    .line 422
    iget-object v1, p0, Lcom/gp/monolith/GameOverlay;->res:Landroid/content/res/Resources;

    const v2, 0x7f050002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v0, 0x36

    invoke-virtual {p0, p1, v1, v3, v2}, Lcom/gp/monolith/GameOverlay;->drawString(Landroid/graphics/Canvas;Ljava/lang/String;II)V

    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/gp/monolith/GameOverlay;->level:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v0, 0x4a

    invoke-virtual {p0, p1, v1, v3, v2}, Lcom/gp/monolith/GameOverlay;->drawString(Landroid/graphics/Canvas;Ljava/lang/String;II)V

    .line 424
    iget-object v1, p0, Lcom/gp/monolith/GameOverlay;->res:Landroid/content/res/Resources;

    const v2, 0x7f050003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v0, 0x5e

    invoke-virtual {p0, p1, v1, v3, v2}, Lcom/gp/monolith/GameOverlay;->drawString(Landroid/graphics/Canvas;Ljava/lang/String;II)V

    .line 425
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/gp/monolith/GameOverlay;->lines:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v0, 0x72

    invoke-virtual {p0, p1, v1, v3, v2}, Lcom/gp/monolith/GameOverlay;->drawString(Landroid/graphics/Canvas;Ljava/lang/String;II)V

    .line 426
    iget-object v1, p0, Lcom/gp/monolith/GameOverlay;->res:Landroid/content/res/Resources;

    const v2, 0x7f050004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit16 v2, v0, 0x86

    invoke-virtual {p0, p1, v1, v3, v2}, Lcom/gp/monolith/GameOverlay;->drawString(Landroid/graphics/Canvas;Ljava/lang/String;II)V

    .line 427
    iget-object v1, p0, Lcom/gp/monolith/GameOverlay;->energy:Ljava/lang/String;

    add-int/lit16 v2, v0, 0x9a

    invoke-virtual {p0, p1, v1, v3, v2}, Lcom/gp/monolith/GameOverlay;->drawString(Landroid/graphics/Canvas;Ljava/lang/String;II)V

    .line 428
    iget-object v1, p0, Lcom/gp/monolith/GameOverlay;->message:Ljava/lang/String;

    const-string v2, "Game Over"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 430
    iget-object v1, p0, Lcom/gp/monolith/GameOverlay;->res:Landroid/content/res/Resources;

    const v2, 0x7f05000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/gp/monolith/GameOverlay;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/gp/monolith/GameOverlay;->gameOverXPos:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/gp/monolith/GameOverlay;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/gp/monolith/GameOverlay;->gameOverPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    iget-object v4, p0, Lcom/gp/monolith/GameOverlay;->gameOverPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 432
    :cond_0
    iget-object v1, p0, Lcom/gp/monolith/GameOverlay;->message:Ljava/lang/String;

    const-string v2, "Evolving..."

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 434
    iget-object v1, p0, Lcom/gp/monolith/GameOverlay;->res:Landroid/content/res/Resources;

    const v2, 0x7f050011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/gp/monolith/GameOverlay;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/gp/monolith/GameOverlay;->evolvingXPos:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/gp/monolith/GameOverlay;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/gp/monolith/GameOverlay;->gameOverPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    iget-object v4, p0, Lcom/gp/monolith/GameOverlay;->gameOverPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 436
    :cond_1
    return-void
.end method

.method private drawNameEntry(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v7, 0x80

    const-string v6, "E"

    const-string v8, "D"

    .line 443
    const/16 v2, 0x16

    .line 444
    .local v2, "xw":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/gp/monolith/GameOverlay;->nameEntry:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 452
    iget-object v3, p0, Lcom/gp/monolith/GameOverlay;->characters:Ljava/lang/String;

    iget v4, p0, Lcom/gp/monolith/GameOverlay;->currentCharacter:I

    iget v5, p0, Lcom/gp/monolith/GameOverlay;->currentCharacter:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 453
    .local v0, "charstr":Ljava/lang/String;
    const-string v3, "<"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 455
    const-string v3, "D"

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    sub-int/2addr v3, v7

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/gp/monolith/GameOverlay;->currentCharacterPosition:I

    mul-int/2addr v4, v2

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x14

    int-to-float v4, v4

    iget-object v5, p0, Lcom/gp/monolith/GameOverlay;->statusTextPaint1:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 456
    const-string v3, "E"

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    sub-int/2addr v3, v7

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/gp/monolith/GameOverlay;->currentCharacterPosition:I

    mul-int/2addr v4, v2

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x28

    int-to-float v4, v4

    iget-object v5, p0, Lcom/gp/monolith/GameOverlay;->statusTextPaint1:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 457
    const-string v3, "L"

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    sub-int/2addr v4, v7

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/gp/monolith/GameOverlay;->currentCharacterPosition:I

    mul-int/2addr v5, v2

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x3c

    int-to-float v5, v5

    iget-object v6, p0, Lcom/gp/monolith/GameOverlay;->statusTextPaint1:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 470
    :goto_1
    return-void

    .line 446
    .end local v0    # "charstr":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/gp/monolith/GameOverlay;->nameEntry:Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 447
    .restart local v0    # "charstr":Ljava/lang/String;
    iget v3, p0, Lcom/gp/monolith/GameOverlay;->currentCharacterPosition:I

    if-eq v1, v3, :cond_1

    .line 449
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    sub-int/2addr v3, v7

    div-int/lit8 v3, v3, 0x2

    mul-int v4, v1, v2

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x28

    int-to-float v4, v4

    iget-object v5, p0, Lcom/gp/monolith/GameOverlay;->gameOverPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 444
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 460
    :cond_2
    const-string v3, "@"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 462
    const-string v3, "E"

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    sub-int/2addr v3, v7

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/gp/monolith/GameOverlay;->currentCharacterPosition:I

    mul-int/2addr v4, v2

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x14

    int-to-float v4, v4

    iget-object v5, p0, Lcom/gp/monolith/GameOverlay;->statusTextPaint1:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 463
    const-string v3, "N"

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    sub-int/2addr v4, v7

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/gp/monolith/GameOverlay;->currentCharacterPosition:I

    mul-int/2addr v5, v2

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x28

    int-to-float v5, v5

    iget-object v6, p0, Lcom/gp/monolith/GameOverlay;->statusTextPaint1:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 464
    const-string v3, "D"

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    sub-int/2addr v3, v7

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/gp/monolith/GameOverlay;->currentCharacterPosition:I

    mul-int/2addr v4, v2

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x3c

    int-to-float v4, v4

    iget-object v5, p0, Lcom/gp/monolith/GameOverlay;->statusTextPaint1:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 468
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    sub-int/2addr v3, v7

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/gp/monolith/GameOverlay;->currentCharacterPosition:I

    mul-int/2addr v4, v2

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x28

    int-to-float v4, v4

    iget-object v5, p0, Lcom/gp/monolith/GameOverlay;->gameOverPaint2:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1
.end method

.method private drawOptionsOverlay(Landroid/graphics/Canvas;)V
    .locals 52
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 300
    const/16 v50, 0x5dc

    .line 301
    .local v50, "transitionMilliseconds":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    div-int/lit8 v44, v5, 0x3

    .line 302
    .local v44, "firstEntry":I
    const/16 v51, 0x50

    .line 305
    .local v51, "widgetdistance":I
    const/4 v5, 0x7

    move v0, v5

    new-array v0, v0, [Z

    move-object/from16 v41, v0

    .line 306
    .local v41, "animate":[Z
    const/4 v5, 0x7

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v42, v0

    .line 307
    .local v42, "coordinates":[I
    move-object/from16 v0, v42

    array-length v0, v0

    move v5, v0

    move v0, v5

    new-array v0, v0, [Landroid/graphics/Paint;

    move-object/from16 v49, v0

    .line 310
    .local v49, "p":[Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameOverlay;->options:Lcom/gp/monolith/Options;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/gp/monolith/Options;->interpolatePosition(I)F

    move-result v5

    move/from16 v0, v51

    int-to-float v0, v0

    move v6, v0

    mul-float/2addr v5, v6

    move v0, v5

    float-to-int v0, v0

    move/from16 v47, v0

    .line 313
    .local v47, "interpolatedOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameOverlay;->options:Lcom/gp/monolith/Options;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/gp/monolith/Options;->getCurrentSelectedOption()I

    move-result v5

    sub-int v6, v44, v47

    aput v6, v42, v5

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameOverlay;->options:Lcom/gp/monolith/Options;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/gp/monolith/Options;->getCurrentSelectedOption()I

    move-result v5

    add-int/lit8 v46, v5, 0x1

    .local v46, "i":I
    :goto_0
    move-object/from16 v0, v42

    array-length v0, v0

    move v5, v0

    move/from16 v0, v46

    move v1, v5

    if-lt v0, v1, :cond_0

    .line 319
    const/16 v46, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameOverlay;->options:Lcom/gp/monolith/Options;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/gp/monolith/Options;->getCurrentSelectedOption()I

    move-result v5

    move/from16 v0, v46

    move v1, v5

    if-le v0, v1, :cond_1

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameOverlay;->options:Lcom/gp/monolith/Options;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/gp/monolith/Options;->getCurrentSelectedOption()I

    move-result v5

    const/4 v6, 0x1

    aput-boolean v6, v41, v5

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameOverlay;->options:Lcom/gp/monolith/Options;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/gp/monolith/Options;->getCurrentSelectedOption()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameOverlay;->selectedOptionsPaint:Landroid/graphics/Paint;

    move-object v6, v0

    aput-object v6, v49, v5

    .line 326
    const/16 v46, 0x0

    :goto_2
    move-object/from16 v0, v42

    array-length v0, v0

    move v5, v0

    move/from16 v0, v46

    move v1, v5

    if-lt v0, v1, :cond_2

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameOverlay;->options:Lcom/gp/monolith/Options;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/gp/monolith/Options;->getCurrentSelectedOption()I

    move-result v5

    aget-object v5, v49, v5

    const/16 v6, 0xff

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 359
    const/16 v5, 0x28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameOverlay;->res:Landroid/content/res/Resources;

    move-object v6, v0

    const v7, 0x7f050017

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameOverlay;->gameOverPaint:Landroid/graphics/Paint;

    move-object v7, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    move-object v3, v6

    move-object v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/gp/monolith/GameOverlay;->drawCenteredText(Landroid/graphics/Canvas;ILjava/lang/String;Landroid/graphics/Paint;)V

    .line 360
    const/4 v5, 0x0

    aget v7, v42, v5

    const-string v8, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameOverlay;->res:Landroid/content/res/Resources;

    move-object v5, v0

    const v6, 0x7f050027

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v5, 0x0

    aget-object v10, v49, v5

    const/4 v5, 0x0

    aget-object v11, v49, v5

    const/4 v5, 0x0

    aget-boolean v12, v41, v5

    const/4 v13, 0x0

    const/4 v5, 0x0

    aget-boolean v14, v41, v5

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v14}, Lcom/gp/monolith/GameOverlay;->drawTextSelector(Landroid/graphics/Canvas;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Paint;ZZZ)V

    .line 362
    const-string v9, ""

    .line 363
    .local v9, "gametype":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameOverlay;->options:Lcom/gp/monolith/Options;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/gp/monolith/Options;->getGameType()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 374
    :goto_3
    const-string v45, ""

    .line 375
    .local v45, "gameDifficulty":Ljava/lang/String;
    const/4 v5, 0x1

    aget v7, v42, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameOverlay;->res:Landroid/content/res/Resources;

    move-object v5, v0

    const v6, 0x7f050018

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v5, 0x1

    aget-object v10, v49, v5

    const/4 v5, 0x1

    aget-object v11, v49, v5

    const/4 v5, 0x1

    aget-boolean v12, v41, v5

    const/4 v5, 0x1

    aget-boolean v13, v41, v5

    const/4 v5, 0x1

    aget-boolean v14, v41, v5

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v14}, Lcom/gp/monolith/GameOverlay;->drawTextSelector(Landroid/graphics/Canvas;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Paint;ZZZ)V

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameOverlay;->options:Lcom/gp/monolith/Options;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/gp/monolith/Options;->getDifficultyLevel()I

    move-result v5

    packed-switch v5, :pswitch_data_1

    move-object/from16 v14, v45

    .line 390
    .end local v45    # "gameDifficulty":Ljava/lang/String;
    .local v14, "gameDifficulty":Ljava/lang/String;
    :goto_4
    const/4 v5, 0x2

    aget v12, v42, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameOverlay;->res:Landroid/content/res/Resources;

    move-object v5, v0

    const v6, 0x7f05001b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v5, 0x2

    aget-object v15, v49, v5

    const/4 v5, 0x2

    aget-object v16, v49, v5

    const/4 v5, 0x2

    aget-boolean v17, v41, v5

    const/4 v5, 0x2

    aget-boolean v18, v41, v5

    const/4 v5, 0x2

    aget-boolean v19, v41, v5

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    invoke-direct/range {v10 .. v19}, Lcom/gp/monolith/GameOverlay;->drawTextSelector(Landroid/graphics/Canvas;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Paint;ZZZ)V

    .line 391
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameOverlay;->options:Lcom/gp/monolith/Options;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/gp/monolith/Options;->getStartingLevel()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 392
    .local v19, "currentLevel":Ljava/lang/String;
    const/4 v5, 0x3

    aget v17, v42, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameOverlay;->res:Landroid/content/res/Resources;

    move-object v5, v0

    const v6, 0x7f05001f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/4 v5, 0x3

    aget-object v20, v49, v5

    const/4 v5, 0x3

    aget-object v21, v49, v5

    const/4 v5, 0x3

    aget-boolean v22, v41, v5

    const/4 v5, 0x3

    aget-boolean v23, v41, v5

    const/4 v5, 0x3

    aget-boolean v24, v41, v5

    move-object/from16 v15, p0

    move-object/from16 v16, p1

    invoke-direct/range {v15 .. v24}, Lcom/gp/monolith/GameOverlay;->drawTextSelector(Landroid/graphics/Canvas;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Paint;ZZZ)V

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameOverlay;->options:Lcom/gp/monolith/Options;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/gp/monolith/Options;->isMusicEnabled()Z

    move-result v5

    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameOverlay;->res:Landroid/content/res/Resources;

    move-object v5, v0

    const v6, 0x7f050024

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v24, v5

    .line 394
    .local v24, "music":Ljava/lang/String;
    :goto_5
    const/4 v5, 0x4

    aget v22, v42, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameOverlay;->res:Landroid/content/res/Resources;

    move-object v5, v0

    const v6, 0x7f050022

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    const/4 v5, 0x4

    aget-object v25, v49, v5

    const/4 v5, 0x4

    aget-object v26, v49, v5

    const/4 v5, 0x4

    aget-boolean v27, v41, v5

    const/4 v5, 0x4

    aget-boolean v28, v41, v5

    const/4 v5, 0x4

    aget-boolean v29, v41, v5

    move-object/from16 v20, p0

    move-object/from16 v21, p1

    invoke-direct/range {v20 .. v29}, Lcom/gp/monolith/GameOverlay;->drawTextSelector(Landroid/graphics/Canvas;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Paint;ZZZ)V

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameOverlay;->options:Lcom/gp/monolith/Options;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/gp/monolith/Options;->isSoundEnabled()Z

    move-result v5

    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameOverlay;->res:Landroid/content/res/Resources;

    move-object v5, v0

    const v6, 0x7f050024

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v29, v5

    .line 396
    .local v29, "sound":Ljava/lang/String;
    :goto_6
    const/4 v5, 0x5

    aget v27, v42, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameOverlay;->res:Landroid/content/res/Resources;

    move-object v5, v0

    const v6, 0x7f050023

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/4 v5, 0x5

    aget-object v30, v49, v5

    const/4 v5, 0x5

    aget-object v31, v49, v5

    const/4 v5, 0x5

    aget-boolean v32, v41, v5

    const/4 v5, 0x5

    aget-boolean v33, v41, v5

    const/4 v5, 0x5

    aget-boolean v34, v41, v5

    move-object/from16 v25, p0

    move-object/from16 v26, p1

    invoke-direct/range {v25 .. v34}, Lcom/gp/monolith/GameOverlay;->drawTextSelector(Landroid/graphics/Canvas;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Paint;ZZZ)V

    .line 399
    const/4 v5, 0x6

    aget v32, v42, v5

    const-string v33, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameOverlay;->res:Landroid/content/res/Resources;

    move-object v5, v0

    const v6, 0x7f050026

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v34

    const/4 v5, 0x6

    aget-object v35, v49, v5

    const/4 v5, 0x6

    aget-object v36, v49, v5

    const/16 v37, 0x0

    const/4 v5, 0x6

    aget-boolean v38, v41, v5

    const/4 v5, 0x6

    aget-boolean v39, v41, v5

    move-object/from16 v30, p0

    move-object/from16 v31, p1

    invoke-direct/range {v30 .. v39}, Lcom/gp/monolith/GameOverlay;->drawTextSelector(Landroid/graphics/Canvas;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Paint;ZZZ)V

    .line 401
    return-void

    .line 316
    .end local v9    # "gametype":Ljava/lang/String;
    .end local v14    # "gameDifficulty":Ljava/lang/String;
    .end local v19    # "currentLevel":Ljava/lang/String;
    .end local v24    # "music":Ljava/lang/String;
    .end local v29    # "sound":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameOverlay;->options:Lcom/gp/monolith/Options;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/gp/monolith/Options;->getCurrentSelectedOption()I

    move-result v5

    sub-int v5, v46, v5

    mul-int v5, v5, v51

    add-int v5, v5, v44

    sub-int v5, v5, v47

    aput v5, v42, v46

    .line 314
    add-int/lit8 v46, v46, 0x1

    goto/16 :goto_0

    .line 321
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameOverlay;->options:Lcom/gp/monolith/Options;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/gp/monolith/Options;->getCurrentSelectedOption()I

    move-result v5

    sub-int v5, v5, v46

    mul-int v6, v46, v51

    sub-int v6, v44, v6

    sub-int v6, v6, v47

    aput v6, v42, v5

    .line 319
    add-int/lit8 v46, v46, 0x1

    goto/16 :goto_1

    .line 328
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameOverlay;->options:Lcom/gp/monolith/Options;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/gp/monolith/Options;->getCurrentSelectedOption()I

    move-result v5

    move/from16 v0, v46

    move v1, v5

    if-ne v0, v1, :cond_3

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameOverlay;->selectedOptionsPaint:Landroid/graphics/Paint;

    move-object v5, v0

    aput-object v5, v49, v46

    .line 326
    :goto_7
    add-int/lit8 v46, v46, 0x1

    goto/16 :goto_2

    .line 333
    :cond_3
    new-instance v48, Landroid/graphics/Paint;

    invoke-direct/range {v48 .. v48}, Landroid/graphics/Paint;-><init>()V

    .line 335
    .local v48, "newp":Landroid/graphics/Paint;
    const/16 v5, 0xff

    const/16 v6, 0xff

    const/16 v7, 0xa

    const/16 v8, 0xa

    move-object/from16 v0, v48

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 336
    const/high16 v5, 0x41b00000    # 22.0f

    move-object/from16 v0, v48

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 337
    aput-object v48, v49, v46

    .line 338
    const/16 v43, 0x0

    .line 339
    .local v43, "distance":I
    aget v5, v42, v46

    move v0, v5

    move/from16 v1, v44

    if-le v0, v1, :cond_5

    .line 341
    aget v5, v42, v46

    sub-int v43, v5, v44

    .line 347
    :goto_8
    const/16 v40, 0x0

    .line 348
    .local v40, "alpharatio":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    move/from16 v0, v43

    move v1, v5

    if-ge v0, v1, :cond_4

    .line 350
    const/high16 v5, 0x3f800000    # 1.0f

    move/from16 v0, v43

    int-to-float v0, v0

    move v6, v0

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v6, v7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    sub-float v40, v5, v6

    .line 354
    :cond_4
    aget-object v5, v49, v46

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float v6, v6, v40

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_7

    .line 345
    .end local v40    # "alpharatio":F
    :cond_5
    aget v5, v42, v46

    sub-int v43, v44, v5

    goto :goto_8

    .line 366
    .end local v43    # "distance":I
    .end local v48    # "newp":Landroid/graphics/Paint;
    .restart local v9    # "gametype":Ljava/lang/String;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameOverlay;->res:Landroid/content/res/Resources;

    move-object v5, v0

    const v6, 0x7f05001a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 367
    goto/16 :goto_3

    .line 370
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameOverlay;->res:Landroid/content/res/Resources;

    move-object v5, v0

    const v6, 0x7f050019

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_3

    .line 380
    .restart local v45    # "gameDifficulty":Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameOverlay;->res:Landroid/content/res/Resources;

    move-object v5, v0

    const v6, 0x7f05001e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 381
    .end local v45    # "gameDifficulty":Ljava/lang/String;
    .restart local v14    # "gameDifficulty":Ljava/lang/String;
    goto/16 :goto_4

    .line 383
    .end local v14    # "gameDifficulty":Ljava/lang/String;
    .restart local v45    # "gameDifficulty":Ljava/lang/String;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameOverlay;->res:Landroid/content/res/Resources;

    move-object v5, v0

    const v6, 0x7f05001c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 384
    .end local v45    # "gameDifficulty":Ljava/lang/String;
    .restart local v14    # "gameDifficulty":Ljava/lang/String;
    goto/16 :goto_4

    .line 386
    .end local v14    # "gameDifficulty":Ljava/lang/String;
    .restart local v45    # "gameDifficulty":Ljava/lang/String;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameOverlay;->res:Landroid/content/res/Resources;

    move-object v5, v0

    const v6, 0x7f05001d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .end local v45    # "gameDifficulty":Ljava/lang/String;
    .restart local v14    # "gameDifficulty":Ljava/lang/String;
    goto/16 :goto_4

    .line 393
    .restart local v19    # "currentLevel":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameOverlay;->res:Landroid/content/res/Resources;

    move-object v5, v0

    const v6, 0x7f050025

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v24, v5

    goto/16 :goto_5

    .line 395
    .restart local v24    # "music":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameOverlay;->res:Landroid/content/res/Resources;

    move-object v5, v0

    const v6, 0x7f050025

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v29, v5

    goto/16 :goto_6

    .line 363
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 377
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method private drawPuzzleGameOverlay(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 440
    return-void
.end method

.method private drawTextSelector(Landroid/graphics/Canvas;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Paint;ZZZ)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "y"    # I
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;
    .param p5, "titlePaint"    # Landroid/graphics/Paint;
    .param p6, "valuePaint"    # Landroid/graphics/Paint;
    .param p7, "leftArrow"    # Z
    .param p8, "rightArrow"    # Z
    .param p9, "animate"    # Z

    .prologue
    .line 293
    invoke-virtual {p0, p3, p5}, Lcom/gp/monolith/GameOverlay;->getTextWidth(Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v8

    .line 294
    .local v8, "theWidth":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    sub-int/2addr v0, v8

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    int-to-float v1, p2

    invoke-virtual {p1, p3, v0, v1, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 295
    invoke-virtual {p5}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    add-int/lit8 v2, v0, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p4

    move-object v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Lcom/gp/monolith/GameOverlay;->drawCenteredOptionText(Landroid/graphics/Canvas;ILjava/lang/String;Landroid/graphics/Paint;ZZZ)V

    .line 297
    return-void
.end method


# virtual methods
.method public drawCurtain(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const-wide/16 v11, 0x1388

    const/4 v1, 0x0

    .line 219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 220
    .local v8, "now":J
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v10

    .line 221
    .local v10, "width":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    .line 222
    .local v7, "height":I
    const/high16 v6, 0x3f800000    # 1.0f

    .line 223
    .local v6, "aperture":F
    iget-wide v2, p0, Lcom/gp/monolith/GameOverlay;->lastDrawTime:J

    sub-long v2, v8, v2

    cmp-long v0, v2, v11

    if-gez v0, :cond_1

    .line 225
    int-to-float v3, v10

    int-to-float v4, v7

    iget-object v5, p0, Lcom/gp/monolith/GameOverlay;->curtainPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    iget-wide v2, p0, Lcom/gp/monolith/GameOverlay;->lastDrawTime:J

    sub-long v2, v8, v2

    cmp-long v0, v2, v11

    if-ltz v0, :cond_0

    iget-wide v2, p0, Lcom/gp/monolith/GameOverlay;->lastDrawTime:J

    sub-long v2, v8, v2

    const-wide/16 v4, 0x2710

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    .line 230
    iget-wide v2, p0, Lcom/gp/monolith/GameOverlay;->lastDrawTime:J

    sub-long v2, v8, v2

    sub-long/2addr v2, v11

    long-to-float v0, v2

    const v2, 0x459c4000    # 5000.0f

    div-float v6, v0, v2

    .line 231
    int-to-float v3, v10

    div-int/lit8 v0, v7, 0x2

    int-to-float v0, v0

    div-int/lit8 v2, v7, 0x2

    int-to-float v2, v2

    mul-float/2addr v2, v6

    sub-float v4, v0, v2

    iget-object v5, p0, Lcom/gp/monolith/GameOverlay;->curtainPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 232
    div-int/lit8 v0, v7, 0x2

    int-to-float v0, v0

    div-int/lit8 v2, v7, 0x2

    int-to-float v2, v2

    mul-float/2addr v2, v6

    add-float/2addr v2, v0

    int-to-float v3, v10

    int-to-float v4, v7

    iget-object v5, p0, Lcom/gp/monolith/GameOverlay;->curtainPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public drawString(Landroid/graphics/Canvas;Ljava/lang/String;II)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 214
    add-int/lit8 v0, p3, 0x1

    int-to-float v0, v0

    add-int/lit8 v1, p4, 0x1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/gp/monolith/GameOverlay;->statusTextPaint2:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 215
    int-to-float v0, p3

    int-to-float v1, p4

    iget-object v2, p0, Lcom/gp/monolith/GameOverlay;->statusTextPaint1:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 216
    return-void
.end method

.method public getHighScoreTable()Lcom/gp/monolith/HighScoreTable;
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lcom/gp/monolith/GameOverlay;->hsTable:Lcom/gp/monolith/HighScoreTable;

    return-object v0
.end method

.method public getOptions()Lcom/gp/monolith/Options;
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/gp/monolith/GameOverlay;->options:Lcom/gp/monolith/Options;

    return-object v0
.end method

.method public getTextWidth(Ljava/lang/String;Landroid/graphics/Paint;)I
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 131
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    new-array v2, v3, [F

    .line 132
    .local v2, "widths":[F
    invoke-virtual {p2, p1, v2}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 133
    const/4 v1, 0x0

    .line 134
    .local v1, "totalwidth":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_0

    .line 138
    float-to-int v3, v1

    return v3

    .line 136
    :cond_0
    aget v3, v2, v0

    add-float/2addr v1, v3

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public moveBack()V
    .locals 5

    .prologue
    .line 507
    iget v1, p0, Lcom/gp/monolith/GameOverlay;->currentCharacterPosition:I

    if-lez v1, :cond_1

    .line 509
    iget v1, p0, Lcom/gp/monolith/GameOverlay;->currentCharacterPosition:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/gp/monolith/GameOverlay;->currentCharacterPosition:I

    .line 510
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/gp/monolith/GameOverlay;->characters:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 512
    iget-object v1, p0, Lcom/gp/monolith/GameOverlay;->characters:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/gp/monolith/GameOverlay;->nameEntry:Ljava/lang/String;

    iget v3, p0, Lcom/gp/monolith/GameOverlay;->currentCharacterPosition:I

    iget v4, p0, Lcom/gp/monolith/GameOverlay;->currentCharacterPosition:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 514
    :cond_0
    iput v0, p0, Lcom/gp/monolith/GameOverlay;->currentCharacter:I

    .line 519
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public moveForward()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 474
    iget-object v1, p0, Lcom/gp/monolith/GameOverlay;->characters:Ljava/lang/String;

    iget v2, p0, Lcom/gp/monolith/GameOverlay;->currentCharacter:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 475
    .local v0, "c":C
    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    .line 477
    iget-object v1, p0, Lcom/gp/monolith/GameOverlay;->hsTable:Lcom/gp/monolith/HighScoreTable;

    iget-object v2, p0, Lcom/gp/monolith/GameOverlay;->score:Ljava/lang/String;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/gp/monolith/GameOverlay;->nameEntry:Ljava/lang/String;

    iget-object v4, p0, Lcom/gp/monolith/GameOverlay;->level:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/gp/monolith/HighScoreTable;->isHighScore(ILjava/lang/String;Ljava/lang/String;)Z

    .line 478
    iget-object v1, p0, Lcom/gp/monolith/GameOverlay;->hsTable:Lcom/gp/monolith/HighScoreTable;

    invoke-virtual {v1}, Lcom/gp/monolith/HighScoreTable;->saveHighScores()V

    .line 479
    iput v5, p0, Lcom/gp/monolith/GameOverlay;->drawType:I

    move v1, v5

    .line 502
    :goto_0
    return v1

    .line 482
    :cond_0
    iget v1, p0, Lcom/gp/monolith/GameOverlay;->currentCharacterPosition:I

    iget v2, p0, Lcom/gp/monolith/GameOverlay;->nameEntryLength:I

    sub-int/2addr v2, v4

    if-ge v1, v2, :cond_3

    .line 485
    const/16 v1, 0x3c

    if-ne v0, v1, :cond_2

    .line 487
    iget v1, p0, Lcom/gp/monolith/GameOverlay;->currentCharacterPosition:I

    if-lez v1, :cond_1

    .line 489
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gp/monolith/GameOverlay;->nameEntry:Ljava/lang/String;

    iget v3, p0, Lcom/gp/monolith/GameOverlay;->currentCharacterPosition:I

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/gp/monolith/GameOverlay;->nameEntry:Ljava/lang/String;

    iget v3, p0, Lcom/gp/monolith/GameOverlay;->currentCharacterPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gp/monolith/GameOverlay;->nameEntry:Ljava/lang/String;

    .line 490
    iget v1, p0, Lcom/gp/monolith/GameOverlay;->currentCharacterPosition:I

    sub-int/2addr v1, v4

    iput v1, p0, Lcom/gp/monolith/GameOverlay;->currentCharacterPosition:I

    :cond_1
    move v1, v4

    .line 492
    goto :goto_0

    .line 498
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gp/monolith/GameOverlay;->nameEntry:Ljava/lang/String;

    iget v3, p0, Lcom/gp/monolith/GameOverlay;->currentCharacterPosition:I

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gp/monolith/GameOverlay;->characters:Ljava/lang/String;

    iget v3, p0, Lcom/gp/monolith/GameOverlay;->currentCharacter:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/gp/monolith/GameOverlay;->nameEntry:Ljava/lang/String;

    iget v3, p0, Lcom/gp/monolith/GameOverlay;->currentCharacterPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gp/monolith/GameOverlay;->nameEntry:Ljava/lang/String;

    .line 499
    iget v1, p0, Lcom/gp/monolith/GameOverlay;->currentCharacterPosition:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/gp/monolith/GameOverlay;->currentCharacterPosition:I

    move v1, v4

    .line 500
    goto :goto_0

    :cond_3
    move v1, v4

    .line 502
    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v4, 0xdac

    const/16 v3, 0xff

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/gp/monolith/GameOverlay;->timer:J

    .line 67
    iget v1, p0, Lcom/gp/monolith/GameOverlay;->currentTextColor:I

    rem-int/lit16 v0, v1, 0x1388

    .line 69
    .local v0, "timeindex":I
    iget v1, p0, Lcom/gp/monolith/GameOverlay;->goalpha:I

    iget v2, p0, Lcom/gp/monolith/GameOverlay;->direction:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/gp/monolith/GameOverlay;->goalpha:I

    .line 70
    iget v1, p0, Lcom/gp/monolith/GameOverlay;->goalpha:I

    if-le v1, v3, :cond_0

    .line 72
    const/4 v1, -0x8

    iput v1, p0, Lcom/gp/monolith/GameOverlay;->direction:I

    .line 73
    iget v1, p0, Lcom/gp/monolith/GameOverlay;->goalpha:I

    iget v2, p0, Lcom/gp/monolith/GameOverlay;->direction:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/gp/monolith/GameOverlay;->goalpha:I

    .line 75
    :cond_0
    iget v1, p0, Lcom/gp/monolith/GameOverlay;->goalpha:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_1

    .line 77
    const/16 v1, 0x8

    iput v1, p0, Lcom/gp/monolith/GameOverlay;->direction:I

    .line 78
    iget v1, p0, Lcom/gp/monolith/GameOverlay;->goalpha:I

    iget v2, p0, Lcom/gp/monolith/GameOverlay;->direction:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/gp/monolith/GameOverlay;->goalpha:I

    .line 81
    :cond_1
    iget v1, p0, Lcom/gp/monolith/GameOverlay;->overlayType:I

    if-nez v1, :cond_2

    .line 83
    const/16 v1, 0x5dc

    if-ge v0, v1, :cond_4

    .line 85
    mul-int/lit16 v1, v0, 0xff

    div-int/lit16 v1, v1, 0x5dc

    iput v1, p0, Lcom/gp/monolith/GameOverlay;->goalpha:I

    .line 97
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/gp/monolith/GameOverlay;->gameOverPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/gp/monolith/GameOverlay;->goalpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 98
    iget-object v1, p0, Lcom/gp/monolith/GameOverlay;->hsPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/gp/monolith/GameOverlay;->goalpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 99
    iget-object v1, p0, Lcom/gp/monolith/GameOverlay;->res:Landroid/content/res/Resources;

    const v2, 0x7f05000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/gp/monolith/GameOverlay;->gameOverPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v1, v2}, Lcom/gp/monolith/GameOverlay;->getTextWidth(Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v1

    iput v1, p0, Lcom/gp/monolith/GameOverlay;->gameOverXPos:I

    .line 100
    iget-object v1, p0, Lcom/gp/monolith/GameOverlay;->res:Landroid/content/res/Resources;

    const v2, 0x7f050011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/gp/monolith/GameOverlay;->gameOverPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v1, v2}, Lcom/gp/monolith/GameOverlay;->getTextWidth(Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v1

    iput v1, p0, Lcom/gp/monolith/GameOverlay;->evolvingXPos:I

    .line 101
    invoke-virtual {p0, p1}, Lcom/gp/monolith/GameOverlay;->drawCurtain(Landroid/graphics/Canvas;)V

    .line 103
    iget v1, p0, Lcom/gp/monolith/GameOverlay;->overlayType:I

    packed-switch v1, :pswitch_data_0

    .line 122
    :goto_1
    iget v1, p0, Lcom/gp/monolith/GameOverlay;->drawType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 124
    invoke-direct {p0, p1}, Lcom/gp/monolith/GameOverlay;->drawNameEntry(Landroid/graphics/Canvas;)V

    .line 127
    :cond_3
    return-void

    .line 87
    :cond_4
    if-le v0, v4, :cond_5

    .line 89
    sub-int v1, v0, v4

    mul-int/lit16 v1, v1, 0xff

    div-int/lit16 v1, v1, 0x5dc

    sub-int v1, v3, v1

    iput v1, p0, Lcom/gp/monolith/GameOverlay;->goalpha:I

    goto :goto_0

    .line 93
    :cond_5
    iput v3, p0, Lcom/gp/monolith/GameOverlay;->goalpha:I

    goto :goto_0

    .line 106
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/gp/monolith/GameOverlay;->drawIntroOverlay(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 109
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/gp/monolith/GameOverlay;->drawClassicGameOverlay(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 112
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/gp/monolith/GameOverlay;->drawMonolithGameOverlay(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 115
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/gp/monolith/GameOverlay;->drawPuzzleGameOverlay(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 118
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/gp/monolith/GameOverlay;->drawOptionsOverlay(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public selectNextChar()V
    .locals 3

    .prologue
    .line 523
    iget v0, p0, Lcom/gp/monolith/GameOverlay;->currentCharacter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gp/monolith/GameOverlay;->currentCharacter:I

    .line 524
    iget v0, p0, Lcom/gp/monolith/GameOverlay;->currentCharacter:I

    iget-object v1, p0, Lcom/gp/monolith/GameOverlay;->characters:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_0

    .line 526
    const/4 v0, 0x0

    iput v0, p0, Lcom/gp/monolith/GameOverlay;->currentCharacter:I

    .line 528
    :cond_0
    return-void
.end method

.method public selectPreviousChar()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 532
    iget v0, p0, Lcom/gp/monolith/GameOverlay;->currentCharacter:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/gp/monolith/GameOverlay;->currentCharacter:I

    .line 533
    iget v0, p0, Lcom/gp/monolith/GameOverlay;->currentCharacter:I

    if-gez v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/gp/monolith/GameOverlay;->characters:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/gp/monolith/GameOverlay;->currentCharacter:I

    .line 537
    :cond_0
    return-void
.end method

.method public setDrawType(I)V
    .locals 2
    .param p1, "drawType"    # I

    .prologue
    const/4 v1, 0x0

    .line 590
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 592
    const-string v0, "         "

    iput-object v0, p0, Lcom/gp/monolith/GameOverlay;->nameEntry:Ljava/lang/String;

    .line 593
    iput v1, p0, Lcom/gp/monolith/GameOverlay;->currentCharacter:I

    .line 594
    iput v1, p0, Lcom/gp/monolith/GameOverlay;->currentCharacterPosition:I

    .line 596
    :cond_0
    iput p1, p0, Lcom/gp/monolith/GameOverlay;->drawType:I

    .line 597
    return-void
.end method

.method public setEnergy(Ljava/lang/String;)V
    .locals 0
    .param p1, "energy"    # Ljava/lang/String;

    .prologue
    .line 562
    iput-object p1, p0, Lcom/gp/monolith/GameOverlay;->energy:Ljava/lang/String;

    .line 563
    return-void
.end method

.method public setHiscore(Ljava/lang/String;)V
    .locals 0
    .param p1, "hiscore"    # Ljava/lang/String;

    .prologue
    .line 548
    iput-object p1, p0, Lcom/gp/monolith/GameOverlay;->hiscore:Ljava/lang/String;

    .line 549
    return-void
.end method

.method public setLevel(Ljava/lang/String;)V
    .locals 0
    .param p1, "level"    # Ljava/lang/String;

    .prologue
    .line 555
    iput-object p1, p0, Lcom/gp/monolith/GameOverlay;->level:Ljava/lang/String;

    .line 556
    return-void
.end method

.method public setLines(Ljava/lang/String;)V
    .locals 0
    .param p1, "lines"    # Ljava/lang/String;

    .prologue
    .line 569
    iput-object p1, p0, Lcom/gp/monolith/GameOverlay;->lines:Ljava/lang/String;

    .line 570
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 576
    iput-object p1, p0, Lcom/gp/monolith/GameOverlay;->message:Ljava/lang/String;

    .line 577
    return-void
.end method

.method public setOverlayType(I)V
    .locals 0
    .param p1, "overlayType"    # I

    .prologue
    .line 583
    iput p1, p0, Lcom/gp/monolith/GameOverlay;->overlayType:I

    .line 584
    return-void
.end method

.method public setScore(Ljava/lang/String;)V
    .locals 0
    .param p1, "score"    # Ljava/lang/String;

    .prologue
    .line 541
    iput-object p1, p0, Lcom/gp/monolith/GameOverlay;->score:Ljava/lang/String;

    .line 542
    return-void
.end method
