.class public Lcom/keji/danti/a/ak;
.super Lcom/keji/danti/a/f;

# interfaces
.implements Lcom/keji/danti/a/l;
.implements Lcom/keji/danti/pb;


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/keji/danti/Setting;

.field private c:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/keji/danti/a/f;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keji/danti/a/ak;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/keji/danti/a/ak;)Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/keji/danti/a/ak;->c:Landroid/graphics/Paint;

    return-object v0
.end method

.method private a(Landroid/preference/PreferenceScreen;)V
    .locals 5

    new-instance v0, Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/keji/danti/a/ak;->b:Lcom/keji/danti/Setting;

    invoke-direct {v0, v1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const-string v1, "\u81ea\u52a8\u6eda\u52a8"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/keji/danti/a/ak;->b:Lcom/keji/danti/Setting;

    invoke-virtual {v1}, Lcom/keji/danti/Setting;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/keji/danti/a/ak;->b:Lcom/keji/danti/Setting;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "4"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    const-string v2, "\u901f\u5ea6"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/keji/danti/a/ak;->b:Lcom/keji/danti/Setting;

    invoke-virtual {v2}, Lcom/keji/danti/Setting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "array"

    const-string v4, "auto"

    invoke-virtual {p0, v3, v4}, Lcom/keji/danti/a/ak;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const-string v3, "book_textdetail_speed"

    invoke-virtual {p0, v3}, Lcom/keji/danti/a/ak;->a(Ljava/lang/String;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/keji/danti/a/sz;

    invoke-direct {v2, p0}, Lcom/keji/danti/a/sz;-><init>(Lcom/keji/danti/a/ak;)V

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    return-void
.end method

.method private c()Landroid/preference/PreferenceScreen;
    .locals 7

    iget-object v0, p0, Lcom/keji/danti/a/ak;->b:Lcom/keji/danti/Setting;

    invoke-virtual {v0}, Lcom/keji/danti/Setting;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/keji/danti/a/ak;->b:Lcom/keji/danti/Setting;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    new-instance v1, Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/keji/danti/a/ak;->b:Lcom/keji/danti/Setting;

    invoke-direct {v1, v2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const-string v2, "\u5b57\u4f53"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v2, p0, Lcom/keji/danti/a/ak;->b:Lcom/keji/danti/Setting;

    invoke-virtual {v2}, Lcom/keji/danti/Setting;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    iget-object v3, p0, Lcom/keji/danti/a/ak;->b:Lcom/keji/danti/Setting;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    const-string v3, "\u5b57\u4f53\u989c\u8272"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    const-string v3, "\u663e\u793a\u6b63\u6587\u6587\u672c\u989c\u8272"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    iget-object v3, p0, Lcom/keji/danti/a/ak;->b:Lcom/keji/danti/Setting;

    invoke-virtual {v3}, Lcom/keji/danti/Setting;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    iget-object v4, p0, Lcom/keji/danti/a/ak;->b:Lcom/keji/danti/Setting;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "2"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    const-string v4, "\u5b57\u4f53\u5927\u5c0f"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    const-string v4, "book_textdetail_textsize"

    invoke-virtual {p0, v4}, Lcom/keji/danti/a/ak;->a(Ljava/lang/String;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x5

    add-int/lit8 v4, v4, 0xf

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u6b63\u6587\u5b57\u4f53\u5927\u5c0f:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    iget-object v4, p0, Lcom/keji/danti/a/ak;->b:Lcom/keji/danti/Setting;

    invoke-virtual {v4}, Lcom/keji/danti/Setting;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    iget-object v5, p0, Lcom/keji/danti/a/ak;->b:Lcom/keji/danti/Setting;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "3"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    const-string v5, "\u80cc\u666f\u56fe\u7247"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    const-string v5, "\u663e\u793a\u6b63\u6587\u80cc\u666f"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    invoke-direct {p0, v0}, Lcom/keji/danti/a/ak;->a(Landroid/preference/PreferenceScreen;)V

    new-instance v1, Lcom/keji/danti/a/o;

    invoke-direct {v1, p0}, Lcom/keji/danti/a/o;-><init>(Lcom/keji/danti/a/ak;)V

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    new-instance v1, Lcom/keji/danti/a/m;

    invoke-direct {v1, p0}, Lcom/keji/danti/a/m;-><init>(Lcom/keji/danti/a/ak;)V

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    new-instance v1, Lcom/keji/danti/a/sy;

    invoke-direct {v1, p0}, Lcom/keji/danti/a/sy;-><init>(Lcom/keji/danti/a/ak;)V

    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/keji/danti/util/pi;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public a(Landroid/content/Context;)Lcom/keji/danti/a/l;
    .locals 2

    move-object v0, p1

    check-cast v0, Lcom/keji/danti/Setting;

    move-object v1, v0

    iput-object v1, p0, Lcom/keji/danti/a/ak;->b:Lcom/keji/danti/Setting;

    invoke-virtual {p0, p1}, Lcom/keji/danti/a/ak;->b(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/keji/danti/a/ak;->b:Lcom/keji/danti/Setting;

    iput-object v1, p0, Lcom/keji/danti/a/ak;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/keji/danti/a/ak;->b:Lcom/keji/danti/Setting;

    invoke-static {v1}, Lcom/keji/danti/util/pi;->a(Landroid/content/Context;)Lcom/keji/danti/util/pi;

    invoke-virtual {p0}, Lcom/keji/danti/a/ak;->a()V

    return-object p0
.end method

.method protected a()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/keji/danti/a/ak;->b:Lcom/keji/danti/Setting;

    invoke-direct {p0}, Lcom/keji/danti/a/ak;->c()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keji/danti/Setting;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/keji/danti/a/ak;->c:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/keji/danti/a/ak;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/keji/danti/a/ak;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lcom/keji/danti/a/ak;->c:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/keji/danti/a/ak;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/keji/danti/a/ak;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Lcom/keji/danti/a/ak;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/keji/danti/a/ak;->c:Landroid/graphics/Paint;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 0

    invoke-static {p1, p2}, Lcom/keji/danti/util/pi;->a(Ljava/lang/String;I)Lcom/keji/danti/util/pi;

    invoke-virtual {p0}, Lcom/keji/danti/a/ak;->b()V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/keji/danti/a/ak;->b:Lcom/keji/danti/Setting;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Lcom/keji/danti/Setting;->setResult(I)V

    return-void
.end method
