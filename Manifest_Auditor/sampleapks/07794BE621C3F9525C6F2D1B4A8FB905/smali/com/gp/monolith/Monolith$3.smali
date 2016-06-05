.class Lcom/gp/monolith/Monolith$3;
.super Ljava/lang/Object;
.source "Monolith.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gp/monolith/Monolith;->initActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gp/monolith/Monolith;


# direct methods
.method constructor <init>(Lcom/gp/monolith/Monolith;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gp/monolith/Monolith$3;->this$0:Lcom/gp/monolith/Monolith;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/gp/monolith/Monolith$3;)Lcom/gp/monolith/Monolith;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/gp/monolith/Monolith$3;->this$0:Lcom/gp/monolith/Monolith;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/gp/monolith/Monolith$3;->this$0:Lcom/gp/monolith/Monolith;

    # getter for: Lcom/gp/monolith/Monolith;->gsf:Lcom/gp/monolith/GLGameSurfaceView;
    invoke-static {v0}, Lcom/gp/monolith/Monolith;->access$0(Lcom/gp/monolith/Monolith;)Lcom/gp/monolith/GLGameSurfaceView;

    move-result-object v0

    new-instance v1, Lcom/gp/monolith/Monolith$3$1;

    invoke-direct {v1, p0}, Lcom/gp/monolith/Monolith$3$1;-><init>(Lcom/gp/monolith/Monolith$3;)V

    invoke-virtual {v0, v1}, Lcom/gp/monolith/GLGameSurfaceView;->queueEvent(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :goto_0
    return-void

    .line 192
    :catch_0
    move-exception v0

    goto :goto_0
.end method
