.class public Lcom/admogo/obj/Extra;
.super Ljava/lang/Object;
.source "Extra.java"


# instance fields
.field public bgAlpha:I

.field public bgBlue:I

.field public bgGreen:I

.field public bgRed:I

.field public cycleTime:I

.field public fgAlpha:I

.field public fgBlue:I

.field public fgGreen:I

.field public fgRed:I

.field public locationOn:I

.field public transition:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0xff

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput v2, p0, Lcom/admogo/obj/Extra;->fgRed:I

    .line 13
    iput v2, p0, Lcom/admogo/obj/Extra;->fgGreen:I

    .line 14
    iput v2, p0, Lcom/admogo/obj/Extra;->fgBlue:I

    .line 15
    iput v1, p0, Lcom/admogo/obj/Extra;->fgAlpha:I

    .line 17
    iput v0, p0, Lcom/admogo/obj/Extra;->bgRed:I

    .line 18
    iput v0, p0, Lcom/admogo/obj/Extra;->bgGreen:I

    .line 19
    iput v0, p0, Lcom/admogo/obj/Extra;->bgBlue:I

    .line 20
    iput v1, p0, Lcom/admogo/obj/Extra;->bgAlpha:I

    .line 22
    const/16 v0, 0x1e

    iput v0, p0, Lcom/admogo/obj/Extra;->cycleTime:I

    .line 23
    iput v1, p0, Lcom/admogo/obj/Extra;->locationOn:I

    .line 24
    iput v1, p0, Lcom/admogo/obj/Extra;->transition:I

    .line 27
    return-void
.end method
