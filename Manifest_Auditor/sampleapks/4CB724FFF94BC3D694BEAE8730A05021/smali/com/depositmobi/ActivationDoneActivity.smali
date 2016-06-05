.class public Lcom/depositmobi/ActivationDoneActivity;
.super Landroid/app/Activity;
.source "ActivationDoneActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mTextView:Landroid/widget/TextView;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f070001

    if-ne v1, v2, :cond_0

    .line 58
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    .line 59
    iget-object v2, p0, Lcom/depositmobi/ActivationDoneActivity;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 58
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 60
    .local v0, "browserIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/depositmobi/ActivationDoneActivity;->startActivity(Landroid/content/Intent;)V

    .line 62
    .end local v0    # "browserIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const/high16 v2, 0x7f030000

    invoke-virtual {p0, v2}, Lcom/depositmobi/ActivationDoneActivity;->setContentView(I)V

    .line 44
    const/high16 v2, 0x7f070000

    invoke-virtual {p0, v2}, Lcom/depositmobi/ActivationDoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/depositmobi/ActivationDoneActivity;->mTextView:Landroid/widget/TextView;

    .line 45
    const v2, 0x7f070001

    invoke-virtual {p0, v2}, Lcom/depositmobi/ActivationDoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/depositmobi/ActivationDoneActivity;->mButton:Landroid/widget/Button;

    .line 46
    iget-object v2, p0, Lcom/depositmobi/ActivationDoneActivity;->mButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    invoke-virtual {p0}, Lcom/depositmobi/ActivationDoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 49
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "URL"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/depositmobi/ActivationDoneActivity;->url:Ljava/lang/String;

    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/depositmobi/ActivationDoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    iget-object v3, p0, Lcom/depositmobi/ActivationDoneActivity;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "text":Ljava/lang/String;
    iget-object v2, p0, Lcom/depositmobi/ActivationDoneActivity;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    return-void
.end method
