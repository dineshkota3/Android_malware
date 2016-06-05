.class final Lcom/madhouse/android/ads/ccccc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic _:Landroid/webkit/JsPromptResult;

.field private final synthetic __:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/madhouse/android/ads/c;Landroid/webkit/JsPromptResult;Landroid/widget/EditText;)V
    .locals 0

    iput-object p2, p0, Lcom/madhouse/android/ads/ccccc;->_:Landroid/webkit/JsPromptResult;

    iput-object p3, p0, Lcom/madhouse/android/ads/ccccc;->__:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/madhouse/android/ads/ccccc;->_:Landroid/webkit/JsPromptResult;

    iget-object v1, p0, Lcom/madhouse/android/ads/ccccc;->__:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    return-void
.end method
