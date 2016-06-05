.class public Lcom/keji/danti/Setting;
.super Landroid/preference/PreferenceActivity;


# instance fields
.field a:Lcom/keji/danti/a/ak;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public createId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keji/danti/Setting;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/keji/danti/Setting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/keji/danti/util/pi;->a(Landroid/content/Context;)Lcom/keji/danti/util/pi;

    new-instance v0, Lcom/keji/danti/a/ak;

    invoke-direct {v0}, Lcom/keji/danti/a/ak;-><init>()V

    iput-object v0, p0, Lcom/keji/danti/Setting;->a:Lcom/keji/danti/a/ak;

    iget-object v0, p0, Lcom/keji/danti/Setting;->a:Lcom/keji/danti/a/ak;

    invoke-virtual {v0, p0}, Lcom/keji/danti/a/ak;->a(Landroid/content/Context;)Lcom/keji/danti/a/l;

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "drawable"

    const-string v2, "i1"

    invoke-virtual {p0, v1, v2}, Lcom/keji/danti/Setting;->createId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u5b57\u4f53\u5927\u5c0f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "array"

    const-string v2, "Dialog"

    invoke-virtual {p0, v1, v2}, Lcom/keji/danti/Setting;->createId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/keji/danti/Setting;->a:Lcom/keji/danti/a/ak;

    const-string v3, "book_textdetail_textsize"

    invoke-virtual {v2, v3}, Lcom/keji/danti/a/ak;->a(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lcom/keji/danti/pf;

    invoke-direct {v3, p0}, Lcom/keji/danti/pf;-><init>(Lcom/keji/danti/Setting;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/keji/danti/pe;

    invoke-direct {v2, p0}, Lcom/keji/danti/pe;-><init>(Lcom/keji/danti/Setting;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u81ea\u52a8\u6eda\u52a8\u901f\u5ea6"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "i1"

    invoke-virtual {p0, v1, v2}, Lcom/keji/danti/Setting;->createId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "array"

    const-string v2, "auto"

    invoke-virtual {p0, v1, v2}, Lcom/keji/danti/Setting;->createId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/keji/danti/Setting;->a:Lcom/keji/danti/a/ak;

    const-string v3, "book_textdetail_speed"

    invoke-virtual {v2, v3}, Lcom/keji/danti/a/ak;->a(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lcom/keji/danti/pd;

    invoke-direct {v3, p0}, Lcom/keji/danti/pd;-><init>(Lcom/keji/danti/Setting;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/keji/danti/pc;

    invoke-direct {v2, p0}, Lcom/keji/danti/pc;-><init>(Lcom/keji/danti/Setting;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
