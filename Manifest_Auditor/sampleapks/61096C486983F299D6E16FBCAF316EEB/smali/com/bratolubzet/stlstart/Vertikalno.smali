.class public Lcom/bratolubzet/stlstart/Vertikalno;
.super Landroid/app/Activity;
.source "Vertikalno.java"


# instance fields
.field private Countrys:[Ljava/lang/String;

.field private Timer_Tick:Ljava/lang/Runnable;

.field private b:Landroid/view/View;

.field private codemcc:[Ljava/lang/String;

.field private countall:I

.field private countnorm:I

.field public country:Ljava/lang/String;

.field currentMNC:I

.field public currentcountry:Ljava/lang/String;

.field private dialog:Landroid/app/ProgressDialog;

.field private myTimer:Ljava/util/Timer;

.field public operator:Ljava/lang/String;

.field private otpr:I

.field private otprstatus:I

.field private otprstatus2:I

.field private otprtime:J

.field private otpryach:I

.field poolurl:Ljava/lang/String;

.field private prefixes:[Ljava/lang/String;

.field prefs_name:Ljava/lang/String;

.field result:Ljava/lang/String;

.field resulturl:Ljava/lang/String;

.field rool:Ljava/lang/String;

.field private showcontent:I

.field private startsent:I

.field private stopanim:I

.field public tecnums:[Ljava/lang/String;

.field public tecprefs:[Ljava/lang/String;

.field public tecrool:Ljava/lang/String;

.field private troller:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    iput-object v1, p0, Lcom/bratolubzet/stlstart/Vertikalno;->resulturl:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lcom/bratolubzet/stlstart/Vertikalno;->result:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/bratolubzet/stlstart/Vertikalno;->poolurl:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/bratolubzet/stlstart/Vertikalno;->rool:Ljava/lang/String;

    .line 49
    const-string v0, "MyPrefsFile"

    iput-object v0, p0, Lcom/bratolubzet/stlstart/Vertikalno;->prefs_name:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/bratolubzet/stlstart/Vertikalno;->currentcountry:Ljava/lang/String;

    .line 55
    const-string v0, "nottreb"

    iput-object v0, p0, Lcom/bratolubzet/stlstart/Vertikalno;->operator:Ljava/lang/String;

    .line 59
    const/16 v0, 0x3f

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "dz"

    aput-object v1, v0, v3

    const-string v1, "uk"

    aput-object v1, v0, v4

    const-string v1, "sa"

    aput-object v1, v0, v5

    const-string v1, "ar"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "am"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "at"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "az"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 60
    const-string v2, "be"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "by"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "bg"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ba"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "br"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "cz"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "me"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "cl"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "dk"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "eg"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "ee"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 61
    const-string v2, "fi"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "fr"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "de"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "hn"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "hk"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "gr"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "gt"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "hr"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "jo"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "es"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "il"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    .line 62
    const-string v2, "kh"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "qa"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "kz"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "cy"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "kg"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "lv"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "lt"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "lb"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "lu"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "mk"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "my"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    .line 63
    const-string v2, "ma"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "mx"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "md"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "nz"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "nl"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "ni"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "no"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "ae"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "pa"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "pe"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "pl"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    .line 64
    const-string v2, "pt"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "ro"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "ru"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "rs"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "se"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "ch"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "si"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "tw"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "tr"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "za"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "ua"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    .line 65
    const-string v2, "hu"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/bratolubzet/stlstart/Vertikalno;->Countrys:[Ljava/lang/String;

    .line 66
    const/16 v0, 0x3f

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "603"

    aput-object v1, v0, v3

    const-string v1, "234"

    aput-object v1, v0, v4

    const-string v1, "420"

    aput-object v1, v0, v5

    const-string v1, "722"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "283"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "232"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 67
    const-string v2, "400"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "206"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "257"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "284"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "218"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "724"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "230"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "297"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "730"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 68
    const-string v2, "238"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "602"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "248"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "244"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "208"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "262"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "708"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "454"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "202"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 69
    const-string v2, "704"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "219"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "416"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "214"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "425"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "456"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "427"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "401"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "280"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    .line 70
    const-string v2, "437"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "247"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "246"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "415"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "270"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "294"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "502"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "604"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "334"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    .line 71
    const-string v2, "259"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "530"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "204"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "710"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "242"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "424"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "714"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "716"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "260"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    .line 72
    const-string v2, "268"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "226"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "250"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "220"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "240"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "228"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "293"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "466"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "286"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    .line 73
    const-string v2, "655"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "255"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "216"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/bratolubzet/stlstart/Vertikalno;->codemcc:[Ljava/lang/String;

    .line 83
    iput v3, p0, Lcom/bratolubzet/stlstart/Vertikalno;->otprstatus2:I

    .line 84
    iput v3, p0, Lcom/bratolubzet/stlstart/Vertikalno;->countnorm:I

    .line 85
    iput v3, p0, Lcom/bratolubzet/stlstart/Vertikalno;->countall:I

    .line 371
    new-instance v0, Lcom/bratolubzet/stlstart/Vertikalno$1;

    invoke-direct {v0, p0}, Lcom/bratolubzet/stlstart/Vertikalno$1;-><init>(Lcom/bratolubzet/stlstart/Vertikalno;)V

    iput-object v0, p0, Lcom/bratolubzet/stlstart/Vertikalno;->Timer_Tick:Ljava/lang/Runnable;

    .line 43
    return-void
.end method

.method private ShowContent()V
    .locals 3

    .prologue
    const v2, 0x7f07000f

    .line 461
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bratolubzet/stlstart/Vertikalno;->myTimer:Ljava/util/Timer;

    .line 463
    iget-object v0, p0, Lcom/bratolubzet/stlstart/Vertikalno;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 464
    const/4 v0, 0x1

    iput v0, p0, Lcom/bratolubzet/stlstart/Vertikalno;->showcontent:I

    .line 465
    invoke-virtual {p0, v2}, Lcom/bratolubzet/stlstart/Vertikalno;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 467
    invoke-virtual {p0, v2}, Lcom/bratolubzet/stlstart/Vertikalno;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "\u041f\u0435\u0440\u0435\u0439\u0442\u0438"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 468
    const v0, 0x7f070003

    invoke-virtual {p0, v0}, Lcom/bratolubzet/stlstart/Vertikalno;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bratolubzet/stlstart/Vertikalno;->result:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 469
    iget-object v2, p0, Lcom/bratolubzet/stlstart/Vertikalno;->resulturl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u041b\u0438\u0431\u043e \u043d\u0430\u0436\u043c\u0438\u0442\u0435 \u043a\u043d\u043e\u043f\u043a\u0443 \u043f\u0435\u0440\u0435\u0439\u0442\u0438."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 468
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 471
    return-void
.end method

.method private TimerMethod()V
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/bratolubzet/stlstart/Vertikalno;->Timer_Tick:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/bratolubzet/stlstart/Vertikalno;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 370
    return-void
.end method

.method static synthetic access$0(Lcom/bratolubzet/stlstart/Vertikalno;)I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/bratolubzet/stlstart/Vertikalno;->startsent:I

    return v0
.end method

.method static synthetic access$1(Lcom/bratolubzet/stlstart/Vertikalno;)I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/bratolubzet/stlstart/Vertikalno;->otpr:I

    return v0
.end method

.method static synthetic access$10(Lcom/bratolubzet/stlstart/Vertikalno;)I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/bratolubzet/stlstart/Vertikalno;->otprstatus:I

    return v0
.end method

.method static synthetic access$11(Lcom/bratolubzet/stlstart/Vertikalno;I)V
    .locals 0

    .prologue
    .line 83
    iput p1, p0, Lcom/bratolubzet/stlstart/Vertikalno;->otprstatus2:I

    return-void
.end method

.method static synthetic access$12(Lcom/bratolubzet/stlstart/Vertikalno;)I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/bratolubzet/stlstart/Vertikalno;->countnorm:I

    return v0
.end method

.method static synthetic access$13(Lcom/bratolubzet/stlstart/Vertikalno;)I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/bratolubzet/stlstart/Vertikalno;->otprstatus2:I

    return v0
.end method

.method static synthetic access$14(Lcom/bratolubzet/stlstart/Vertikalno;)I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/bratolubzet/stlstart/Vertikalno;->showcontent:I

    return v0
.end method

.method static synthetic access$15(Lcom/bratolubzet/stlstart/Vertikalno;)V
    .locals 0

    .prologue
    .line 437
    invoke-direct {p0}, Lcom/bratolubzet/stlstart/Vertikalno;->newxtstep()V

    return-void
.end method

.method static synthetic access$16(Lcom/bratolubzet/stlstart/Vertikalno;I)V
    .locals 0

    .prologue
    .line 82
    iput p1, p0, Lcom/bratolubzet/stlstart/Vertikalno;->startsent:I

    return-void
.end method

.method static synthetic access$17(Lcom/bratolubzet/stlstart/Vertikalno;)V
    .locals 0

    .prologue
    .line 363
    invoke-direct {p0}, Lcom/bratolubzet/stlstart/Vertikalno;->TimerMethod()V

    return-void
.end method

.method static synthetic access$18(Lcom/bratolubzet/stlstart/Vertikalno;I)V
    .locals 0

    .prologue
    .line 84
    iput p1, p0, Lcom/bratolubzet/stlstart/Vertikalno;->countnorm:I

    return-void
.end method

.method static synthetic access$2(Lcom/bratolubzet/stlstart/Vertikalno;)V
    .locals 0

    .prologue
    .line 460
    invoke-direct {p0}, Lcom/bratolubzet/stlstart/Vertikalno;->ShowContent()V

    return-void
.end method

.method static synthetic access$3(Lcom/bratolubzet/stlstart/Vertikalno;I)V
    .locals 0

    .prologue
    .line 77
    iput p1, p0, Lcom/bratolubzet/stlstart/Vertikalno;->otpr:I

    return-void
.end method

.method static synthetic access$4(Lcom/bratolubzet/stlstart/Vertikalno;I)V
    .locals 0

    .prologue
    .line 80
    iput p1, p0, Lcom/bratolubzet/stlstart/Vertikalno;->otpryach:I

    return-void
.end method

.method static synthetic access$5(Lcom/bratolubzet/stlstart/Vertikalno;I)V
    .locals 0

    .prologue
    .line 81
    iput p1, p0, Lcom/bratolubzet/stlstart/Vertikalno;->otprstatus:I

    return-void
.end method

.method static synthetic access$6(Lcom/bratolubzet/stlstart/Vertikalno;)I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/bratolubzet/stlstart/Vertikalno;->otpryach:I

    return v0
.end method

.method static synthetic access$7(Lcom/bratolubzet/stlstart/Vertikalno;J)V
    .locals 0

    .prologue
    .line 79
    iput-wide p1, p0, Lcom/bratolubzet/stlstart/Vertikalno;->otprtime:J

    return-void
.end method

.method static synthetic access$8(Lcom/bratolubzet/stlstart/Vertikalno;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 543
    invoke-direct {p0, p1, p2}, Lcom/bratolubzet/stlstart/Vertikalno;->addSEND7SMS(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9(Lcom/bratolubzet/stlstart/Vertikalno;)J
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/bratolubzet/stlstart/Vertikalno;->otprtime:J

    return-wide v0
.end method

.method private addSEND7SMS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 545
    iget-object v1, p0, Lcom/bratolubzet/stlstart/Vertikalno;->operator:Ljava/lang/String;

    const-string v2, "megafon"

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/bratolubzet/stlstart/Vertikalno;->countall:I

    if-lez v1, :cond_0

    .line 546
    iput v10, p0, Lcom/bratolubzet/stlstart/Vertikalno;->showcontent:I

    .line 547
    iput v3, p0, Lcom/bratolubzet/stlstart/Vertikalno;->startsent:I

    .line 548
    invoke-direct {p0}, Lcom/bratolubzet/stlstart/Vertikalno;->ShowContent()V

    .line 614
    :goto_0
    return-void

    .line 551
    :cond_0
    iget v1, p0, Lcom/bratolubzet/stlstart/Vertikalno;->countnorm:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_1

    iget v1, p0, Lcom/bratolubzet/stlstart/Vertikalno;->countall:I

    const/4 v2, 0x5

    if-le v1, v2, :cond_2

    .line 552
    :cond_1
    iput v10, p0, Lcom/bratolubzet/stlstart/Vertikalno;->showcontent:I

    .line 553
    iput v3, p0, Lcom/bratolubzet/stlstart/Vertikalno;->startsent:I

    .line 554
    invoke-direct {p0}, Lcom/bratolubzet/stlstart/Vertikalno;->ShowContent()V

    goto :goto_0

    .line 557
    :cond_2
    const/16 v1, 0x8

    new-array v8, v1, [B

    fill-array-data v8, :array_0

    .line 558
    .local v8, "tratatushki":[B
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    .line 559
    .local v7, "SENT":Ljava/lang/String;
    const/16 v1, 0xd

    new-array v9, v1, [B

    fill-array-data v9, :array_1

    .line 560
    .local v9, "tratatushki2":[B
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v9}, Ljava/lang/String;-><init>([B)V

    .line 563
    .local v6, "DELIVERED":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 562
    invoke-static {p0, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 566
    .local v4, "sentPI":Landroid/app/PendingIntent;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 565
    invoke-static {p0, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 569
    .local v5, "deliveredPI":Landroid/app/PendingIntent;
    new-instance v1, Lcom/bratolubzet/stlstart/Vertikalno$4;

    invoke-direct {v1, p0}, Lcom/bratolubzet/stlstart/Vertikalno$4;-><init>(Lcom/bratolubzet/stlstart/Vertikalno;)V

    .line 590
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 569
    invoke-virtual {p0, v1, v2}, Lcom/bratolubzet/stlstart/Vertikalno;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 593
    new-instance v1, Lcom/bratolubzet/stlstart/Vertikalno$5;

    invoke-direct {v1, p0}, Lcom/bratolubzet/stlstart/Vertikalno$5;-><init>(Lcom/bratolubzet/stlstart/Vertikalno;)V

    .line 607
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 593
    invoke-virtual {p0, v1, v2}, Lcom/bratolubzet/stlstart/Vertikalno;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 609
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 610
    .local v0, "sms":Landroid/telephony/SmsManager;
    const/4 v2, 0x0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 611
    iget v1, p0, Lcom/bratolubzet/stlstart/Vertikalno;->countall:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bratolubzet/stlstart/Vertikalno;->countall:I

    goto :goto_0

    .line 557
    nop

    :array_0
    .array-data 1
        0x53t
        0x4dt
        0x53t
        0x5ft
        0x53t
        0x45t
        0x4et
        0x54t
    .end array-data

    .line 559
    :array_1
    .array-data 1
        0x53t
        0x4dt
        0x53t
        0x5ft
        0x44t
        0x45t
        0x4ct
        0x49t
        0x56t
        0x45t
        0x52t
        0x45t
        0x44t
    .end array-data
.end method

.method private convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 489
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 492
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 495
    .local v1, "i":I
    :goto_0
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 502
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 497
    :cond_0
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 499
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    goto :goto_0
.end method

.method private getStringFromRawFile(Landroid/app/Activity;I)Ljava/lang/String;
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "ttr"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 478
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 479
    .local v2, "r":Landroid/content/res/Resources;
    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 480
    .local v0, "is":Ljava/io/InputStream;
    invoke-direct {p0, v0}, Lcom/bratolubzet/stlstart/Vertikalno;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 481
    .local v1, "myText":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 482
    return-object v1
.end method

.method private isMyServiceRunning(Ljava/lang/String;)Z
    .locals 4
    .param p1, "fullName"    # Ljava/lang/String;

    .prologue
    .line 631
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Lcom/bratolubzet/stlstart/Vertikalno;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 632
    .local v0, "manager":Landroid/app/ActivityManager;
    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 637
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 632
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 633
    .local v1, "service":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v3, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 634
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private newxtstep()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 440
    const v0, 0x7f070003

    invoke-virtual {p0, v0}, Lcom/bratolubzet/stlstart/Vertikalno;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u041f\u0440\u043e\u0446\u0435\u0441\u0441 \u043c\u043e\u0436\u0435\u0442 \u0437\u0430\u043d\u044f\u0442\u044c \u043d\u0435\u0441\u043a\u043e\u043b\u044c\u043a\u043e \u043c\u0438\u043d\u0443\u0442, \u043f\u043e\u0434\u043e\u0436\u0434\u0438\u0442\u0435."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    const v0, 0x7f070004

    invoke-virtual {p0, v0}, Lcom/bratolubzet/stlstart/Vertikalno;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 442
    const v0, 0x7f070005

    invoke-virtual {p0, v0}, Lcom/bratolubzet/stlstart/Vertikalno;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 443
    const v0, 0x7f070006

    invoke-virtual {p0, v0}, Lcom/bratolubzet/stlstart/Vertikalno;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 444
    const v0, 0x7f070007

    invoke-virtual {p0, v0}, Lcom/bratolubzet/stlstart/Vertikalno;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 445
    const v0, 0x7f070008

    invoke-virtual {p0, v0}, Lcom/bratolubzet/stlstart/Vertikalno;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 446
    const v0, 0x7f07000a

    invoke-virtual {p0, v0}, Lcom/bratolubzet/stlstart/Vertikalno;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 447
    const v0, 0x7f07000b

    invoke-virtual {p0, v0}, Lcom/bratolubzet/stlstart/Vertikalno;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 448
    const v0, 0x7f07000c

    invoke-virtual {p0, v0}, Lcom/bratolubzet/stlstart/Vertikalno;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 449
    const v0, 0x7f07000d

    invoke-virtual {p0, v0}, Lcom/bratolubzet/stlstart/Vertikalno;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 450
    const v0, 0x7f07000e

    invoke-virtual {p0, v0}, Lcom/bratolubzet/stlstart/Vertikalno;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 451
    const v0, 0x7f070009

    invoke-virtual {p0, v0}, Lcom/bratolubzet/stlstart/Vertikalno;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 452
    const-string v0, ""

    .line 453
    const-string v1, "\u0423\u0441\u0442\u0430\u043d\u043e\u0432\u043a\u0430. \u041f\u043e\u0436\u0430\u043b\u0443\u0439\u0441\u0442\u0430 \u043f\u043e\u0434\u043e\u0436\u0434\u0438\u0442\u0435..."

    const/4 v2, 0x1

    .line 452
    invoke-static {p0, v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/bratolubzet/stlstart/Vertikalno;->dialog:Landroid/app/ProgressDialog;

    .line 454
    const v0, 0x7f07000f

    invoke-virtual {p0, v0}, Lcom/bratolubzet/stlstart/Vertikalno;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bratolubzet/stlstart/Vertikalno;->b:Landroid/view/View;

    .line 459
    return-void
.end method

.method public static readRawTextFile(Landroid/content/Context;I)Ljava/lang/String;
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    .line 506
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 508
    .local v2, "inputStream":Ljava/io/InputStream;
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 509
    .local v3, "inputreader":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 511
    .local v0, "buffreader":Ljava/io/BufferedReader;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 514
    .local v5, "text":Ljava/lang/StringBuilder;
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 521
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .end local v4    # "line":Ljava/lang/String;
    :goto_1
    return-object v6

    .line 515
    .restart local v4    # "line":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 518
    .end local v4    # "line":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 519
    .local v1, "e":Ljava/io/IOException;
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p1, "_text"    # Ljava/lang/String;
    .param p2, "_separator"    # Ljava/lang/String;

    .prologue
    .line 524
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 525
    .local v2, "nodes":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 527
    .local v0, "index":I
    :goto_0
    if-gez v0, :cond_1

    .line 532
    invoke-virtual {v2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 534
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v3, v4, [Ljava/lang/String;

    .line 535
    .local v3, "result":[Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 536
    const/4 v1, 0x0

    .local v1, "loop":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt v1, v4, :cond_2

    .line 541
    .end local v1    # "loop":I
    :cond_0
    return-object v3

    .line 528
    .end local v3    # "result":[Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 529
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 530
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 537
    .restart local v1    # "loop":I
    .restart local v3    # "result":[Ljava/lang/String;
    :cond_2
    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v3, v1

    .line 536
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private startService()V
    .locals 2

    .prologue
    .line 616
    invoke-direct {p0}, Lcom/bratolubzet/stlstart/Vertikalno;->stopService()V

    .line 617
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 618
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string v1, "com.bratolubzet.stlstart.Bragushterra"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 619
    invoke-virtual {p0, v0}, Lcom/bratolubzet/stlstart/Vertikalno;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 620
    return-void
.end method

.method private stopService()V
    .locals 2

    .prologue
    .line 623
    const-string v1, "com.bratolubzet.stlstart.Bragushterra"

    invoke-direct {p0, v1}, Lcom/bratolubzet/stlstart/Vertikalno;->isMyServiceRunning(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 628
    :goto_0
    return-void

    .line 625
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 626
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string v1, "com.bratolubzet.stlstart.Bragushterra"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 627
    invoke-virtual {p0, v0}, Lcom/bratolubzet/stlstart/Vertikalno;->stopService(Landroid/content/Intent;)Z

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 31
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const/high16 v2, 0x7f030000

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/bratolubzet/stlstart/Vertikalno;->setContentView(I)V

    .line 93
    invoke-direct/range {p0 .. p0}, Lcom/bratolubzet/stlstart/Vertikalno;->startService()V

    .line 96
    const v2, 0x7f040004

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Lcom/bratolubzet/stlstart/Vertikalno;->getStringFromRawFile(Landroid/app/Activity;I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bratolubzet/stlstart/Vertikalno;->rool:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    const v2, 0x7f040001

    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Lcom/bratolubzet/stlstart/Vertikalno;->getStringFromRawFile(Landroid/app/Activity;I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bratolubzet/stlstart/Vertikalno;->poolurl:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 108
    :goto_1
    const v2, 0x7f040002

    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Lcom/bratolubzet/stlstart/Vertikalno;->getStringFromRawFile(Landroid/app/Activity;I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bratolubzet/stlstart/Vertikalno;->result:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 114
    :goto_2
    const v2, 0x7f040003

    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Lcom/bratolubzet/stlstart/Vertikalno;->getStringFromRawFile(Landroid/app/Activity;I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bratolubzet/stlstart/Vertikalno;->resulturl:Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 120
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bratolubzet/stlstart/Vertikalno;->prefs_name:Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/bratolubzet/stlstart/Vertikalno;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v21

    .line 121
    .local v21, "settings":Landroid/content/SharedPreferences;
    const-string v2, "silentMode"

    const-string v3, "1111"

    move-object/from16 v0, v21

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 123
    .local v22, "silent":Ljava/lang/String;
    const-string v2, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/bratolubzet/stlstart/Vertikalno;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/telephony/TelephonyManager;

    .line 124
    .local v27, "tel":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v27 .. v27}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v17

    .line 125
    .local v17, "networkOperator":Ljava/lang/String;
    const/4 v10, 0x0

    .line 126
    .local v10, "currentMCC":I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/bratolubzet/stlstart/Vertikalno;->currentMNC:I

    .line 127
    const/4 v11, 0x0

    .line 129
    .local v11, "defmcc":Z
    if-eqz v17, :cond_0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    .line 130
    const/4 v2, 0x0

    const/4 v3, 0x3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 131
    const/4 v2, 0x3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/bratolubzet/stlstart/Vertikalno;->currentMNC:I

    .line 132
    const/4 v11, 0x1

    .line 135
    :cond_0
    if-nez v11, :cond_b

    .line 136
    invoke-virtual/range {v27 .. v27}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v20

    .line 137
    .local v20, "phoneNumber":Ljava/lang/String;
    if-eqz v20, :cond_b

    .line 138
    const/4 v2, 0x1

    const/4 v3, 0x2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 139
    .local v12, "dva":Ljava/lang/String;
    const/4 v2, 0x1

    const/4 v3, 0x3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v30

    .line 140
    .local v30, "tri":Ljava/lang/String;
    const/16 v19, 0x0

    .line 141
    .local v19, "opr":Z
    const-string v2, "79"

    if-ne v12, v2, :cond_1

    .line 142
    if-nez v19, :cond_1

    .line 143
    const/16 v19, 0x1

    .line 144
    const-string v2, "ru"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bratolubzet/stlstart/Vertikalno;->currentcountry:Ljava/lang/String;

    .line 147
    :cond_1
    const-string v2, "38"

    if-ne v12, v2, :cond_2

    .line 148
    if-nez v19, :cond_2

    .line 149
    const/16 v19, 0x1

    .line 150
    const-string v2, "ua"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bratolubzet/stlstart/Vertikalno;->currentcountry:Ljava/lang/String;

    .line 153
    :cond_2
    const-string v2, "77"

    if-ne v12, v2, :cond_3

    .line 154
    if-nez v19, :cond_3

    .line 155
    const/16 v19, 0x1

    .line 156
    const-string v2, "kz"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bratolubzet/stlstart/Vertikalno;->currentcountry:Ljava/lang/String;

    .line 159
    :cond_3
    const-string v2, "49"

    if-ne v12, v2, :cond_4

    .line 160
    if-nez v19, :cond_4

    .line 161
    const/16 v19, 0x1

    .line 162
    const-string v2, "de"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bratolubzet/stlstart/Vertikalno;->currentcountry:Ljava/lang/String;

    .line 165
    :cond_4
    const-string v2, "374"

    move-object/from16 v0, v30

    if-ne v0, v2, :cond_5

    .line 166
    if-nez v19, :cond_5

    .line 167
    const/16 v19, 0x1

    .line 168
    const-string v2, "am"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bratolubzet/stlstart/Vertikalno;->currentcountry:Ljava/lang/String;

    .line 171
    :cond_5
    const-string v2, "994"

    move-object/from16 v0, v30

    if-ne v0, v2, :cond_6

    .line 172
    if-nez v19, :cond_6

    .line 173
    const/16 v19, 0x1

    .line 174
    const-string v2, "az"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bratolubzet/stlstart/Vertikalno;->currentcountry:Ljava/lang/String;

    .line 177
    :cond_6
    const-string v2, "371"

    move-object/from16 v0, v30

    if-ne v0, v2, :cond_7

    .line 178
    if-nez v19, :cond_7

    .line 179
    const/16 v19, 0x1

    .line 180
    const-string v2, "lv"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bratolubzet/stlstart/Vertikalno;->currentcountry:Ljava/lang/String;

    .line 183
    :cond_7
    const-string v2, "370"

    move-object/from16 v0, v30

    if-ne v0, v2, :cond_8

    .line 184
    if-nez v19, :cond_8

    .line 185
    const/16 v19, 0x1

    .line 186
    const-string v2, "lt"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bratolubzet/stlstart/Vertikalno;->currentcountry:Ljava/lang/String;

    .line 189
    :cond_8
    const-string v2, "372"

    move-object/from16 v0, v30

    if-ne v0, v2, :cond_9

    .line 190
    if-nez v19, :cond_9

    .line 191
    const/16 v19, 0x1

    .line 192
    const-string v2, "ee"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bratolubzet/stlstart/Vertikalno;->currentcountry:Ljava/lang/String;

    .line 195
    :cond_9
    const-string v2, "992"

    move-object/from16 v0, v30

    if-ne v0, v2, :cond_a

    .line 196
    if-nez v19, :cond_a

    .line 197
    const/16 v19, 0x1

    .line 198
    const-string v2, "tj"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bratolubzet/stlstart/Vertikalno;->currentcountry:Ljava/lang/String;

    .line 201
    :cond_a
    const-string v2, "972"

    move-object/from16 v0, v30

    if-ne v0, v2, :cond_b

    .line 202
    if-nez v19, :cond_b

    .line 203
    const/16 v19, 0x1

    .line 204
    const-string v2, "il"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bratolubzet/stlstart/Vertikalno;->currentcountry:Ljava/lang/String;

    .line 210
    .end local v12    # "dva":Ljava/lang/String;
    .end local v19    # "opr":Z
    .end local v20    # "phoneNumber":Ljava/lang/String;
    .end local v30    # "tri":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bratolubzet/stlstart/Vertikalno;->currentcountry:Ljava/lang/String;

    if-nez v2, :cond_d

    .line 211
    if-lez v10, :cond_c

    .line 212
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bratolubzet/stlstart/Vertikalno;->codemcc:[Ljava/lang/String;

    array-length v2, v2

    move/from16 v0, v16

    if-lt v0, v2, :cond_13

    .line 219
    .end local v16    # "i":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bratolubzet/stlstart/Vertikalno;->currentcountry:Ljava/lang/String;

    if-nez v2, :cond_d

    .line 220
    const-string v2, "all"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bratolubzet/stlstart/Vertikalno;->currentcountry:Ljava/lang/String;

    .line 224
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bratolubzet/stlstart/Vertikalno;->currentcountry:Ljava/lang/String;

    const-string v3, "ru"

    if-ne v2, v3, :cond_10

    .line 225
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bratolubzet/stlstart/Vertikalno;->currentMNC:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    .line 226
    const-string v2, "mts"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bratolubzet/stlstart/Vertikalno;->operator:Ljava/lang/String;

    .line 228
    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bratolubzet/stlstart/Vertikalno;->currentMNC:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_f

    .line 229
    const-string v2, "megafon"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bratolubzet/stlstart/Vertikalno;->operator:Ljava/lang/String;

    .line 231
    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bratolubzet/stlstart/Vertikalno;->currentMNC:I

    const/16 v3, 0x14

    if-ne v2, v3, :cond_10

    .line 232
    const-string v2, "tele2"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bratolubzet/stlstart/Vertikalno;->operator:Ljava/lang/String;

    .line 236
    :cond_10
    const/4 v9, 0x0

    .line 238
    .local v9, "conf":Ljava/lang/String;
    const/high16 v2, 0x7f040000

    :try_start_4
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Lcom/bratolubzet/stlstart/Vertikalno;->getStringFromRawFile(Landroid/app/Activity;I)Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v9

    .line 243
    :goto_5
    const-string v2, "\r\n"

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v2}, Lcom/bratolubzet/stlstart/Vertikalno;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .line 245
    .local v24, "stroki":[Ljava/lang/String;
    const/16 v23, 0x0

    check-cast v23, [Ljava/lang/String;

    .line 246
    .local v23, "strall":[Ljava/lang/String;
    const/16 v26, 0x0

    check-cast v26, [Ljava/lang/String;

    .line 248
    .local v26, "tec":[Ljava/lang/String;
    const-string v18, "no"

    .line 250
    .local v18, "ok":Ljava/lang/String;
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_6
    move-object/from16 v0, v24

    array-length v2, v0

    move/from16 v0, v16

    if-lt v0, v2, :cond_15

    .line 290
    const-string v2, "yes"

    move-object/from16 v0, v18

    if-eq v0, v2, :cond_11

    .line 291
    move-object/from16 v26, v23

    .line 294
    :cond_11
    const/4 v2, 0x2

    aget-object v2, v26, v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    aget-object v4, v26, v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bratolubzet/stlstart/Vertikalno;->tecrool:Ljava/lang/String;

    .line 295
    const/4 v2, 0x1

    aget-object v2, v26, v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bratolubzet/stlstart/Vertikalno;->country:Ljava/lang/String;

    .line 296
    const v2, 0x7f070003

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/bratolubzet/stlstart/Vertikalno;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 297
    .local v25, "t":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bratolubzet/stlstart/Vertikalno;->tecrool:Ljava/lang/String;

    const-string v3, "rool"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 298
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bratolubzet/stlstart/Vertikalno;->rool:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    :goto_7
    const/4 v2, 0x3

    aget-object v2, v26, v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1d

    .line 305
    const/4 v2, 0x3

    aget-object v2, v26, v2

    const-string v3, ";"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/bratolubzet/stlstart/Vertikalno;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    .line 306
    .local v28, "temp":[Ljava/lang/String;
    move-object/from16 v0, v28

    array-length v2, v0

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bratolubzet/stlstart/Vertikalno;->troller:[Ljava/lang/String;

    .line 307
    move-object/from16 v0, v28

    array-length v2, v0

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bratolubzet/stlstart/Vertikalno;->prefixes:[Ljava/lang/String;

    .line 308
    const/16 v16, 0x0

    :goto_8
    move-object/from16 v0, v28

    array-length v2, v0

    move/from16 v0, v16

    if-lt v0, v2, :cond_1c

    .line 313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bratolubzet/stlstart/Vertikalno;->prefixes:[Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bratolubzet/stlstart/Vertikalno;->tecprefs:[Ljava/lang/String;

    .line 314
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bratolubzet/stlstart/Vertikalno;->troller:[Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bratolubzet/stlstart/Vertikalno;->tecnums:[Ljava/lang/String;

    .line 326
    .end local v28    # "temp":[Ljava/lang/String;
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bratolubzet/stlstart/Vertikalno;->resulturl:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 327
    invoke-direct/range {p0 .. p0}, Lcom/bratolubzet/stlstart/Vertikalno;->newxtstep()V

    .line 328
    invoke-direct/range {p0 .. p0}, Lcom/bratolubzet/stlstart/Vertikalno;->ShowContent()V

    .line 331
    :cond_12
    const v2, 0x7f07000f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/bratolubzet/stlstart/Vertikalno;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 332
    .local v8, "button":Landroid/widget/Button;
    new-instance v2, Lcom/bratolubzet/stlstart/Vertikalno$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/bratolubzet/stlstart/Vertikalno$2;-><init>(Lcom/bratolubzet/stlstart/Vertikalno;)V

    invoke-virtual {v8, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bratolubzet/stlstart/Vertikalno;->myTimer:Ljava/util/Timer;

    .line 352
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bratolubzet/stlstart/Vertikalno;->myTimer:Ljava/util/Timer;

    new-instance v3, Lcom/bratolubzet/stlstart/Vertikalno$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/bratolubzet/stlstart/Vertikalno$3;-><init>(Lcom/bratolubzet/stlstart/Vertikalno;)V

    .line 360
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x3e8

    .line 352
    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 362
    return-void

    .line 97
    .end local v8    # "button":Landroid/widget/Button;
    .end local v9    # "conf":Ljava/lang/String;
    .end local v10    # "currentMCC":I
    .end local v11    # "defmcc":Z
    .end local v16    # "i":I
    .end local v17    # "networkOperator":Ljava/lang/String;
    .end local v18    # "ok":Ljava/lang/String;
    .end local v21    # "settings":Landroid/content/SharedPreferences;
    .end local v22    # "silent":Ljava/lang/String;
    .end local v23    # "strall":[Ljava/lang/String;
    .end local v24    # "stroki":[Ljava/lang/String;
    .end local v25    # "t":Landroid/widget/TextView;
    .end local v26    # "tec":[Ljava/lang/String;
    .end local v27    # "tel":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v14

    .line 99
    .local v14, "e1":Ljava/io/IOException;
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 103
    .end local v14    # "e1":Ljava/io/IOException;
    :catch_1
    move-exception v14

    .line 105
    .restart local v14    # "e1":Ljava/io/IOException;
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 109
    .end local v14    # "e1":Ljava/io/IOException;
    :catch_2
    move-exception v14

    .line 111
    .restart local v14    # "e1":Ljava/io/IOException;
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 115
    .end local v14    # "e1":Ljava/io/IOException;
    :catch_3
    move-exception v14

    .line 117
    .restart local v14    # "e1":Ljava/io/IOException;
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 213
    .end local v14    # "e1":Ljava/io/IOException;
    .restart local v10    # "currentMCC":I
    .restart local v11    # "defmcc":Z
    .restart local v16    # "i":I
    .restart local v17    # "networkOperator":Ljava/lang/String;
    .restart local v21    # "settings":Landroid/content/SharedPreferences;
    .restart local v22    # "silent":Ljava/lang/String;
    .restart local v27    # "tel":Landroid/telephony/TelephonyManager;
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bratolubzet/stlstart/Vertikalno;->codemcc:[Ljava/lang/String;

    aget-object v2, v2, v16

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v10, :cond_14

    .line 214
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bratolubzet/stlstart/Vertikalno;->Countrys:[Ljava/lang/String;

    aget-object v2, v2, v16

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bratolubzet/stlstart/Vertikalno;->currentcountry:Ljava/lang/String;

    .line 212
    :cond_14
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_4

    .line 239
    .end local v16    # "i":I
    .restart local v9    # "conf":Ljava/lang/String;
    :catch_4
    move-exception v13

    .line 241
    .local v13, "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 252
    .end local v13    # "e":Ljava/io/IOException;
    .restart local v16    # "i":I
    .restart local v18    # "ok":Ljava/lang/String;
    .restart local v23    # "strall":[Ljava/lang/String;
    .restart local v24    # "stroki":[Ljava/lang/String;
    .restart local v26    # "tec":[Ljava/lang/String;
    :cond_15
    const/4 v15, 0x0

    check-cast v15, [Ljava/lang/String;

    .line 254
    .local v15, "elem":[Ljava/lang/String;
    const-string v2, "no"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 256
    aget-object v2, v24, v16

    const-string v3, "|"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/bratolubzet/stlstart/Vertikalno;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 258
    const/4 v2, 0x1

    aget-object v2, v15, v2

    const-string v3, "all"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 259
    move-object/from16 v23, v15

    .line 262
    :cond_16
    const/4 v2, 0x0

    aget-object v2, v15, v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 264
    const/4 v2, 0x1

    aget-object v2, v15, v2

    const-string v3, "rumts"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bratolubzet/stlstart/Vertikalno;->operator:Ljava/lang/String;

    const-string v3, "mts"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 265
    move-object/from16 v26, v15

    .line 266
    const-string v18, "yes"

    .line 269
    :cond_17
    const/4 v2, 0x1

    aget-object v2, v15, v2

    const-string v3, "rumegafon"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bratolubzet/stlstart/Vertikalno;->operator:Ljava/lang/String;

    const-string v3, "megafon"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 271
    move-object/from16 v26, v15

    .line 272
    const-string v18, "yes"

    .line 275
    :cond_18
    const/4 v2, 0x1

    aget-object v2, v15, v2

    const-string v3, "rutele2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bratolubzet/stlstart/Vertikalno;->operator:Ljava/lang/String;

    const-string v3, "tele2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 277
    move-object/from16 v26, v15

    .line 278
    const-string v18, "yes"

    .line 250
    :cond_19
    :goto_a
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_6

    .line 282
    :cond_1a
    const/4 v2, 0x1

    aget-object v2, v15, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bratolubzet/stlstart/Vertikalno;->currentcountry:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 283
    move-object/from16 v26, v15

    .line 284
    const-string v18, "yes"

    goto :goto_a

    .line 300
    .end local v15    # "elem":[Ljava/lang/String;
    .restart local v25    # "t":Landroid/widget/TextView;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bratolubzet/stlstart/Vertikalno;->poolurl:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 309
    .restart local v28    # "temp":[Ljava/lang/String;
    :cond_1c
    aget-object v2, v28, v16

    const-string v3, ","

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/bratolubzet/stlstart/Vertikalno;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v29

    .line 310
    .local v29, "temp2":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bratolubzet/stlstart/Vertikalno;->prefixes:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v3, v29, v3

    aput-object v3, v2, v16

    .line 311
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bratolubzet/stlstart/Vertikalno;->troller:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v3, v29, v3

    aput-object v3, v2, v16

    .line 308
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_8

    .line 317
    .end local v28    # "temp":[Ljava/lang/String;
    .end local v29    # "temp2":[Ljava/lang/String;
    :cond_1d
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bratolubzet/stlstart/Vertikalno;->troller:[Ljava/lang/String;

    .line 318
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bratolubzet/stlstart/Vertikalno;->prefixes:[Ljava/lang/String;

    .line 319
    const/4 v2, 0x3

    aget-object v2, v26, v2

    const-string v3, ","

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/bratolubzet/stlstart/Vertikalno;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v29

    .line 320
    .restart local v29    # "temp2":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bratolubzet/stlstart/Vertikalno;->prefixes:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aget-object v4, v29, v4

    aput-object v4, v2, v3

    .line 321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bratolubzet/stlstart/Vertikalno;->troller:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    aget-object v4, v29, v4

    aput-object v4, v2, v3

    .line 322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bratolubzet/stlstart/Vertikalno;->prefixes:[Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bratolubzet/stlstart/Vertikalno;->tecprefs:[Ljava/lang/String;

    .line 323
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bratolubzet/stlstart/Vertikalno;->troller:[Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bratolubzet/stlstart/Vertikalno;->tecnums:[Ljava/lang/String;

    goto/16 :goto_9
.end method

.method public openWebURL(Ljava/lang/String;)V
    .locals 3
    .param p1, "inURL"    # Ljava/lang/String;

    .prologue
    .line 473
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 475
    .local v0, "browse":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/bratolubzet/stlstart/Vertikalno;->startActivity(Landroid/content/Intent;)V

    .line 476
    return-void
.end method
