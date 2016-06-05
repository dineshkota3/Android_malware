.class Lcom/masshabit/squibble/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/masshabit/squibble/MainActivity;->createWarpDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/masshabit/squibble/MainActivity;

.field final synthetic val$svgFiles:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/masshabit/squibble/MainActivity;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/masshabit/squibble/MainActivity$1;->this$0:Lcom/masshabit/squibble/MainActivity;

    iput-object p2, p0, Lcom/masshabit/squibble/MainActivity$1;->val$svgFiles:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 206
    invoke-static {}, Lcom/masshabit/squibble/ProfileManager;->instance()Lcom/masshabit/common/ProfileManagerBase;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/masshabit/common/ProfileManagerBase;->setCurrentProfile(I)V

    .line 209
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/masshabit/squibble/MainActivity$1;->val$svgFiles:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/masshabit/squibble/Screen;->sSharedArgs:Ljava/lang/String;

    .line 210
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    iget-object v0, v0, Lcom/masshabit/common/Environment;->mGame:Lcom/masshabit/squibble/Game;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lcom/masshabit/squibble/Game;->changeScreen(I)V

    .line 211
    return-void
.end method
