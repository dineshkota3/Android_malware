.class public Lcom/masshabit/squibble/StoryScreen;
.super Lcom/masshabit/squibble/Screen;
.source "StoryScreen.java"

# interfaces
.implements Lcom/masshabit/common/Delay$IDelayCompleteListener;
.implements Lcom/masshabit/common/tween/ITweenCompleteListener;


# static fields
.field protected static final CROSSFADE_TIME:F = 0.5f

.field protected static final STATE_CROSSFADE:I = 0x0

.field protected static final STATE_WAIT:I = 0x1

.field public static final STORY_INTRO:Ljava/lang/String; = "intro/intro.story"

.field public static final STORY_OUTRO:Ljava/lang/String; = "outro/outro.story"

.field public static final TAG:Ljava/lang/String; = "StoryScreen"


# instance fields
.field protected mBitmapIds:[I

.field protected mBitmaps:Lcom/masshabit/common/resource/BitmapResourceMap;

.field protected mCurrentBitmap:Landroid/graphics/Bitmap;

.field protected mDelay:Lcom/masshabit/common/Delay;

.field protected mIndex:I

.field protected mLastBitmap:Landroid/graphics/Bitmap;

.field protected mPaint:Landroid/graphics/Paint;

.field protected mState:I

.field protected mStory:[Ljava/lang/Object;

.field protected mTween:Lcom/masshabit/common/tween/Tween;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/masshabit/squibble/Screen;-><init>()V

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/masshabit/squibble/StoryScreen;->mPaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public delayComplete(Lcom/masshabit/common/Delay;)V
    .locals 0
    .param p1, "d"    # Lcom/masshabit/common/Delay;

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/masshabit/squibble/StoryScreen;->next()V

    .line 176
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Lcom/masshabit/squibble/Screen;->destroy()V

    .line 103
    iget-object v0, p0, Lcom/masshabit/squibble/StoryScreen;->mBitmaps:Lcom/masshabit/common/resource/BitmapResourceMap;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/masshabit/squibble/StoryScreen;->mBitmaps:Lcom/masshabit/common/resource/BitmapResourceMap;

    invoke-virtual {v0}, Lcom/masshabit/common/resource/BitmapResourceMap;->destroy()V

    .line 107
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v6, 0x437f0000    # 255.0f

    const/high16 v5, 0x40000000    # 2.0f

    .line 157
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 158
    .local v0, "env":Lcom/masshabit/common/Environment;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 159
    iget-object v1, p0, Lcom/masshabit/squibble/StoryScreen;->mLastBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/masshabit/squibble/StoryScreen;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/masshabit/squibble/StoryScreen;->mTween:Lcom/masshabit/common/tween/Tween;

    iget v2, v2, Lcom/masshabit/common/tween/Tween;->mValue:F

    mul-float/2addr v2, v6

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 162
    iget-object v1, p0, Lcom/masshabit/squibble/StoryScreen;->mLastBitmap:Landroid/graphics/Bitmap;

    iget v2, v0, Lcom/masshabit/common/Environment;->mScreenWidth:F

    iget-object v3, p0, Lcom/masshabit/squibble/StoryScreen;->mLastBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    iget v3, v0, Lcom/masshabit/common/Environment;->mScreenHeight:F

    iget-object v4, p0, Lcom/masshabit/squibble/StoryScreen;->mLastBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    iget-object v4, p0, Lcom/masshabit/squibble/StoryScreen;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 164
    :cond_0
    iget-object v1, p0, Lcom/masshabit/squibble/StoryScreen;->mCurrentBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 166
    iget-object v1, p0, Lcom/masshabit/squibble/StoryScreen;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v3, p0, Lcom/masshabit/squibble/StoryScreen;->mTween:Lcom/masshabit/common/tween/Tween;

    iget v3, v3, Lcom/masshabit/common/tween/Tween;->mValue:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v6

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 167
    iget-object v1, p0, Lcom/masshabit/squibble/StoryScreen;->mCurrentBitmap:Landroid/graphics/Bitmap;

    iget v2, v0, Lcom/masshabit/common/Environment;->mScreenWidth:F

    iget-object v3, p0, Lcom/masshabit/squibble/StoryScreen;->mCurrentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    iget v3, v0, Lcom/masshabit/common/Environment;->mScreenHeight:F

    iget-object v4, p0, Lcom/masshabit/squibble/StoryScreen;->mCurrentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    iget-object v4, p0, Lcom/masshabit/squibble/StoryScreen;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 169
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 170
    return-void
.end method

.method protected getBitmap(I)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 116
    iget-object v0, p0, Lcom/masshabit/squibble/StoryScreen;->mBitmaps:Lcom/masshabit/common/resource/BitmapResourceMap;

    iget-object v1, p0, Lcom/masshabit/squibble/StoryScreen;->mBitmapIds:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/masshabit/common/resource/BitmapResourceMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/masshabit/squibble/StoryScreen;
    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0
.end method

.method protected getDelay(I)F
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 111
    iget-object v0, p0, Lcom/masshabit/squibble/StoryScreen;->mStory:[Ljava/lang/Object;

    add-int/lit8 v1, p1, 0x1

    aget-object p0, v0, v1

    .end local p0    # "this":Lcom/masshabit/squibble/StoryScreen;
    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public init()V
    .locals 15

    .prologue
    .line 50
    new-instance v9, Lcom/masshabit/common/Delay;

    invoke-direct {v9, p0}, Lcom/masshabit/common/Delay;-><init>(Lcom/masshabit/common/Delay$IDelayCompleteListener;)V

    iput-object v9, p0, Lcom/masshabit/squibble/StoryScreen;->mDelay:Lcom/masshabit/common/Delay;

    .line 51
    new-instance v9, Lcom/masshabit/common/tween/Tween;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/masshabit/common/tween/Tween;-><init>(Lcom/masshabit/common/tween/ITweenCompleteListener;Lcom/masshabit/common/tween/Ease$EaseBase;)V

    iput-object v9, p0, Lcom/masshabit/squibble/StoryScreen;->mTween:Lcom/masshabit/common/tween/Tween;

    .line 52
    new-instance v9, Lcom/masshabit/common/resource/BitmapResourceMap;

    const/16 v10, 0x10

    invoke-direct {v9, v10}, Lcom/masshabit/common/resource/BitmapResourceMap;-><init>(I)V

    iput-object v9, p0, Lcom/masshabit/squibble/StoryScreen;->mBitmaps:Lcom/masshabit/common/resource/BitmapResourceMap;

    .line 54
    sget-object v9, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    iget-object v9, v9, Lcom/masshabit/common/Environment;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v9}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 56
    .local v0, "am":Landroid/content/res/AssetManager;
    new-instance v6, Ljava/util/ArrayList;

    const/16 v9, 0x20

    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 59
    .local v6, "lines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :try_start_0
    sget-object v9, Lcom/masshabit/squibble/Screen;->sSharedArgs:Ljava/lang/String;

    invoke-virtual {v0, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 60
    .local v4, "in":Ljava/io/InputStream;
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v10, 0x100

    invoke-direct {v8, v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 61
    .local v8, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 63
    .local v5, "line":Ljava/lang/String;
    :goto_0
    if-eqz v5, :cond_1

    .line 65
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 68
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 69
    .local v1, "delay":Ljava/lang/Float;
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .end local v1    # "delay":Ljava/lang/Float;
    :cond_0
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/Object;

    iput-object v9, p0, Lcom/masshabit/squibble/StoryScreen;->mStory:[Ljava/lang/Object;

    .line 74
    iget-object v9, p0, Lcom/masshabit/squibble/StoryScreen;->mStory:[Ljava/lang/Object;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    iput-object v9, p0, Lcom/masshabit/squibble/StoryScreen;->mStory:[Ljava/lang/Object;

    .line 75
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    iget-object v9, p0, Lcom/masshabit/squibble/StoryScreen;->mStory:[Ljava/lang/Object;

    const/4 v10, 0x0

    aget-object v7, v9, v10

    check-cast v7, Ljava/lang/String;

    .line 86
    .local v7, "pathTemplate":Ljava/lang/String;
    iget-object v9, p0, Lcom/masshabit/squibble/StoryScreen;->mStory:[Ljava/lang/Object;

    array-length v9, v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    new-array v9, v9, [I

    iput-object v9, p0, Lcom/masshabit/squibble/StoryScreen;->mBitmapIds:[I

    .line 87
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_1
    iget-object v9, p0, Lcom/masshabit/squibble/StoryScreen;->mStory:[Ljava/lang/Object;

    array-length v9, v9

    if-ge v3, v9, :cond_2

    .line 89
    iget-object v9, p0, Lcom/masshabit/squibble/StoryScreen;->mBitmapIds:[I

    const/4 v10, 0x1

    sub-int v10, v3, v10

    iget-object v11, p0, Lcom/masshabit/squibble/StoryScreen;->mBitmaps:Lcom/masshabit/common/resource/BitmapResourceMap;

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v7, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/masshabit/common/resource/BitmapResourceMap;->load(Ljava/lang/String;)I

    move-result v11

    aput v11, v9, v10

    .line 87
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 77
    .end local v3    # "i":I
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "line":Ljava/lang/String;
    .end local v7    # "pathTemplate":Ljava/lang/String;
    .end local v8    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v9

    move-object v2, v9

    .line 79
    .local v2, "e1":Ljava/io/IOException;
    const-string v9, "StoryScreen"

    const-string v10, "Error opening animation definition"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .end local v2    # "e1":Ljava/io/IOException;
    :goto_2
    return-void

    .line 92
    .restart local v3    # "i":I
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v7    # "pathTemplate":Ljava/lang/String;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :cond_2
    const/4 v9, 0x0

    iput v9, p0, Lcom/masshabit/squibble/StoryScreen;->mIndex:I

    .line 93
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/masshabit/squibble/StoryScreen;->mLastBitmap:Landroid/graphics/Bitmap;

    .line 94
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/masshabit/squibble/StoryScreen;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, p0, Lcom/masshabit/squibble/StoryScreen;->mCurrentBitmap:Landroid/graphics/Bitmap;

    .line 95
    const/4 v9, 0x1

    iput v9, p0, Lcom/masshabit/squibble/StoryScreen;->mState:I

    .line 96
    iget-object v9, p0, Lcom/masshabit/squibble/StoryScreen;->mDelay:Lcom/masshabit/common/Delay;

    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/masshabit/squibble/StoryScreen;->getDelay(I)F

    move-result v10

    invoke-virtual {v9, v10}, Lcom/masshabit/common/Delay;->start(F)V

    goto :goto_2
.end method

.method protected next()V
    .locals 5

    .prologue
    const-string v3, "StoryScreen"

    .line 121
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 123
    .local v0, "env":Lcom/masshabit/common/Environment;
    const-string v1, "StoryScreen"

    const-string v1, "next()"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget v1, p0, Lcom/masshabit/squibble/StoryScreen;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/masshabit/squibble/StoryScreen;->mIndex:I

    .line 126
    iget v1, p0, Lcom/masshabit/squibble/StoryScreen;->mIndex:I

    iget-object v2, p0, Lcom/masshabit/squibble/StoryScreen;->mBitmapIds:[I

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 128
    iget-object v1, v0, Lcom/masshabit/common/Environment;->mGame:Lcom/masshabit/squibble/Game;

    invoke-virtual {v1}, Lcom/masshabit/squibble/Game;->nextScreen()V

    .line 139
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/masshabit/squibble/StoryScreen;->mCurrentBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/masshabit/squibble/StoryScreen;->mLastBitmap:Landroid/graphics/Bitmap;

    .line 133
    iget v1, p0, Lcom/masshabit/squibble/StoryScreen;->mIndex:I

    invoke-virtual {p0, v1}, Lcom/masshabit/squibble/StoryScreen;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/masshabit/squibble/StoryScreen;->mCurrentBitmap:Landroid/graphics/Bitmap;

    .line 135
    const/4 v1, 0x0

    iput v1, p0, Lcom/masshabit/squibble/StoryScreen;->mState:I

    .line 136
    const-string v1, "StoryScreen"

    const-string v1, "State = crossfade"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v1, p0, Lcom/masshabit/squibble/StoryScreen;->mTween:Lcom/masshabit/common/tween/Tween;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2, v3, v4}, Lcom/masshabit/common/tween/Tween;->init(FFF)V

    goto :goto_0
.end method

.method public onInputEvent(Lcom/masshabit/common/InputEvent;)V
    .locals 2
    .param p1, "e"    # Lcom/masshabit/common/InputEvent;

    .prologue
    .line 188
    iget-byte v0, p1, Lcom/masshabit/common/InputEvent;->mEventType:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/masshabit/squibble/StoryScreen;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/masshabit/squibble/StoryScreen;->next()V

    .line 192
    :cond_0
    return-void
.end method

.method public tweenComplete(Ljava/lang/Object;)V
    .locals 2
    .param p1, "tween"    # Ljava/lang/Object;

    .prologue
    .line 180
    const/4 v0, 0x1

    iput v0, p0, Lcom/masshabit/squibble/StoryScreen;->mState:I

    .line 181
    const-string v0, "StoryScreen"

    const-string v1, "State = wait"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v0, p0, Lcom/masshabit/squibble/StoryScreen;->mDelay:Lcom/masshabit/common/Delay;

    iget v1, p0, Lcom/masshabit/squibble/StoryScreen;->mIndex:I

    invoke-virtual {p0, v1}, Lcom/masshabit/squibble/StoryScreen;->getDelay(I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/masshabit/common/Delay;->start(F)V

    .line 183
    return-void
.end method

.method public update(F)V
    .locals 1
    .param p1, "dt"    # F

    .prologue
    .line 144
    iget v0, p0, Lcom/masshabit/squibble/StoryScreen;->mState:I

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/masshabit/squibble/StoryScreen;->mTween:Lcom/masshabit/common/tween/Tween;

    invoke-virtual {v0, p1}, Lcom/masshabit/common/tween/Tween;->update(F)V

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/masshabit/squibble/StoryScreen;->mDelay:Lcom/masshabit/common/Delay;

    invoke-virtual {v0, p1}, Lcom/masshabit/common/Delay;->update(F)V

    goto :goto_0
.end method
