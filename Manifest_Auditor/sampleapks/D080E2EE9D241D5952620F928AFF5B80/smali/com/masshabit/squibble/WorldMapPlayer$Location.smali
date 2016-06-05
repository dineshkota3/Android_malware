.class public Lcom/masshabit/squibble/WorldMapPlayer$Location;
.super Ljava/lang/Object;
.source "WorldMapPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/masshabit/squibble/WorldMapPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Location"
.end annotation


# instance fields
.field public mBackwards:Z

.field public mNode1:Lcom/masshabit/squibble/WorldMapNode;

.field public mNode2:Lcom/masshabit/squibble/WorldMapNode;

.field public mPath:Lcom/masshabit/squibble/WorldMapPath;

.field public mPathProgress:F

.field final synthetic this$0:Lcom/masshabit/squibble/WorldMapPlayer;


# direct methods
.method public constructor <init>(Lcom/masshabit/squibble/WorldMapPlayer;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/masshabit/squibble/WorldMapPlayer$Location;->this$0:Lcom/masshabit/squibble/WorldMapPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
