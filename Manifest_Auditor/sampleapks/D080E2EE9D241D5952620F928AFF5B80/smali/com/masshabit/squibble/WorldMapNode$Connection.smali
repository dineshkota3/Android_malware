.class public Lcom/masshabit/squibble/WorldMapNode$Connection;
.super Ljava/lang/Object;
.source "WorldMapNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/masshabit/squibble/WorldMapNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Connection"
.end annotation


# instance fields
.field public mPath:Lcom/masshabit/squibble/WorldMapPath;

.field public mPathReverse:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "pathId"    # Ljava/lang/String;
    .param p2, "backwards"    # Z

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 23
    .local v0, "env":Lcom/masshabit/common/Environment;
    iget-object v1, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v1, v1, Lcom/masshabit/common/Level;->mEntityIds:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/masshabit/squibble/WorldMapPath;

    iput-object v1, p0, Lcom/masshabit/squibble/WorldMapNode$Connection;->mPath:Lcom/masshabit/squibble/WorldMapPath;

    .line 24
    iput-boolean p2, p0, Lcom/masshabit/squibble/WorldMapNode$Connection;->mPathReverse:Z

    .line 25
    return-void
.end method
