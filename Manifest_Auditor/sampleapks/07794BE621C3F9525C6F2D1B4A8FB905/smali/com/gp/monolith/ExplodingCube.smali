.class public Lcom/gp/monolith/ExplodingCube;
.super Ljava/lang/Object;
.source "ExplodingCube.java"


# static fields
.field public static final EXPLOSION_TYPE_NORMAL:I = 0x0

.field public static final EXPLOSION_TYPE_SINGLE:I = 0x1

.field public static final EXPLOSION_TYPE_SPHERE:I = 0x3

.field public static final EXPLOSION_TYPE_SPIRAL:I = 0x2


# instance fields
.field public anglex:F

.field public angley:F

.field public anglez:F

.field public blocktype:I

.field public explosionType:I

.field public frame:I

.field public startTime:J

.field public uax:F

.field public uay:F

.field public uaz:F

.field public ux:F

.field public uy:F

.field public uz:F

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>(FFFFFFFFFFFFII)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "ux"    # F
    .param p5, "uy"    # F
    .param p6, "uz"    # F
    .param p7, "anglex"    # F
    .param p8, "angley"    # F
    .param p9, "anglez"    # F
    .param p10, "uax"    # F
    .param p11, "uay"    # F
    .param p12, "uaz"    # F
    .param p13, "blocktype"    # I
    .param p14, "frame"    # I

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/gp/monolith/ExplodingCube;->x:F

    .line 33
    iput p2, p0, Lcom/gp/monolith/ExplodingCube;->y:F

    .line 34
    iput p3, p0, Lcom/gp/monolith/ExplodingCube;->z:F

    .line 35
    iput p4, p0, Lcom/gp/monolith/ExplodingCube;->ux:F

    .line 36
    iput p5, p0, Lcom/gp/monolith/ExplodingCube;->uy:F

    .line 37
    iput p6, p0, Lcom/gp/monolith/ExplodingCube;->uz:F

    .line 38
    iput p13, p0, Lcom/gp/monolith/ExplodingCube;->blocktype:I

    .line 39
    iput p14, p0, Lcom/gp/monolith/ExplodingCube;->frame:I

    .line 40
    iput v0, p0, Lcom/gp/monolith/ExplodingCube;->anglex:F

    .line 41
    iput v0, p0, Lcom/gp/monolith/ExplodingCube;->angley:F

    .line 42
    iput v0, p0, Lcom/gp/monolith/ExplodingCube;->anglez:F

    .line 43
    iput v0, p0, Lcom/gp/monolith/ExplodingCube;->uax:F

    .line 44
    iput v0, p0, Lcom/gp/monolith/ExplodingCube;->uay:F

    .line 45
    iput v0, p0, Lcom/gp/monolith/ExplodingCube;->uaz:F

    .line 46
    return-void
.end method

.method public constructor <init>(FFFFFFII)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "ux"    # F
    .param p5, "uy"    # F
    .param p6, "uz"    # F
    .param p7, "blocktype"    # I
    .param p8, "frame"    # I

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/gp/monolith/ExplodingCube;->x:F

    .line 14
    iput p2, p0, Lcom/gp/monolith/ExplodingCube;->y:F

    .line 15
    iput p3, p0, Lcom/gp/monolith/ExplodingCube;->z:F

    .line 16
    iput p4, p0, Lcom/gp/monolith/ExplodingCube;->ux:F

    .line 17
    iput p5, p0, Lcom/gp/monolith/ExplodingCube;->uy:F

    .line 18
    iput p6, p0, Lcom/gp/monolith/ExplodingCube;->uz:F

    .line 19
    iput p7, p0, Lcom/gp/monolith/ExplodingCube;->blocktype:I

    .line 20
    iput p8, p0, Lcom/gp/monolith/ExplodingCube;->frame:I

    .line 21
    iput v0, p0, Lcom/gp/monolith/ExplodingCube;->anglex:F

    .line 22
    iput v0, p0, Lcom/gp/monolith/ExplodingCube;->angley:F

    .line 23
    iput v0, p0, Lcom/gp/monolith/ExplodingCube;->anglez:F

    .line 24
    iput v0, p0, Lcom/gp/monolith/ExplodingCube;->uax:F

    .line 25
    iput v0, p0, Lcom/gp/monolith/ExplodingCube;->uay:F

    .line 26
    iput v0, p0, Lcom/gp/monolith/ExplodingCube;->uaz:F

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/gp/monolith/ExplodingCube;->explosionType:I

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gp/monolith/ExplodingCube;->startTime:J

    .line 29
    return-void
.end method
