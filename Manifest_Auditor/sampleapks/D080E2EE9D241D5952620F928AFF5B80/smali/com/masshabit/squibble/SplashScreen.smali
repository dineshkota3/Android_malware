.class public Lcom/masshabit/squibble/SplashScreen;
.super Lcom/masshabit/squibble/Screen;
.source "SplashScreen.java"

# interfaces
.implements Lcom/masshabit/common/Delay$IDelayCompleteListener;


# instance fields
.field public DISPLAY_TIME:F

.field protected mBitmap:Landroid/graphics/Bitmap;

.field protected mDelay:Lcom/masshabit/common/Delay;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/masshabit/squibble/Screen;-><init>()V

    .line 20
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/masshabit/squibble/SplashScreen;->DISPLAY_TIME:F

    return-void
.end method


# virtual methods
.method public delayComplete(Lcom/masshabit/common/Delay;)V
    .locals 0
    .param p1, "d"    # Lcom/masshabit/common/Delay;

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/masshabit/squibble/SplashScreen;->proceed()V

    .line 101
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Lcom/masshabit/squibble/Screen;->destroy()V

    .line 52
    iget-object v0, p0, Lcom/masshabit/squibble/SplashScreen;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/masshabit/squibble/SplashScreen;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/masshabit/squibble/SplashScreen;->mBitmap:Landroid/graphics/Bitmap;

    .line 57
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    .line 89
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 90
    .local v0, "env":Lcom/masshabit/common/Environment;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 91
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 92
    iget-object v1, p0, Lcom/masshabit/squibble/SplashScreen;->mBitmap:Landroid/graphics/Bitmap;

    iget v2, v0, Lcom/masshabit/common/Environment;->mScreenWidth:F

    iget-object v3, p0, Lcom/masshabit/squibble/SplashScreen;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    iget v3, v0, Lcom/masshabit/common/Environment;->mScreenHeight:F

    iget-object v4, p0, Lcom/masshabit/squibble/SplashScreen;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    invoke-virtual {p1, v1, v2, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 94
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 95
    return-void
.end method

.method public init()V
    .locals 5

    .prologue
    .line 29
    new-instance v3, Lcom/masshabit/common/Delay;

    invoke-direct {v3, p0}, Lcom/masshabit/common/Delay;-><init>(Lcom/masshabit/common/Delay$IDelayCompleteListener;)V

    iput-object v3, p0, Lcom/masshabit/squibble/SplashScreen;->mDelay:Lcom/masshabit/common/Delay;

    .line 30
    iget-object v3, p0, Lcom/masshabit/squibble/SplashScreen;->mDelay:Lcom/masshabit/common/Delay;

    iget v4, p0, Lcom/masshabit/squibble/SplashScreen;->DISPLAY_TIME:F

    invoke-virtual {v3, v4}, Lcom/masshabit/common/Delay;->start(F)V

    .line 32
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/masshabit/squibble/SplashScreen;->mBitmap:Landroid/graphics/Bitmap;

    .line 33
    sget-object v3, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    iget-object v3, v3, Lcom/masshabit/common/Environment;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 37
    .local v0, "am":Landroid/content/res/AssetManager;
    :try_start_0
    const-string v3, "splash.png"

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 38
    .local v2, "is":Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/masshabit/squibble/SplashScreen;->mBitmap:Landroid/graphics/Bitmap;

    .line 39
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .end local v2    # "is":Ljava/io/InputStream;
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 43
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public onInputEvent(Lcom/masshabit/common/InputEvent;)V
    .locals 2
    .param p1, "e"    # Lcom/masshabit/common/InputEvent;

    .prologue
    .line 106
    iget-byte v0, p1, Lcom/masshabit/common/InputEvent;->mEventType:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/masshabit/squibble/SplashScreen;->proceed()V

    .line 110
    :cond_0
    return-void
.end method

.method protected proceed()V
    .locals 4

    .prologue
    const/16 v3, 0x14

    .line 61
    sget-object v2, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    iget-object v0, v2, Lcom/masshabit/common/Environment;->mGame:Lcom/masshabit/squibble/Game;

    .line 62
    .local v0, "game":Lcom/masshabit/squibble/Game;
    invoke-static {}, Lcom/masshabit/common/License;->instance()Lcom/masshabit/common/License;

    move-result-object v1

    .line 64
    .local v1, "lic":Lcom/masshabit/common/License;
    sget-boolean v2, Lcom/masshabit/common/Globals;->PAID_BUILD:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/masshabit/common/License;->notReadyOrBad()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    invoke-virtual {v0, v3}, Lcom/masshabit/squibble/Game;->pushScreen(I)V

    .line 70
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lcom/masshabit/squibble/Game;->changeScreen(I)V

    .line 78
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-static {}, Lcom/masshabit/common/Globals;->init()V

    .line 76
    invoke-virtual {v0, v3}, Lcom/masshabit/squibble/Game;->changeScreen(I)V

    goto :goto_0
.end method

.method public update(F)V
    .locals 1
    .param p1, "dt"    # F

    .prologue
    .line 83
    iget-object v0, p0, Lcom/masshabit/squibble/SplashScreen;->mDelay:Lcom/masshabit/common/Delay;

    invoke-virtual {v0, p1}, Lcom/masshabit/common/Delay;->update(F)V

    .line 84
    return-void
.end method
