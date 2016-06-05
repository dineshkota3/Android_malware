.class final Lcom/masshabit/common/tween/Ease$3;
.super Lcom/masshabit/common/tween/Ease$EaseBase;
.source "Ease.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/masshabit/common/tween/Ease;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/masshabit/common/tween/Ease$EaseBase;-><init>()V

    return-void
.end method


# virtual methods
.method public ease(F)F
    .locals 1
    .param p1, "t"    # F

    .prologue
    .line 56
    invoke-static {p1}, Lcom/masshabit/common/tween/Ease;->easeInOut(F)F

    move-result v0

    return v0
.end method
