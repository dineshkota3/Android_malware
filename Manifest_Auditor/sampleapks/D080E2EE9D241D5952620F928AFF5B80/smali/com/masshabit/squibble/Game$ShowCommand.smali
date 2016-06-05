.class public Lcom/masshabit/squibble/Game$ShowCommand;
.super Ljava/lang/Object;
.source "Game.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/masshabit/squibble/Game;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ShowCommand"
.end annotation


# instance fields
.field public mDelay:F

.field public mScreenType:I

.field final synthetic this$0:Lcom/masshabit/squibble/Game;


# direct methods
.method public constructor <init>(Lcom/masshabit/squibble/Game;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/masshabit/squibble/Game$ShowCommand;->this$0:Lcom/masshabit/squibble/Game;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public set(IF)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "delay"    # F

    .prologue
    .line 84
    iput p1, p0, Lcom/masshabit/squibble/Game$ShowCommand;->mScreenType:I

    .line 85
    iput p2, p0, Lcom/masshabit/squibble/Game$ShowCommand;->mDelay:F

    .line 86
    return-void
.end method
