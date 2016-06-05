.class public Lcom/gp/monolith/LinearInterpolator;
.super Ljava/lang/Object;
.source "LinearInterpolator.java"


# instance fields
.field private timevalues:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private values:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/gp/monolith/LinearInterpolator;->values:Ljava/util/Vector;

    .line 8
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/gp/monolith/LinearInterpolator;->timevalues:Ljava/util/Vector;

    .line 9
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 43
    new-instance v1, Lcom/gp/monolith/LinearInterpolator;

    invoke-direct {v1}, Lcom/gp/monolith/LinearInterpolator;-><init>()V

    .line 44
    .local v1, "li":Lcom/gp/monolith/LinearInterpolator;
    const/4 v2, 0x0

    invoke-virtual {v1, v4, v2}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 45
    const/high16 v2, 0x42b40000    # 90.0f

    const/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 46
    const/16 v2, 0x7d0

    invoke-virtual {v1, v4, v2}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 47
    const/high16 v2, 0x43340000    # 180.0f

    const/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 48
    const/16 v2, 0xfa0

    invoke-virtual {v1, v4, v2}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 49
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x28

    if-le v0, v2, :cond_0

    .line 53
    return-void

    .line 51
    :cond_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "t="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    mul-int/lit8 v4, v0, 0x64

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    mul-int/lit8 v4, v0, 0x64

    invoke-virtual {v1, v4}, Lcom/gp/monolith/LinearInterpolator;->getValue(I)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addValue(FI)V
    .locals 2
    .param p1, "value"    # F
    .param p2, "timevalue"    # I

    .prologue
    .line 12
    iget-object v0, p0, Lcom/gp/monolith/LinearInterpolator;->values:Ljava/util/Vector;

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v0, p0, Lcom/gp/monolith/LinearInterpolator;->timevalues:Ljava/util/Vector;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 14
    return-void
.end method

.method public getValue(I)F
    .locals 10
    .param p1, "time"    # I

    .prologue
    .line 17
    const/4 v3, 0x0

    .line 18
    .local v3, "retval":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v7, p0, Lcom/gp/monolith/LinearInterpolator;->timevalues:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    if-lt v2, v7, :cond_0

    move v4, v3

    .line 37
    .end local v3    # "retval":F
    .end local p0    # "this":Lcom/gp/monolith/LinearInterpolator;
    .local v4, "retval":F
    :goto_1
    return v4

    .line 20
    .end local v4    # "retval":F
    .restart local v3    # "retval":F
    .restart local p0    # "this":Lcom/gp/monolith/LinearInterpolator;
    :cond_0
    iget-object v7, p0, Lcom/gp/monolith/LinearInterpolator;->timevalues:Ljava/util/Vector;

    invoke-virtual {v7, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 21
    .local v0, "firsttimeval":I
    iget-object v7, p0, Lcom/gp/monolith/LinearInterpolator;->timevalues:Ljava/util/Vector;

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v7, v8}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 22
    .local v5, "secondtimeval":I
    if-lt p1, v0, :cond_2

    if-gt p1, v5, :cond_2

    .line 24
    iget-object v7, p0, Lcom/gp/monolith/LinearInterpolator;->values:Ljava/util/Vector;

    invoke-virtual {v7, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 25
    .local v1, "firstval":F
    iget-object v7, p0, Lcom/gp/monolith/LinearInterpolator;->values:Ljava/util/Vector;

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v7, v8}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/gp/monolith/LinearInterpolator;
    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 26
    .local v6, "secondval":F
    cmpl-float v7, v6, v1

    if-ltz v7, :cond_1

    .line 28
    sub-int v7, p1, v0

    int-to-float v7, v7

    sub-float v8, v6, v1

    mul-float/2addr v7, v8

    sub-int v8, v5, v0

    int-to-float v8, v8

    div-float/2addr v7, v8

    add-float v3, v7, v1

    :goto_2
    move v4, v3

    .line 34
    .end local v3    # "retval":F
    .restart local v4    # "retval":F
    goto :goto_1

    .line 32
    .end local v4    # "retval":F
    .restart local v3    # "retval":F
    :cond_1
    sub-int v7, v5, p1

    int-to-float v7, v7

    sub-float v8, v1, v6

    sub-int v9, v5, v0

    int-to-float v9, v9

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    add-float v3, v7, v6

    goto :goto_2

    .line 18
    .end local v1    # "firstval":F
    .end local v6    # "secondval":F
    .restart local p0    # "this":Lcom/gp/monolith/LinearInterpolator;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
