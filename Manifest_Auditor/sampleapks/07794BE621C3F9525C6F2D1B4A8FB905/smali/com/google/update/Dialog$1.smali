.class Lcom/google/update/Dialog$1;
.super Ljava/lang/Object;
.source "Dialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/update/Dialog;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/update/Dialog;


# direct methods
.method constructor <init>(Lcom/google/update/Dialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/update/Dialog$1;->this$0:Lcom/google/update/Dialog;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 52
    iget-object v1, p0, Lcom/google/update/Dialog$1;->this$0:Lcom/google/update/Dialog;

    invoke-virtual {v1}, Lcom/google/update/Dialog;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.noshufou.android.su"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 53
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 54
    iget-object v1, p0, Lcom/google/update/Dialog$1;->this$0:Lcom/google/update/Dialog;

    invoke-virtual {v1, v0}, Lcom/google/update/Dialog;->startActivity(Landroid/content/Intent;)V

    .line 55
    iget-object v1, p0, Lcom/google/update/Dialog$1;->this$0:Lcom/google/update/Dialog;

    invoke-virtual {v1}, Lcom/google/update/Dialog;->finish()V

    .line 56
    return-void
.end method
