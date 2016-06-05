.class Lcom/keji/danti/pd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keji/danti/Setting;


# direct methods
.method constructor <init>(Lcom/keji/danti/Setting;)V
    .locals 0

    iput-object p1, p0, Lcom/keji/danti/pd;->a:Lcom/keji/danti/Setting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v0, p0, Lcom/keji/danti/pd;->a:Lcom/keji/danti/Setting;

    iget-object v0, v0, Lcom/keji/danti/Setting;->a:Lcom/keji/danti/a/ak;

    const-string v1, "book_textdetail_speed"

    invoke-virtual {v0, v1, p2}, Lcom/keji/danti/a/ak;->a(Ljava/lang/String;I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/keji/danti/pd;->a:Lcom/keji/danti/Setting;

    const-string v1, "4"

    invoke-virtual {v0, v1}, Lcom/keji/danti/Setting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/keji/danti/pd;->a:Lcom/keji/danti/Setting;

    invoke-virtual {v1}, Lcom/keji/danti/Setting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/keji/danti/pd;->a:Lcom/keji/danti/Setting;

    const-string v3, "array"

    const-string v4, "auto"

    invoke-virtual {v2, v3, v4}, Lcom/keji/danti/Setting;->createId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
