.class public abstract Lcom/masshabit/squibble/Screen;
.super Ljava/lang/Object;
.source "Screen.java"


# static fields
.field public static sSharedArgs:Ljava/lang/String;


# instance fields
.field protected mSound:Landroid/media/SoundPool;

.field protected mSoundIds:[I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x6

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/masshabit/squibble/Screen;->mSound:Landroid/media/SoundPool;

    .line 27
    const/4 v0, 0x7

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/masshabit/squibble/Screen;->mSoundIds:[I

    .line 28
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/masshabit/squibble/Screen;->mSound:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/masshabit/squibble/Screen;->mSound:Landroid/media/SoundPool;

    .line 59
    return-void
.end method

.method public abstract draw(Landroid/graphics/Canvas;)V
.end method

.method public abstract init()V
.end method

.method protected loadSound(ILjava/lang/String;)V
    .locals 6
    .param p1, "soundId"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 40
    sget-object v4, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    iget-object v4, v4, Lcom/masshabit/common/Environment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 43
    .local v1, "am":Landroid/content/res/AssetManager;
    :try_start_0
    invoke-virtual {v1, p2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 44
    .local v0, "afd":Landroid/content/res/AssetFileDescriptor;
    iget-object v4, p0, Lcom/masshabit/squibble/Screen;->mSound:Landroid/media/SoundPool;

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v3

    .line 45
    .local v3, "sid":I
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 46
    iget-object v4, p0, Lcom/masshabit/squibble/Screen;->mSoundIds:[I

    aput v3, v4, p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .end local v0    # "afd":Landroid/content/res/AssetFileDescriptor;
    .end local v3    # "sid":I
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 50
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 51
    iget-object v4, p0, Lcom/masshabit/squibble/Screen;->mSoundIds:[I

    const/4 v5, -0x1

    aput v5, v4, p1

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public onInputEvent(Lcom/masshabit/common/InputEvent;)V
    .locals 0
    .param p1, "e"    # Lcom/masshabit/common/InputEvent;

    .prologue
    .line 73
    return-void
.end method

.method public onMutedChanged(Z)V
    .locals 0
    .param p1, "muted"    # Z

    .prologue
    .line 75
    return-void
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 71
    return-void
.end method

.method public playSound(I)V
    .locals 7
    .param p1, "soundId"    # I

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 32
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    invoke-virtual {v0}, Lcom/masshabit/common/Environment;->isMuted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/masshabit/squibble/Screen;->mSound:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/masshabit/squibble/Screen;->mSoundIds:[I

    aget v1, v1, p1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 36
    :cond_0
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "out"    # Landroid/os/Bundle;

    .prologue
    .line 77
    return-void
.end method

.method public showLoading()Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public abstract update(F)V
.end method
