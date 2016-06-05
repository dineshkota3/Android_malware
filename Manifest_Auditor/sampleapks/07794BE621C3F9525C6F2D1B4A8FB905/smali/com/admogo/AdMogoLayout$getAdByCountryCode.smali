.class Lcom/admogo/AdMogoLayout$getAdByCountryCode;
.super Ljava/lang/Object;
.source "AdMogoLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/admogo/AdMogoLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "getAdByCountryCode"
.end annotation


# instance fields
.field activity:Landroid/content/Context;

.field adMogoLayout:Lcom/admogo/AdMogoLayout;

.field simCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/admogo/AdMogoLayout;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "adMogoLayout"    # Lcom/admogo/AdMogoLayout;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "simCountryCode"    # Ljava/lang/String;

    .prologue
    .line 627
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 629
    iput-object p1, p0, Lcom/admogo/AdMogoLayout$getAdByCountryCode;->adMogoLayout:Lcom/admogo/AdMogoLayout;

    .line 630
    iput-object p2, p0, Lcom/admogo/AdMogoLayout$getAdByCountryCode;->activity:Landroid/content/Context;

    .line 631
    iput-object p3, p0, Lcom/admogo/AdMogoLayout$getAdByCountryCode;->simCode:Ljava/lang/String;

    .line 632
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const-string v9, "AdsMOGO SDK"

    .line 637
    iget-object v1, p0, Lcom/admogo/AdMogoLayout$getAdByCountryCode;->adMogoLayout:Lcom/admogo/AdMogoLayout;

    iget-object v1, v1, Lcom/admogo/AdMogoLayout;->adMogoManager:Lcom/admogo/AdMogoManager;

    invoke-virtual {v1}, Lcom/admogo/AdMogoManager;->getLocation()Landroid/location/Location;

    move-result-object v8

    .line 640
    .local v8, "location":Landroid/location/Location;
    if-eqz v8, :cond_2

    .line 641
    :try_start_0
    new-instance v0, Landroid/location/Geocoder;

    iget-object v1, p0, Lcom/admogo/AdMogoLayout$getAdByCountryCode;->activity:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    .line 642
    .local v0, "geocoder":Landroid/location/Geocoder;
    const/4 v6, 0x0

    .line 645
    .local v6, "addressList":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    invoke-virtual {v8}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v8}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    const/4 v5, 0x5

    .line 644
    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v6

    .line 646
    if-eqz v6, :cond_1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 647
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Address;

    invoke-virtual {v1}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    .line 648
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 647
    invoke-static {v1}, Lcom/admogo/AdMogoLayout;->access$4(Ljava/lang/String;)V

    .line 649
    # getter for: Lcom/admogo/AdMogoLayout;->countryCode:Ljava/lang/String;
    invoke-static {}, Lcom/admogo/AdMogoLayout;->access$5()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/admogo/AdMogoLayout$getAdByCountryCode;->simCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 650
    iget-object v1, p0, Lcom/admogo/AdMogoLayout$getAdByCountryCode;->adMogoLayout:Lcom/admogo/AdMogoLayout;

    iget-object v1, v1, Lcom/admogo/AdMogoLayout;->adMogoManager:Lcom/admogo/AdMogoManager;

    # getter for: Lcom/admogo/AdMogoLayout;->countryCode:Ljava/lang/String;
    invoke-static {}, Lcom/admogo/AdMogoLayout;->access$5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/admogo/AdMogoManager;->setLocation(Ljava/lang/String;)V

    .line 651
    # getter for: Lcom/admogo/AdMogoLayout;->countryCode:Ljava/lang/String;
    invoke-static {}, Lcom/admogo/AdMogoLayout;->access$5()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/admogo/AdMogoTargeting;->countryCode:Ljava/lang/String;

    .line 652
    iget-object v1, p0, Lcom/admogo/AdMogoLayout$getAdByCountryCode;->adMogoLayout:Lcom/admogo/AdMogoLayout;

    iget-object v1, v1, Lcom/admogo/AdMogoLayout;->adMogoManager:Lcom/admogo/AdMogoManager;

    invoke-virtual {v1}, Lcom/admogo/AdMogoManager;->fetchConfig()V

    .line 653
    iget-object v1, p0, Lcom/admogo/AdMogoLayout$getAdByCountryCode;->adMogoLayout:Lcom/admogo/AdMogoLayout;

    iget-object v2, p0, Lcom/admogo/AdMogoLayout$getAdByCountryCode;->adMogoLayout:Lcom/admogo/AdMogoLayout;

    iget-object v2, v2, Lcom/admogo/AdMogoLayout;->adMogoManager:Lcom/admogo/AdMogoManager;

    .line 654
    invoke-virtual {v2}, Lcom/admogo/AdMogoManager;->getExtra()Lcom/admogo/obj/Extra;

    move-result-object v2

    .line 653
    iput-object v2, v1, Lcom/admogo/AdMogoLayout;->extra:Lcom/admogo/obj/Extra;

    .line 666
    .end local v0    # "geocoder":Landroid/location/Geocoder;
    .end local v6    # "addressList":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :cond_0
    :goto_0
    return-void

    .line 657
    .restart local v0    # "geocoder":Landroid/location/Geocoder;
    .restart local v6    # "addressList":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :cond_1
    const-string v1, "AdsMOGO SDK"

    .line 658
    const-string v2, "addressList is null or addressList.size() is 0"

    .line 657
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 663
    .end local v0    # "geocoder":Landroid/location/Geocoder;
    .end local v6    # "addressList":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :catch_0
    move-exception v1

    move-object v7, v1

    .line 664
    .local v7, "e":Ljava/lang/Exception;
    const-string v1, "AdsMOGO SDK"

    const-string v1, "get countryCode failed"

    invoke-static {v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 661
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    const-string v1, "AdsMOGO SDK"

    const-string v2, "location is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
