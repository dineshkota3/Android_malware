.class Lcom/keji/danti/a/sy;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lcom/keji/danti/a/ak;


# direct methods
.method constructor <init>(Lcom/keji/danti/a/ak;)V
    .locals 0

    iput-object p1, p0, Lcom/keji/danti/a/sy;->a:Lcom/keji/danti/a/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    iget-object v0, p0, Lcom/keji/danti/a/sy;->a:Lcom/keji/danti/a/ak;

    invoke-virtual {v0}, Lcom/keji/danti/a/ak;->b()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/keji/danti/a/sy;->a:Lcom/keji/danti/a/ak;

    iget-object v1, v1, Lcom/keji/danti/a/ak;->b:Lcom/keji/danti/Setting;

    const-class v2, Lcom/keji/danti/Background;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/keji/danti/a/sy;->a:Lcom/keji/danti/a/ak;

    iget-object v1, v1, Lcom/keji/danti/a/ak;->b:Lcom/keji/danti/Setting;

    invoke-virtual {v1, v0}, Lcom/keji/danti/Setting;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    return v0
.end method
