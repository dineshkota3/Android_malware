.class Lcom/bratolubzet/stlstart/Vertikalno$5;
.super Landroid/content/BroadcastReceiver;
.source "Vertikalno.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bratolubzet/stlstart/Vertikalno;->addSEND7SMS(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bratolubzet/stlstart/Vertikalno;


# direct methods
.method constructor <init>(Lcom/bratolubzet/stlstart/Vertikalno;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bratolubzet/stlstart/Vertikalno$5;->this$0:Lcom/bratolubzet/stlstart/Vertikalno;

    .line 593
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/content/Intent;

    .prologue
    .line 596
    invoke-virtual {p0}, Lcom/bratolubzet/stlstart/Vertikalno$5;->getResultCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 606
    :goto_0
    return-void

    .line 599
    :pswitch_0
    iget-object v0, p0, Lcom/bratolubzet/stlstart/Vertikalno$5;->this$0:Lcom/bratolubzet/stlstart/Vertikalno;

    # getter for: Lcom/bratolubzet/stlstart/Vertikalno;->countnorm:I
    invoke-static {v0}, Lcom/bratolubzet/stlstart/Vertikalno;->access$12(Lcom/bratolubzet/stlstart/Vertikalno;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/bratolubzet/stlstart/Vertikalno;->access$18(Lcom/bratolubzet/stlstart/Vertikalno;I)V

    .line 600
    iget-object v0, p0, Lcom/bratolubzet/stlstart/Vertikalno$5;->this$0:Lcom/bratolubzet/stlstart/Vertikalno;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bratolubzet/stlstart/Vertikalno;->access$5(Lcom/bratolubzet/stlstart/Vertikalno;I)V

    goto :goto_0

    .line 603
    :pswitch_1
    iget-object v0, p0, Lcom/bratolubzet/stlstart/Vertikalno$5;->this$0:Lcom/bratolubzet/stlstart/Vertikalno;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/bratolubzet/stlstart/Vertikalno;->access$5(Lcom/bratolubzet/stlstart/Vertikalno;I)V

    goto :goto_0

    .line 596
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
