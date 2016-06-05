.class public Lcom/masshabit/squibble/CreditsScreen;
.super Lcom/masshabit/squibble/Screen;
.source "CreditsScreen.java"

# interfaces
.implements Lcom/masshabit/common/tween/ITweenCompleteListener;


# static fields
.field public static final CATEGORY_HEADING_SPACING:F = 50.0f

.field public static final CATEGORY_SPACING:F = 180.0f

.field public static final MAIN_HEADING_SPACING:F = 360.0f

.field public static final NAME_SPACING:F = 30.0f

.field public static final SCROLL_SPEED:F = 60.0f

.field public static final SQUIBBLE_GREEN:I = -0x7d00c0

.field public static final Y_DELTA:F = -1100.0f


# instance fields
.field protected mHeadingPaint:Landroid/graphics/Paint;

.field protected mMainHeadingPaint:Landroid/graphics/Paint;

.field protected mPaint:Landroid/graphics/Paint;

.field protected mScrollTween:Lcom/masshabit/common/tween/Tween;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/masshabit/squibble/Screen;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v11, 0x42480000    # 50.0f

    const/high16 v10, 0x43340000    # 180.0f

    const/high16 v9, 0x41f00000    # 30.0f

    const/4 v8, 0x0

    .line 72
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 73
    .local v0, "env":Lcom/masshabit/common/Environment;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 74
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 75
    iget v5, v0, Lcom/masshabit/common/Environment;->mScreenWidth:F

    div-float/2addr v5, v7

    iget v6, v0, Lcom/masshabit/common/Environment;->mScreenHeight:F

    div-float/2addr v6, v7

    iget-object v7, p0, Lcom/masshabit/squibble/CreditsScreen;->mScrollTween:Lcom/masshabit/common/tween/Tween;

    iget v7, v7, Lcom/masshabit/common/tween/Tween;->mValue:F

    add-float/2addr v6, v7

    const/high16 v7, 0x41700000    # 15.0f

    add-float/2addr v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 77
    iget-object v5, v0, Lcom/masshabit/common/Environment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 79
    .local v3, "res":Landroid/content/res/Resources;
    const/4 v4, 0x0

    .line 80
    .local v4, "y":F
    iget-object v5, v0, Lcom/masshabit/common/Environment;->mContext:Landroid/content/Context;

    const v6, 0x7f040012

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/masshabit/squibble/CreditsScreen;->mMainHeadingPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v8, v4, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 81
    const/high16 v5, 0x43b40000    # 360.0f

    add-float/2addr v4, v5

    .line 85
    iget-object v5, v0, Lcom/masshabit/common/Environment;->mContext:Landroid/content/Context;

    const v6, 0x7f040013

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/masshabit/squibble/CreditsScreen;->mHeadingPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v8, v4, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 86
    add-float/2addr v4, v11

    .line 88
    const/high16 v5, 0x7f050000

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, "names":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v2

    if-ge v1, v5, :cond_1

    .line 91
    if-lez v1, :cond_0

    .line 92
    add-float/2addr v4, v9

    .line 93
    :cond_0
    aget-object v5, v2, v1

    iget-object v6, p0, Lcom/masshabit/squibble/CreditsScreen;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v8, v4, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    :cond_1
    add-float/2addr v4, v10

    .line 98
    iget-object v5, v0, Lcom/masshabit/common/Environment;->mContext:Landroid/content/Context;

    const v6, 0x7f040014

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/masshabit/squibble/CreditsScreen;->mHeadingPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v8, v4, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 99
    add-float/2addr v4, v11

    .line 101
    const v5, 0x7f050001

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 102
    const/4 v1, 0x0

    :goto_1
    array-length v5, v2

    if-ge v1, v5, :cond_3

    .line 104
    if-lez v1, :cond_2

    .line 105
    add-float/2addr v4, v9

    .line 106
    :cond_2
    aget-object v5, v2, v1

    iget-object v6, p0, Lcom/masshabit/squibble/CreditsScreen;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v8, v4, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 108
    :cond_3
    add-float/2addr v4, v10

    .line 111
    iget-object v5, v0, Lcom/masshabit/common/Environment;->mContext:Landroid/content/Context;

    const v6, 0x7f040015

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/masshabit/squibble/CreditsScreen;->mHeadingPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v8, v4, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 112
    add-float/2addr v4, v11

    .line 114
    const v5, 0x7f050002

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 115
    const/4 v1, 0x0

    :goto_2
    array-length v5, v2

    if-ge v1, v5, :cond_5

    .line 117
    if-lez v1, :cond_4

    .line 118
    add-float/2addr v4, v9

    .line 119
    :cond_4
    aget-object v5, v2, v1

    iget-object v6, p0, Lcom/masshabit/squibble/CreditsScreen;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v8, v4, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 121
    :cond_5
    add-float/2addr v4, v10

    .line 124
    const v5, 0x7f050003

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 125
    const/4 v1, 0x0

    :goto_3
    array-length v5, v2

    if-ge v1, v5, :cond_7

    .line 127
    if-lez v1, :cond_6

    .line 128
    add-float/2addr v4, v9

    .line 129
    :cond_6
    aget-object v5, v2, v1

    iget-object v6, p0, Lcom/masshabit/squibble/CreditsScreen;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v8, v4, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 131
    :cond_7
    add-float/2addr v4, v10

    .line 133
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 134
    return-void
.end method

.method public init()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const v5, -0x3b768000    # -1100.0f

    const/4 v4, 0x1

    .line 37
    new-instance v0, Lcom/masshabit/common/tween/Tween;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/masshabit/common/tween/Tween;-><init>(Lcom/masshabit/common/tween/ITweenCompleteListener;Lcom/masshabit/common/tween/Ease$EaseBase;)V

    iput-object v0, p0, Lcom/masshabit/squibble/CreditsScreen;->mScrollTween:Lcom/masshabit/common/tween/Tween;

    .line 38
    iget-object v0, p0, Lcom/masshabit/squibble/CreditsScreen;->mScrollTween:Lcom/masshabit/common/tween/Tween;

    const/4 v1, 0x0

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v5, v2}, Lcom/masshabit/common/tween/Tween;->init(FFF)V

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/masshabit/squibble/CreditsScreen;->mPaint:Landroid/graphics/Paint;

    .line 41
    iget-object v0, p0, Lcom/masshabit/squibble/CreditsScreen;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    iget-object v0, p0, Lcom/masshabit/squibble/CreditsScreen;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 43
    iget-object v0, p0, Lcom/masshabit/squibble/CreditsScreen;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 44
    iget-object v0, p0, Lcom/masshabit/squibble/CreditsScreen;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 45
    iget-object v0, p0, Lcom/masshabit/squibble/CreditsScreen;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/masshabit/squibble/CreditsScreen;->mHeadingPaint:Landroid/graphics/Paint;

    .line 48
    iget-object v0, p0, Lcom/masshabit/squibble/CreditsScreen;->mHeadingPaint:Landroid/graphics/Paint;

    const v1, -0x7d00c0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    iget-object v0, p0, Lcom/masshabit/squibble/CreditsScreen;->mHeadingPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41e00000    # 28.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 50
    iget-object v0, p0, Lcom/masshabit/squibble/CreditsScreen;->mHeadingPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 51
    iget-object v0, p0, Lcom/masshabit/squibble/CreditsScreen;->mHeadingPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 52
    iget-object v0, p0, Lcom/masshabit/squibble/CreditsScreen;->mHeadingPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/masshabit/squibble/CreditsScreen;->mMainHeadingPaint:Landroid/graphics/Paint;

    .line 55
    iget-object v0, p0, Lcom/masshabit/squibble/CreditsScreen;->mMainHeadingPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    iget-object v0, p0, Lcom/masshabit/squibble/CreditsScreen;->mMainHeadingPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x42300000    # 44.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 57
    iget-object v0, p0, Lcom/masshabit/squibble/CreditsScreen;->mMainHeadingPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 58
    iget-object v0, p0, Lcom/masshabit/squibble/CreditsScreen;->mMainHeadingPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 59
    iget-object v0, p0, Lcom/masshabit/squibble/CreditsScreen;->mMainHeadingPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 61
    return-void
.end method

.method public onInputEvent(Lcom/masshabit/common/InputEvent;)V
    .locals 2
    .param p1, "e"    # Lcom/masshabit/common/InputEvent;

    .prologue
    .line 139
    iget-byte v0, p1, Lcom/masshabit/common/InputEvent;->mEventType:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 141
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    iget-object v0, v0, Lcom/masshabit/common/Environment;->mGame:Lcom/masshabit/squibble/Game;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/masshabit/squibble/Game;->changeScreen(I)V

    .line 143
    :cond_0
    return-void
.end method

.method public tweenComplete(Ljava/lang/Object;)V
    .locals 2
    .param p1, "tween"    # Ljava/lang/Object;

    .prologue
    .line 148
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    iget-object v0, v0, Lcom/masshabit/common/Environment;->mGame:Lcom/masshabit/squibble/Game;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/masshabit/squibble/Game;->changeScreen(I)V

    .line 149
    return-void
.end method

.method public update(F)V
    .locals 1
    .param p1, "dt"    # F

    .prologue
    .line 66
    iget-object v0, p0, Lcom/masshabit/squibble/CreditsScreen;->mScrollTween:Lcom/masshabit/common/tween/Tween;

    invoke-virtual {v0, p1}, Lcom/masshabit/common/tween/Tween;->update(F)V

    .line 67
    return-void
.end method
