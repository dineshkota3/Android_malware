.class public Lcom/gp/monolith/SoundPoolManager;
.super Ljava/lang/Object;
.source "SoundPoolManager.java"

# interfaces
.implements Lcom/gp/monolith/Sound;


# instance fields
.field private context:Landroid/content/Context;

.field public currentPlayer:I

.field finished:Z

.field private handles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private isRunning:Z

.field private mediaPlayers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/media/MediaPlayer;",
            ">;"
        }
    .end annotation
.end field

.field musicPlayer:Landroid/media/JetPlayer;

.field private soundEvents:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/gp/monolith/SoundPoolEvent;",
            ">;"
        }
    .end annotation
.end field

.field soundPool:Landroid/media/SoundPool;

.field private sounds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private streamIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-boolean v1, p0, Lcom/gp/monolith/SoundPoolManager;->finished:Z

    .line 37
    iput-object p1, p0, Lcom/gp/monolith/SoundPoolManager;->context:Landroid/content/Context;

    .line 38
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/gp/monolith/SoundPoolManager;->soundEvents:Ljava/util/LinkedList;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gp/monolith/SoundPoolManager;->sounds:Ljava/util/HashMap;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gp/monolith/SoundPoolManager;->handles:Ljava/util/HashMap;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gp/monolith/SoundPoolManager;->streamIds:Ljava/util/HashMap;

    .line 42
    iput-boolean v1, p0, Lcom/gp/monolith/SoundPoolManager;->isRunning:Z

    .line 43
    iput-boolean v1, p0, Lcom/gp/monolith/SoundPoolManager;->finished:Z

    .line 44
    invoke-static {}, Landroid/media/JetPlayer;->getJetPlayer()Landroid/media/JetPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/gp/monolith/SoundPoolManager;->musicPlayer:Landroid/media/JetPlayer;

    .line 45
    iget-object v0, p0, Lcom/gp/monolith/SoundPoolManager;->musicPlayer:Landroid/media/JetPlayer;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f040004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/media/JetPlayer;->loadJetFile(Landroid/content/res/AssetFileDescriptor;)Z

    .line 46
    const/4 v6, 0x0

    .line 48
    .local v6, "segmentId":B
    iget-object v0, p0, Lcom/gp/monolith/SoundPoolManager;->musicPlayer:Landroid/media/JetPlayer;

    add-int/lit8 v3, v6, 0x1

    int-to-byte v7, v3

    .end local v6    # "segmentId":B
    .local v7, "segmentId":B
    move v3, v2

    move v4, v1

    move v5, v1

    invoke-virtual/range {v0 .. v6}, Landroid/media/JetPlayer;->queueJetSegment(IIIIIB)Z

    .line 49
    return-void
.end method


# virtual methods
.method public addSound(IZ)V
    .locals 3
    .param p1, "resid"    # I
    .param p2, "isLooping"    # Z

    .prologue
    .line 53
    iget-object v0, p0, Lcom/gp/monolith/SoundPoolManager;->sounds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, p2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    return-void
.end method

.method public pauseMusic(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 171
    iget-object v0, p0, Lcom/gp/monolith/SoundPoolManager;->musicPlayer:Landroid/media/JetPlayer;

    invoke-virtual {v0}, Landroid/media/JetPlayer;->pause()Z

    .line 172
    return-void
.end method

.method public playSound(I)V
    .locals 11
    .param p1, "resid"    # I

    .prologue
    .line 141
    iget-object v0, p0, Lcom/gp/monolith/SoundPoolManager;->soundEvents:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/gp/monolith/SoundPoolManager;->context:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/AudioManager;

    .line 146
    .local v8, "mgr":Landroid/media/AudioManager;
    const/4 v0, 0x3

    invoke-virtual {v8, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v10

    .line 147
    .local v10, "streamVolume":I
    iget-object v0, p0, Lcom/gp/monolith/SoundPoolManager;->soundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/gp/monolith/SoundPoolManager;->handles:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v2, v10

    int-to-float v3, v10

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v9

    .line 148
    .local v9, "streamID":I
    const/4 v0, 0x3

    invoke-virtual {v8, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v7

    .line 149
    .local v7, "maxvolume":I
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v7, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 150
    iget-object v0, p0, Lcom/gp/monolith/SoundPoolManager;->streamIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .end local v7    # "maxvolume":I
    .end local v8    # "mgr":Landroid/media/AudioManager;
    .end local v9    # "streamID":I
    .end local v10    # "streamVolume":I
    :cond_0
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public resumeMusic(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 175
    iget-object v0, p0, Lcom/gp/monolith/SoundPoolManager;->musicPlayer:Landroid/media/JetPlayer;

    invoke-virtual {v0}, Landroid/media/JetPlayer;->play()Z

    .line 176
    return-void
.end method

.method public startMusic(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 162
    iget-object v0, p0, Lcom/gp/monolith/SoundPoolManager;->musicPlayer:Landroid/media/JetPlayer;

    invoke-virtual {v0}, Landroid/media/JetPlayer;->play()Z

    .line 164
    return-void
.end method

.method public startSound()V
    .locals 7

    .prologue
    .line 61
    new-instance v3, Landroid/media/SoundPool;

    iget-object v4, p0, Lcom/gp/monolith/SoundPoolManager;->sounds:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    const/4 v5, 0x3

    const/16 v6, 0x64

    invoke-direct {v3, v4, v5, v6}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v3, p0, Lcom/gp/monolith/SoundPoolManager;->soundPool:Landroid/media/SoundPool;

    .line 62
    iget-object v3, p0, Lcom/gp/monolith/SoundPoolManager;->sounds:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 64
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 72
    return-void

    .line 66
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 67
    .local v2, "soundid":I
    iget-object v3, p0, Lcom/gp/monolith/SoundPoolManager;->soundPool:Landroid/media/SoundPool;

    iget-object v4, p0, Lcom/gp/monolith/SoundPoolManager;->context:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v2, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    .line 68
    .local v1, "soundhandle":I
    iget-object v3, p0, Lcom/gp/monolith/SoundPoolManager;->handles:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public stopMusic(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 167
    iget-object v0, p0, Lcom/gp/monolith/SoundPoolManager;->musicPlayer:Landroid/media/JetPlayer;

    invoke-virtual {v0}, Landroid/media/JetPlayer;->pause()Z

    .line 168
    return-void
.end method

.method public stopSound()V
    .locals 5

    .prologue
    .line 77
    :try_start_0
    iget-object v2, p0, Lcom/gp/monolith/SoundPoolManager;->sounds:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 79
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 99
    :try_start_1
    iget-object v2, p0, Lcom/gp/monolith/SoundPoolManager;->musicPlayer:Landroid/media/JetPlayer;

    invoke-virtual {v2}, Landroid/media/JetPlayer;->pause()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 107
    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/gp/monolith/SoundPoolManager;->musicPlayer:Landroid/media/JetPlayer;

    invoke-virtual {v2}, Landroid/media/JetPlayer;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 115
    :goto_2
    :try_start_3
    iget-object v2, p0, Lcom/gp/monolith/SoundPoolManager;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v2}, Landroid/media/SoundPool;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 125
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_3
    return-void

    .line 82
    .restart local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    :try_start_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 84
    .local v1, "soundid":I
    iget-object v3, p0, Lcom/gp/monolith/SoundPoolManager;->soundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/gp/monolith/SoundPoolManager;->handles:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/media/SoundPool;->pause(I)V

    .line 85
    iget-object v3, p0, Lcom/gp/monolith/SoundPoolManager;->soundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/gp/monolith/SoundPoolManager;->handles:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/media/SoundPool;->stop(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 91
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v1    # "soundid":I
    :catch_0
    move-exception v2

    .line 99
    :try_start_5
    iget-object v2, p0, Lcom/gp/monolith/SoundPoolManager;->musicPlayer:Landroid/media/JetPlayer;

    invoke-virtual {v2}, Landroid/media/JetPlayer;->pause()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9

    .line 107
    :goto_4
    :try_start_6
    iget-object v2, p0, Lcom/gp/monolith/SoundPoolManager;->musicPlayer:Landroid/media/JetPlayer;

    invoke-virtual {v2}, Landroid/media/JetPlayer;->release()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    .line 115
    :goto_5
    :try_start_7
    iget-object v2, p0, Lcom/gp/monolith/SoundPoolManager;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v2}, Landroid/media/SoundPool;->release()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    .line 117
    :catch_1
    move-exception v2

    goto :goto_3

    .line 96
    :catchall_0
    move-exception v2

    .line 99
    :try_start_8
    iget-object v3, p0, Lcom/gp/monolith/SoundPoolManager;->musicPlayer:Landroid/media/JetPlayer;

    invoke-virtual {v3}, Landroid/media/JetPlayer;->pause()Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 107
    :goto_6
    :try_start_9
    iget-object v3, p0, Lcom/gp/monolith/SoundPoolManager;->musicPlayer:Landroid/media/JetPlayer;

    invoke-virtual {v3}, Landroid/media/JetPlayer;->release()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 115
    :goto_7
    :try_start_a
    iget-object v3, p0, Lcom/gp/monolith/SoundPoolManager;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v3}, Landroid/media/SoundPool;->release()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    .line 122
    :goto_8
    throw v2

    .line 117
    .restart local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :catch_2
    move-exception v2

    goto :goto_3

    .line 109
    :catch_3
    move-exception v2

    goto :goto_2

    .line 101
    :catch_4
    move-exception v2

    goto :goto_1

    .line 117
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :catch_5
    move-exception v3

    goto :goto_8

    .line 109
    :catch_6
    move-exception v3

    goto :goto_7

    .line 101
    :catch_7
    move-exception v3

    goto :goto_6

    .line 109
    :catch_8
    move-exception v2

    goto :goto_5

    .line 101
    :catch_9
    move-exception v2

    goto :goto_4
.end method

.method public stopSound(I)V
    .locals 0
    .param p1, "resid"    # I

    .prologue
    .line 138
    return-void
.end method
