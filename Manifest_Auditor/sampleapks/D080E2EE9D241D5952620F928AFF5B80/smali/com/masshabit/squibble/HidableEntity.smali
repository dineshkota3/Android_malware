.class public Lcom/masshabit/squibble/HidableEntity;
.super Lcom/masshabit/common/entity/StaticEntity;
.source "HidableEntity.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "HidableEntity"


# instance fields
.field protected mVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/masshabit/common/entity/StaticEntity;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/masshabit/squibble/HidableEntity;->mVisible:Z

    if-eqz v0, :cond_0

    .line 34
    invoke-super {p0, p1}, Lcom/masshabit/common/entity/StaticEntity;->draw(Landroid/graphics/Canvas;)V

    .line 36
    :cond_0
    return-void
.end method

.method public init()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/masshabit/squibble/HidableEntity;->mVisible:Z

    .line 21
    invoke-super {p0}, Lcom/masshabit/common/entity/StaticEntity;->init()V

    .line 22
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/masshabit/squibble/HidableEntity;->mVisible:Z

    .line 27
    return-void
.end method
