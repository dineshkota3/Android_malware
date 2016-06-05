.class public Lcom/masshabit/common/ProfileManagerBase;
.super Ljava/lang/Object;
.source "ProfileManagerBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/masshabit/common/ProfileManagerBase$PlayerProfile;
    }
.end annotation


# static fields
.field public static final NUM_PROFILES:I = 0x3

.field public static final TAG:Ljava/lang/String; = "ProfileManagerBase"

.field protected static sInstance:Lcom/masshabit/common/ProfileManagerBase;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mProfileIndex:I

.field public mProfiles:[Lcom/masshabit/common/ProfileManagerBase$PlayerProfile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/masshabit/common/ProfileManagerBase;->sInstance:Lcom/masshabit/common/ProfileManagerBase;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x3

    const/4 v10, -0x1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-array v8, v11, [Lcom/masshabit/common/ProfileManagerBase$PlayerProfile;

    iput-object v8, p0, Lcom/masshabit/common/ProfileManagerBase;->mProfiles:[Lcom/masshabit/common/ProfileManagerBase$PlayerProfile;

    .line 32
    iput v10, p0, Lcom/masshabit/common/ProfileManagerBase;->mProfileIndex:I

    .line 58
    iput-object p1, p0, Lcom/masshabit/common/ProfileManagerBase;->mContext:Landroid/content/Context;

    .line 59
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v11, :cond_1

    .line 61
    iget-object v8, p0, Lcom/masshabit/common/ProfileManagerBase;->mProfiles:[Lcom/masshabit/common/ProfileManagerBase$PlayerProfile;

    invoke-virtual {p0}, Lcom/masshabit/common/ProfileManagerBase;->allocatePlayerProfile()Lcom/masshabit/common/ProfileManagerBase$PlayerProfile;

    move-result-object v9

    aput-object v9, v8, v4

    .line 64
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "profile_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v5

    .line 65
    .local v5, "in":Ljava/io/FileInputStream;
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v8, 0x100

    invoke-direct {v2, v8}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 66
    .local v2, "data":Ljava/lang/StringBuffer;
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v9, 0x100

    invoke-direct {v7, v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 67
    .local v7, "reader":Ljava/io/BufferedReader;
    const/16 v8, 0x100

    new-array v0, v8, [C

    .line 69
    .local v0, "buffer":[C
    :goto_1
    invoke-virtual {v7, v0}, Ljava/io/BufferedReader;->read([C)I

    move-result v1

    .local v1, "count":I
    if-eq v1, v10, :cond_0

    .line 71
    const/4 v8, 0x0

    invoke-virtual {v2, v0, v8, v1}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 78
    .end local v0    # "buffer":[C
    .end local v1    # "count":I
    .end local v2    # "data":Ljava/lang/StringBuffer;
    .end local v5    # "in":Ljava/io/FileInputStream;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v8

    .line 59
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 73
    .restart local v0    # "buffer":[C
    .restart local v1    # "count":I
    .restart local v2    # "data":Ljava/lang/StringBuffer;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :cond_0
    const-string v8, "ProfileManagerBase"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance v6, Lorg/json/JSONObject;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 75
    .local v6, "js":Lorg/json/JSONObject;
    iget-object v8, p0, Lcom/masshabit/common/ProfileManagerBase;->mProfiles:[Lcom/masshabit/common/ProfileManagerBase$PlayerProfile;

    aget-object v8, v8, v4

    invoke-virtual {v8, v6}, Lcom/masshabit/common/ProfileManagerBase$PlayerProfile;->load(Lorg/json/JSONObject;)V

    .line 76
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_2

    .line 83
    .end local v0    # "buffer":[C
    .end local v1    # "count":I
    .end local v2    # "data":Ljava/lang/StringBuffer;
    .end local v5    # "in":Ljava/io/FileInputStream;
    .end local v6    # "js":Lorg/json/JSONObject;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v8

    move-object v3, v8

    .line 86
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 88
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v8

    move-object v3, v8

    .line 91
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 94
    .end local v3    # "e":Lorg/json/JSONException;
    :cond_1
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/masshabit/common/ProfileManagerBase;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    const-string v0, "Must override this method"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public static destroy()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-object v0, Lcom/masshabit/common/ProfileManagerBase;->sInstance:Lcom/masshabit/common/ProfileManagerBase;

    .line 54
    return-void
.end method

.method public static instance()Lcom/masshabit/common/ProfileManagerBase;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/masshabit/common/ProfileManagerBase;->sInstance:Lcom/masshabit/common/ProfileManagerBase;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 48
    sget-object v0, Lcom/masshabit/common/ProfileManagerBase;->sInstance:Lcom/masshabit/common/ProfileManagerBase;

    return-object v0

    .line 47
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected allocatePlayerProfile()Lcom/masshabit/common/ProfileManagerBase$PlayerProfile;
    .locals 2

    .prologue
    .line 97
    const-string v0, "Must implement allocatePlayerProfile()"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentProfile()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/masshabit/common/ProfileManagerBase;->mProfileIndex:I

    return v0
.end method

.method public getProfile()Lcom/masshabit/common/ProfileManagerBase$PlayerProfile;
    .locals 2

    .prologue
    .line 112
    iget v0, p0, Lcom/masshabit/common/ProfileManagerBase;->mProfileIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 113
    iget-object v0, p0, Lcom/masshabit/common/ProfileManagerBase;->mProfiles:[Lcom/masshabit/common/ProfileManagerBase$PlayerProfile;

    iget v1, p0, Lcom/masshabit/common/ProfileManagerBase;->mProfileIndex:I

    aget-object v0, v0, v1

    return-object v0

    .line 112
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public saveProfile()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 118
    iget v3, p0, Lcom/masshabit/common/ProfileManagerBase;->mProfileIndex:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 122
    :try_start_0
    iget-object v3, p0, Lcom/masshabit/common/ProfileManagerBase;->mContext:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "profile_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/masshabit/common/ProfileManagerBase;->mProfileIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 123
    .local v2, "out":Ljava/io/FileOutputStream;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 124
    .local v1, "js":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/masshabit/common/ProfileManagerBase;->mProfiles:[Lcom/masshabit/common/ProfileManagerBase$PlayerProfile;

    iget v4, p0, Lcom/masshabit/common/ProfileManagerBase;->mProfileIndex:I

    aget-object v3, v3, v4

    invoke-virtual {v3, v1}, Lcom/masshabit/common/ProfileManagerBase$PlayerProfile;->save(Lorg/json/JSONObject;)V

    .line 125
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 126
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 139
    .end local v1    # "js":Lorg/json/JSONObject;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    :goto_1
    return-void

    :cond_0
    move v3, v5

    .line 118
    goto :goto_0

    .line 128
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 131
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 133
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 136
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public setCurrentProfile(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 101
    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 102
    iput p1, p0, Lcom/masshabit/common/ProfileManagerBase;->mProfileIndex:I

    .line 103
    return-void

    .line 101
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
