.class Lcom/masshabit/squibble/MenuScreen$2;
.super Ljava/lang/Object;
.source "MenuScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/masshabit/squibble/MenuScreen;->createDialogListener(I)Landroid/content/DialogInterface$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/masshabit/squibble/MenuScreen;


# direct methods
.method constructor <init>(Lcom/masshabit/squibble/MenuScreen;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/masshabit/squibble/MenuScreen$2;->this$0:Lcom/masshabit/squibble/MenuScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 233
    packed-switch p2, :pswitch_data_0

    .line 244
    .end local p1    # "dialog":Landroid/content/DialogInterface;
    :goto_0
    return-void

    .line 236
    .restart local p1    # "dialog":Landroid/content/DialogInterface;
    :pswitch_0
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 237
    .local v0, "edit":Landroid/widget/EditText;
    iget-object v1, p0, Lcom/masshabit/squibble/MenuScreen$2;->this$0:Lcom/masshabit/squibble/MenuScreen;

    iget-object v1, v1, Lcom/masshabit/squibble/MenuScreen;->mPlayerSelectPanel:Lcom/masshabit/squibble/PlayerSelectPanel;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/masshabit/squibble/PlayerSelectPanel;->enterNameYes(Ljava/lang/String;)V

    goto :goto_0

    .line 241
    .end local v0    # "edit":Landroid/widget/EditText;
    .restart local p1    # "dialog":Landroid/content/DialogInterface;
    :pswitch_1
    iget-object v1, p0, Lcom/masshabit/squibble/MenuScreen$2;->this$0:Lcom/masshabit/squibble/MenuScreen;

    iget-object v1, v1, Lcom/masshabit/squibble/MenuScreen;->mPlayerSelectPanel:Lcom/masshabit/squibble/PlayerSelectPanel;

    invoke-virtual {v1}, Lcom/masshabit/squibble/PlayerSelectPanel;->enterNameNo()V

    goto :goto_0

    .line 233
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
