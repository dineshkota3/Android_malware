.class final Lcom/madhouse/android/ads/ccc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic _:Landroid/webkit/JsResult;


# direct methods
.method constructor <init>(Lcom/madhouse/android/ads/c;Landroid/webkit/JsResult;)V
    .locals 0

    iput-object p2, p0, Lcom/madhouse/android/ads/ccc;->_:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/madhouse/android/ads/ccc;->_:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->confirm()V

    return-void
.end method
