.class Lcom/keji/danti/a/sz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lcom/keji/danti/a/ak;


# direct methods
.method constructor <init>(Lcom/keji/danti/a/ak;)V
    .locals 0

    iput-object p1, p0, Lcom/keji/danti/a/sz;->a:Lcom/keji/danti/a/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcom/keji/danti/a/sz;->a:Lcom/keji/danti/a/ak;

    iget-object v0, v0, Lcom/keji/danti/a/ak;->b:Lcom/keji/danti/Setting;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/keji/danti/Setting;->showDialog(I)V

    const/4 v0, 0x0

    return v0
.end method
