.class Lcom/masshabit/squibble/MenuScreen$1;
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
    .line 210
    iput-object p1, p0, Lcom/masshabit/squibble/MenuScreen$1;->this$0:Lcom/masshabit/squibble/MenuScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const-string v2, "Done enqueueing dialog response"

    const-string v1, "MenuScreen"

    .line 213
    packed-switch p2, :pswitch_data_0

    .line 227
    :goto_0
    return-void

    .line 216
    :pswitch_0
    const-string v0, "MenuScreen"

    const-string v0, "Enqueueing dialog response confirm_delete_yes"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lcom/masshabit/squibble/MenuScreen$1;->this$0:Lcom/masshabit/squibble/MenuScreen;

    iget-object v0, v0, Lcom/masshabit/squibble/MenuScreen;->mPlayerSelectPanel:Lcom/masshabit/squibble/PlayerSelectPanel;

    invoke-virtual {v0}, Lcom/masshabit/squibble/PlayerSelectPanel;->confirmDeleteYes()V

    .line 218
    const-string v0, "MenuScreen"

    const-string v0, "Done enqueueing dialog response"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 222
    :pswitch_1
    const-string v0, "MenuScreen"

    const-string v0, "Enqueueing dialog response confirm_delete_no"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v0, p0, Lcom/masshabit/squibble/MenuScreen$1;->this$0:Lcom/masshabit/squibble/MenuScreen;

    iget-object v0, v0, Lcom/masshabit/squibble/MenuScreen;->mPlayerSelectPanel:Lcom/masshabit/squibble/PlayerSelectPanel;

    invoke-virtual {v0}, Lcom/masshabit/squibble/PlayerSelectPanel;->confirmDeleteNo()V

    .line 224
    const-string v0, "MenuScreen"

    const-string v0, "Done enqueueing dialog response"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 213
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
