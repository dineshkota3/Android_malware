.class public Lcom/masshabit/common/tween/Ease;
.super Ljava/lang/Object;
.source "Ease.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/masshabit/common/tween/Ease$EaseBase;
    }
.end annotation


# static fields
.field public static sEaseIn:Lcom/masshabit/common/tween/Ease$EaseBase;

.field public static sEaseInOut:Lcom/masshabit/common/tween/Ease$EaseBase;

.field public static sEaseOut:Lcom/masshabit/common/tween/Ease$EaseBase;

.field public static sEaseOutIn:Lcom/masshabit/common/tween/Ease$EaseBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/masshabit/common/tween/Ease$1;

    invoke-direct {v0}, Lcom/masshabit/common/tween/Ease$1;-><init>()V

    sput-object v0, Lcom/masshabit/common/tween/Ease;->sEaseIn:Lcom/masshabit/common/tween/Ease$EaseBase;

    .line 42
    new-instance v0, Lcom/masshabit/common/tween/Ease$2;

    invoke-direct {v0}, Lcom/masshabit/common/tween/Ease$2;-><init>()V

    sput-object v0, Lcom/masshabit/common/tween/Ease;->sEaseOut:Lcom/masshabit/common/tween/Ease$EaseBase;

    .line 51
    new-instance v0, Lcom/masshabit/common/tween/Ease$3;

    invoke-direct {v0}, Lcom/masshabit/common/tween/Ease$3;-><init>()V

    sput-object v0, Lcom/masshabit/common/tween/Ease;->sEaseInOut:Lcom/masshabit/common/tween/Ease$EaseBase;

    .line 60
    new-instance v0, Lcom/masshabit/common/tween/Ease$4;

    invoke-direct {v0}, Lcom/masshabit/common/tween/Ease$4;-><init>()V

    sput-object v0, Lcom/masshabit/common/tween/Ease;->sEaseOutIn:Lcom/masshabit/common/tween/Ease$EaseBase;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static easeIn(F)F
    .locals 1
    .param p0, "t"    # F

    .prologue
    .line 7
    mul-float v0, p0, p0

    return v0
.end method

.method public static easeInOut(F)F
    .locals 3
    .param p0, "t"    # F

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v1, 0x40000000    # 2.0f

    .line 15
    cmpg-float v0, p0, v2

    if-gez v0, :cond_0

    .line 16
    mul-float v0, p0, v1

    invoke-static {v0}, Lcom/masshabit/common/tween/Ease;->easeIn(F)F

    move-result v0

    div-float/2addr v0, v1

    .line 17
    :goto_0
    return v0

    :cond_0
    sub-float v0, p0, v2

    mul-float/2addr v0, v1

    invoke-static {v0}, Lcom/masshabit/common/tween/Ease;->easeOut(F)F

    move-result v0

    div-float/2addr v0, v1

    add-float/2addr v0, v2

    goto :goto_0
.end method

.method public static easeOut(F)F
    .locals 2
    .param p0, "t"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 11
    sub-float v0, v1, p0

    invoke-static {v0}, Lcom/masshabit/common/tween/Ease;->easeIn(F)F

    move-result v0

    sub-float v0, v1, v0

    return v0
.end method

.method public static easeOutIn(F)F
    .locals 3
    .param p0, "t"    # F

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v1, 0x40000000    # 2.0f

    .line 21
    cmpg-float v0, p0, v2

    if-gez v0, :cond_0

    .line 22
    mul-float v0, p0, v1

    invoke-static {v0}, Lcom/masshabit/common/tween/Ease;->easeOut(F)F

    move-result v0

    div-float/2addr v0, v1

    .line 23
    :goto_0
    return v0

    :cond_0
    sub-float v0, p0, v2

    mul-float/2addr v0, v1

    invoke-static {v0}, Lcom/masshabit/common/tween/Ease;->easeIn(F)F

    move-result v0

    div-float/2addr v0, v1

    add-float/2addr v0, v2

    goto :goto_0
.end method
