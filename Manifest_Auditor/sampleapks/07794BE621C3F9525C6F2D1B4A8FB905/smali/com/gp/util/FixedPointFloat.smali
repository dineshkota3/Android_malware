.class public Lcom/gp/util/FixedPointFloat;
.super Ljava/lang/Object;
.source "FixedPointFloat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fixedPointToFloat(I)F
    .locals 2
    .param p0, "number"    # I

    .prologue
    .line 14
    int-to-float v0, p0

    const/high16 v1, 0x47800000    # 65536.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public static floatToFixedPoint(F)I
    .locals 1
    .param p0, "number"    # F

    .prologue
    .line 8
    const/high16 v0, 0x47800000    # 65536.0f

    mul-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method
