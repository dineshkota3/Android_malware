.class public Lcom/masshabit/squibble/Profile;
.super Lcom/masshabit/common/ProfileManagerBase$PlayerProfile;
.source "Profile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/masshabit/squibble/Profile$CompletedLevel;
    }
.end annotation


# instance fields
.field public mLevels:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/masshabit/squibble/Profile$CompletedLevel;",
            ">;"
        }
    .end annotation
.end field

.field public mName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/masshabit/common/ProfileManagerBase$PlayerProfile;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/masshabit/squibble/Profile;->mLevels:Ljava/util/HashMap;

    .line 31
    return-void
.end method


# virtual methods
.method public isLevelComplete(Ljava/lang/String;)Z
    .locals 1
    .param p1, "levelKey"    # Ljava/lang/String;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/masshabit/squibble/Profile;->mLevels:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected load(Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "js"    # Lorg/json/JSONObject;

    .prologue
    .line 54
    :try_start_0
    const-string v5, "name"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/masshabit/squibble/Profile;->mName:Ljava/lang/String;

    .line 55
    const-string v5, "levels"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 56
    .local v4, "levels":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 58
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 59
    .local v1, "entry":Lorg/json/JSONObject;
    new-instance v3, Lcom/masshabit/squibble/Profile$CompletedLevel;

    const-string v5, "key"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "score"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-float v6, v6

    invoke-direct {v3, v5, v6}, Lcom/masshabit/squibble/Profile$CompletedLevel;-><init>(Ljava/lang/String;F)V

    .line 63
    .local v3, "level":Lcom/masshabit/squibble/Profile$CompletedLevel;
    iget-object v5, p0, Lcom/masshabit/squibble/Profile;->mLevels:Ljava/util/HashMap;

    iget-object v6, v3, Lcom/masshabit/squibble/Profile$CompletedLevel;->mLevelKey:Ljava/lang/String;

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    .end local v1    # "entry":Lorg/json/JSONObject;
    .end local v2    # "i":I
    .end local v3    # "level":Lcom/masshabit/squibble/Profile$CompletedLevel;
    .end local v4    # "levels":Lorg/json/JSONArray;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 69
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 71
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/masshabit/squibble/Profile;->mName:Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lcom/masshabit/squibble/Profile;->mLevels:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 37
    return-void
.end method

.method protected save(Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "js"    # Lorg/json/JSONObject;

    .prologue
    .line 79
    :try_start_0
    const-string v5, "name"

    iget-object v6, p0, Lcom/masshabit/squibble/Profile;->mName:Ljava/lang/String;

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 81
    .local v4, "levels":Lorg/json/JSONArray;
    iget-object v5, p0, Lcom/masshabit/squibble/Profile;->mLevels:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/masshabit/squibble/Profile$CompletedLevel;

    .line 83
    .local v3, "level":Lcom/masshabit/squibble/Profile$CompletedLevel;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 84
    .local v1, "entry":Lorg/json/JSONObject;
    const-string v5, "key"

    iget-object v6, v3, Lcom/masshabit/squibble/Profile$CompletedLevel;->mLevelKey:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    const-string v5, "score"

    iget v6, v3, Lcom/masshabit/squibble/Profile$CompletedLevel;->mScore:F

    float-to-double v6, v6

    invoke-virtual {v1, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 86
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    .end local v1    # "entry":Lorg/json/JSONObject;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "level":Lcom/masshabit/squibble/Profile$CompletedLevel;
    .end local v4    # "levels":Lorg/json/JSONArray;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 93
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 95
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-void

    .line 88
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "levels":Lorg/json/JSONArray;
    :cond_0
    :try_start_1
    const-string v5, "levels"

    invoke-virtual {p1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public setLevelComplete(Ljava/lang/String;F)V
    .locals 2
    .param p1, "levelKey"    # Ljava/lang/String;
    .param p2, "score"    # F

    .prologue
    .line 46
    iget-object v0, p0, Lcom/masshabit/squibble/Profile;->mLevels:Ljava/util/HashMap;

    new-instance v1, Lcom/masshabit/squibble/Profile$CompletedLevel;

    invoke-direct {v1, p1, p2}, Lcom/masshabit/squibble/Profile$CompletedLevel;-><init>(Ljava/lang/String;F)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    return-void
.end method
