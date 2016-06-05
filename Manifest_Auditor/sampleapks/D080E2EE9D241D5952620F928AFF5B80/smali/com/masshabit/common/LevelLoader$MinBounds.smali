.class public Lcom/masshabit/common/LevelLoader$MinBounds;
.super Ljava/lang/Object;
.source "LevelLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/masshabit/common/LevelLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MinBounds"
.end annotation


# instance fields
.field public left:F

.field final synthetic this$0:Lcom/masshabit/common/LevelLoader;

.field public top:F


# direct methods
.method public constructor <init>(Lcom/masshabit/common/LevelLoader;)V
    .locals 1

    .prologue
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 50
    iput-object p1, p0, Lcom/masshabit/common/LevelLoader$MinBounds;->this$0:Lcom/masshabit/common/LevelLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/masshabit/common/LevelLoader$MinBounds;->left:F

    iput v0, p0, Lcom/masshabit/common/LevelLoader$MinBounds;->top:F

    return-void
.end method


# virtual methods
.method public addChild(FF)V
    .locals 1
    .param p1, "minx"    # F
    .param p2, "miny"    # F

    .prologue
    .line 54
    iget v0, p0, Lcom/masshabit/common/LevelLoader$MinBounds;->left:F

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/masshabit/common/LevelLoader$MinBounds;->left:F

    .line 55
    iget v0, p0, Lcom/masshabit/common/LevelLoader$MinBounds;->top:F

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/masshabit/common/LevelLoader$MinBounds;->top:F

    .line 56
    return-void
.end method

.method public set(FF)V
    .locals 0
    .param p1, "minx"    # F
    .param p2, "miny"    # F

    .prologue
    .line 51
    iput p1, p0, Lcom/masshabit/common/LevelLoader$MinBounds;->left:F

    iput p2, p0, Lcom/masshabit/common/LevelLoader$MinBounds;->top:F

    return-void
.end method
