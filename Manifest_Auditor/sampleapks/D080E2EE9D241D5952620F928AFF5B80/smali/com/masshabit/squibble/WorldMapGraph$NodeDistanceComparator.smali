.class public Lcom/masshabit/squibble/WorldMapGraph$NodeDistanceComparator;
.super Ljava/lang/Object;
.source "WorldMapGraph.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/masshabit/squibble/WorldMapGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "NodeDistanceComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/masshabit/squibble/WorldMapNode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/masshabit/squibble/WorldMapGraph;


# direct methods
.method protected constructor <init>(Lcom/masshabit/squibble/WorldMapGraph;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/masshabit/squibble/WorldMapGraph$NodeDistanceComparator;->this$0:Lcom/masshabit/squibble/WorldMapGraph;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/masshabit/squibble/WorldMapNode;Lcom/masshabit/squibble/WorldMapNode;)I
    .locals 5
    .param p1, "first"    # Lcom/masshabit/squibble/WorldMapNode;
    .param p2, "second"    # Lcom/masshabit/squibble/WorldMapNode;

    .prologue
    const/4 v4, 0x0

    .line 20
    iget-object v2, p0, Lcom/masshabit/squibble/WorldMapGraph$NodeDistanceComparator;->this$0:Lcom/masshabit/squibble/WorldMapGraph;

    iget-object v2, v2, Lcom/masshabit/squibble/WorldMapGraph;->mDistance:[F

    iget v3, p1, Lcom/masshabit/squibble/WorldMapNode;->mNodeIndex:I

    aget v0, v2, v3

    .line 21
    .local v0, "val1":F
    iget-object v2, p0, Lcom/masshabit/squibble/WorldMapGraph$NodeDistanceComparator;->this$0:Lcom/masshabit/squibble/WorldMapGraph;

    iget-object v2, v2, Lcom/masshabit/squibble/WorldMapGraph;->mDistance:[F

    iget v3, p2, Lcom/masshabit/squibble/WorldMapNode;->mNodeIndex:I

    aget v1, v2, v3

    .line 22
    .local v1, "val2":F
    sub-float v2, v0, v1

    cmpg-float v2, v2, v4

    if-gez v2, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    sub-float v2, v0, v1

    cmpl-float v2, v2, v4

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 15
    check-cast p1, Lcom/masshabit/squibble/WorldMapNode;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/masshabit/squibble/WorldMapNode;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/masshabit/squibble/WorldMapGraph$NodeDistanceComparator;->compare(Lcom/masshabit/squibble/WorldMapNode;Lcom/masshabit/squibble/WorldMapNode;)I

    move-result v0

    return v0
.end method
