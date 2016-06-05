.class public Lcom/masshabit/common/entity/PathEntity;
.super Lcom/masshabit/common/entity/Entity;
.source "PathEntity.java"


# instance fields
.field public mCurve:Lcom/masshabit/common/curve/PolyCubicBezier;


# direct methods
.method public constructor <init>(Lcom/masshabit/common/curve/PolyCubicBezier;)V
    .locals 0
    .param p1, "curve"    # Lcom/masshabit/common/curve/PolyCubicBezier;

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/masshabit/common/entity/Entity;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/masshabit/common/entity/PathEntity;->mCurve:Lcom/masshabit/common/curve/PolyCubicBezier;

    .line 15
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 21
    return-void
.end method
