.class final Lcom/android/settings/PrivacySettings$2;
.super Lcom/lenovo/settings/search/BaseSearchIndexProvider;
.source "PrivacySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/PrivacySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 571
    invoke-direct {p0}, Lcom/lenovo/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method

.method private canBackupToSdcard(Landroid/content/Context;)Z
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 627
    const/4 v1, 0x0

    .line 628
    .local v1, "can":Z
    const-string v8, "persist.fuse_sdcard"

    const-string v9, "true"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "true"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v3, 0x1

    .line 629
    .local v3, "isFuseOn":Z
    :goto_0
    if-eqz v3, :cond_2

    .line 630
    invoke-static {p1}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v5

    .line 631
    .local v5, "sm":Landroid/os/storage/StorageManager;
    invoke-virtual {v5}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v7

    .line 632
    .local v7, "volumes":[Landroid/os/storage/StorageVolume;
    move-object v0, v7

    .local v0, "arr$":[Landroid/os/storage/StorageVolume;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v6, v0, v2

    .line 633
    .local v6, "v":Landroid/os/storage/StorageVolume;
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "mounted"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 634
    const/4 v1, 0x1

    .line 632
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 628
    .end local v0    # "arr$":[Landroid/os/storage/StorageVolume;
    .end local v2    # "i$":I
    .end local v3    # "isFuseOn":Z
    .end local v4    # "len$":I
    .end local v5    # "sm":Landroid/os/storage/StorageManager;
    .end local v6    # "v":Landroid/os/storage/StorageVolume;
    .end local v7    # "volumes":[Landroid/os/storage/StorageVolume;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 638
    .restart local v3    # "isFuseOn":Z
    :cond_2
    const/4 v1, 0x1

    .line 640
    :cond_3
    return v1
.end method

.method private isDeviceShareSupported(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 644
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 645
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 646
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 647
    .local v0, "appInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 648
    const/4 v3, 0x1

    .line 650
    :cond_0
    return v3
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 586
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 589
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.google.settings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    if-nez v1, :cond_0

    .line 591
    const-string v1, "backup_category"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 592
    const-string v1, "backup_data"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 593
    const-string v1, "configure_account"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 594
    const-string v1, "auto_restore"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 597
    :cond_0
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isRowProject()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 598
    invoke-direct {p0, p1}, Lcom/android/settings/PrivacySettings$2;->canBackupToSdcard(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 606
    const-string v1, "key_backup_data_sdcard"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 607
    const-string v1, "key_recovery_data_sdcard"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 615
    :cond_1
    :goto_0
    const-string v1, "com.lenovo.anyshare.action.CLONE_FM_BACKUP"

    invoke-direct {p0, p1, v1}, Lcom/android/settings/PrivacySettings$2;->isDeviceShareSupported(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 620
    const-string v1, "device_category"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 623
    :cond_2
    return-object v0

    .line 611
    :cond_3
    const-string v1, "key_backup_data_cloud"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 612
    const-string v1, "key_recovery_data_cloud"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/settings/search/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 575
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 577
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/settings/search/provider/SearchIndexableResource;>;"
    new-instance v1, Lcom/lenovo/settings/search/provider/SearchIndexableResource;

    invoke-direct {v1, p1}, Lcom/lenovo/settings/search/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 578
    .local v1, "sir":Lcom/lenovo/settings/search/provider/SearchIndexableResource;
    const v2, 0x7f06002a

    iput v2, v1, Lcom/lenovo/settings/search/provider/SearchIndexableResource;->xmlResId:I

    .line 579
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 581
    return-object v0
.end method
