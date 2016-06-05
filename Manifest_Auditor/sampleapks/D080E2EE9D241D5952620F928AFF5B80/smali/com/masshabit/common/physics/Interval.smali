.class public Lcom/masshabit/common/physics/Interval;
.super Ljava/lang/Object;
.source "Interval.java"


# instance fields
.field public max:F

.field public min:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/masshabit/common/physics/Interval;->min:F

    .line 6
    const v0, -0x800001

    iput v0, p0, Lcom/masshabit/common/physics/Interval;->max:F

    return-void
.end method
