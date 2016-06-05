.class Lcom/keji/danti/pf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keji/danti/Setting;


# direct methods
.method constructor <init>(Lcom/keji/danti/Setting;)V
    .locals 0

    iput-object p1, p0, Lcom/keji/danti/pf;->a:Lcom/keji/danti/Setting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/keji/danti/pf;->a:Lcom/keji/danti/Setting;

    iget-object v0, v0, Lcom/keji/danti/Setting;->a:Lcom/keji/danti/a/ak;

    const-string v1, "book_textdetail_textsize"

    invoke-virtual {v0, v1, p2}, Lcom/keji/danti/a/ak;->a(Ljava/lang/String;I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/keji/danti/pf;->a:Lcom/keji/danti/Setting;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lcom/keji/danti/Setting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    check-cast p0, Landroid/preference/PreferenceScreen;

    mul-int/lit8 v0, p2, 0x5

    add-int/lit8 v0, v0, 0xf

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6b63\u6587\u5b57\u4f53\u5927\u5c0f:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
