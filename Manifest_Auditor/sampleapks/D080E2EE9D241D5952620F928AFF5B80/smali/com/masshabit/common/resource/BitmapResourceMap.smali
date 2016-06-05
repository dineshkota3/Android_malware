.class public Lcom/masshabit/common/resource/BitmapResourceMap;
.super Lcom/masshabit/common/resource/ResourceMap;
.source "BitmapResourceMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/masshabit/common/resource/ResourceMap",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "initialCapacity"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/masshabit/common/resource/ResourceMap;-><init>(I)V

    .line 21
    return-void
.end method


# virtual methods
.method public debugDump()V
    .locals 7

    .prologue
    const-string v6, ", "

    .line 67
    iget-object v2, p0, Lcom/masshabit/common/resource/BitmapResourceMap;->mIds:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 69
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v3, "ResourceMap"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/masshabit/common/resource/BitmapResourceMap;->mData:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 71
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 3

    .prologue
    .line 56
    iget-object v2, p0, Lcom/masshabit/common/resource/BitmapResourceMap;->mData:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 58
    .local v0, "b":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 60
    .end local v0    # "b":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v2, p0, Lcom/masshabit/common/resource/BitmapResourceMap;->mData:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 61
    iget-object v2, p0, Lcom/masshabit/common/resource/BitmapResourceMap;->mIds:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 62
    return-void
.end method

.method public load(Ljava/lang/String;)I
    .locals 7
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 27
    .local v4, "normalizedPath":Ljava/lang/String;
    iget-object v5, p0, Lcom/masshabit/common/resource/BitmapResourceMap;->mIds:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 30
    iget-object v5, p0, Lcom/masshabit/common/resource/BitmapResourceMap;->mIds:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/masshabit/common/resource/BitmapResourceMap;
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 50
    :goto_0
    return v5

    .line 35
    .restart local p0    # "this":Lcom/masshabit/common/resource/BitmapResourceMap;
    :cond_0
    sget-object v5, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    iget-object v5, v5, Lcom/masshabit/common/Environment;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 39
    .local v0, "am":Landroid/content/res/AssetManager;
    :try_start_0
    invoke-virtual {v0, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 40
    .local v3, "is":Ljava/io/InputStream;
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 41
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    iget-object v5, p0, Lcom/masshabit/common/resource/BitmapResourceMap;->mIds:Ljava/util/HashMap;

    iget v6, p0, Lcom/masshabit/common/resource/BitmapResourceMap;->mNextId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v5, p0, Lcom/masshabit/common/resource/BitmapResourceMap;->mData:Ljava/util/HashMap;

    iget v6, p0, Lcom/masshabit/common/resource/BitmapResourceMap;->mNextId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget v5, p0, Lcom/masshabit/common/resource/BitmapResourceMap;->mNextId:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/masshabit/common/resource/BitmapResourceMap;->mNextId:I

    goto :goto_0

    .line 43
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 45
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 46
    const/4 v5, -0x1

    goto :goto_0
.end method
