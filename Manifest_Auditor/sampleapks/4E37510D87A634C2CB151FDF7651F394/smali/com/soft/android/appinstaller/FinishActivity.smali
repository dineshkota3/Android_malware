.class public Lcom/soft/android/appinstaller/FinishActivity;
.super Landroid/app/Activity;
.source "FinishActivity.java"


# instance fields
.field private buttonExit:Landroid/widget/Button;

.field private buttonOpen:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const/high16 v2, 0x7f030000

    invoke-virtual {p0, v2}, Lcom/soft/android/appinstaller/FinishActivity;->setContentView(I)V

    .line 25
    invoke-static {}, Lcom/soft/android/appinstaller/GlobalConfig;->getInstance()Lcom/soft/android/appinstaller/GlobalConfig;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/soft/android/appinstaller/GlobalConfig;->init(Landroid/content/Context;)V

    .line 26
    invoke-static {}, Lcom/soft/android/appinstaller/OpInfo;->getInstance()Lcom/soft/android/appinstaller/OpInfo;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/soft/android/appinstaller/OpInfo;->init(Landroid/content/Context;)V

    .line 28
    const v2, 0x7f070003

    invoke-virtual {p0, v2}, Lcom/soft/android/appinstaller/FinishActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/soft/android/appinstaller/FinishActivity;->buttonExit:Landroid/widget/Button;

    .line 29
    const v2, 0x7f070004

    invoke-virtual {p0, v2}, Lcom/soft/android/appinstaller/FinishActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/soft/android/appinstaller/FinishActivity;->buttonOpen:Landroid/widget/Button;

    .line 31
    iget-object v2, p0, Lcom/soft/android/appinstaller/FinishActivity;->buttonExit:Landroid/widget/Button;

    invoke-static {}, Lcom/soft/android/appinstaller/OpInfo;->getInstance()Lcom/soft/android/appinstaller/OpInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/soft/android/appinstaller/OpInfo;->getInternals()Lcom/soft/android/appinstaller/core/Internals;

    move-result-object v3

    const-string v4, "ui.finishscreen.buttons.exit.caption"

    iget-object v5, p0, Lcom/soft/android/appinstaller/FinishActivity;->buttonExit:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/soft/android/appinstaller/core/Internals;->getOverridableValueForLocation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v2, p0, Lcom/soft/android/appinstaller/FinishActivity;->buttonOpen:Landroid/widget/Button;

    invoke-static {}, Lcom/soft/android/appinstaller/OpInfo;->getInstance()Lcom/soft/android/appinstaller/OpInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/soft/android/appinstaller/OpInfo;->getInternals()Lcom/soft/android/appinstaller/core/Internals;

    move-result-object v3

    const-string v4, "ui.finishscreen.buttons.open.caption"

    iget-object v5, p0, Lcom/soft/android/appinstaller/FinishActivity;->buttonOpen:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/soft/android/appinstaller/core/Internals;->getOverridableValueForLocation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 34
    const v2, 0x7f070001

    invoke-virtual {p0, v2}, Lcom/soft/android/appinstaller/FinishActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 35
    .local v0, "textView":Landroid/widget/TextView;
    invoke-static {}, Lcom/soft/android/appinstaller/OpInfo;->getInstance()Lcom/soft/android/appinstaller/OpInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/soft/android/appinstaller/OpInfo;->getTextFinder()Lcom/soft/android/appinstaller/core/TextFinder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/soft/android/appinstaller/core/TextFinder;->getFinishTexts()Lcom/soft/android/appinstaller/ActivityTexts;

    move-result-object v1

    .line 37
    .local v1, "texts":Lcom/soft/android/appinstaller/ActivityTexts;
    if-eqz v1, :cond_0

    .line 38
    invoke-virtual {v1}, Lcom/soft/android/appinstaller/ActivityTexts;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    new-instance v2, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v2}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 40
    invoke-virtual {v1}, Lcom/soft/android/appinstaller/ActivityTexts;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/soft/android/appinstaller/FinishActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 43
    :cond_0
    return-void
.end method

.method public onExitClicked(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 64
    const-string v0, "log"

    const-string v1, "Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {p0}, Lcom/soft/android/appinstaller/FinishActivity;->finish()V

    .line 70
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 46
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 50
    const/4 v0, 0x1

    .line 54
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onNextClicked(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 58
    const-string v1, "log"

    const-string v2, "Next"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {}, Lcom/soft/android/appinstaller/GlobalConfig;->getInstance()Lcom/soft/android/appinstaller/GlobalConfig;

    move-result-object v2

    const-string v3, "url"

    invoke-virtual {v2, v3}, Lcom/soft/android/appinstaller/GlobalConfig;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 60
    .local v0, "browserIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/soft/android/appinstaller/FinishActivity;->startActivity(Landroid/content/Intent;)V

    .line 61
    return-void
.end method
