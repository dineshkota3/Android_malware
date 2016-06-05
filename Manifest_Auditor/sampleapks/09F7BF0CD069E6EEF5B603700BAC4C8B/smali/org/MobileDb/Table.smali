.class public Lorg/MobileDb/Table;
.super Ljava/lang/Object;
.source "Table.java"


# instance fields
.field private _offset:J

.field private fields:Ljava/util/Vector;

.field private inputStream:Ljava/io/InputStream;

.field private last_find_index:I

.field private last_find_row:Lorg/MobileDb/Row;

.field private loadAllDataInMemory:Z

.field public name:Ljava/lang/String;

.field private opt_fields:[Lorg/MobileDb/Field;

.field private opt_rows:[Lorg/MobileDb/Row;

.field private optimized:Z

.field private pathToDb:Ljava/lang/String;

.field private rows:Ljava/util/Vector;

.field private rowsCount:I

.field private transaction:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean v2, p0, Lorg/MobileDb/Table;->optimized:Z

    .line 21
    iput-object v1, p0, Lorg/MobileDb/Table;->opt_fields:[Lorg/MobileDb/Field;

    .line 22
    iput-object v1, p0, Lorg/MobileDb/Table;->opt_rows:[Lorg/MobileDb/Row;

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lorg/MobileDb/Table;->last_find_index:I

    .line 25
    iput-object v1, p0, Lorg/MobileDb/Table;->last_find_row:Lorg/MobileDb/Row;

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/MobileDb/Table;->loadAllDataInMemory:Z

    .line 28
    iput-object v1, p0, Lorg/MobileDb/Table;->pathToDb:Ljava/lang/String;

    .line 30
    iput-boolean v2, p0, Lorg/MobileDb/Table;->transaction:Z

    .line 31
    iput-object v1, p0, Lorg/MobileDb/Table;->inputStream:Ljava/io/InputStream;

    .line 32
    iput v2, p0, Lorg/MobileDb/Table;->rowsCount:I

    .line 33
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/MobileDb/Table;->_offset:J

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lorg/MobileDb/Table;->name:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/MobileDb/Table;->fields:Ljava/util/Vector;

    .line 39
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/MobileDb/Table;->rows:Ljava/util/Vector;

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean v2, p0, Lorg/MobileDb/Table;->optimized:Z

    .line 21
    iput-object v1, p0, Lorg/MobileDb/Table;->opt_fields:[Lorg/MobileDb/Field;

    .line 22
    iput-object v1, p0, Lorg/MobileDb/Table;->opt_rows:[Lorg/MobileDb/Row;

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lorg/MobileDb/Table;->last_find_index:I

    .line 25
    iput-object v1, p0, Lorg/MobileDb/Table;->last_find_row:Lorg/MobileDb/Row;

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/MobileDb/Table;->loadAllDataInMemory:Z

    .line 28
    iput-object v1, p0, Lorg/MobileDb/Table;->pathToDb:Ljava/lang/String;

    .line 30
    iput-boolean v2, p0, Lorg/MobileDb/Table;->transaction:Z

    .line 31
    iput-object v1, p0, Lorg/MobileDb/Table;->inputStream:Ljava/io/InputStream;

    .line 32
    iput v2, p0, Lorg/MobileDb/Table;->rowsCount:I

    .line 33
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/MobileDb/Table;->_offset:J

    .line 44
    iput-object p1, p0, Lorg/MobileDb/Table;->name:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/MobileDb/Table;->fields:Ljava/util/Vector;

    .line 46
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/MobileDb/Table;->rows:Ljava/util/Vector;

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "loadAllDataInMemory"    # Z
    .param p3, "path"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean v1, p0, Lorg/MobileDb/Table;->optimized:Z

    .line 21
    iput-object v2, p0, Lorg/MobileDb/Table;->opt_fields:[Lorg/MobileDb/Field;

    .line 22
    iput-object v2, p0, Lorg/MobileDb/Table;->opt_rows:[Lorg/MobileDb/Row;

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lorg/MobileDb/Table;->last_find_index:I

    .line 25
    iput-object v2, p0, Lorg/MobileDb/Table;->last_find_row:Lorg/MobileDb/Row;

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/MobileDb/Table;->loadAllDataInMemory:Z

    .line 28
    iput-object v2, p0, Lorg/MobileDb/Table;->pathToDb:Ljava/lang/String;

    .line 30
    iput-boolean v1, p0, Lorg/MobileDb/Table;->transaction:Z

    .line 31
    iput-object v2, p0, Lorg/MobileDb/Table;->inputStream:Ljava/io/InputStream;

    .line 32
    iput v1, p0, Lorg/MobileDb/Table;->rowsCount:I

    .line 33
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/MobileDb/Table;->_offset:J

    .line 51
    iput-object p1, p0, Lorg/MobileDb/Table;->name:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/MobileDb/Table;->fields:Ljava/util/Vector;

    .line 53
    iput-boolean p2, p0, Lorg/MobileDb/Table;->loadAllDataInMemory:Z

    .line 54
    if-eqz p2, :cond_0

    .line 56
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/MobileDb/Table;->rows:Ljava/util/Vector;

    .line 57
    iput-object v2, p0, Lorg/MobileDb/Table;->pathToDb:Ljava/lang/String;

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    iput-object p3, p0, Lorg/MobileDb/Table;->pathToDb:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public addField(Lorg/MobileDb/Field;)V
    .locals 1
    .param p1, "field"    # Lorg/MobileDb/Field;

    .prologue
    .line 67
    iget-boolean v0, p0, Lorg/MobileDb/Table;->optimized:Z

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lorg/MobileDb/Table;->fields:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 71
    :cond_0
    return-void
.end method

.method public addRow()V
    .locals 1

    .prologue
    .line 403
    iget v0, p0, Lorg/MobileDb/Table;->rowsCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/MobileDb/Table;->rowsCount:I

    .line 404
    return-void
.end method

.method public addRow(Lorg/MobileDb/Row;)V
    .locals 1
    .param p1, "row"    # Lorg/MobileDb/Row;

    .prologue
    .line 141
    iget-boolean v0, p0, Lorg/MobileDb/Table;->optimized:Z

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lorg/MobileDb/Table;->rows:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 145
    :cond_0
    return-void
.end method

.method public createRow()Lorg/MobileDb/Row;
    .locals 3

    .prologue
    .line 124
    iget-boolean v2, p0, Lorg/MobileDb/Table;->optimized:Z

    if-nez v2, :cond_1

    .line 126
    iget-object v2, p0, Lorg/MobileDb/Table;->fields:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v1, v2, [I

    .line 128
    .local v1, "types":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/MobileDb/Table;->fields:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 130
    iget-object v2, p0, Lorg/MobileDb/Table;->fields:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/MobileDb/Field;

    iget v2, v2, Lorg/MobileDb/Field;->type:I

    aput v2, v1, v0

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    :cond_0
    new-instance v2, Lorg/MobileDb/Row;

    invoke-direct {v2, v1}, Lorg/MobileDb/Row;-><init>([I)V

    .line 136
    .end local v0    # "i":I
    .end local v1    # "types":[I
    :goto_1
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public fieldsCount()I
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lorg/MobileDb/Table;->optimized:Z

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lorg/MobileDb/Table;->opt_fields:[Lorg/MobileDb/Field;

    array-length v0, v0

    .line 110
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/MobileDb/Table;->fields:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getField(I)Lorg/MobileDb/Field;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 75
    iget-boolean v0, p0, Lorg/MobileDb/Table;->optimized:Z

    if-eqz v0, :cond_0

    .line 77
    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/MobileDb/Table;->opt_fields:[Lorg/MobileDb/Field;

    array-length v0, v0

    if-ge p1, v0, :cond_1

    .line 79
    iget-object v0, p0, Lorg/MobileDb/Table;->opt_fields:[Lorg/MobileDb/Field;

    aget-object v0, v0, p1

    .line 91
    .end local p0    # "this":Lorg/MobileDb/Table;
    :goto_0
    return-object v0

    .line 84
    .restart local p0    # "this":Lorg/MobileDb/Table;
    :cond_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/MobileDb/Table;->fields:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 86
    iget-object v0, p0, Lorg/MobileDb/Table;->fields:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lorg/MobileDb/Table;
    check-cast p0, Lorg/MobileDb/Field;

    move-object v0, p0

    goto :goto_0

    .line 91
    .restart local p0    # "this":Lorg/MobileDb/Table;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFieldValueByName(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 349
    iget-boolean v1, p0, Lorg/MobileDb/Table;->loadAllDataInMemory:Z

    if-eqz v1, :cond_5

    .line 351
    iget-boolean v1, p0, Lorg/MobileDb/Table;->optimized:Z

    if-eqz v1, :cond_2

    .line 353
    iget v1, p0, Lorg/MobileDb/Table;->last_find_index:I

    if-eq v1, p2, :cond_0

    .line 355
    invoke-virtual {p0, p2}, Lorg/MobileDb/Table;->getRow(I)Lorg/MobileDb/Row;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v1, v2

    .line 398
    :goto_0
    return-object v1

    .line 358
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lorg/MobileDb/Table;->opt_fields:[Lorg/MobileDb/Field;

    array-length v1, v1

    if-ge v0, v1, :cond_8

    .line 360
    iget-object v1, p0, Lorg/MobileDb/Table;->opt_fields:[Lorg/MobileDb/Field;

    aget-object v1, v1, v0

    iget-object v1, v1, Lorg/MobileDb/Field;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 362
    iget-object v1, p0, Lorg/MobileDb/Table;->last_find_row:Lorg/MobileDb/Row;

    invoke-virtual {v1, v0}, Lorg/MobileDb/Row;->getValue(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 358
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 368
    .end local v0    # "i":I
    :cond_2
    iget v1, p0, Lorg/MobileDb/Table;->last_find_index:I

    if-eq v1, p2, :cond_3

    .line 370
    invoke-virtual {p0, p2}, Lorg/MobileDb/Table;->getRow(I)Lorg/MobileDb/Row;

    move-result-object v1

    if-nez v1, :cond_3

    move-object v1, v2

    goto :goto_0

    .line 373
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v1, p0, Lorg/MobileDb/Table;->fields:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 375
    iget-object v1, p0, Lorg/MobileDb/Table;->fields:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/MobileDb/Field;

    iget-object v1, v1, Lorg/MobileDb/Field;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 377
    iget-object v1, p0, Lorg/MobileDb/Table;->last_find_row:Lorg/MobileDb/Row;

    invoke-virtual {v1, v0}, Lorg/MobileDb/Row;->getValue(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 373
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 384
    .end local v0    # "i":I
    :cond_5
    iget v1, p0, Lorg/MobileDb/Table;->last_find_index:I

    if-eq v1, p2, :cond_6

    .line 386
    invoke-virtual {p0, p2}, Lorg/MobileDb/Table;->getRow(I)Lorg/MobileDb/Row;

    move-result-object v1

    if-nez v1, :cond_6

    move-object v1, v2

    goto :goto_0

    .line 389
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget-object v1, p0, Lorg/MobileDb/Table;->fields:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 391
    iget-object v1, p0, Lorg/MobileDb/Table;->fields:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/MobileDb/Field;

    iget-object v1, v1, Lorg/MobileDb/Field;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 393
    iget-object v1, p0, Lorg/MobileDb/Table;->last_find_row:Lorg/MobileDb/Row;

    invoke-virtual {v1, v0}, Lorg/MobileDb/Row;->getValue(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 389
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    move-object v1, v2

    .line 398
    goto :goto_0
.end method

.method public getOffset()J
    .locals 2

    .prologue
    .line 413
    iget-wide v0, p0, Lorg/MobileDb/Table;->_offset:J

    return-wide v0
.end method

.method public getRow(I)Lorg/MobileDb/Row;
    .locals 10
    .param p1, "index"    # I

    .prologue
    .line 178
    iget-boolean v9, p0, Lorg/MobileDb/Table;->loadAllDataInMemory:Z

    if-eqz v9, :cond_1

    .line 180
    iget-boolean v9, p0, Lorg/MobileDb/Table;->optimized:Z

    if-eqz v9, :cond_0

    .line 182
    if-ltz p1, :cond_4

    iget-object v9, p0, Lorg/MobileDb/Table;->opt_rows:[Lorg/MobileDb/Row;

    array-length v9, v9

    if-ge p1, v9, :cond_4

    .line 184
    iget-object v9, p0, Lorg/MobileDb/Table;->opt_rows:[Lorg/MobileDb/Row;

    aget-object v9, v9, p1

    iput-object v9, p0, Lorg/MobileDb/Table;->last_find_row:Lorg/MobileDb/Row;

    .line 185
    iput p1, p0, Lorg/MobileDb/Table;->last_find_index:I

    .line 186
    iget-object v9, p0, Lorg/MobileDb/Table;->last_find_row:Lorg/MobileDb/Row;

    .line 300
    :goto_0
    return-object v9

    .line 191
    :cond_0
    if-ltz p1, :cond_4

    iget-object v9, p0, Lorg/MobileDb/Table;->rows:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    if-ge p1, v9, :cond_4

    .line 193
    iget-object v9, p0, Lorg/MobileDb/Table;->rows:Ljava/util/Vector;

    invoke-virtual {v9, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/MobileDb/Row;

    iput-object v9, p0, Lorg/MobileDb/Table;->last_find_row:Lorg/MobileDb/Row;

    .line 194
    iput p1, p0, Lorg/MobileDb/Table;->last_find_index:I

    .line 195
    iget-object v9, p0, Lorg/MobileDb/Table;->last_find_row:Lorg/MobileDb/Row;

    goto :goto_0

    .line 203
    :cond_1
    if-ltz p1, :cond_4

    iget v9, p0, Lorg/MobileDb/Table;->rowsCount:I

    if-ge p1, v9, :cond_4

    .line 205
    iput p1, p0, Lorg/MobileDb/Table;->last_find_index:I

    .line 207
    iget-boolean v9, p0, Lorg/MobileDb/Table;->transaction:Z

    if-eqz v9, :cond_4

    .line 210
    iget-object v5, p0, Lorg/MobileDb/Table;->inputStream:Ljava/io/InputStream;

    .line 214
    .local v5, "stream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v8

    .line 216
    .local v8, "value":I
    const/16 v9, 0xb

    if-ne v8, v9, :cond_4

    .line 218
    invoke-virtual {p0}, Lorg/MobileDb/Table;->createRow()Lorg/MobileDb/Row;

    move-result-object v3

    .line 220
    .local v3, "row":Lorg/MobileDb/Row;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v3}, Lorg/MobileDb/Row;->fieldsCount()I

    move-result v9

    if-ge v1, v9, :cond_a

    .line 222
    invoke-virtual {v3, v1}, Lorg/MobileDb/Row;->getFieldType(I)I

    move-result v7

    .line 224
    .local v7, "type":I
    sget v9, Lorg/MobileDb/Field;->SMALL_INT:I

    if-ne v7, v9, :cond_3

    .line 226
    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v9

    invoke-direct {v4, v9}, Ljava/lang/Integer;-><init>(I)V

    .line 227
    .local v4, "row_value":Ljava/lang/Integer;
    invoke-virtual {v3, v1, v4}, Lorg/MobileDb/Row;->setValue(ILjava/lang/Object;)V

    .line 220
    .end local v4    # "row_value":Ljava/lang/Integer;
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 229
    :cond_3
    sget v9, Lorg/MobileDb/Field;->SHORT_INT:I

    if-ne v7, v9, :cond_5

    .line 231
    const/4 v9, 0x2

    new-array v6, v9, [B

    .line 232
    .local v6, "tmp":[B
    invoke-static {v5, v6}, Lorg/MobileDb/MobileDatabase;->readDataFromStream(Ljava/io/InputStream;[B)V

    .line 234
    new-instance v4, Ljava/lang/Integer;

    invoke-static {v6}, Lorg/MobileDb/MobileDatabase;->shortIntFromBytes([B)I

    move-result v9

    invoke-direct {v4, v9}, Ljava/lang/Integer;-><init>(I)V

    .line 235
    .restart local v4    # "row_value":Ljava/lang/Integer;
    invoke-virtual {v3, v1, v4}, Lorg/MobileDb/Row;->setValue(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 292
    .end local v1    # "i":I
    .end local v3    # "row":Lorg/MobileDb/Row;
    .end local v4    # "row_value":Ljava/lang/Integer;
    .end local v6    # "tmp":[B
    .end local v7    # "type":I
    .end local v8    # "value":I
    :catch_0
    move-exception v9

    move-object v0, v9

    .line 294
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 300
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v5    # "stream":Ljava/io/InputStream;
    :cond_4
    const/4 v9, 0x0

    goto :goto_0

    .line 237
    .restart local v1    # "i":I
    .restart local v3    # "row":Lorg/MobileDb/Row;
    .restart local v5    # "stream":Ljava/io/InputStream;
    .restart local v7    # "type":I
    .restart local v8    # "value":I
    :cond_5
    :try_start_1
    sget v9, Lorg/MobileDb/Field;->INT:I

    if-ne v7, v9, :cond_6

    .line 239
    const/4 v9, 0x4

    new-array v6, v9, [B

    .line 240
    .restart local v6    # "tmp":[B
    invoke-static {v5, v6}, Lorg/MobileDb/MobileDatabase;->readDataFromStream(Ljava/io/InputStream;[B)V

    .line 242
    new-instance v4, Ljava/lang/Integer;

    invoke-static {v6}, Lorg/MobileDb/MobileDatabase;->intFromBytes([B)I

    move-result v9

    invoke-direct {v4, v9}, Ljava/lang/Integer;-><init>(I)V

    .line 243
    .restart local v4    # "row_value":Ljava/lang/Integer;
    invoke-virtual {v3, v1, v4}, Lorg/MobileDb/Row;->setValue(ILjava/lang/Object;)V

    goto :goto_2

    .line 245
    .end local v4    # "row_value":Ljava/lang/Integer;
    .end local v6    # "tmp":[B
    :cond_6
    sget v9, Lorg/MobileDb/Field;->TIME:I

    if-ne v7, v9, :cond_7

    .line 247
    const/4 v9, 0x4

    new-array v6, v9, [B

    .line 248
    .restart local v6    # "tmp":[B
    invoke-static {v5, v6}, Lorg/MobileDb/MobileDatabase;->readDataFromStream(Ljava/io/InputStream;[B)V

    .line 250
    new-instance v4, Ljava/lang/Integer;

    invoke-static {v6}, Lorg/MobileDb/MobileDatabase;->intFromBytes([B)I

    move-result v9

    invoke-direct {v4, v9}, Ljava/lang/Integer;-><init>(I)V

    .line 251
    .restart local v4    # "row_value":Ljava/lang/Integer;
    invoke-virtual {v3, v1, v4}, Lorg/MobileDb/Row;->setValue(ILjava/lang/Object;)V

    goto :goto_2

    .line 253
    .end local v4    # "row_value":Ljava/lang/Integer;
    .end local v6    # "tmp":[B
    :cond_7
    sget v9, Lorg/MobileDb/Field;->NAME:I

    if-ne v7, v9, :cond_8

    .line 255
    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 257
    .local v2, "length":I
    new-array v6, v2, [B

    .line 258
    .restart local v6    # "tmp":[B
    invoke-static {v5, v6}, Lorg/MobileDb/MobileDatabase;->readDataFromStream(Ljava/io/InputStream;[B)V

    .line 260
    invoke-static {v6}, Lorg/MobileDb/MobileDatabase;->getUtf8String([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v1, v9}, Lorg/MobileDb/Row;->setValue(ILjava/lang/Object;)V

    goto :goto_2

    .line 262
    .end local v2    # "length":I
    .end local v6    # "tmp":[B
    :cond_8
    sget v9, Lorg/MobileDb/Field;->TEXT:I

    if-ne v7, v9, :cond_9

    .line 264
    const/4 v9, 0x2

    new-array v6, v9, [B

    .line 265
    .restart local v6    # "tmp":[B
    invoke-static {v5, v6}, Lorg/MobileDb/MobileDatabase;->readDataFromStream(Ljava/io/InputStream;[B)V

    .line 267
    invoke-static {v6}, Lorg/MobileDb/MobileDatabase;->shortIntFromBytes([B)I

    move-result v2

    .line 269
    .restart local v2    # "length":I
    new-array v6, v2, [B

    .line 270
    invoke-static {v5, v6}, Lorg/MobileDb/MobileDatabase;->readDataFromStream(Ljava/io/InputStream;[B)V

    .line 272
    invoke-static {v6}, Lorg/MobileDb/MobileDatabase;->getUtf8String([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v1, v9}, Lorg/MobileDb/Row;->setValue(ILjava/lang/Object;)V

    goto :goto_2

    .line 274
    .end local v2    # "length":I
    .end local v6    # "tmp":[B
    :cond_9
    sget v9, Lorg/MobileDb/Field;->BINARY:I

    if-ne v7, v9, :cond_2

    .line 276
    const/4 v9, 0x4

    new-array v6, v9, [B

    .line 277
    .restart local v6    # "tmp":[B
    invoke-static {v5, v6}, Lorg/MobileDb/MobileDatabase;->readDataFromStream(Ljava/io/InputStream;[B)V

    .line 279
    invoke-static {v6}, Lorg/MobileDb/MobileDatabase;->intFromBytes([B)I

    move-result v2

    .line 280
    .restart local v2    # "length":I
    new-array v6, v2, [B

    .line 281
    invoke-static {v5, v6}, Lorg/MobileDb/MobileDatabase;->readDataFromStream(Ljava/io/InputStream;[B)V

    .line 283
    invoke-virtual {v3, v1, v6}, Lorg/MobileDb/Row;->setValue(ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 287
    .end local v2    # "length":I
    .end local v6    # "tmp":[B
    .end local v7    # "type":I
    :cond_a
    iput-object v3, p0, Lorg/MobileDb/Table;->last_find_row:Lorg/MobileDb/Row;

    .line 288
    iget-object v9, p0, Lorg/MobileDb/Table;->last_find_row:Lorg/MobileDb/Row;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public isOptimized()Z
    .locals 1

    .prologue
    .line 318
    iget-boolean v0, p0, Lorg/MobileDb/Table;->optimized:Z

    return v0
.end method

.method public optimize()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 323
    iget-boolean v0, p0, Lorg/MobileDb/Table;->loadAllDataInMemory:Z

    if-nez v0, :cond_1

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    iget-boolean v0, p0, Lorg/MobileDb/Table;->optimized:Z

    if-nez v0, :cond_0

    .line 333
    iget-object v0, p0, Lorg/MobileDb/Table;->fields:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lorg/MobileDb/Field;

    iput-object v0, p0, Lorg/MobileDb/Table;->opt_fields:[Lorg/MobileDb/Field;

    .line 334
    iget-object v0, p0, Lorg/MobileDb/Table;->fields:Ljava/util/Vector;

    iget-object v1, p0, Lorg/MobileDb/Table;->opt_fields:[Lorg/MobileDb/Field;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 336
    iget-object v0, p0, Lorg/MobileDb/Table;->rows:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lorg/MobileDb/Row;

    iput-object v0, p0, Lorg/MobileDb/Table;->opt_rows:[Lorg/MobileDb/Row;

    .line 337
    iget-object v0, p0, Lorg/MobileDb/Table;->rows:Ljava/util/Vector;

    iget-object v1, p0, Lorg/MobileDb/Table;->opt_rows:[Lorg/MobileDb/Row;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 339
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/MobileDb/Table;->optimized:Z

    .line 341
    iput-object v2, p0, Lorg/MobileDb/Table;->fields:Ljava/util/Vector;

    .line 342
    iput-object v2, p0, Lorg/MobileDb/Table;->rows:Ljava/util/Vector;

    .line 344
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0
.end method

.method public removeAllFields()V
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lorg/MobileDb/Table;->optimized:Z

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lorg/MobileDb/Table;->fields:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 120
    :cond_0
    return-void
.end method

.method public removeAllRows()V
    .locals 1

    .prologue
    .line 305
    iget-boolean v0, p0, Lorg/MobileDb/Table;->loadAllDataInMemory:Z

    if-nez v0, :cond_1

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    iget-boolean v0, p0, Lorg/MobileDb/Table;->optimized:Z

    if-nez v0, :cond_0

    .line 312
    iget-object v0, p0, Lorg/MobileDb/Table;->rows:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    goto :goto_0
.end method

.method public removeField(Lorg/MobileDb/Field;)V
    .locals 1
    .param p1, "field"    # Lorg/MobileDb/Field;

    .prologue
    .line 96
    iget-boolean v0, p0, Lorg/MobileDb/Table;->optimized:Z

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lorg/MobileDb/Table;->fields:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 100
    :cond_0
    return-void
.end method

.method public removeRow(Lorg/MobileDb/Row;)V
    .locals 1
    .param p1, "row"    # Lorg/MobileDb/Row;

    .prologue
    .line 149
    iget-boolean v0, p0, Lorg/MobileDb/Table;->optimized:Z

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lorg/MobileDb/Table;->rows:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 153
    :cond_0
    return-void
.end method

.method public rowsCount()I
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lorg/MobileDb/Table;->loadAllDataInMemory:Z

    if-eqz v0, :cond_1

    .line 159
    iget-boolean v0, p0, Lorg/MobileDb/Table;->optimized:Z

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lorg/MobileDb/Table;->opt_rows:[Lorg/MobileDb/Row;

    array-length v0, v0

    .line 170
    :goto_0
    return v0

    .line 165
    :cond_0
    iget-object v0, p0, Lorg/MobileDb/Table;->rows:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0

    .line 170
    :cond_1
    iget v0, p0, Lorg/MobileDb/Table;->rowsCount:I

    goto :goto_0
.end method

.method public setOffset(J)V
    .locals 2
    .param p1, "offset"    # J

    .prologue
    .line 408
    const-wide/16 v0, 0x1

    sub-long v0, p1, v0

    iput-wide v0, p0, Lorg/MobileDb/Table;->_offset:J

    .line 409
    return-void
.end method

.method public startTransaction()V
    .locals 4

    .prologue
    .line 418
    iget-boolean v1, p0, Lorg/MobileDb/Table;->loadAllDataInMemory:Z

    if-eqz v1, :cond_1

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 423
    :cond_1
    iget v1, p0, Lorg/MobileDb/Table;->rowsCount:I

    if-eqz v1, :cond_0

    .line 430
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lorg/MobileDb/Table;->pathToDb:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lorg/MobileDb/Table;->inputStream:Ljava/io/InputStream;

    .line 431
    iget-object v1, p0, Lorg/MobileDb/Table;->inputStream:Ljava/io/InputStream;

    iget-wide v2, p0, Lorg/MobileDb/Table;->_offset:J

    invoke-virtual {v1, v2, v3}, Ljava/io/InputStream;->skip(J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/MobileDb/Table;->transaction:Z

    goto :goto_0

    .line 433
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 435
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public stopTransaction()V
    .locals 1

    .prologue
    .line 443
    iget-boolean v0, p0, Lorg/MobileDb/Table;->loadAllDataInMemory:Z

    if-eqz v0, :cond_0

    .line 446
    :goto_0
    return-void

    .line 444
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/MobileDb/Table;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/MobileDb/Table;->transaction:Z

    goto :goto_0

    .line 444
    :catch_0
    move-exception v0

    goto :goto_1
.end method
