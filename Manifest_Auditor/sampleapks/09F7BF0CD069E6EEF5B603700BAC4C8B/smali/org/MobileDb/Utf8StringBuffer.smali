.class public Lorg/MobileDb/Utf8StringBuffer;
.super Ljava/lang/Object;
.source "Utf8StringBuffer.java"


# instance fields
.field _bits:I

.field _buffer:Ljava/lang/StringBuffer;

.field _errors:Z

.field _more:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/MobileDb/Utf8StringBuffer;->_buffer:Ljava/lang/StringBuffer;

    .line 21
    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/MobileDb/Utf8StringBuffer;->_buffer:Ljava/lang/StringBuffer;

    .line 26
    return-void
.end method


# virtual methods
.method public append(B)V
    .locals 5
    .param p1, "b"    # B

    .prologue
    const/16 v4, 0xc0

    const/16 v3, 0x3f

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 37
    if-lez p1, :cond_2

    .line 39
    iget v0, p0, Lorg/MobileDb/Utf8StringBuffer;->_more:I

    if-lez v0, :cond_1

    .line 41
    iget-object v0, p0, Lorg/MobileDb/Utf8StringBuffer;->_buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 42
    iput v1, p0, Lorg/MobileDb/Utf8StringBuffer;->_more:I

    .line 43
    iput v1, p0, Lorg/MobileDb/Utf8StringBuffer;->_bits:I

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    iget-object v0, p0, Lorg/MobileDb/Utf8StringBuffer;->_buffer:Ljava/lang/StringBuffer;

    and-int/lit8 v1, p1, 0x7f

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 48
    :cond_2
    iget v0, p0, Lorg/MobileDb/Utf8StringBuffer;->_more:I

    if-nez v0, :cond_8

    .line 50
    and-int/lit16 v0, p1, 0xc0

    if-eq v0, v4, :cond_3

    .line 53
    iget-object v0, p0, Lorg/MobileDb/Utf8StringBuffer;->_buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 54
    iput v1, p0, Lorg/MobileDb/Utf8StringBuffer;->_more:I

    .line 55
    iput v1, p0, Lorg/MobileDb/Utf8StringBuffer;->_bits:I

    goto :goto_0

    .line 57
    :cond_3
    and-int/lit16 v0, p1, 0xe0

    if-ne v0, v4, :cond_4

    .line 60
    iput v2, p0, Lorg/MobileDb/Utf8StringBuffer;->_more:I

    .line 61
    and-int/lit8 v0, p1, 0x1f

    iput v0, p0, Lorg/MobileDb/Utf8StringBuffer;->_bits:I

    goto :goto_0

    .line 63
    :cond_4
    and-int/lit16 v0, p1, 0xf0

    const/16 v1, 0xe0

    if-ne v0, v1, :cond_5

    .line 66
    const/4 v0, 0x2

    iput v0, p0, Lorg/MobileDb/Utf8StringBuffer;->_more:I

    .line 67
    and-int/lit8 v0, p1, 0xf

    iput v0, p0, Lorg/MobileDb/Utf8StringBuffer;->_bits:I

    goto :goto_0

    .line 69
    :cond_5
    and-int/lit16 v0, p1, 0xf8

    const/16 v1, 0xf0

    if-ne v0, v1, :cond_6

    .line 72
    const/4 v0, 0x3

    iput v0, p0, Lorg/MobileDb/Utf8StringBuffer;->_more:I

    .line 73
    and-int/lit8 v0, p1, 0x7

    iput v0, p0, Lorg/MobileDb/Utf8StringBuffer;->_bits:I

    goto :goto_0

    .line 75
    :cond_6
    and-int/lit16 v0, p1, 0xfc

    const/16 v1, 0xf8

    if-ne v0, v1, :cond_7

    .line 78
    const/4 v0, 0x4

    iput v0, p0, Lorg/MobileDb/Utf8StringBuffer;->_more:I

    .line 79
    and-int/lit8 v0, p1, 0x3

    iput v0, p0, Lorg/MobileDb/Utf8StringBuffer;->_bits:I

    goto :goto_0

    .line 81
    :cond_7
    and-int/lit16 v0, p1, 0xfe

    const/16 v1, 0xfc

    if-ne v0, v1, :cond_0

    .line 84
    const/4 v0, 0x5

    iput v0, p0, Lorg/MobileDb/Utf8StringBuffer;->_more:I

    .line 85
    and-int/lit8 v0, p1, 0x1

    iput v0, p0, Lorg/MobileDb/Utf8StringBuffer;->_bits:I

    goto :goto_0

    .line 90
    :cond_8
    and-int/lit16 v0, p1, 0xc0

    if-ne v0, v4, :cond_9

    .line 93
    iget-object v0, p0, Lorg/MobileDb/Utf8StringBuffer;->_buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 94
    iput v1, p0, Lorg/MobileDb/Utf8StringBuffer;->_more:I

    .line 95
    iput v1, p0, Lorg/MobileDb/Utf8StringBuffer;->_bits:I

    .line 96
    iput-boolean v2, p0, Lorg/MobileDb/Utf8StringBuffer;->_errors:Z

    goto :goto_0

    .line 101
    :cond_9
    iget v0, p0, Lorg/MobileDb/Utf8StringBuffer;->_bits:I

    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, p1, 0x3f

    or-int/2addr v0, v1

    iput v0, p0, Lorg/MobileDb/Utf8StringBuffer;->_bits:I

    .line 102
    iget v0, p0, Lorg/MobileDb/Utf8StringBuffer;->_more:I

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/MobileDb/Utf8StringBuffer;->_more:I

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lorg/MobileDb/Utf8StringBuffer;->_buffer:Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/MobileDb/Utf8StringBuffer;->_bits:I

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0
.end method

.method public append([BII)V
    .locals 3
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 30
    add-int v0, p2, p3

    .line 31
    .local v0, "end":I
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 32
    aget-byte v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/MobileDb/Utf8StringBuffer;->append(B)V

    .line 31
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method

.method public getStringBuffer()Ljava/lang/StringBuffer;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/MobileDb/Utf8StringBuffer;->_buffer:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public isError()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lorg/MobileDb/Utf8StringBuffer;->_errors:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/MobileDb/Utf8StringBuffer;->_more:I

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/MobileDb/Utf8StringBuffer;->_buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 115
    iget-object v0, p0, Lorg/MobileDb/Utf8StringBuffer;->_buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 116
    iput v1, p0, Lorg/MobileDb/Utf8StringBuffer;->_more:I

    .line 117
    iput v1, p0, Lorg/MobileDb/Utf8StringBuffer;->_bits:I

    .line 118
    iput-boolean v1, p0, Lorg/MobileDb/Utf8StringBuffer;->_errors:Z

    .line 119
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lorg/MobileDb/Utf8StringBuffer;->_buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
