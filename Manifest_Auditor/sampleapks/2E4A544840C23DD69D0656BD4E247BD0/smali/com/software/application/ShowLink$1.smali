.class Lcom/software/application/ShowLink$1;
.super Ljava/lang/Object;
.source "ShowLink.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/software/application/ShowLink;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/software/application/ShowLink;


# direct methods
.method constructor <init>(Lcom/software/application/ShowLink;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/software/application/ShowLink$1;->this$0:Lcom/software/application/ShowLink;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 38
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/software/application/ShowLink$1;->this$0:Lcom/software/application/ShowLink;

    # getter for: Lcom/software/application/ShowLink;->url:Ljava/lang/String;
    invoke-static {v2}, Lcom/software/application/ShowLink;->access$0(Lcom/software/application/ShowLink;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 39
    .local v0, "browserIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/software/application/ShowLink$1;->this$0:Lcom/software/application/ShowLink;

    invoke-virtual {v1, v0}, Lcom/software/application/ShowLink;->startActivity(Landroid/content/Intent;)V

    .line 40
    return-void
.end method
