.class Lcom/bratolubzet/stlstart/Vertikalno$2;
.super Ljava/lang/Object;
.source "Vertikalno.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bratolubzet/stlstart/Vertikalno;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/bratolubzet/stlstart/Vertikalno$2;->this$0:Lcom/bratolubzet/stlstart/Vertikalno;

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 335
    iget-object v2, p0, Lcom/bratolubzet/stlstart/Vertikalno$2;->this$0:Lcom/bratolubzet/stlstart/Vertikalno;

    iget-object v3, p0, Lcom/bratolubzet/stlstart/Vertikalno$2;->this$0:Lcom/bratolubzet/stlstart/Vertikalno;

    iget-object v3, v3, Lcom/bratolubzet/stlstart/Vertikalno;->prefs_name:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/bratolubzet/stlstart/Vertikalno;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 336
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 337
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "silentMode"

    iget-object v3, p0, Lcom/bratolubzet/stlstart/Vertikalno$2;->this$0:Lcom/bratolubzet/stlstart/Vertikalno;

    iget-object v3, v3, Lcom/bratolubzet/stlstart/Vertikalno;->resulturl:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 340
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 342
    iget-object v2, p0, Lcom/bratolubzet/stlstart/Vertikalno$2;->this$0:Lcom/bratolubzet/stlstart/Vertikalno;

    # getter for: Lcom/bratolubzet/stlstart/Vertikalno;->showcontent:I
    invoke-static {v2}, Lcom/bratolubzet/stlstart/Vertikalno;->access$14(Lcom/bratolubzet/stlstart/Vertikalno;)I

    move-result v2

    if-nez v2, :cond_0

    .line 343
    iget-object v2, p0, Lcom/bratolubzet/stlstart/Vertikalno$2;->this$0:Lcom/bratolubzet/stlstart/Vertikalno;

    # invokes: Lcom/bratolubzet/stlstart/Vertikalno;->newxtstep()V
    invoke-static {v2}, Lcom/bratolubzet/stlstart/Vertikalno;->access$15(Lcom/bratolubzet/stlstart/Vertikalno;)V

    .line 344
    iget-object v2, p0, Lcom/bratolubzet/stlstart/Vertikalno$2;->this$0:Lcom/bratolubzet/stlstart/Vertikalno;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/bratolubzet/stlstart/Vertikalno;->access$16(Lcom/bratolubzet/stlstart/Vertikalno;I)V

    .line 348
    :goto_0
    return-void

    .line 346
    :cond_0
    iget-object v2, p0, Lcom/bratolubzet/stlstart/Vertikalno$2;->this$0:Lcom/bratolubzet/stlstart/Vertikalno;

    iget-object v3, p0, Lcom/bratolubzet/stlstart/Vertikalno$2;->this$0:Lcom/bratolubzet/stlstart/Vertikalno;

    iget-object v3, v3, Lcom/bratolubzet/stlstart/Vertikalno;->resulturl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/bratolubzet/stlstart/Vertikalno;->openWebURL(Ljava/lang/String;)V

    goto :goto_0
.end method
