.class public Lcom/masshabit/common/resource/AnimationLoader;
.super Ljava/lang/Object;
.source "AnimationLoader.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AnimationLoader"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static load(Ljava/lang/String;Lcom/masshabit/common/resource/BitmapResourceMap;)Lcom/masshabit/common/resource/Animation;
    .locals 10
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "bitmaps"    # Lcom/masshabit/common/resource/BitmapResourceMap;

    .prologue
    const/16 v8, 0x10

    .line 24
    sget-object v7, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    iget-object v7, v7, Lcom/masshabit/common/Environment;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v7}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 25
    .local v0, "am":Landroid/content/res/AssetManager;
    new-instance v1, Lcom/masshabit/common/resource/Animation;

    invoke-direct {v1}, Lcom/masshabit/common/resource/Animation;-><init>()V

    .line 26
    .local v1, "anim":Lcom/masshabit/common/resource/Animation;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7, v8}, Ljava/util/HashMap;-><init>(I)V

    iput-object v7, v1, Lcom/masshabit/common/resource/Animation;->mIndices:Ljava/util/HashMap;

    .line 27
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 32
    .local v6, "tracks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/masshabit/common/resource/Animation$Track;>;"
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 33
    .local v3, "in":Ljava/io/InputStream;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v8, 0x200

    invoke-direct {v4, v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 36
    .local v4, "reader":Ljava/io/BufferedReader;
    :goto_0
    invoke-static {v4, p1}, Lcom/masshabit/common/resource/AnimationLoader;->loadTrack(Ljava/io/BufferedReader;Lcom/masshabit/common/resource/BitmapResourceMap;)Lcom/masshabit/common/resource/Animation$Track;

    move-result-object v5

    .line 37
    .local v5, "track":Lcom/masshabit/common/resource/Animation$Track;
    if-nez v5, :cond_0

    .line 42
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    const-string v7, "Animations cannot have zero tracks!"

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_1

    const/4 v8, 0x1

    :goto_1
    invoke-static {v7, v8}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 51
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Lcom/masshabit/common/resource/Animation$Track;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "path":Ljava/lang/String;
    check-cast p0, [Lcom/masshabit/common/resource/Animation$Track;

    iput-object p0, v1, Lcom/masshabit/common/resource/Animation;->mTracks:[Lcom/masshabit/common/resource/Animation$Track;

    move-object v7, v1

    .line 52
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "track":Lcom/masshabit/common/resource/Animation$Track;
    :goto_2
    return-object v7

    .line 39
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "track":Lcom/masshabit/common/resource/Animation$Track;
    .restart local p0    # "path":Ljava/lang/String;
    :cond_0
    :try_start_1
    iget-object v7, v1, Lcom/masshabit/common/resource/Animation;->mIndices:Ljava/util/HashMap;

    iget-object v8, v5, Lcom/masshabit/common/resource/Animation$Track;->mName:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 44
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "track":Lcom/masshabit/common/resource/Animation$Track;
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 46
    .local v2, "e1":Ljava/io/IOException;
    const-string v7, "AnimationLoader"

    const-string v8, "Error opening animation definition"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const/4 v7, 0x0

    goto :goto_2

    .line 50
    .end local v2    # "e1":Ljava/io/IOException;
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "track":Lcom/masshabit/common/resource/Animation$Track;
    :cond_1
    const/4 v8, 0x0

    goto :goto_1
.end method

.method protected static final loadTrack(Ljava/io/BufferedReader;Lcom/masshabit/common/resource/BitmapResourceMap;)Lcom/masshabit/common/resource/Animation$Track;
    .locals 10
    .param p0, "reader"    # Ljava/io/BufferedReader;
    .param p1, "bitmaps"    # Lcom/masshabit/common/resource/BitmapResourceMap;

    .prologue
    .line 57
    new-instance v6, Lcom/masshabit/common/resource/Animation$Track;

    invoke-direct {v6}, Lcom/masshabit/common/resource/Animation$Track;-><init>()V

    .line 61
    .local v6, "track":Lcom/masshabit/common/resource/Animation$Track;
    :try_start_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "line":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 67
    :cond_0
    if-nez v0, :cond_1

    .line 68
    const/4 p0, 0x0

    .line 125
    .end local v0    # "line":Ljava/lang/String;
    .end local p0    # "reader":Ljava/io/BufferedReader;
    .end local p1    # "bitmaps":Lcom/masshabit/common/resource/BitmapResourceMap;
    :goto_1
    return-object p0

    .line 69
    .restart local v0    # "line":Ljava/lang/String;
    .restart local p0    # "reader":Ljava/io/BufferedReader;
    .restart local p1    # "bitmaps":Lcom/masshabit/common/resource/BitmapResourceMap;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "line":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "keyVal":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "track"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 73
    const/4 v1, 0x1

    aget-object v0, v0, v1

    .end local v0    # "keyVal":[Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/masshabit/common/resource/Animation$Track;->mName:Ljava/lang/String;

    .line 75
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "line":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 77
    const/4 p0, 0x0

    goto :goto_1

    .line 78
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 80
    .end local v0    # "line":Ljava/lang/String;
    .local v1, "line":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "keyVal":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "loop"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 82
    const/4 v2, 0x1

    aget-object v0, v0, v2

    .end local v0    # "keyVal":[Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v6, Lcom/masshabit/common/resource/Animation$Track;->mLoop:Z

    .line 84
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "format":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 86
    const/4 p0, 0x0

    goto :goto_1

    .line 87
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 89
    .end local v0    # "format":Ljava/lang/String;
    .local v4, "format":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0x10

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 90
    .local v0, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    new-instance v3, Ljava/util/ArrayList;

    const/16 v2, 0x10

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 92
    .local v3, "durations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :goto_2
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 94
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 96
    .end local v1    # "line":Ljava/lang/String;
    .local v5, "line":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object p0, v5

    .line 109
    .end local v5    # "line":Ljava/lang/String;
    .local p0, "line":Ljava/lang/String;
    :goto_3
    const-string p0, "Animations cannot have zero frames!"

    .end local p0    # "line":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    .end local p1    # "bitmaps":Lcom/masshabit/common/resource/BitmapResourceMap;
    if-lez p1, :cond_6

    const/4 p1, 0x1

    :goto_4
    invoke-static {p0, p1}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 111
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Landroid/graphics/Bitmap;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/graphics/Bitmap;

    iput-object p0, v6, Lcom/masshabit/common/resource/Animation$Track;->mBitmaps:[Landroid/graphics/Bitmap;

    .line 112
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [J

    iput-object p0, v6, Lcom/masshabit/common/resource/Animation$Track;->mDurations:[J

    .line 113
    const/4 p0, 0x0

    iput p0, v6, Lcom/masshabit/common/resource/Animation$Track;->mDuration:I

    .line 114
    const/4 p0, 0x0

    .end local v0    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    .end local v4    # "format":Ljava/lang/String;
    .local p0, "i":I
    :goto_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p0, p1, :cond_7

    .line 116
    iget-object v0, v6, Lcom/masshabit/common/resource/Animation$Track;->mDurations:[J

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    aput-wide v1, v0, p0

    .line 117
    iget p1, v6, Lcom/masshabit/common/resource/Animation$Track;->mDuration:I

    int-to-long v0, p1

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v0, v4

    long-to-int p1, v0

    iput p1, v6, Lcom/masshabit/common/resource/Animation$Track;->mDuration:I

    .line 114
    add-int/lit8 p0, p0, 0x1

    goto :goto_5

    .line 101
    .restart local v0    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    .restart local v4    # "format":Ljava/lang/String;
    .restart local v5    # "line":Ljava/lang/String;
    .local p0, "reader":Ljava/io/BufferedReader;
    .restart local p1    # "bitmaps":Lcom/masshabit/common/resource/BitmapResourceMap;
    :cond_4
    const-string v1, ","

    invoke-virtual {v5, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "parts":[Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x0

    aget-object v8, v1, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v7

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/masshabit/common/resource/BitmapResourceMap;->load(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/masshabit/common/resource/BitmapResourceMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    const/4 v2, 0x1

    aget-object v1, v1, v2

    .end local v1    # "parts":[Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 105
    .local v1, "duration":J
    const-string v7, "Frame duration cannot be zero"

    const-wide/16 v8, 0x0

    cmp-long v8, v1, v8

    if-lez v8, :cond_5

    const/4 v8, 0x1

    :goto_6
    invoke-static {v7, v8}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 106
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .end local v1    # "duration":J
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v5

    .line 107
    .end local v5    # "line":Ljava/lang/String;
    .local v1, "line":Ljava/lang/String;
    goto/16 :goto_2

    .line 105
    .local v1, "duration":J
    .restart local v5    # "line":Ljava/lang/String;
    :cond_5
    const/4 v8, 0x0

    goto :goto_6

    .line 109
    .end local v1    # "duration":J
    .end local v5    # "line":Ljava/lang/String;
    .end local p0    # "reader":Ljava/io/BufferedReader;
    .end local p1    # "bitmaps":Lcom/masshabit/common/resource/BitmapResourceMap;
    :cond_6
    const/4 p1, 0x0

    goto/16 :goto_4

    .line 120
    .end local v0    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    .end local v3    # "durations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v4    # "format":Ljava/lang/String;
    :catch_0
    move-exception p0

    .line 122
    .local p0, "e":Ljava/io/IOException;
    const-string p0, "AnimationLoader"

    .end local p0    # "e":Ljava/io/IOException;
    const-string p1, "Error parsing animation definition"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 p0, 0x0

    goto/16 :goto_1

    .restart local v3    # "durations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p0, "i":I
    :cond_7
    move-object p0, v6

    .line 125
    goto/16 :goto_1

    .restart local v0    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    .local v1, "line":Ljava/lang/String;
    .restart local v4    # "format":Ljava/lang/String;
    .local p0, "reader":Ljava/io/BufferedReader;
    .restart local p1    # "bitmaps":Lcom/masshabit/common/resource/BitmapResourceMap;
    :cond_8
    move-object p0, v1

    .end local v1    # "line":Ljava/lang/String;
    .local p0, "line":Ljava/lang/String;
    goto/16 :goto_3
.end method
