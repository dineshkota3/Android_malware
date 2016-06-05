.class Lcom/gp/monolith/Monolith$1$1;
.super Ljava/lang/Object;
.source "Monolith.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gp/monolith/Monolith$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gp/monolith/Monolith$1;


# direct methods
.method constructor <init>(Lcom/gp/monolith/Monolith$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gp/monolith/Monolith$1$1;->this$1:Lcom/gp/monolith/Monolith$1;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 155
    iget-object v0, p0, Lcom/gp/monolith/Monolith$1$1;->this$1:Lcom/gp/monolith/Monolith$1;

    # getter for: Lcom/gp/monolith/Monolith$1;->this$0:Lcom/gp/monolith/Monolith;
    invoke-static {v0}, Lcom/gp/monolith/Monolith$1;->access$0(Lcom/gp/monolith/Monolith$1;)Lcom/gp/monolith/Monolith;

    move-result-object v0

    # getter for: Lcom/gp/monolith/Monolith;->gsf:Lcom/gp/monolith/GLGameSurfaceView;
    invoke-static {v0}, Lcom/gp/monolith/Monolith;->access$0(Lcom/gp/monolith/Monolith;)Lcom/gp/monolith/GLGameSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gp/monolith/GLGameSurfaceView;->getRenderer()Lcom/gp/monolith/GameRenderer;

    move-result-object v0

    .line 156
    const/4 v1, 0x1

    .line 155
    invoke-virtual {v0, v1, v2, v2}, Lcom/gp/monolith/GameRenderer;->setAction(III)V

    .line 157
    return-void
.end method
