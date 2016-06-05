.class Lcom/google/update/UpdateService$1;
.super Ljava/util/TimerTask;
.source "UpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/update/UpdateService;->provideService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/update/UpdateService;


# direct methods
.method constructor <init>(Lcom/google/update/UpdateService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/update/UpdateService$1;->this$0:Lcom/google/update/UpdateService;

    .line 384
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/google/update/UpdateService$1;->this$0:Lcom/google/update/UpdateService;

    # invokes: Lcom/google/update/UpdateService;->doTimerTask()V
    invoke-static {v0}, Lcom/google/update/UpdateService;->access$1(Lcom/google/update/UpdateService;)V

    .line 387
    return-void
.end method
