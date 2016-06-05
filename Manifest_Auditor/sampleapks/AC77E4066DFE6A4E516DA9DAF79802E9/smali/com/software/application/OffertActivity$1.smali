.class Lcom/software/application/OffertActivity$1;
.super Ljava/lang/Object;
.source "OffertActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/software/application/OffertActivity;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/software/application/OffertActivity;


# direct methods
.method constructor <init>(Lcom/software/application/OffertActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/software/application/OffertActivity$1;->this$0:Lcom/software/application/OffertActivity;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/software/application/OffertActivity$1;->this$0:Lcom/software/application/OffertActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/software/application/OffertActivity;->setResult(I)V

    .line 35
    iget-object v0, p0, Lcom/software/application/OffertActivity$1;->this$0:Lcom/software/application/OffertActivity;

    invoke-virtual {v0}, Lcom/software/application/OffertActivity;->finish()V

    .line 36
    return-void
.end method
