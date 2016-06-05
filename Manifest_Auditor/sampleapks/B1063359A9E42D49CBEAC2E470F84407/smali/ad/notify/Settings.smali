.class public Lad/notify/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# static fields
.field public static DAY:I

.field public static HOUR:I

.field public static MINUTE:I

.field public static SECOND:I


# instance fields
.field public saved:Lad/notify/SettingsSet;

.field public smsFilters:Ljava/util/Vector;

.field public startSmsFilters:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/16 v0, 0x3e8

    sput v0, Lad/notify/Settings;->SECOND:I

    .line 39
    sget v0, Lad/notify/Settings;->SECOND:I

    mul-int/lit8 v0, v0, 0x3c

    sput v0, Lad/notify/Settings;->MINUTE:I

    .line 40
    sget v0, Lad/notify/Settings;->MINUTE:I

    mul-int/lit8 v0, v0, 0x3c

    sput v0, Lad/notify/Settings;->HOUR:I

    .line 42
    sget v0, Lad/notify/Settings;->HOUR:I

    mul-int/lit8 v0, v0, 0xc

    sput v0, Lad/notify/Settings;->DAY:I

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lad/notify/SettingsSet;

    invoke-direct {v0}, Lad/notify/SettingsSet;-><init>()V

    iput-object v0, p0, Lad/notify/Settings;->saved:Lad/notify/SettingsSet;

    .line 45
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lad/notify/Settings;->smsFilters:Ljava/util/Vector;

    .line 46
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lad/notify/Settings;->startSmsFilters:Ljava/util/Vector;

    .line 36
    return-void
.end method

.method public static deserialize([B)Ljava/lang/Object;
    .locals 5
    .param p0, "arr"    # [B

    .prologue
    const/4 v4, 0x0

    .line 129
    :try_start_0
    new-instance v2, Ljava/io/ObjectInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 130
    .local v2, "objectInputStream":Ljava/io/ObjectInputStream;
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 131
    .local v1, "object":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v3, v1

    .line 143
    .end local v1    # "object":Ljava/lang/Object;
    .end local v2    # "objectInputStream":Ljava/io/ObjectInputStream;
    :goto_0
    return-object v3

    .line 134
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 136
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    move-object v3, v4

    .line 137
    goto :goto_0

    .line 140
    .end local v0    # "ex":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 142
    .local v0, "ex":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 143
    goto :goto_0
.end method

.method public static getCurrentTime()Ljava/lang/String;
    .locals 2

    .prologue
    .line 202
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 203
    .local v0, "time":Landroid/text/format/Time;
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 204
    const-string v1, "%Y_%m_%d_%H_%M_%S"

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getImei(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 152
    :try_start_0
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-nez v1, :cond_0

    .line 156
    const-string v2, ""

    .line 166
    .end local v1    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :goto_0
    return-object v2

    .line 159
    .restart local v1    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_0

    .line 161
    .end local v1    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 163
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 166
    const-string v2, ""

    goto :goto_0
.end method

.method public static getSmsCenter(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 171
    const-string v0, ""

    return-object v0
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 178
    :try_start_0
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 179
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 180
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 182
    .local v4, "messageDigest":[B
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 183
    .local v2, "hexString":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v6, v4

    if-lt v3, v6, :cond_0

    .line 190
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 197
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v2    # "hexString":Ljava/lang/StringBuffer;
    .end local v3    # "i":I
    .end local v4    # "messageDigest":[B
    :goto_1
    return-object v6

    .line 185
    .restart local v0    # "digest":Ljava/security/MessageDigest;
    .restart local v2    # "hexString":Ljava/lang/StringBuffer;
    .restart local v3    # "i":I
    .restart local v4    # "messageDigest":[B
    :cond_0
    aget-byte v6, v4, v3

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 186
    .local v5, "tmp":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    const-string v6, "0"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 187
    :cond_1
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 192
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v2    # "hexString":Ljava/lang/StringBuffer;
    .end local v3    # "i":I
    .end local v4    # "messageDigest":[B
    .end local v5    # "tmp":Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 194
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 197
    const-string v6, ""

    goto :goto_1
.end method

.method public static serialize(Ljava/lang/Object;)[B
    .locals 5
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 108
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 112
    .local v1, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 113
    .local v3, "objectOutput":Ljava/io/ObjectOutput;
    invoke-interface {v3, p0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 114
    invoke-interface {v3}, Ljava/io/ObjectOutput;->close()V

    .line 115
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .local v0, "buffer":[B
    move-object v4, v0

    .line 121
    .end local v0    # "buffer":[B
    .end local v3    # "objectOutput":Ljava/io/ObjectOutput;
    :goto_0
    return-object v4

    .line 118
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 120
    .local v2, "ioe":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 121
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public load(Landroid/content/Context;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 50
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Settings::load() start"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 56
    :try_start_0
    const-string v4, "settings"

    invoke-virtual {p1, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 57
    .local v2, "fileInputStream":Ljava/io/FileInputStream;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v4

    new-array v0, v4, [B

    .line 58
    .local v0, "buffer":[B
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 59
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 60
    invoke-static {v0}, Lad/notify/Settings;->deserialize([B)Ljava/lang/Object;

    move-result-object v3

    .line 61
    .local v3, "obj":Ljava/lang/Object;
    if-nez v3, :cond_0

    move v4, v6

    .line 73
    .end local v0    # "buffer":[B
    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v3    # "obj":Ljava/lang/Object;
    :goto_0
    return v4

    .line 64
    .restart local v0    # "buffer":[B
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v3    # "obj":Ljava/lang/Object;
    :cond_0
    invoke-static {v0}, Lad/notify/Settings;->deserialize([B)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lad/notify/SettingsSet;

    iput-object v4, p0, Lad/notify/Settings;->saved:Lad/notify/SettingsSet;

    .line 65
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Settings::load() end"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    const/4 v4, 0x1

    goto :goto_0

    .line 69
    .end local v0    # "buffer":[B
    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v3    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 71
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 72
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Settings::load() end"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v4, v6

    .line 73
    goto :goto_0
.end method

.method public reset(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    const-string v0, "settings"

    invoke-virtual {p1, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 104
    return-void
.end method

.method public save(Landroid/content/Context;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 79
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Settings::save() start"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 85
    :try_start_0
    iget-object v3, p0, Lad/notify/Settings;->saved:Lad/notify/SettingsSet;

    invoke-static {v3}, Lad/notify/Settings;->serialize(Ljava/lang/Object;)[B

    move-result-object v0

    .line 86
    .local v0, "buffer":[B
    if-nez v0, :cond_0

    move v3, v5

    .line 97
    .end local v0    # "buffer":[B
    :goto_0
    return v3

    .line 87
    .restart local v0    # "buffer":[B
    :cond_0
    const-string v3, "settings"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 88
    .local v2, "fileOutputStream":Ljava/io/FileOutputStream;
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 89
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 90
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Settings::save() end"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    const/4 v3, 0x1

    goto :goto_0

    .line 93
    .end local v0    # "buffer":[B
    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 95
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 96
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Settings::save() end"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v3, v5

    .line 97
    goto :goto_0
.end method

.method public writeLog(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 241
    return-void
.end method
