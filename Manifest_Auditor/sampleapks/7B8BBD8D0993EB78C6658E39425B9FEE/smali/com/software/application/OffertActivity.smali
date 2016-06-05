.class public Lcom/software/application/OffertActivity;
.super Landroid/app/Activity;
.source "OffertActivity.java"


# static fields
.field private static final RESULT_OK:I = 0x1


# instance fields
.field private backButton:Landroid/widget/Button;

.field private yesButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private setListeners()V
    .locals 2

    .prologue
    .line 29
    const v0, 0x7f09000d

    invoke-virtual {p0, v0}, Lcom/software/application/OffertActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/software/application/OffertActivity;->yesButton:Landroid/widget/Button;

    .line 30
    iget-object v0, p0, Lcom/software/application/OffertActivity;->yesButton:Landroid/widget/Button;

    new-instance v1, Lcom/software/application/OffertActivity$1;

    invoke-direct {v1, p0}, Lcom/software/application/OffertActivity$1;-><init>(Lcom/software/application/OffertActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    const v0, 0x7f09000c

    invoke-virtual {p0, v0}, Lcom/software/application/OffertActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/software/application/OffertActivity;->backButton:Landroid/widget/Button;

    .line 39
    iget-object v0, p0, Lcom/software/application/OffertActivity;->backButton:Landroid/widget/Button;

    new-instance v1, Lcom/software/application/OffertActivity$2;

    invoke-direct {v1, p0}, Lcom/software/application/OffertActivity$2;-><init>(Lcom/software/application/OffertActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/software/application/OffertActivity;->setResult(I)V

    .line 24
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/software/application/OffertActivity;->setContentView(I)V

    .line 25
    invoke-direct {p0}, Lcom/software/application/OffertActivity;->setListeners()V

    .line 26
    return-void
.end method
