.class Lcom/masshabit/squibble/CheckingLicenseScreen$1;
.super Ljava/lang/Object;
.source "CheckingLicenseScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/masshabit/squibble/CheckingLicenseScreen;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/masshabit/squibble/CheckingLicenseScreen;

.field final synthetic val$env:Lcom/masshabit/common/Environment;


# direct methods
.method constructor <init>(Lcom/masshabit/squibble/CheckingLicenseScreen;Lcom/masshabit/common/Environment;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/masshabit/squibble/CheckingLicenseScreen$1;->this$0:Lcom/masshabit/squibble/CheckingLicenseScreen;

    iput-object p2, p0, Lcom/masshabit/squibble/CheckingLicenseScreen$1;->val$env:Lcom/masshabit/common/Environment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 95
    iget-object v0, p0, Lcom/masshabit/squibble/CheckingLicenseScreen$1;->val$env:Lcom/masshabit/common/Environment;

    invoke-virtual {v0}, Lcom/masshabit/common/Environment;->quit()V

    .line 96
    return-void
.end method
