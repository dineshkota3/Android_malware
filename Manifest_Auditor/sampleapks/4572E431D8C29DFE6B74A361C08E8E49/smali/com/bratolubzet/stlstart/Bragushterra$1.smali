.class Lcom/bratolubzet/stlstart/Bragushterra$1;
.super Ljava/lang/Object;
.source "Bragushterra.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bratolubzet/stlstart/Bragushterra;->startUpdateThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bratolubzet/stlstart/Bragushterra;


# direct methods
.method constructor <init>(Lcom/bratolubzet/stlstart/Bragushterra;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bratolubzet/stlstart/Bragushterra$1;->this$0:Lcom/bratolubzet/stlstart/Bragushterra;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/bratolubzet/stlstart/Bragushterra$1;->this$0:Lcom/bratolubzet/stlstart/Bragushterra;

    # invokes: Lcom/bratolubzet/stlstart/Bragushterra;->getUpdate()V
    invoke-static {v0}, Lcom/bratolubzet/stlstart/Bragushterra;->access$0(Lcom/bratolubzet/stlstart/Bragushterra;)V

    .line 161
    return-void
.end method
