.class public Lcom/masshabit/squibble/TextEntity;
.super Lcom/masshabit/common/entity/Entity;
.source "TextEntity.java"


# instance fields
.field public mPaint:Landroid/graphics/Paint;

.field public mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IF)V
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "color"    # I
    .param p3, "size"    # F

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/masshabit/common/entity/Entity;-><init>()V

    .line 12
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/masshabit/squibble/TextEntity;->mPaint:Landroid/graphics/Paint;

    .line 17
    iput-object p1, p0, Lcom/masshabit/squibble/TextEntity;->mValue:Ljava/lang/String;

    .line 18
    iget-object v1, p0, Lcom/masshabit/squibble/TextEntity;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 19
    iget-object v1, p0, Lcom/masshabit/squibble/TextEntity;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 22
    iget-object v1, p0, Lcom/masshabit/squibble/TextEntity;->mValue:Ljava/lang/String;

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 25
    .local v0, "env":Lcom/masshabit/common/Environment;
    iget-object v1, v0, Lcom/masshabit/common/Environment;->mRes:Landroid/content/res/Resources;

    iget-object v2, v0, Lcom/masshabit/common/Environment;->mRes:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/masshabit/squibble/TextEntity;->mValue:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "string"

    iget-object v5, v0, Lcom/masshabit/common/Environment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/masshabit/squibble/TextEntity;->mValue:Ljava/lang/String;

    .line 27
    .end local v0    # "env":Lcom/masshabit/common/Environment;
    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 32
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 33
    iget-object v0, p0, Lcom/masshabit/squibble/TextEntity;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 34
    iget-object v0, p0, Lcom/masshabit/squibble/TextEntity;->mValue:Ljava/lang/String;

    iget-object v1, p0, Lcom/masshabit/squibble/TextEntity;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 35
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 36
    return-void
.end method
