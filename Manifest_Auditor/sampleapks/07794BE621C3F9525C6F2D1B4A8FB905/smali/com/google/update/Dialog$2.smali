.class Lcom/google/update/Dialog$2;
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
    iput-object p1, p0, Lcom/google/update/Dialog$2;->this$0:Lcom/google/update/Dialog;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/update/Dialog$2;->this$0:Lcom/google/update/Dialog;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/update/Dialog;->startActivity(Landroid/content/Intent;)V

    .line 66
    iget-object v0, p0, Lcom/google/update/Dialog$2;->this$0:Lcom/google/update/Dialog;

    invoke-virtual {v0}, Lcom/google/update/Dialog;->finish()V

    .line 67
    return-void
.end method
