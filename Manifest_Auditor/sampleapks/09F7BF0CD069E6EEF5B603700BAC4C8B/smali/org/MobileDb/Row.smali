.class public Lorg/MobileDb/Row;
.super Ljava/lang/Object;
.source "Row.java"


# instance fields
.field private fields:[Ljava/lang/Object;

.field private types:[I


# direct methods
.method public constructor <init>([I)V
    .locals 1
    .param p1, "fields_types"    # [I

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/MobileDb/Row;->types:[I

    .line 19
    iget-object v0, p0, Lorg/MobileDb/Row;->types:[I

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/MobileDb/Row;->fields:[Ljava/lang/Object;

    .line 20
    return-void
.end method


# virtual methods
.method public fieldsCount()I
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lorg/MobileDb/Row;->types:[I

    array-length v0, v0

    return v0
.end method

.method public getFieldType(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 29
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/MobileDb/Row;->types:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 30
    iget-object v0, p0, Lorg/MobileDb/Row;->types:[I

    aget v0, v0, p1

    .line 31
    :goto_0
    return v0

    :cond_0
    sget v0, Lorg/MobileDb/Field;->NONE:I

    goto :goto_0
.end method

.method public getValue(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 42
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/MobileDb/Row;->fields:[Ljava/lang/Object;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 43
    iget-object v0, p0, Lorg/MobileDb/Row;->fields:[Ljava/lang/Object;

    aget-object v0, v0, p1

    .line 44
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setValue(ILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 36
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/MobileDb/Row;->fields:[Ljava/lang/Object;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 37
    iget-object v0, p0, Lorg/MobileDb/Row;->fields:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 38
    :cond_0
    return-void
.end method
