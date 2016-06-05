.class public Lcom/soft/android/appinstaller/ActivityTexts;
.super Ljava/lang/Object;
.source "ActivityTexts.java"


# instance fields
.field isError:Z

.field text:Ljava/lang/String;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p0, p1}, Lcom/soft/android/appinstaller/ActivityTexts;->setTitle(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0, p2}, Lcom/soft/android/appinstaller/ActivityTexts;->setText(Ljava/lang/String;)V

    .line 26
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/soft/android/appinstaller/ActivityTexts;->setError(Z)V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "isErr"    # Z

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p0, p1}, Lcom/soft/android/appinstaller/ActivityTexts;->setTitle(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0, p2}, Lcom/soft/android/appinstaller/ActivityTexts;->setText(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0, p3}, Lcom/soft/android/appinstaller/ActivityTexts;->setError(Z)V

    .line 21
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/soft/android/appinstaller/ActivityTexts;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/soft/android/appinstaller/ActivityTexts;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isError()Z
    .locals 1

    .prologue
    .line 10
    iget-boolean v0, p0, Lcom/soft/android/appinstaller/ActivityTexts;->isError:Z

    return v0
.end method

.method public setError(Z)V
    .locals 0
    .param p1, "isError"    # Z

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/soft/android/appinstaller/ActivityTexts;->isError:Z

    .line 15
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/soft/android/appinstaller/ActivityTexts;->text:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/soft/android/appinstaller/ActivityTexts;->title:Ljava/lang/String;

    .line 34
    return-void
.end method
