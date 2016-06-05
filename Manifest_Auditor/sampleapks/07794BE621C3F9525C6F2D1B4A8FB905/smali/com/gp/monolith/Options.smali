.class public Lcom/gp/monolith/Options;
.super Ljava/lang/Object;
.source "Options.java"


# static fields
.field public static ALLOPTIONS:[I = null

.field public static final DIFFICULTY_EASY:I = 0x2

.field public static final DIFFICULTY_EXPERT:I = 0x1

.field public static final DIFFICULTY_NORMAL:I = 0x0

.field public static final OPTION_BACK:I = 0x0

.field public static final OPTION_DIFFICULTY:I = 0x2

.field public static final OPTION_GAMETYPE:I = 0x1

.field public static final OPTION_MUSIC:I = 0x4

.field public static final OPTION_NONE:I = -0x1

.field public static final OPTION_OK:I = 0x6

.field public static final OPTION_SOUND:I = 0x5

.field public static final OPTION_STARTING_LEVEL:I = 0x3

.field public static final STATUS_BACK:I = 0xc

.field public static final STATUS_OK:I = 0xa

.field public static final STATUS_SELECTING:I = 0xb


# instance fields
.field private changedOption:I

.field private currentLevelIndex:I

.field private currentSelectedOption:I

.field private currentSelectedOptionTime:J

.field private difficultyLevel:I

.field private enabledmusic:Z

.field private enabledsound:Z

.field private game:Lcom/gp/monolith/Game;

.field private gameType:I

.field private newGame:Lcom/gp/monolith/Game;

.field private preferences:Landroid/content/SharedPreferences;

.field private previousSelectedOption:I

.field private previousSelectedOptionTime:J

.field private selectionStatus:I

.field private startingLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 392
    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 394
    aput v1, v0, v1

    .line 395
    aput v2, v0, v2

    .line 396
    aput v3, v0, v3

    .line 397
    aput v4, v0, v4

    .line 398
    aput v5, v0, v5

    const/4 v1, 0x6

    .line 399
    const/4 v2, 0x6

    aput v2, v0, v1

    .line 392
    sput-object v0, Lcom/gp/monolith/Options;->ALLOPTIONS:[I

    .line 3
    return-void
.end method

.method public constructor <init>(Lcom/gp/monolith/Game;Landroid/content/SharedPreferences;)V
    .locals 3
    .param p1, "currentGame"    # Lcom/gp/monolith/Game;
    .param p2, "preferences"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p2, p0, Lcom/gp/monolith/Options;->preferences:Landroid/content/SharedPreferences;

    .line 9
    invoke-virtual {p0, v1}, Lcom/gp/monolith/Options;->setMusicEnabled(Z)V

    .line 10
    invoke-virtual {p0, v1}, Lcom/gp/monolith/Options;->setSoundEnabled(Z)V

    .line 11
    iput-object p1, p0, Lcom/gp/monolith/Options;->game:Lcom/gp/monolith/Game;

    .line 12
    const-string v0, "gameType"

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/gp/monolith/Options;->gameType:I

    .line 13
    const-string v0, "difficultyLevel"

    invoke-interface {p2, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/gp/monolith/Options;->difficultyLevel:I

    .line 14
    const-string v0, "startingLevel"

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/gp/monolith/Options;->startingLevel:I

    .line 15
    const-string v0, "enabledmusic"

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/gp/monolith/Options;->enabledmusic:Z

    .line 16
    const-string v0, "enabledsound"

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/gp/monolith/Options;->enabledsound:Z

    .line 18
    iget v0, p0, Lcom/gp/monolith/Options;->gameType:I

    if-ne v0, v1, :cond_0

    .line 20
    new-instance v0, Lcom/gp/monolith/MonolithGameData;

    invoke-direct {v0}, Lcom/gp/monolith/MonolithGameData;-><init>()V

    iput-object v0, p0, Lcom/gp/monolith/Options;->game:Lcom/gp/monolith/Game;

    .line 21
    iget-object v0, p0, Lcom/gp/monolith/Options;->game:Lcom/gp/monolith/Game;

    iget v1, p0, Lcom/gp/monolith/Options;->startingLevel:I

    invoke-interface {v0, v1}, Lcom/gp/monolith/Game;->initGame(I)V

    .line 30
    :goto_0
    iget-object v0, p0, Lcom/gp/monolith/Options;->game:Lcom/gp/monolith/Game;

    invoke-interface {v0}, Lcom/gp/monolith/Game;->getGameType()I

    move-result v0

    if-nez v0, :cond_1

    .line 32
    new-instance v0, Lcom/gp/monolith/SimpleGameData;

    invoke-direct {v0}, Lcom/gp/monolith/SimpleGameData;-><init>()V

    iput-object v0, p0, Lcom/gp/monolith/Options;->newGame:Lcom/gp/monolith/Game;

    .line 39
    :goto_1
    iget-object v0, p0, Lcom/gp/monolith/Options;->newGame:Lcom/gp/monolith/Game;

    iget-object v1, p0, Lcom/gp/monolith/Options;->game:Lcom/gp/monolith/Game;

    invoke-interface {v1}, Lcom/gp/monolith/Game;->getLevels()[I

    move-result-object v1

    aget v1, v1, v2

    invoke-interface {v0, v1}, Lcom/gp/monolith/Game;->setLevel(I)V

    .line 42
    iput v2, p0, Lcom/gp/monolith/Options;->currentSelectedOption:I

    .line 43
    iput v2, p0, Lcom/gp/monolith/Options;->previousSelectedOption:I

    .line 44
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/gp/monolith/Options;->setSelectionStatus(I)V

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gp/monolith/Options;->currentSelectedOptionTime:J

    .line 46
    iget-wide v0, p0, Lcom/gp/monolith/Options;->currentSelectedOptionTime:J

    iput-wide v0, p0, Lcom/gp/monolith/Options;->previousSelectedOptionTime:J

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/gp/monolith/Options;->changedOption:I

    .line 50
    return-void

    .line 25
    :cond_0
    new-instance v0, Lcom/gp/monolith/SimpleGameData;

    invoke-direct {v0}, Lcom/gp/monolith/SimpleGameData;-><init>()V

    iput-object v0, p0, Lcom/gp/monolith/Options;->game:Lcom/gp/monolith/Game;

    .line 26
    iget-object v0, p0, Lcom/gp/monolith/Options;->game:Lcom/gp/monolith/Game;

    iget v1, p0, Lcom/gp/monolith/Options;->startingLevel:I

    invoke-interface {v0, v1}, Lcom/gp/monolith/Game;->initGame(I)V

    goto :goto_0

    .line 36
    :cond_1
    new-instance v0, Lcom/gp/monolith/MonolithGameData;

    invoke-direct {v0}, Lcom/gp/monolith/MonolithGameData;-><init>()V

    iput-object v0, p0, Lcom/gp/monolith/Options;->newGame:Lcom/gp/monolith/Game;

    goto :goto_1
.end method

.method private initNewGame()V
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/gp/monolith/Options;->game:Lcom/gp/monolith/Game;

    invoke-interface {v0}, Lcom/gp/monolith/Game;->getGameType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 307
    :goto_0
    return-void

    .line 299
    :pswitch_0
    new-instance v0, Lcom/gp/monolith/SimpleGameData;

    invoke-direct {v0}, Lcom/gp/monolith/SimpleGameData;-><init>()V

    iput-object v0, p0, Lcom/gp/monolith/Options;->newGame:Lcom/gp/monolith/Game;

    .line 300
    iget-object v0, p0, Lcom/gp/monolith/Options;->newGame:Lcom/gp/monolith/Game;

    iget-object v1, p0, Lcom/gp/monolith/Options;->game:Lcom/gp/monolith/Game;

    invoke-interface {v1}, Lcom/gp/monolith/Game;->getLevel()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/gp/monolith/Game;->setLevel(I)V

    goto :goto_0

    .line 303
    :pswitch_1
    new-instance v0, Lcom/gp/monolith/MonolithGameData;

    invoke-direct {v0}, Lcom/gp/monolith/MonolithGameData;-><init>()V

    iput-object v0, p0, Lcom/gp/monolith/Options;->newGame:Lcom/gp/monolith/Game;

    .line 304
    iget-object v0, p0, Lcom/gp/monolith/Options;->newGame:Lcom/gp/monolith/Game;

    iget-object v1, p0, Lcom/gp/monolith/Options;->game:Lcom/gp/monolith/Game;

    invoke-interface {v1}, Lcom/gp/monolith/Game;->getLevel()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/gp/monolith/Game;->setLevel(I)V

    goto :goto_0

    .line 296
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getChangedOption()I
    .locals 2

    .prologue
    .line 368
    iget v0, p0, Lcom/gp/monolith/Options;->changedOption:I

    .line 369
    .local v0, "retval":I
    const/4 v1, -0x1

    iput v1, p0, Lcom/gp/monolith/Options;->changedOption:I

    .line 370
    return v0
.end method

.method public getCurrentSelectedOption()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/gp/monolith/Options;->currentSelectedOption:I

    return v0
.end method

.method public getDifficultyLevel()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/gp/monolith/Options;->difficultyLevel:I

    return v0
.end method

.method public getFirstLevel()I
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/gp/monolith/Options;->newGame:Lcom/gp/monolith/Game;

    invoke-interface {v0}, Lcom/gp/monolith/Game;->getLevels()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getGame()Lcom/gp/monolith/Game;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/gp/monolith/Options;->game:Lcom/gp/monolith/Game;

    return-object v0
.end method

.method public getGameType()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/gp/monolith/Options;->gameType:I

    return v0
.end method

.method public getPreviousSelectedOption()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/gp/monolith/Options;->previousSelectedOption:I

    return v0
.end method

.method public getSelectionStatus()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/gp/monolith/Options;->selectionStatus:I

    return v0
.end method

.method public getStartingLevel()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/gp/monolith/Options;->startingLevel:I

    return v0
.end method

.method public interpolatePosition(I)F
    .locals 8
    .param p1, "milliseconds"    # I

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 209
    .local v0, "now":J
    const/4 v2, 0x0

    .line 210
    .local v2, "retval":F
    iget-wide v3, p0, Lcom/gp/monolith/Options;->previousSelectedOptionTime:J

    sub-long v3, v0, v3

    int-to-long v5, p1

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 212
    const/high16 v2, 0x3f800000    # 1.0f

    .line 218
    :goto_0
    iget v3, p0, Lcom/gp/monolith/Options;->currentSelectedOption:I

    iget v4, p0, Lcom/gp/monolith/Options;->previousSelectedOption:I

    if-le v3, v4, :cond_1

    .line 220
    sub-float v3, v7, v2

    neg-float v3, v3

    .line 224
    :goto_1
    return v3

    .line 216
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/gp/monolith/Options;->previousSelectedOptionTime:J

    sub-long/2addr v3, v5

    long-to-float v3, v3

    int-to-float v4, p1

    div-float v2, v3, v4

    goto :goto_0

    .line 224
    :cond_1
    sub-float v3, v7, v2

    goto :goto_1
.end method

.method public isMusicEnabled()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/gp/monolith/Options;->enabledmusic:Z

    return v0
.end method

.method public isSoundEnabled()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/gp/monolith/Options;->enabledsound:Z

    return v0
.end method

.method public nextOption()V
    .locals 3

    .prologue
    .line 178
    iget v0, p0, Lcom/gp/monolith/Options;->currentSelectedOption:I

    iput v0, p0, Lcom/gp/monolith/Options;->previousSelectedOption:I

    .line 179
    iget-wide v0, p0, Lcom/gp/monolith/Options;->currentSelectedOptionTime:J

    iput-wide v0, p0, Lcom/gp/monolith/Options;->previousSelectedOptionTime:J

    .line 180
    iget v0, p0, Lcom/gp/monolith/Options;->currentSelectedOption:I

    sget-object v1, Lcom/gp/monolith/Options;->ALLOPTIONS:[I

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 183
    iget v0, p0, Lcom/gp/monolith/Options;->currentSelectedOption:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gp/monolith/Options;->currentSelectedOption:I

    .line 190
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gp/monolith/Options;->currentSelectedOptionTime:J

    .line 191
    return-void

    .line 188
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/gp/monolith/Options;->currentSelectedOption:I

    goto :goto_0
.end method

.method public previousOption()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 194
    iget v0, p0, Lcom/gp/monolith/Options;->currentSelectedOption:I

    iput v0, p0, Lcom/gp/monolith/Options;->previousSelectedOption:I

    .line 195
    iget-wide v0, p0, Lcom/gp/monolith/Options;->currentSelectedOptionTime:J

    iput-wide v0, p0, Lcom/gp/monolith/Options;->previousSelectedOptionTime:J

    .line 196
    iget v0, p0, Lcom/gp/monolith/Options;->currentSelectedOption:I

    if-lez v0, :cond_0

    .line 198
    iget v0, p0, Lcom/gp/monolith/Options;->currentSelectedOption:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/gp/monolith/Options;->currentSelectedOption:I

    .line 204
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gp/monolith/Options;->currentSelectedOptionTime:J

    .line 205
    return-void

    .line 202
    :cond_0
    sget-object v0, Lcom/gp/monolith/Options;->ALLOPTIONS:[I

    array-length v0, v0

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/gp/monolith/Options;->currentSelectedOption:I

    goto :goto_0
.end method

.method public resetOptions()V
    .locals 1

    .prologue
    .line 310
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/gp/monolith/Options;->setSelectionStatus(I)V

    .line 311
    return-void
.end method

.method public savePreferences()V
    .locals 3

    .prologue
    .line 53
    iget-object v1, p0, Lcom/gp/monolith/Options;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 54
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "difficultyLevel"

    iget v2, p0, Lcom/gp/monolith/Options;->difficultyLevel:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 55
    const-string v1, "startingLevel"

    iget v2, p0, Lcom/gp/monolith/Options;->startingLevel:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 56
    const-string v1, "gameType"

    iget v2, p0, Lcom/gp/monolith/Options;->gameType:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 57
    const-string v1, "enabledsound"

    iget-boolean v2, p0, Lcom/gp/monolith/Options;->enabledsound:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 58
    const-string v1, "enabledmusic"

    iget-boolean v2, p0, Lcom/gp/monolith/Options;->enabledmusic:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 59
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 60
    return-void
.end method

.method public setDifficultyLevel(I)V
    .locals 0
    .param p1, "difficultyLevel"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/gp/monolith/Options;->difficultyLevel:I

    .line 76
    return-void
.end method

.method public setFirstLevel()V
    .locals 2

    .prologue
    .line 138
    const/4 v0, 0x0

    iput v0, p0, Lcom/gp/monolith/Options;->currentLevelIndex:I

    .line 139
    iget-object v0, p0, Lcom/gp/monolith/Options;->newGame:Lcom/gp/monolith/Game;

    invoke-interface {v0}, Lcom/gp/monolith/Game;->getLevels()[I

    move-result-object v0

    iget v1, p0, Lcom/gp/monolith/Options;->currentLevelIndex:I

    aget v0, v0, v1

    iput v0, p0, Lcom/gp/monolith/Options;->startingLevel:I

    .line 140
    return-void
.end method

.method public setGame(Lcom/gp/monolith/Game;)V
    .locals 0
    .param p1, "game"    # Lcom/gp/monolith/Game;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/gp/monolith/Options;->game:Lcom/gp/monolith/Game;

    .line 101
    return-void
.end method

.method public setGameType(I)V
    .locals 0
    .param p1, "gameType"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/gp/monolith/Options;->gameType:I

    .line 117
    return-void
.end method

.method public setMusicEnabled(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/gp/monolith/Options;->enabledmusic:Z

    .line 84
    return-void
.end method

.method public setNewGame(Lcom/gp/monolith/Game;)V
    .locals 0
    .param p1, "game"    # Lcom/gp/monolith/Game;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/gp/monolith/Options;->newGame:Lcom/gp/monolith/Game;

    .line 105
    return-void
.end method

.method public setNextLevel()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 143
    iget v0, p0, Lcom/gp/monolith/Options;->currentLevelIndex:I

    iget-object v1, p0, Lcom/gp/monolith/Options;->newGame:Lcom/gp/monolith/Game;

    invoke-interface {v1}, Lcom/gp/monolith/Game;->getLevels()[I

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 145
    iget v0, p0, Lcom/gp/monolith/Options;->currentLevelIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gp/monolith/Options;->currentLevelIndex:I

    .line 146
    iget-object v0, p0, Lcom/gp/monolith/Options;->newGame:Lcom/gp/monolith/Game;

    invoke-interface {v0}, Lcom/gp/monolith/Game;->getLevels()[I

    move-result-object v0

    iget v1, p0, Lcom/gp/monolith/Options;->currentLevelIndex:I

    aget v0, v0, v1

    iput v0, p0, Lcom/gp/monolith/Options;->startingLevel:I

    .line 153
    :goto_0
    return-void

    .line 150
    :cond_0
    iput v3, p0, Lcom/gp/monolith/Options;->currentLevelIndex:I

    .line 151
    iget-object v0, p0, Lcom/gp/monolith/Options;->newGame:Lcom/gp/monolith/Game;

    invoke-interface {v0}, Lcom/gp/monolith/Game;->getLevels()[I

    move-result-object v0

    aget v0, v0, v3

    iput v0, p0, Lcom/gp/monolith/Options;->startingLevel:I

    goto :goto_0
.end method

.method public setNextValue()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 230
    iget v0, p0, Lcom/gp/monolith/Options;->currentSelectedOption:I

    packed-switch v0, :pswitch_data_0

    .line 293
    :goto_0
    return-void

    .line 233
    :pswitch_0
    iput v2, p0, Lcom/gp/monolith/Options;->changedOption:I

    goto :goto_0

    .line 236
    :pswitch_1
    iget v0, p0, Lcom/gp/monolith/Options;->gameType:I

    if-ne v0, v1, :cond_0

    .line 238
    iput v2, p0, Lcom/gp/monolith/Options;->gameType:I

    .line 239
    new-instance v0, Lcom/gp/monolith/SimpleGameData;

    invoke-direct {v0}, Lcom/gp/monolith/SimpleGameData;-><init>()V

    iput-object v0, p0, Lcom/gp/monolith/Options;->newGame:Lcom/gp/monolith/Game;

    .line 246
    :goto_1
    iput v1, p0, Lcom/gp/monolith/Options;->changedOption:I

    goto :goto_0

    .line 243
    :cond_0
    iput v1, p0, Lcom/gp/monolith/Options;->gameType:I

    .line 244
    new-instance v0, Lcom/gp/monolith/MonolithGameData;

    invoke-direct {v0}, Lcom/gp/monolith/MonolithGameData;-><init>()V

    iput-object v0, p0, Lcom/gp/monolith/Options;->newGame:Lcom/gp/monolith/Game;

    goto :goto_1

    .line 249
    :pswitch_2
    iget v0, p0, Lcom/gp/monolith/Options;->difficultyLevel:I

    packed-switch v0, :pswitch_data_1

    .line 261
    :goto_2
    iput v3, p0, Lcom/gp/monolith/Options;->changedOption:I

    goto :goto_0

    .line 252
    :pswitch_3
    iput v2, p0, Lcom/gp/monolith/Options;->difficultyLevel:I

    goto :goto_2

    .line 255
    :pswitch_4
    iput v1, p0, Lcom/gp/monolith/Options;->difficultyLevel:I

    goto :goto_2

    .line 258
    :pswitch_5
    iput v3, p0, Lcom/gp/monolith/Options;->difficultyLevel:I

    goto :goto_2

    .line 264
    :pswitch_6
    invoke-virtual {p0}, Lcom/gp/monolith/Options;->setNextLevel()V

    .line 265
    const/4 v0, 0x3

    iput v0, p0, Lcom/gp/monolith/Options;->changedOption:I

    goto :goto_0

    .line 268
    :pswitch_7
    iget-boolean v0, p0, Lcom/gp/monolith/Options;->enabledmusic:Z

    if-eqz v0, :cond_1

    move v0, v2

    :goto_3
    invoke-virtual {p0, v0}, Lcom/gp/monolith/Options;->setMusicEnabled(Z)V

    .line 269
    const/4 v0, 0x4

    iput v0, p0, Lcom/gp/monolith/Options;->changedOption:I

    goto :goto_0

    :cond_1
    move v0, v1

    .line 268
    goto :goto_3

    .line 272
    :pswitch_8
    iget-boolean v0, p0, Lcom/gp/monolith/Options;->enabledsound:Z

    if-eqz v0, :cond_2

    move v0, v2

    :goto_4
    invoke-virtual {p0, v0}, Lcom/gp/monolith/Options;->setSoundEnabled(Z)V

    .line 273
    const/4 v0, 0x5

    iput v0, p0, Lcom/gp/monolith/Options;->changedOption:I

    goto :goto_0

    :cond_2
    move v0, v1

    .line 272
    goto :goto_4

    .line 276
    :pswitch_9
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/gp/monolith/Options;->setSelectionStatus(I)V

    .line 277
    const/4 v0, 0x6

    iput v0, p0, Lcom/gp/monolith/Options;->changedOption:I

    .line 278
    invoke-virtual {p0}, Lcom/gp/monolith/Options;->getGameType()I

    move-result v0

    packed-switch v0, :pswitch_data_2

    .line 288
    :goto_5
    iget-object v0, p0, Lcom/gp/monolith/Options;->game:Lcom/gp/monolith/Game;

    invoke-virtual {p0}, Lcom/gp/monolith/Options;->getStartingLevel()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/gp/monolith/Game;->setLevel(I)V

    .line 289
    invoke-direct {p0}, Lcom/gp/monolith/Options;->initNewGame()V

    goto :goto_0

    .line 281
    :pswitch_a
    new-instance v0, Lcom/gp/monolith/SimpleGameData;

    invoke-direct {v0}, Lcom/gp/monolith/SimpleGameData;-><init>()V

    iput-object v0, p0, Lcom/gp/monolith/Options;->game:Lcom/gp/monolith/Game;

    goto :goto_5

    .line 284
    :pswitch_b
    new-instance v0, Lcom/gp/monolith/MonolithGameData;

    invoke-direct {v0}, Lcom/gp/monolith/MonolithGameData;-><init>()V

    iput-object v0, p0, Lcom/gp/monolith/Options;->game:Lcom/gp/monolith/Game;

    goto :goto_5

    .line 230
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 249
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch

    .line 278
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public setPreviousLevel()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 156
    iget v0, p0, Lcom/gp/monolith/Options;->currentLevelIndex:I

    if-lez v0, :cond_0

    .line 158
    iget v0, p0, Lcom/gp/monolith/Options;->currentLevelIndex:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/gp/monolith/Options;->currentLevelIndex:I

    .line 159
    iget-object v0, p0, Lcom/gp/monolith/Options;->newGame:Lcom/gp/monolith/Game;

    invoke-interface {v0}, Lcom/gp/monolith/Game;->getLevels()[I

    move-result-object v0

    iget v1, p0, Lcom/gp/monolith/Options;->currentLevelIndex:I

    aget v0, v0, v1

    iput v0, p0, Lcom/gp/monolith/Options;->startingLevel:I

    .line 166
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/gp/monolith/Options;->newGame:Lcom/gp/monolith/Game;

    invoke-interface {v0}, Lcom/gp/monolith/Game;->getLevels()[I

    move-result-object v0

    array-length v0, v0

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/gp/monolith/Options;->currentLevelIndex:I

    .line 164
    iget-object v0, p0, Lcom/gp/monolith/Options;->newGame:Lcom/gp/monolith/Game;

    invoke-interface {v0}, Lcom/gp/monolith/Game;->getLevels()[I

    move-result-object v0

    iget v1, p0, Lcom/gp/monolith/Options;->currentLevelIndex:I

    aget v0, v0, v1

    iput v0, p0, Lcom/gp/monolith/Options;->startingLevel:I

    goto :goto_0
.end method

.method public setPreviousValue()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 314
    iget v0, p0, Lcom/gp/monolith/Options;->currentSelectedOption:I

    packed-switch v0, :pswitch_data_0

    .line 365
    :goto_0
    return-void

    .line 317
    :pswitch_0
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/gp/monolith/Options;->setSelectionStatus(I)V

    .line 318
    iput v2, p0, Lcom/gp/monolith/Options;->changedOption:I

    goto :goto_0

    .line 321
    :pswitch_1
    iget v0, p0, Lcom/gp/monolith/Options;->gameType:I

    if-ne v0, v1, :cond_0

    .line 323
    iput v2, p0, Lcom/gp/monolith/Options;->gameType:I

    .line 330
    :goto_1
    iput v1, p0, Lcom/gp/monolith/Options;->changedOption:I

    goto :goto_0

    .line 328
    :cond_0
    iput v1, p0, Lcom/gp/monolith/Options;->gameType:I

    goto :goto_1

    .line 333
    :pswitch_2
    iget v0, p0, Lcom/gp/monolith/Options;->difficultyLevel:I

    packed-switch v0, :pswitch_data_1

    .line 346
    :goto_2
    iput v3, p0, Lcom/gp/monolith/Options;->changedOption:I

    goto :goto_0

    .line 336
    :pswitch_3
    iput v1, p0, Lcom/gp/monolith/Options;->difficultyLevel:I

    goto :goto_2

    .line 339
    :pswitch_4
    iput v3, p0, Lcom/gp/monolith/Options;->difficultyLevel:I

    goto :goto_2

    .line 342
    :pswitch_5
    iput v2, p0, Lcom/gp/monolith/Options;->difficultyLevel:I

    goto :goto_2

    .line 349
    :pswitch_6
    invoke-virtual {p0}, Lcom/gp/monolith/Options;->setPreviousLevel()V

    .line 350
    const/4 v0, 0x3

    iput v0, p0, Lcom/gp/monolith/Options;->changedOption:I

    goto :goto_0

    .line 353
    :pswitch_7
    iget-boolean v0, p0, Lcom/gp/monolith/Options;->enabledmusic:Z

    if-eqz v0, :cond_1

    move v0, v2

    :goto_3
    invoke-virtual {p0, v0}, Lcom/gp/monolith/Options;->setMusicEnabled(Z)V

    .line 354
    const/4 v0, 0x4

    iput v0, p0, Lcom/gp/monolith/Options;->changedOption:I

    goto :goto_0

    :cond_1
    move v0, v1

    .line 353
    goto :goto_3

    .line 357
    :pswitch_8
    iget-boolean v0, p0, Lcom/gp/monolith/Options;->enabledsound:Z

    if-eqz v0, :cond_2

    move v0, v2

    :goto_4
    invoke-virtual {p0, v0}, Lcom/gp/monolith/Options;->setSoundEnabled(Z)V

    .line 358
    const/4 v0, 0x5

    iput v0, p0, Lcom/gp/monolith/Options;->changedOption:I

    goto :goto_0

    :cond_2
    move v0, v1

    .line 357
    goto :goto_4

    .line 361
    :pswitch_9
    const/4 v0, -0x1

    iput v0, p0, Lcom/gp/monolith/Options;->changedOption:I

    goto :goto_0

    .line 314
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 333
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method

.method public setSelectionStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/gp/monolith/Options;->selectionStatus:I

    .line 72
    return-void
.end method

.method public setSoundEnabled(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/gp/monolith/Options;->enabledsound:Z

    .line 93
    return-void
.end method

.method public setStartingLevel(I)V
    .locals 0
    .param p1, "startingLevel"    # I

    .prologue
    .line 126
    iput p1, p0, Lcom/gp/monolith/Options;->startingLevel:I

    .line 127
    return-void
.end method
