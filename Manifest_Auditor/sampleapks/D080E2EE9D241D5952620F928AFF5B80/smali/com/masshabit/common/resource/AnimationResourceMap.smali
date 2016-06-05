.class public Lcom/masshabit/common/resource/AnimationResourceMap;
.super Lcom/masshabit/common/resource/ResourceMap;
.source "AnimationResourceMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/masshabit/common/resource/ResourceMap",
        "<",
        "Lcom/masshabit/common/resource/Animation;",
        ">;"
    }
.end annotation


# instance fields
.field public mBitmaps:Lcom/masshabit/common/resource/BitmapResourceMap;


# direct methods
.method public constructor <init>(ILcom/masshabit/common/resource/BitmapResourceMap;)V
    .locals 0
    .param p1, "initialCapacity"    # I
    .param p2, "bitmaps"    # Lcom/masshabit/common/resource/BitmapResourceMap;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/masshabit/common/resource/ResourceMap;-><init>(I)V

    .line 11
    iput-object p2, p0, Lcom/masshabit/common/resource/AnimationResourceMap;->mBitmaps:Lcom/masshabit/common/resource/BitmapResourceMap;

    .line 12
    return-void
.end method


# virtual methods
.method public load(Ljava/lang/String;)I
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 18
    .local v1, "normalizedPath":Ljava/lang/String;
    iget-object v2, p0, Lcom/masshabit/common/resource/AnimationResourceMap;->mIds:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 21
    iget-object v2, p0, Lcom/masshabit/common/resource/AnimationResourceMap;->mIds:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/masshabit/common/resource/AnimationResourceMap;
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 31
    :goto_0
    return v2

    .line 26
    .restart local p0    # "this":Lcom/masshabit/common/resource/AnimationResourceMap;
    :cond_0
    iget-object v2, p0, Lcom/masshabit/common/resource/AnimationResourceMap;->mBitmaps:Lcom/masshabit/common/resource/BitmapResourceMap;

    invoke-static {v1, v2}, Lcom/masshabit/common/resource/AnimationLoader;->load(Ljava/lang/String;Lcom/masshabit/common/resource/BitmapResourceMap;)Lcom/masshabit/common/resource/Animation;

    move-result-object v0

    .line 27
    .local v0, "anim":Lcom/masshabit/common/resource/Animation;
    if-nez v0, :cond_1

    .line 28
    const/4 v2, -0x1

    goto :goto_0

    .line 29
    :cond_1
    iget-object v2, p0, Lcom/masshabit/common/resource/AnimationResourceMap;->mIds:Ljava/util/HashMap;

    iget v3, p0, Lcom/masshabit/common/resource/AnimationResourceMap;->mNextId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v2, p0, Lcom/masshabit/common/resource/AnimationResourceMap;->mData:Ljava/util/HashMap;

    iget v3, p0, Lcom/masshabit/common/resource/AnimationResourceMap;->mNextId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget v2, p0, Lcom/masshabit/common/resource/AnimationResourceMap;->mNextId:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/masshabit/common/resource/AnimationResourceMap;->mNextId:I

    goto :goto_0
.end method
