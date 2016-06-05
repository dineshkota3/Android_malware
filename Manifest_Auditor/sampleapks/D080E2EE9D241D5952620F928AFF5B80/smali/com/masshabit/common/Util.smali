.class public Lcom/masshabit/common/Util;
.super Ljava/lang/Object;
.source "Util.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clamp(FFF)F
    .locals 1
    .param p0, "value"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .prologue
    .line 7
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    move v0, p1

    .line 11
    :goto_0
    return v0

    .line 9
    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    move v0, p2

    .line 10
    goto :goto_0

    :cond_1
    move v0, p0

    .line 11
    goto :goto_0
.end method

.method public static clamp(III)I
    .locals 1
    .param p0, "value"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 15
    if-ge p0, p1, :cond_0

    move v0, p1

    .line 19
    :goto_0
    return v0

    .line 17
    :cond_0
    if-le p0, p2, :cond_1

    move v0, p2

    .line 18
    goto :goto_0

    :cond_1
    move v0, p0

    .line 19
    goto :goto_0
.end method
