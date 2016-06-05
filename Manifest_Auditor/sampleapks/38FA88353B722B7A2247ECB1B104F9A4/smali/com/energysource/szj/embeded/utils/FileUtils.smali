.class public Lcom/energysource/szj/embeded/utils/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FileUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkJarFile(Ljava/lang/String;Lcom/energysource/szj/embeded/ModuleEntity;Ljava/lang/String;)Z
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "me"    # Lcom/energysource/szj/embeded/ModuleEntity;
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 177
    const/4 v2, 0x0

    .line 178
    .local v2, "flag":Z
    const-string v3, ""

    .line 180
    .local v3, "md5":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/data/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/loadjar/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jar"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/energysource/szj/embeded/utils/FileUtils;->jarEncoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 181
    if-eqz p1, :cond_0

    if-nez v3, :cond_1

    .line 182
    :cond_0
    const-string v4, "FileUtils.java"

    const-string v5, "me==null or md5==null"

    invoke-static {v4, v5}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const/4 v4, 0x0

    .line 200
    :goto_0
    return v4

    .line 185
    :cond_1
    invoke-virtual {p1}, Lcom/energysource/szj/embeded/ModuleEntity;->getVerify()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_2

    .line 186
    const/4 v2, 0x1

    :cond_2
    :goto_1
    move v4, v2

    .line 200
    goto :goto_0

    .line 188
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 189
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "FileUtils.java"

    const-string v5, "checkJarFile"

    invoke-static {v4, v5, v0}, Lcom/energysource/szj/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 191
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/data/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/loadjar/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jar"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/energysource/szj/embeded/utils/FileUtils;->jarEncoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 192
    invoke-virtual {p1}, Lcom/energysource/szj/embeded/ModuleEntity;->getVerify()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    if-eqz v4, :cond_2

    .line 193
    const/4 v2, 0x1

    goto :goto_1

    .line 195
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 196
    .local v1, "e1":Ljava/lang/Exception;
    const-string v4, "FileUtils.java"

    const-string v5, "checkJarFile"

    invoke-static {v4, v5, v1}, Lcom/energysource/szj/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static createDire(Ljava/lang/String;)Z
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 227
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 228
    .local v2, "file":Ljava/io/File;
    const/4 v0, 0x0

    .line 230
    .local v0, "c":Z
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 231
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 238
    :goto_0
    return v0

    .line 233
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 235
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 236
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "FileUtils.java"

    const-string v4, "createDireException"

    invoke-static {v3, v4, v1}, Lcom/energysource/szj/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static deleteDirectory(Ljava/lang/String;)Z
    .locals 7
    .param p0, "dir"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 250
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 251
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 253
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 255
    .local v0, "dirFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_2

    .line 256
    :cond_1
    const-string v4, "newZip"

    const-string v5, "===don\'t exist=="

    invoke-static {v4, v5}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v6

    .line 284
    :goto_0
    return v4

    .line 259
    :cond_2
    const/4 v2, 0x1

    .line 261
    .local v2, "flag":Z
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 262
    .local v1, "files":[Ljava/io/File;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_3

    .line 264
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 265
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/energysource/szj/embeded/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z

    move-result v2

    .line 266
    if-nez v2, :cond_5

    .line 278
    :cond_3
    if-nez v2, :cond_6

    move v4, v6

    .line 279
    goto :goto_0

    .line 272
    :cond_4
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/energysource/szj/embeded/utils/FileUtils;->deleteDirectory(Ljava/lang/String;)Z

    move-result v2

    .line 273
    if-eqz v2, :cond_3

    .line 262
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 281
    :cond_6
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 282
    const/4 v4, 0x1

    goto :goto_0

    :cond_7
    move v4, v6

    .line 284
    goto :goto_0
.end method

.method public static deleteFile(Ljava/lang/String;)Z
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 296
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 297
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 299
    const/4 v1, 0x1

    .line 301
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static existsFile(Ljava/io/File;)Z
    .locals 2
    .param p0, "f"    # Ljava/io/File;

    .prologue
    .line 32
    const/4 v0, 0x0

    .line 33
    .local v0, "exists":Z
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    const/4 v0, 0x1

    .line 36
    :cond_0
    return v0
.end method

.method public static jarEncoder(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 47
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 50
    .local v0, "br":Ljava/io/BufferedInputStream;
    const/4 v5, 0x0

    .line 51
    .local v5, "messageDigest":Ljava/security/MessageDigest;
    const-string v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 53
    const/16 v7, 0x400

    new-array v1, v7, [B

    .line 55
    .local v1, "buf":[B
    invoke-virtual {v0, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6

    .line 56
    .local v6, "rcount":I
    :goto_0
    if-lez v6, :cond_0

    .line 57
    invoke-virtual {v5, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 58
    invoke-virtual {v0, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 63
    .local v2, "byteArray":[B
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 64
    .local v4, "md5StrBuff":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v7, v2

    if-ge v3, v7, :cond_2

    .line 65
    aget-byte v7, v2, v3

    and-int/lit16 v7, v7, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 66
    const-string v7, "0"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    aget-byte v8, v2, v3

    and-int/lit16 v8, v8, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 69
    :cond_1
    aget-byte v7, v2, v3

    and-int/lit16 v7, v7, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 72
    .end local v0    # "br":Ljava/io/BufferedInputStream;
    .end local v1    # "buf":[B
    .end local v2    # "byteArray":[B
    .end local v3    # "i":I
    .end local v4    # "md5StrBuff":Ljava/lang/StringBuffer;
    .end local v5    # "messageDigest":Ljava/security/MessageDigest;
    .end local v6    # "rcount":I
    :catch_0
    move-exception v7

    .line 74
    const-string v7, ""

    :goto_3
    return-object v7

    .line 71
    .restart local v0    # "br":Ljava/io/BufferedInputStream;
    .restart local v1    # "buf":[B
    .restart local v2    # "byteArray":[B
    .restart local v3    # "i":I
    .restart local v4    # "md5StrBuff":Ljava/lang/StringBuffer;
    .restart local v5    # "messageDigest":Ljava/security/MessageDigest;
    .restart local v6    # "rcount":I
    :cond_2
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    goto :goto_3
.end method

.method public static readImageResource(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "f"    # Ljava/io/File;

    .prologue
    .line 210
    const/4 v0, 0x0

    .line 212
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 213
    .local v2, "in":Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 217
    .end local v2    # "in":Ljava/io/InputStream;
    :goto_0
    return-object v0

    .line 214
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 215
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "FileUtils.java"

    const-string v4, "readImageResourceException:"

    invoke-static {v3, v4, v1}, Lcom/energysource/szj/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static readXml(Ljava/io/File;)Lcom/energysource/szj/embeded/ModuleEntity;
    .locals 10
    .param p0, "f"    # Ljava/io/File;

    .prologue
    .line 84
    const/4 v4, 0x0

    .line 86
    .local v4, "me":Lcom/energysource/szj/embeded/ModuleEntity;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 87
    .local v2, "in":Ljava/io/InputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 88
    .local v6, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v8, "utf-8"

    invoke-interface {v6, v2, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lcom/energysource/szj/embeded/SZJServiceInstance;->getInstance()Lcom/energysource/szj/embeded/SZJServiceInstance;

    move-result-object v3

    .line 90
    .local v3, "instance":Lcom/energysource/szj/embeded/SZJServiceInstance;
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 91
    .local v1, "event":I
    const/4 v7, 0x0

    .local v7, "tag":Ljava/lang/String;
    move-object v5, v4

    .line 93
    .end local v4    # "me":Lcom/energysource/szj/embeded/ModuleEntity;
    .local v5, "me":Lcom/energysource/szj/embeded/ModuleEntity;
    :goto_0
    const/4 v8, 0x1

    if-eq v1, v8, :cond_6

    .line 94
    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_1
    move-object v4, v5

    .line 112
    .end local v5    # "me":Lcom/energysource/szj/embeded/ModuleEntity;
    .restart local v4    # "me":Lcom/energysource/szj/embeded/ModuleEntity;
    :goto_2
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    move-object v5, v4

    .end local v4    # "me":Lcom/energysource/szj/embeded/ModuleEntity;
    .restart local v5    # "me":Lcom/energysource/szj/embeded/ModuleEntity;
    goto :goto_0

    .line 96
    :pswitch_0
    :try_start_1
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 97
    const-string v8, "version"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 98
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/energysource/szj/embeded/SZJServiceInstance;->setOldVersion(Ljava/lang/String;)V

    move-object v4, v5

    .end local v5    # "me":Lcom/energysource/szj/embeded/ModuleEntity;
    .restart local v4    # "me":Lcom/energysource/szj/embeded/ModuleEntity;
    goto :goto_2

    .line 99
    .end local v4    # "me":Lcom/energysource/szj/embeded/ModuleEntity;
    .restart local v5    # "me":Lcom/energysource/szj/embeded/ModuleEntity;
    :cond_1
    const-string v8, "module"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 100
    new-instance v4, Lcom/energysource/szj/embeded/ModuleEntity;

    invoke-direct {v4}, Lcom/energysource/szj/embeded/ModuleEntity;-><init>()V

    .end local v5    # "me":Lcom/energysource/szj/embeded/ModuleEntity;
    .restart local v4    # "me":Lcom/energysource/szj/embeded/ModuleEntity;
    goto :goto_2

    .line 101
    .end local v4    # "me":Lcom/energysource/szj/embeded/ModuleEntity;
    .restart local v5    # "me":Lcom/energysource/szj/embeded/ModuleEntity;
    :cond_2
    const-string v8, "name"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 102
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/energysource/szj/embeded/ModuleEntity;->setName(Ljava/lang/String;)V

    move-object v4, v5

    .end local v5    # "me":Lcom/energysource/szj/embeded/ModuleEntity;
    .restart local v4    # "me":Lcom/energysource/szj/embeded/ModuleEntity;
    goto :goto_2

    .line 103
    .end local v4    # "me":Lcom/energysource/szj/embeded/ModuleEntity;
    .restart local v5    # "me":Lcom/energysource/szj/embeded/ModuleEntity;
    :cond_3
    const-string v8, "size"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 104
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lcom/energysource/szj/embeded/ModuleEntity;->setSize(J)V

    move-object v4, v5

    .end local v5    # "me":Lcom/energysource/szj/embeded/ModuleEntity;
    .restart local v4    # "me":Lcom/energysource/szj/embeded/ModuleEntity;
    goto :goto_2

    .line 105
    .end local v4    # "me":Lcom/energysource/szj/embeded/ModuleEntity;
    .restart local v5    # "me":Lcom/energysource/szj/embeded/ModuleEntity;
    :cond_4
    const-string v8, "verify"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 106
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/energysource/szj/embeded/ModuleEntity;->setVerify(Ljava/lang/String;)V

    move-object v4, v5

    .end local v5    # "me":Lcom/energysource/szj/embeded/ModuleEntity;
    .restart local v4    # "me":Lcom/energysource/szj/embeded/ModuleEntity;
    goto :goto_2

    .line 107
    .end local v4    # "me":Lcom/energysource/szj/embeded/ModuleEntity;
    .restart local v5    # "me":Lcom/energysource/szj/embeded/ModuleEntity;
    :cond_5
    const-string v8, "loadpath"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 108
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/energysource/szj/embeded/ModuleEntity;->setLoadClassPath(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 115
    :catch_0
    move-exception v8

    move-object v0, v8

    move-object v4, v5

    .line 116
    .end local v1    # "event":I
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "instance":Lcom/energysource/szj/embeded/SZJServiceInstance;
    .end local v5    # "me":Lcom/energysource/szj/embeded/ModuleEntity;
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "tag":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v4    # "me":Lcom/energysource/szj/embeded/ModuleEntity;
    :goto_3
    const-string v8, "FileUtils.java"

    const-string v9, "readXmlException:"

    invoke-static {v8, v9, v0}, Lcom/energysource/szj/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    return-object v4

    .end local v4    # "me":Lcom/energysource/szj/embeded/ModuleEntity;
    .restart local v1    # "event":I
    .restart local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "instance":Lcom/energysource/szj/embeded/SZJServiceInstance;
    .restart local v5    # "me":Lcom/energysource/szj/embeded/ModuleEntity;
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "tag":Ljava/lang/String;
    :cond_6
    move-object v4, v5

    .line 117
    .end local v5    # "me":Lcom/energysource/szj/embeded/ModuleEntity;
    .restart local v4    # "me":Lcom/energysource/szj/embeded/ModuleEntity;
    goto :goto_4

    .line 115
    .end local v1    # "event":I
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "instance":Lcom/energysource/szj/embeded/SZJServiceInstance;
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "tag":Ljava/lang/String;
    :catch_1
    move-exception v8

    move-object v0, v8

    goto :goto_3

    .line 94
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public static readXmlByMap(Ljava/io/File;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 13
    .param p0, "f"    # Ljava/io/File;

    .prologue
    .line 128
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v11, 0x5

    invoke-direct {v0, v11}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 129
    .local v0, "chm":Ljava/util/concurrent/ConcurrentHashMap;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Lcom/energysource/szj/embeded/ModuleEntity;>;"
    const/4 v6, 0x0

    .line 132
    .local v6, "me":Lcom/energysource/szj/embeded/ModuleEntity;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 133
    .local v4, "in":Ljava/io/InputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .line 134
    .local v9, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v11, "utf-8"

    invoke-interface {v9, v4, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 135
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 136
    .local v2, "event":I
    const/4 v10, 0x0

    .local v10, "tag":Ljava/lang/String;
    move-object v7, v6

    .line 138
    .end local v6    # "me":Lcom/energysource/szj/embeded/ModuleEntity;
    .local v7, "me":Lcom/energysource/szj/embeded/ModuleEntity;
    :goto_0
    const/4 v11, 0x1

    if-eq v2, v11, :cond_6

    .line 139
    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_1
    move-object v6, v7

    .line 155
    .end local v7    # "me":Lcom/energysource/szj/embeded/ModuleEntity;
    .restart local v6    # "me":Lcom/energysource/szj/embeded/ModuleEntity;
    :goto_2
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    move-object v7, v6

    .end local v6    # "me":Lcom/energysource/szj/embeded/ModuleEntity;
    .restart local v7    # "me":Lcom/energysource/szj/embeded/ModuleEntity;
    goto :goto_0

    .line 141
    :pswitch_0
    :try_start_1
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 142
    const-string v11, "version"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    move-object v6, v7

    .end local v7    # "me":Lcom/energysource/szj/embeded/ModuleEntity;
    .restart local v6    # "me":Lcom/energysource/szj/embeded/ModuleEntity;
    goto :goto_2

    .line 143
    .end local v6    # "me":Lcom/energysource/szj/embeded/ModuleEntity;
    .restart local v7    # "me":Lcom/energysource/szj/embeded/ModuleEntity;
    :cond_1
    const-string v11, "module"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 144
    new-instance v6, Lcom/energysource/szj/embeded/ModuleEntity;

    invoke-direct {v6}, Lcom/energysource/szj/embeded/ModuleEntity;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 145
    .end local v7    # "me":Lcom/energysource/szj/embeded/ModuleEntity;
    .restart local v6    # "me":Lcom/energysource/szj/embeded/ModuleEntity;
    :try_start_2
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 162
    .end local v2    # "event":I
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "tag":Ljava/lang/String;
    :catch_0
    move-exception v11

    move-object v1, v11

    .line 163
    .local v1, "e":Ljava/lang/Exception;
    :goto_3
    const-string v11, "FileUtils.java"

    const-string v12, "readXmlException:"

    invoke-static {v11, v12, v1}, Lcom/energysource/szj/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    return-object v0

    .line 146
    .end local v6    # "me":Lcom/energysource/szj/embeded/ModuleEntity;
    .restart local v2    # "event":I
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v7    # "me":Lcom/energysource/szj/embeded/ModuleEntity;
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "tag":Ljava/lang/String;
    :cond_3
    :try_start_3
    const-string v11, "name"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 147
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/energysource/szj/embeded/ModuleEntity;->setName(Ljava/lang/String;)V

    move-object v6, v7

    .end local v7    # "me":Lcom/energysource/szj/embeded/ModuleEntity;
    .restart local v6    # "me":Lcom/energysource/szj/embeded/ModuleEntity;
    goto :goto_2

    .line 148
    .end local v6    # "me":Lcom/energysource/szj/embeded/ModuleEntity;
    .restart local v7    # "me":Lcom/energysource/szj/embeded/ModuleEntity;
    :cond_4
    const-string v11, "size"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 149
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-virtual {v7, v11, v12}, Lcom/energysource/szj/embeded/ModuleEntity;->setSize(J)V

    move-object v6, v7

    .end local v7    # "me":Lcom/energysource/szj/embeded/ModuleEntity;
    .restart local v6    # "me":Lcom/energysource/szj/embeded/ModuleEntity;
    goto :goto_2

    .line 150
    .end local v6    # "me":Lcom/energysource/szj/embeded/ModuleEntity;
    .restart local v7    # "me":Lcom/energysource/szj/embeded/ModuleEntity;
    :cond_5
    const-string v11, "verify"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 151
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/energysource/szj/embeded/ModuleEntity;->setVerify(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 162
    :catch_1
    move-exception v11

    move-object v1, v11

    move-object v6, v7

    .end local v7    # "me":Lcom/energysource/szj/embeded/ModuleEntity;
    .restart local v6    # "me":Lcom/energysource/szj/embeded/ModuleEntity;
    goto :goto_3

    .line 157
    .end local v6    # "me":Lcom/energysource/szj/embeded/ModuleEntity;
    .restart local v7    # "me":Lcom/energysource/szj/embeded/ModuleEntity;
    :cond_6
    const/4 v9, 0x0

    .line 158
    const/4 v6, 0x0

    .line 159
    .end local v7    # "me":Lcom/energysource/szj/embeded/ModuleEntity;
    .restart local v6    # "me":Lcom/energysource/szj/embeded/ModuleEntity;
    :try_start_4
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/energysource/szj/embeded/ModuleEntity;

    .line 160
    .local v8, "mo":Lcom/energysource/szj/embeded/ModuleEntity;
    invoke-virtual {v8}, Lcom/energysource/szj/embeded/ModuleEntity;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    .line 139
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
