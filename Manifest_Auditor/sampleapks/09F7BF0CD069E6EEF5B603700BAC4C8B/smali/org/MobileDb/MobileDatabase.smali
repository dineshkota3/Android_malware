.class public Lorg/MobileDb/MobileDatabase;
.super Ljava/lang/Object;
.source "MobileDatabase.java"


# static fields
.field private static useNativeUtf8Decoder:Z


# instance fields
.field public Version:I

.field private loadAllDataInMemory:Z

.field private path:Ljava/lang/String;

.field private tables:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x1

    sput-boolean v0, Lorg/MobileDb/MobileDatabase;->useNativeUtf8Decoder:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lorg/MobileDb/MobileDatabase;->Version:I

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/MobileDb/MobileDatabase;->loadAllDataInMemory:Z

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/MobileDb/MobileDatabase;->path:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/MobileDb/MobileDatabase;->tables:Ljava/util/Vector;

    .line 28
    invoke-static {}, Lorg/MobileDb/MobileDatabase;->isSupportUtf8()Z

    move-result v0

    sput-boolean v0, Lorg/MobileDb/MobileDatabase;->useNativeUtf8Decoder:Z

    .line 29
    return-void
.end method

.method public static getUtf8String([B)Ljava/lang/String;
    .locals 5
    .param p0, "data"    # [B

    .prologue
    .line 253
    sget-boolean v3, Lorg/MobileDb/MobileDatabase;->useNativeUtf8Decoder:Z

    if-eqz v3, :cond_0

    .line 255
    const-string v1, ""

    .line 258
    .local v1, "tmp":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "tmp":Ljava/lang/String;
    .local v2, "tmp":Ljava/lang/String;
    move-object v1, v2

    .end local v2    # "tmp":Ljava/lang/String;
    .restart local v1    # "tmp":Ljava/lang/String;
    :goto_0
    move-object v3, v1

    .line 267
    .end local v1    # "tmp":Ljava/lang/String;
    :goto_1
    return-object v3

    .line 265
    :cond_0
    new-instance v0, Lorg/MobileDb/Utf8StringBuffer;

    invoke-direct {v0}, Lorg/MobileDb/Utf8StringBuffer;-><init>()V

    .line 266
    .local v0, "buffer":Lorg/MobileDb/Utf8StringBuffer;
    const/4 v3, 0x0

    array-length v4, p0

    invoke-virtual {v0, p0, v3, v4}, Lorg/MobileDb/Utf8StringBuffer;->append([BII)V

    .line 267
    invoke-virtual {v0}, Lorg/MobileDb/Utf8StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 260
    .end local v0    # "buffer":Lorg/MobileDb/Utf8StringBuffer;
    .restart local v1    # "tmp":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static intFromBytes([B)I
    .locals 3
    .param p0, "arr"    # [B

    .prologue
    .line 233
    const/4 v1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v1, v2

    const/4 v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    const/4 v2, 0x0

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    add-int v0, v1, v2

    .line 234
    .local v0, "value":I
    return v0
.end method

.method public static isSupportUtf8()Z
    .locals 4

    .prologue
    .line 241
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "utf-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 243
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 245
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    const/4 v1, 0x0

    goto :goto_0

    .line 241
    nop

    :array_0
    .array-data 1
        0x32t
        0x33t
    .end array-data
.end method

.method public static readDataFromStream(Ljava/io/InputStream;[B)V
    .locals 3
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 274
    const/4 v1, 0x0

    .line 275
    .local v1, "pos":I
    array-length v0, p1

    .line 279
    .local v0, "length":I
    :goto_0
    invoke-virtual {p0, p1, v1, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 280
    .local v2, "read":I
    sub-int/2addr v0, v2

    .line 281
    if-nez v0, :cond_0

    return-void

    .line 282
    :cond_0
    add-int/2addr v1, v2

    .line 283
    goto :goto_0
.end method

.method public static shortIntFromBytes([B)I
    .locals 3
    .param p0, "arr"    # [B

    .prologue
    .line 227
    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    const/4 v2, 0x0

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    add-int v0, v1, v2

    .line 228
    .local v0, "value":I
    return v0
.end method


# virtual methods
.method public getTable(I)Lorg/MobileDb/Table;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 195
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/MobileDb/MobileDatabase;->tables:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/MobileDb/MobileDatabase;->tables:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lorg/MobileDb/MobileDatabase;
    check-cast p0, Lorg/MobileDb/Table;

    move-object v0, p0

    .line 196
    :goto_0
    return-object v0

    .restart local p0    # "this":Lorg/MobileDb/MobileDatabase;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTableByName(Ljava/lang/String;)Lorg/MobileDb/Table;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 201
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/MobileDb/MobileDatabase;->tables:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 203
    iget-object v2, p0, Lorg/MobileDb/MobileDatabase;->tables:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/MobileDb/Table;

    .line 204
    .local v1, "table":Lorg/MobileDb/Table;
    iget-object v2, v1, Lorg/MobileDb/Table;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 206
    .end local v1    # "table":Lorg/MobileDb/Table;
    :goto_1
    return-object v2

    .line 201
    .restart local v1    # "table":Lorg/MobileDb/Table;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 206
    .end local v1    # "table":Lorg/MobileDb/Table;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public loadFrom(Ljava/io/InputStream;)V
    .locals 22
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    const-wide/16 v7, 0x0

    .line 48
    .local v7, "position":J
    const-wide/16 v10, 0x0

    .line 50
    .local v10, "rowOffset":J
    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object v4, v0

    .line 52
    .local v4, "data":[B
    move-object/from16 v0, p1

    move-object v1, v4

    invoke-static {v0, v1}, Lorg/MobileDb/MobileDatabase;->readDataFromStream(Ljava/io/InputStream;[B)V

    .line 53
    const-wide/16 v18, 0x4

    add-long v7, v7, v18

    .line 55
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/MobileDb/MobileDatabase;->Version:I

    .line 56
    const-wide/16 v18, 0x1

    add-long v7, v7, v18

    .line 58
    const-wide/16 v16, 0x0

    .line 60
    .local v16, "value":J
    const/4 v13, 0x0

    .line 62
    .local v13, "table":Lorg/MobileDb/Table;
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v16, v0

    const-wide/16 v18, -0x1

    cmp-long v18, v16, v18

    if-eqz v18, :cond_d

    .line 64
    const-wide/16 v18, 0x1

    add-long v7, v7, v18

    .line 66
    const-wide/16 v18, 0x9

    cmp-long v18, v16, v18

    if-nez v18, :cond_1

    .line 68
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 69
    .local v6, "length":I
    const-wide/16 v18, 0x1

    add-long v7, v7, v18

    .line 70
    new-array v4, v6, [B

    .line 72
    move-object/from16 v0, p1

    move-object v1, v4

    invoke-static {v0, v1}, Lorg/MobileDb/MobileDatabase;->readDataFromStream(Ljava/io/InputStream;[B)V

    .line 73
    move v0, v6

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v7, v7, v18

    .line 75
    new-instance v13, Lorg/MobileDb/Table;

    .end local v13    # "table":Lorg/MobileDb/Table;
    invoke-static {v4}, Lorg/MobileDb/MobileDatabase;->getUtf8String([B)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/MobileDb/MobileDatabase;->loadAllDataInMemory:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/MobileDb/MobileDatabase;->path:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object v0, v13

    move-object/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lorg/MobileDb/Table;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 76
    .restart local v13    # "table":Lorg/MobileDb/Table;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/MobileDb/MobileDatabase;->tables:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 78
    .end local v6    # "length":I
    :cond_1
    const-wide/16 v18, 0xa

    cmp-long v18, v16, v18

    if-nez v18, :cond_2

    .line 80
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v15

    .line 81
    .local v15, "type":I
    const-wide/16 v18, 0x1

    add-long v7, v7, v18

    .line 82
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 83
    .restart local v6    # "length":I
    const-wide/16 v18, 0x1

    add-long v7, v7, v18

    .line 84
    new-array v4, v6, [B

    .line 86
    move-object/from16 v0, p1

    move-object v1, v4

    invoke-static {v0, v1}, Lorg/MobileDb/MobileDatabase;->readDataFromStream(Ljava/io/InputStream;[B)V

    .line 87
    move v0, v6

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v7, v7, v18

    .line 89
    new-instance v18, Lorg/MobileDb/Field;

    invoke-static {v4}, Lorg/MobileDb/MobileDatabase;->getUtf8String([B)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move v1, v15

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/MobileDb/Field;-><init>(ILjava/lang/String;)V

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/MobileDb/Table;->addField(Lorg/MobileDb/Field;)V

    goto/16 :goto_0

    .line 91
    .end local v6    # "length":I
    .end local v15    # "type":I
    :cond_2
    const-wide/16 v18, 0xb

    cmp-long v18, v16, v18

    if-nez v18, :cond_0

    .line 93
    move-wide v10, v7

    .line 95
    invoke-virtual {v13}, Lorg/MobileDb/Table;->createRow()Lorg/MobileDb/Row;

    move-result-object v9

    .line 97
    .local v9, "row":Lorg/MobileDb/Row;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v9}, Lorg/MobileDb/Row;->fieldsCount()I

    move-result v18

    move v0, v5

    move/from16 v1, v18

    if-ge v0, v1, :cond_a

    .line 99
    invoke-virtual {v9, v5}, Lorg/MobileDb/Row;->getFieldType(I)I

    move-result v15

    .line 101
    .restart local v15    # "type":I
    sget v18, Lorg/MobileDb/Field;->SMALL_INT:I

    move v0, v15

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 103
    new-instance v12, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v18

    move-object v0, v12

    move/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 104
    .local v12, "row_value":Ljava/lang/Integer;
    const-wide/16 v18, 0x1

    add-long v7, v7, v18

    .line 105
    invoke-virtual {v9, v5, v12}, Lorg/MobileDb/Row;->setValue(ILjava/lang/Object;)V

    .line 97
    .end local v12    # "row_value":Ljava/lang/Integer;
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 107
    :cond_4
    sget v18, Lorg/MobileDb/Field;->SHORT_INT:I

    move v0, v15

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 109
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object v14, v0

    .line 110
    .local v14, "tmp":[B
    move-object/from16 v0, p1

    move-object v1, v14

    invoke-static {v0, v1}, Lorg/MobileDb/MobileDatabase;->readDataFromStream(Ljava/io/InputStream;[B)V

    .line 111
    const-wide/16 v18, 0x2

    add-long v7, v7, v18

    .line 113
    new-instance v12, Ljava/lang/Integer;

    invoke-static {v14}, Lorg/MobileDb/MobileDatabase;->shortIntFromBytes([B)I

    move-result v18

    move-object v0, v12

    move/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 114
    .restart local v12    # "row_value":Ljava/lang/Integer;
    invoke-virtual {v9, v5, v12}, Lorg/MobileDb/Row;->setValue(ILjava/lang/Object;)V

    goto :goto_2

    .line 116
    .end local v12    # "row_value":Ljava/lang/Integer;
    .end local v14    # "tmp":[B
    :cond_5
    sget v18, Lorg/MobileDb/Field;->INT:I

    move v0, v15

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 118
    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object v14, v0

    .line 119
    .restart local v14    # "tmp":[B
    move-object/from16 v0, p1

    move-object v1, v14

    invoke-static {v0, v1}, Lorg/MobileDb/MobileDatabase;->readDataFromStream(Ljava/io/InputStream;[B)V

    .line 120
    const-wide/16 v18, 0x4

    add-long v7, v7, v18

    .line 122
    new-instance v12, Ljava/lang/Integer;

    invoke-static {v14}, Lorg/MobileDb/MobileDatabase;->intFromBytes([B)I

    move-result v18

    move-object v0, v12

    move/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 123
    .restart local v12    # "row_value":Ljava/lang/Integer;
    invoke-virtual {v9, v5, v12}, Lorg/MobileDb/Row;->setValue(ILjava/lang/Object;)V

    goto :goto_2

    .line 125
    .end local v12    # "row_value":Ljava/lang/Integer;
    .end local v14    # "tmp":[B
    :cond_6
    sget v18, Lorg/MobileDb/Field;->TIME:I

    move v0, v15

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 127
    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object v14, v0

    .line 128
    .restart local v14    # "tmp":[B
    move-object/from16 v0, p1

    move-object v1, v14

    invoke-static {v0, v1}, Lorg/MobileDb/MobileDatabase;->readDataFromStream(Ljava/io/InputStream;[B)V

    .line 129
    const-wide/16 v18, 0x4

    add-long v7, v7, v18

    .line 131
    new-instance v12, Ljava/lang/Integer;

    invoke-static {v14}, Lorg/MobileDb/MobileDatabase;->intFromBytes([B)I

    move-result v18

    move-object v0, v12

    move/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 132
    .restart local v12    # "row_value":Ljava/lang/Integer;
    invoke-virtual {v9, v5, v12}, Lorg/MobileDb/Row;->setValue(ILjava/lang/Object;)V

    goto :goto_2

    .line 134
    .end local v12    # "row_value":Ljava/lang/Integer;
    .end local v14    # "tmp":[B
    :cond_7
    sget v18, Lorg/MobileDb/Field;->NAME:I

    move v0, v15

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 136
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 137
    .restart local v6    # "length":I
    const-wide/16 v18, 0x1

    add-long v7, v7, v18

    .line 139
    new-array v14, v6, [B

    .line 140
    .restart local v14    # "tmp":[B
    move-object/from16 v0, p1

    move-object v1, v14

    invoke-static {v0, v1}, Lorg/MobileDb/MobileDatabase;->readDataFromStream(Ljava/io/InputStream;[B)V

    .line 141
    move v0, v6

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v7, v7, v18

    .line 143
    invoke-static {v14}, Lorg/MobileDb/MobileDatabase;->getUtf8String([B)Ljava/lang/String;

    move-result-object v18

    move-object v0, v9

    move v1, v5

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/MobileDb/Row;->setValue(ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 145
    .end local v6    # "length":I
    .end local v14    # "tmp":[B
    :cond_8
    sget v18, Lorg/MobileDb/Field;->TEXT:I

    move v0, v15

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 147
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object v14, v0

    .line 148
    .restart local v14    # "tmp":[B
    move-object/from16 v0, p1

    move-object v1, v14

    invoke-static {v0, v1}, Lorg/MobileDb/MobileDatabase;->readDataFromStream(Ljava/io/InputStream;[B)V

    .line 149
    const-wide/16 v18, 0x2

    add-long v7, v7, v18

    .line 151
    invoke-static {v14}, Lorg/MobileDb/MobileDatabase;->shortIntFromBytes([B)I

    move-result v6

    .line 153
    .restart local v6    # "length":I
    new-array v14, v6, [B

    .line 154
    move-object/from16 v0, p1

    move-object v1, v14

    invoke-static {v0, v1}, Lorg/MobileDb/MobileDatabase;->readDataFromStream(Ljava/io/InputStream;[B)V

    .line 155
    move v0, v6

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v7, v7, v18

    .line 157
    invoke-static {v14}, Lorg/MobileDb/MobileDatabase;->getUtf8String([B)Ljava/lang/String;

    move-result-object v18

    move-object v0, v9

    move v1, v5

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/MobileDb/Row;->setValue(ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 159
    .end local v6    # "length":I
    .end local v14    # "tmp":[B
    :cond_9
    sget v18, Lorg/MobileDb/Field;->BINARY:I

    move v0, v15

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 161
    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object v14, v0

    .line 162
    .restart local v14    # "tmp":[B
    move-object/from16 v0, p1

    move-object v1, v14

    invoke-static {v0, v1}, Lorg/MobileDb/MobileDatabase;->readDataFromStream(Ljava/io/InputStream;[B)V

    .line 163
    const-wide/16 v18, 0x4

    add-long v7, v7, v18

    .line 165
    invoke-static {v14}, Lorg/MobileDb/MobileDatabase;->intFromBytes([B)I

    move-result v6

    .line 166
    .restart local v6    # "length":I
    new-array v14, v6, [B

    .line 167
    move-object/from16 v0, p1

    move-object v1, v4

    invoke-static {v0, v1}, Lorg/MobileDb/MobileDatabase;->readDataFromStream(Ljava/io/InputStream;[B)V

    .line 168
    move v0, v6

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v7, v7, v18

    .line 170
    invoke-virtual {v9, v5, v14}, Lorg/MobileDb/Row;->setValue(ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 174
    .end local v6    # "length":I
    .end local v14    # "tmp":[B
    .end local v15    # "type":I
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/MobileDb/MobileDatabase;->loadAllDataInMemory:Z

    move/from16 v18, v0

    if-eqz v18, :cond_b

    .line 176
    invoke-virtual {v13, v9}, Lorg/MobileDb/Table;->addRow(Lorg/MobileDb/Row;)V

    goto/16 :goto_0

    .line 180
    :cond_b
    invoke-virtual {v13}, Lorg/MobileDb/Table;->getOffset()J

    move-result-wide v18

    const-wide/16 v20, -0x1

    cmp-long v18, v18, v20

    if-nez v18, :cond_c

    .line 182
    invoke-virtual {v13, v10, v11}, Lorg/MobileDb/Table;->setOffset(J)V

    .line 185
    :cond_c
    invoke-virtual {v13}, Lorg/MobileDb/Table;->addRow()V

    goto/16 :goto_0

    .line 190
    .end local v5    # "i":I
    .end local v9    # "row":Lorg/MobileDb/Row;
    :cond_d
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V

    .line 191
    return-void
.end method

.method public loadFrom(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/MobileDb/MobileDatabase;->loadAllDataInMemory:Z

    .line 34
    iput-object p1, p0, Lorg/MobileDb/MobileDatabase;->path:Ljava/lang/String;

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/MobileDb/MobileDatabase;->loadFrom(Ljava/io/InputStream;)V

    .line 36
    return-void
.end method

.method public loadFrom(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "loadAllDataInMemory"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    iput-boolean p2, p0, Lorg/MobileDb/MobileDatabase;->loadAllDataInMemory:Z

    .line 41
    iput-object p1, p0, Lorg/MobileDb/MobileDatabase;->path:Ljava/lang/String;

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/MobileDb/MobileDatabase;->loadFrom(Ljava/io/InputStream;)V

    .line 43
    return-void
.end method

.method public optimize()V
    .locals 3

    .prologue
    .line 216
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/MobileDb/MobileDatabase;->tables:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 218
    iget-object v2, p0, Lorg/MobileDb/MobileDatabase;->tables:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/MobileDb/Table;

    .line 219
    .local v1, "table":Lorg/MobileDb/Table;
    invoke-virtual {v1}, Lorg/MobileDb/Table;->optimize()V

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 222
    .end local v1    # "table":Lorg/MobileDb/Table;
    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 223
    return-void
.end method

.method public tablesCount()I
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lorg/MobileDb/MobileDatabase;->tables:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method
