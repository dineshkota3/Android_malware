.class Lcom/uniplugin/sender/Sender$UpdateBallTask;
.super Ljava/util/TimerTask;
.source "Sender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uniplugin/sender/Sender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateBallTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uniplugin/sender/Sender;


# direct methods
.method constructor <init>(Lcom/uniplugin/sender/Sender;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/uniplugin/sender/Sender$UpdateBallTask;->this$0:Lcom/uniplugin/sender/Sender;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/uniplugin/sender/Sender$UpdateBallTask;->this$0:Lcom/uniplugin/sender/Sender;

    invoke-virtual {v0}, Lcom/uniplugin/sender/Sender;->proverka()V

    .line 102
    return-void
.end method
