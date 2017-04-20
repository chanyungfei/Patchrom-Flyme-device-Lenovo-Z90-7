.class public Lcom/android/server/am/AppPcDataManager;
.super Ljava/lang/Object;
.source "AppPcDataManager.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.lenovo.lsf.bwprovider"

.field private static final CONTENT_PERM_SYS_URI:Landroid/net/Uri;

.field private static final CONTENT_PERM_USER_URI:Landroid/net/Uri;

.field private static final CONTENT_PERM_WHITE_LIST_SYS_URI:Landroid/net/Uri;

.field private static final CONTENT_PERM_WHITE_LIST_USER_URI:Landroid/net/Uri;

.field private static final FIELD_NAME_MODIFY:Ljava/lang/String; = "modify"

.field private static final FIELD_NAME_PACKAGE:Ljava/lang/String; = "package"

.field private static final FIELD_NAME_PERMISSION:Ljava/lang/String; = "permission"

.field private static final FIELD_NAME_PERMISSION_BACKGROUND_STATUS:Ljava/lang/String; = "extra_data_1"

.field private static final FIELD_NAME_PERMISSION_STATUS:Ljava/lang/String; = "permission_status"

.field private static final TABLE_PERMISSION_SYS:Ljava/lang/String; = "app_permissions_sys_settings"

.field private static final TABLE_PERMISSION_USER:Ljava/lang/String; = "app_permissions_user_settings"

.field private static final TABLE_PERMISSION_WHITE_LIST_SYS:Ljava/lang/String; = "white_list_sys_settings"

.field private static final TABLE_PERMISSION_WHITE_LIST_USER:Ljava/lang/String; = "white_list_user_settings"

.field private static final TAG:Ljava/lang/String; = "Security/AppPcDataManager"


# instance fields
.field private mAllSystemPermissionMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/lenovo/common/AppPcPermissionItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAppLockOnAppCount:I

.field private mAppLockOnAppCountLock:Ljava/lang/Object;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mModifyDisSystemPermissionMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/lenovo/common/AppPcPermissionItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSystemPermissionMapsSyncThread:Ljava/lang/Thread;

.field private mSystemWhiteLists:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemWhiteListsSyncThread:Ljava/lang/Thread;

.field private mUserCodePermissionMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lenovo/common/AppPcPermissionItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mUserPermissionSyncThread:Ljava/lang/Thread;

.field private mUserPkgPermissionMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/lenovo/common/AppPcPermissionItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mUserWhiteLists:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUserWhiteListsSyncThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "content://com.lenovo.lsf.bwprovider/app_permissions_user_settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/AppPcDataManager;->CONTENT_PERM_USER_URI:Landroid/net/Uri;

    .line 57
    const-string v0, "content://com.lenovo.lsf.bwprovider/app_permissions_sys_settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/AppPcDataManager;->CONTENT_PERM_SYS_URI:Landroid/net/Uri;

    .line 60
    const-string v0, "content://com.lenovo.lsf.bwprovider/white_list_sys_settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/AppPcDataManager;->CONTENT_PERM_WHITE_LIST_SYS_URI:Landroid/net/Uri;

    .line 64
    const-string v0, "content://com.lenovo.lsf.bwprovider/white_list_user_settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/AppPcDataManager;->CONTENT_PERM_WHITE_LIST_USER_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mAllSystemPermissionMaps:Ljava/util/HashMap;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mModifyDisSystemPermissionMaps:Ljava/util/HashMap;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mUserPkgPermissionMaps:Ljava/util/HashMap;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mUserCodePermissionMaps:Ljava/util/HashMap;

    .line 90
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mSystemWhiteLists:Ljava/util/HashSet;

    .line 92
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mUserWhiteLists:Ljava/util/HashSet;

    .line 94
    iput-object v1, p0, Lcom/android/server/am/AppPcDataManager;->mSystemWhiteListsSyncThread:Ljava/lang/Thread;

    .line 96
    iput-object v1, p0, Lcom/android/server/am/AppPcDataManager;->mUserWhiteListsSyncThread:Ljava/lang/Thread;

    .line 98
    iput-object v1, p0, Lcom/android/server/am/AppPcDataManager;->mSystemPermissionMapsSyncThread:Ljava/lang/Thread;

    .line 100
    iput-object v1, p0, Lcom/android/server/am/AppPcDataManager;->mUserPermissionSyncThread:Ljava/lang/Thread;

    .line 101
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mHandler:Landroid/os/Handler;

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/AppPcDataManager;->mAppLockOnAppCount:I

    .line 104
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mAppLockOnAppCountLock:Ljava/lang/Object;

    .line 147
    new-instance v0, Lcom/android/server/am/AppPcDataManager$3;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppPcDataManager$3;-><init>(Lcom/android/server/am/AppPcDataManager;)V

    iput-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 107
    iput-object p1, p0, Lcom/android/server/am/AppPcDataManager;->mContext:Landroid/content/Context;

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/AppPcDataManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppPcDataManager;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/server/am/AppPcDataManager;->startSyncSystemWhiteLists()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/AppPcDataManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppPcDataManager;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/server/am/AppPcDataManager;->startSyncSystemPermissionMaps()V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/server/am/AppPcDataManager;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppPcDataManager;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/server/am/AppPcDataManager;->mUserWhiteListsSyncThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$1100()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/android/server/am/AppPcDataManager;->CONTENT_PERM_SYS_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/am/AppPcDataManager;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPcDataManager;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mAllSystemPermissionMaps:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/am/AppPcDataManager;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPcDataManager;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mModifyDisSystemPermissionMaps:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/am/AppPcDataManager;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPcDataManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/AppPcDataManager;->grantSupportsRuntimePermissions(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/am/AppPcDataManager;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPcDataManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/AppPcDataManager;->revokeSupportsRuntimePermissions(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/am/AppPcDataManager;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppPcDataManager;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/server/am/AppPcDataManager;->mSystemPermissionMapsSyncThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/server/am/AppPcDataManager;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPcDataManager;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mUserPkgPermissionMaps:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/am/AppPcDataManager;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPcDataManager;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mUserCodePermissionMaps:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/am/AppPcDataManager;Landroid/content/pm/PackageInfo;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPcDataManager;
    .param p1, "x1"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/server/am/AppPcDataManager;->getPackageDefaultPermissionItems(Landroid/content/pm/PackageInfo;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/AppPcDataManager;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppPcDataManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/AppPcDataManager;->reInitPackageUserPermissions(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$2000()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/android/server/am/AppPcDataManager;->CONTENT_PERM_USER_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/am/AppPcDataManager;Ljava/util/List;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPcDataManager;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/server/am/AppPcDataManager;->bulkInsertAppPcPermissionItem(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/am/AppPcDataManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppPcDataManager;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/server/am/AppPcDataManager;->reInitAppLockOnAppCount()V

    return-void
.end method

.method static synthetic access$2302(Lcom/android/server/am/AppPcDataManager;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppPcDataManager;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/server/am/AppPcDataManager;->mUserPermissionSyncThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/server/am/AppPcDataManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppPcDataManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/server/am/AppPcDataManager;->removePackageUserPermissionsInternal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/am/AppPcDataManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppPcDataManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/server/am/AppPcDataManager;->removeDbPermissionByPackageName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/am/AppPcDataManager;Lcom/lenovo/common/AppPcPermissionItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppPcDataManager;
    .param p1, "x1"    # Lcom/lenovo/common/AppPcPermissionItem;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/server/am/AppPcDataManager;->changeDbPermissionStatus(Lcom/lenovo/common/AppPcPermissionItem;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/am/AppPcDataManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppPcDataManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/server/am/AppPcDataManager;->removePackageUserPermissions(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/android/server/am/AppPcDataManager;->CONTENT_PERM_WHITE_LIST_SYS_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/am/AppPcDataManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPcDataManager;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/am/AppPcDataManager;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPcDataManager;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mSystemWhiteLists:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/am/AppPcDataManager;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppPcDataManager;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/server/am/AppPcDataManager;->mSystemWhiteListsSyncThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$800()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/android/server/am/AppPcDataManager;->CONTENT_PERM_WHITE_LIST_USER_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/am/AppPcDataManager;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPcDataManager;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mUserWhiteLists:Ljava/util/HashSet;

    return-object v0
.end method

.method private bulkInsertAppPcPermissionItem(Ljava/util/List;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/common/AppPcPermissionItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/common/AppPcPermissionItem;>;"
    const/4 v6, 0x0

    .line 574
    if-nez p1, :cond_1

    .line 606
    :cond_0
    :goto_0
    return v6

    .line 577
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    .line 578
    .local v7, "size":I
    if-eqz v7, :cond_0

    .line 582
    iget-object v9, p0, Lcom/android/server/am/AppPcDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 583
    .local v5, "resolver":Landroid/content/ContentResolver;
    new-array v0, v7, [Landroid/content/ContentValues;

    .line 584
    .local v0, "allValues":[Landroid/content/ContentValues;
    const/4 v2, 0x0

    .line 585
    .local v2, "i":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/common/AppPcPermissionItem;

    .line 587
    .local v4, "item":Lcom/lenovo/common/AppPcPermissionItem;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 588
    .local v8, "values":Landroid/content/ContentValues;
    const-string v9, "package"

    invoke-virtual {v4}, Lcom/lenovo/common/AppPcPermissionItem;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    const-string v9, "permission"

    invoke-virtual {v4}, Lcom/lenovo/common/AppPcPermissionItem;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    const-string v9, "permission_status"

    invoke-virtual {v4}, Lcom/lenovo/common/AppPcPermissionItem;->getStatus()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 591
    const-string v9, "modify"

    invoke-virtual {v4}, Lcom/lenovo/common/AppPcPermissionItem;->getModify()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 592
    const-string v9, "extra_data_1"

    invoke-virtual {v4}, Lcom/lenovo/common/AppPcPermissionItem;->getBackgroundStatus()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    aput-object v8, v0, v2

    .line 595
    add-int/lit8 v2, v2, 0x1

    .line 596
    goto :goto_1

    .line 599
    .end local v4    # "item":Lcom/lenovo/common/AppPcPermissionItem;
    .end local v8    # "values":Landroid/content/ContentValues;
    :cond_2
    :try_start_0
    sget-object v9, Lcom/android/server/am/AppPcDataManager;->CONTENT_PERM_USER_URI:Landroid/net/Uri;

    invoke-virtual {v5, v9, v0}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 600
    .local v6, "result":I
    goto :goto_0

    .line 601
    .end local v6    # "result":I
    :catch_0
    move-exception v1

    .line 603
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private changeDbPermissionBackgroundStatus(Lcom/lenovo/common/AppPcPermissionItem;)V
    .locals 11
    .param p1, "item"    # Lcom/lenovo/common/AppPcPermissionItem;

    .prologue
    .line 1035
    invoke-virtual {p1}, Lcom/lenovo/common/AppPcPermissionItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1036
    .local v4, "pkgName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/lenovo/common/AppPcPermissionItem;->getBackgroundStatus()I

    move-result v0

    .line 1037
    .local v0, "backgroundStatus":I
    invoke-virtual {p1}, Lcom/lenovo/common/AppPcPermissionItem;->getCode()I

    move-result v7

    invoke-static {v7}, Lcom/lenovo/common/AppPcUtils;->getPermissionByCode(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 1038
    .local v3, "perms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/server/am/AppPcDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 1039
    .local v5, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1040
    .local v2, "permission":Ljava/lang/String;
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1041
    .local v6, "values":Landroid/content/ContentValues;
    const-string v7, "extra_data_1"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    sget-object v7, Lcom/android/server/am/AppPcDataManager;->CONTENT_PERM_USER_URI:Landroid/net/Uri;

    const-string v8, "package=? AND permission=?"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    const/4 v10, 0x1

    aput-object v2, v9, v10

    invoke-virtual {v5, v7, v6, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 1044
    .end local v2    # "permission":Ljava/lang/String;
    .end local v6    # "values":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method private changeDbPermissionStatus(Lcom/lenovo/common/AppPcPermissionItem;)V
    .locals 11
    .param p1, "item"    # Lcom/lenovo/common/AppPcPermissionItem;

    .prologue
    .line 1019
    invoke-virtual {p1}, Lcom/lenovo/common/AppPcPermissionItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1020
    .local v3, "pkgName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/lenovo/common/AppPcPermissionItem;->getStatus()I

    move-result v5

    .line 1021
    .local v5, "status":I
    invoke-virtual {p1}, Lcom/lenovo/common/AppPcPermissionItem;->getCode()I

    move-result v7

    invoke-static {v7}, Lcom/lenovo/common/AppPcUtils;->getPermissionByCode(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1022
    .local v2, "perms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/server/am/AppPcDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1023
    .local v4, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1024
    .local v1, "permission":Ljava/lang/String;
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1025
    .local v6, "values":Landroid/content/ContentValues;
    const-string v7, "permission_status"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1026
    sget-object v7, Lcom/android/server/am/AppPcDataManager;->CONTENT_PERM_USER_URI:Landroid/net/Uri;

    const-string v8, "package=? AND permission=?"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    const/4 v10, 0x1

    aput-object v1, v9, v10

    invoke-virtual {v4, v7, v6, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 1028
    .end local v1    # "permission":Ljava/lang/String;
    .end local v6    # "values":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method private getControledPermissionsList(Landroid/content/pm/PackageInfo;)Ljava/util/ArrayList;
    .locals 14
    .param p1, "pkgInfo"    # Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 806
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 807
    .local v10, "permissionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 808
    .local v8, "packageName":Ljava/lang/String;
    iget-object v11, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 811
    .local v11, "permissions":[Ljava/lang/String;
    invoke-static {v8}, Lcom/lenovo/common/AppPcUtils;->isIgnorePkg(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 812
    const/4 v10, 0x0

    .line 875
    .end local v10    # "permissionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-object v10

    .line 813
    .restart local v10    # "permissionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    const-string v12, "com.lenovo.security"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 814
    const/4 v10, 0x0

    goto :goto_0

    .line 817
    :cond_2
    invoke-virtual {p0, v8}, Lcom/android/server/am/AppPcDataManager;->isInWhiteList(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 818
    const/4 v10, 0x0

    goto :goto_0

    .line 821
    :cond_3
    iget-object v12, p0, Lcom/android/server/am/AppPcDataManager;->mContext:Landroid/content/Context;

    invoke-static {v12, v8}, Lcom/lenovo/common/AppPcUtils;->isLauncherApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    .line 822
    .local v5, "isLauncherApp":Z
    iget-object v12, p0, Lcom/android/server/am/AppPcDataManager;->mContext:Landroid/content/Context;

    invoke-static {v12, v8}, Lcom/lenovo/common/AppPcUtils;->isHomeApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 824
    .local v3, "isHomeApp":Z
    if-nez v3, :cond_4

    if-eqz v5, :cond_4

    .line 825
    const-string v12, "lenovo.permission.APP_LOCK"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 827
    :cond_4
    invoke-static {p1}, Lcom/lenovo/common/AppPcUtils;->isSystemApp(Landroid/content/pm/PackageInfo;)Z

    move-result v6

    .line 828
    .local v6, "isSystemApp":Z
    const/4 v4, 0x0

    .line 829
    .local v4, "isInControllableSystemApp":Z
    if-eqz v6, :cond_5

    .line 830
    invoke-static {v8}, Lcom/lenovo/common/AppPcUtils;->isInControllableSystemApps(Ljava/lang/String;)Z

    move-result v4

    .line 835
    :cond_5
    if-nez v3, :cond_7

    if-eqz v6, :cond_6

    const/4 v12, 0x1

    if-ne v4, v12, :cond_7

    .line 836
    :cond_6
    const-string v12, "com.lenovo.pemission.exit_app"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 837
    const-string v12, "lenovo.permission.GET_INSTALLED_PACKAGES"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 840
    :cond_7
    const/4 v2, 0x0

    .line 842
    .local v2, "ignoreBootComplete":Z
    iget-object v12, p1, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    if-eqz v12, :cond_b

    if-eqz v6, :cond_8

    const/4 v12, 0x1

    if-ne v4, v12, :cond_b

    .line 843
    :cond_8
    const-string v12, "android.permission.RECEIVE_BOOT_COMPLETED"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 848
    :goto_1
    if-eqz v11, :cond_0

    .line 852
    const/4 v12, 0x1

    if-ne v6, v12, :cond_9

    if-eqz v4, :cond_0

    .line 856
    :cond_9
    move-object v0, v11

    .local v0, "arr$":[Ljava/lang/String;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_2
    if-ge v1, v7, :cond_e

    aget-object v9, v0, v1

    .line 857
    .local v9, "perm":Ljava/lang/String;
    invoke-static {v9}, Lcom/lenovo/common/AppPcUtils;->isIgnorePerm(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 856
    :cond_a
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 845
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v7    # "len$":I
    .end local v9    # "perm":Ljava/lang/String;
    :cond_b
    const/4 v2, 0x1

    goto :goto_1

    .line 864
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "i$":I
    .restart local v7    # "len$":I
    .restart local v9    # "perm":Ljava/lang/String;
    :cond_c
    const-string v12, "android.permission.SEND_SMS"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 865
    const-string v12, "android.permission.SEND_SMS"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 866
    const-string v12, "lenovo.permission.SEND_MMS"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 867
    :cond_d
    invoke-static {v9}, Lcom/lenovo/common/AppPcUtils;->getPermCode(Ljava/lang/String;)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_a

    .line 868
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 871
    .end local v9    # "perm":Ljava/lang/String;
    :cond_e
    if-eqz v2, :cond_0

    .line 873
    const-string v12, "android.permission.RECEIVE_BOOT_COMPLETED"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private getPackageDefaultPermissionItems(Landroid/content/pm/PackageInfo;)Ljava/util/ArrayList;
    .locals 21
    .param p1, "pkgInfo"    # Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/common/AppPcPermissionItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 743
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/AppPcDataManager;->getControledPermissionsList(Landroid/content/pm/PackageInfo;)Ljava/util/ArrayList;

    move-result-object v16

    .line 744
    .local v16, "permStrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v16, :cond_7

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 746
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 747
    .local v13, "packageName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 748
    .local v9, "cursor":Landroid/database/Cursor;
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 750
    .local v18, "permissionMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/lenovo/common/AppPcPermissionItem;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/AppPcDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/server/am/AppPcDataManager;->CONTENT_PERM_SYS_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const-string v4, "package=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/16 v20, 0x0

    aput-object v13, v5, v20

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 752
    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 753
    const-string v2, "package"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 754
    .local v12, "packageColumnIndex":I
    const-string v2, "permission"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 755
    .local v17, "permissionColumnIndex":I
    const-string v2, "permission_status"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 756
    .local v19, "permissionStatusColumnIndex":I
    const-string v2, "extra_data_1"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 758
    .local v7, "backgroundStatusColumnIndex":I
    :cond_0
    move/from16 v0, v17

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 760
    .local v3, "permissionName":Ljava/lang/String;
    invoke-static {v3}, Lcom/lenovo/common/AppPcUtils;->getPermCode(Ljava/lang/String;)I

    move-result v8

    .line 762
    .local v8, "code":I
    const/4 v2, -0x1

    if-eq v2, v8, :cond_1

    invoke-static {v3}, Lcom/lenovo/common/AppPcUtils;->isIgnorePerm(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 778
    :cond_1
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 782
    .end local v3    # "permissionName":Ljava/lang/String;
    .end local v7    # "backgroundStatusColumnIndex":I
    .end local v8    # "code":I
    .end local v12    # "packageColumnIndex":I
    .end local v17    # "permissionColumnIndex":I
    .end local v19    # "permissionStatusColumnIndex":I
    :cond_2
    if-eqz v9, :cond_3

    .line 783
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 786
    :cond_3
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 787
    .local v15, "permItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/common/AppPcPermissionItem;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 788
    .local v14, "perm":Ljava/lang/String;
    new-instance v1, Lcom/lenovo/common/AppPcPermissionItem;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/lenovo/common/AppPcUtils;->isSystemApp(Landroid/content/pm/PackageInfo;)Z

    move-result v5

    invoke-direct {v1, v2, v14, v5}, Lcom/lenovo/common/AppPcPermissionItem;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 789
    .local v1, "item":Lcom/lenovo/common/AppPcPermissionItem;
    invoke-virtual {v1}, Lcom/lenovo/common/AppPcPermissionItem;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/lenovo/common/AppPcPermissionItem;

    .line 790
    .local v11, "mapItem":Lcom/lenovo/common/AppPcPermissionItem;
    if-eqz v11, :cond_4

    .line 791
    invoke-virtual {v11}, Lcom/lenovo/common/AppPcPermissionItem;->getStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/common/AppPcPermissionItem;->setStatus(I)V

    .line 792
    invoke-virtual {v11}, Lcom/lenovo/common/AppPcPermissionItem;->getBackgroundStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/common/AppPcPermissionItem;->setBackgroundStatus(I)V

    .line 794
    :cond_4
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 767
    .end local v1    # "item":Lcom/lenovo/common/AppPcPermissionItem;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "mapItem":Lcom/lenovo/common/AppPcPermissionItem;
    .end local v14    # "perm":Ljava/lang/String;
    .end local v15    # "permItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/common/AppPcPermissionItem;>;"
    .restart local v3    # "permissionName":Ljava/lang/String;
    .restart local v7    # "backgroundStatusColumnIndex":I
    .restart local v8    # "code":I
    .restart local v12    # "packageColumnIndex":I
    .restart local v17    # "permissionColumnIndex":I
    .restart local v19    # "permissionStatusColumnIndex":I
    :cond_5
    :try_start_1
    move/from16 v0, v19

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 769
    .local v4, "status":I
    invoke-interface {v9, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/common/AppPcPermissionItem;->translateBackgroundStatus(Ljava/lang/String;)I

    move-result v6

    .line 771
    .local v6, "backgroundStatus":I
    new-instance v1, Lcom/lenovo/common/AppPcPermissionItem;

    const/4 v5, 0x1

    move-object v2, v13

    invoke-direct/range {v1 .. v6}, Lcom/lenovo/common/AppPcPermissionItem;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    .line 777
    .restart local v1    # "item":Lcom/lenovo/common/AppPcPermissionItem;
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 782
    .end local v1    # "item":Lcom/lenovo/common/AppPcPermissionItem;
    .end local v3    # "permissionName":Ljava/lang/String;
    .end local v4    # "status":I
    .end local v6    # "backgroundStatus":I
    .end local v7    # "backgroundStatusColumnIndex":I
    .end local v8    # "code":I
    .end local v12    # "packageColumnIndex":I
    .end local v17    # "permissionColumnIndex":I
    .end local v19    # "permissionStatusColumnIndex":I
    :catchall_0
    move-exception v2

    if-eqz v9, :cond_6

    .line 783
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v2

    .line 798
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v18    # "permissionMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/lenovo/common/AppPcPermissionItem;>;"
    :cond_7
    const/4 v15, 0x0

    :cond_8
    return-object v15
.end method

.method private grantSupportsRuntimePermissions(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "fixedByTheUser"    # Z

    .prologue
    .line 410
    iget-object v1, p0, Lcom/android/server/am/AppPcDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 411
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/android/server/am/AppPcDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/pm/PackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 415
    if-nez p3, :cond_0

    .line 416
    const/4 v3, 0x3

    const/4 v4, 0x0

    new-instance v5, Landroid/os/UserHandle;

    iget-object v1, p0, Lcom/android/server/am/AppPcDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-direct {v5, v1}, Landroid/os/UserHandle;-><init>(I)V

    move-object v1, p2

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    .line 423
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private reInitAppLockOnAppCount()V
    .locals 9

    .prologue
    .line 1193
    const/4 v0, 0x0

    .line 1194
    .local v0, "count":I
    const/4 v3, 0x0

    .line 1195
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/common/AppPcPermissionItem;>;"
    iget-object v7, p0, Lcom/android/server/am/AppPcDataManager;->mUserCodePermissionMaps:Ljava/util/HashMap;

    monitor-enter v7

    .line 1196
    :try_start_0
    iget-object v6, p0, Lcom/android/server/am/AppPcDataManager;->mUserCodePermissionMaps:Ljava/util/HashMap;

    const/16 v8, 0x16

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    .line 1197
    .local v5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/lenovo/common/AppPcPermissionItem;>;"
    if-eqz v5, :cond_0

    .line 1198
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/common/AppPcPermissionItem;>;"
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/common/AppPcPermissionItem;>;"
    move-object v3, v4

    .line 1200
    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/common/AppPcPermissionItem;>;"
    .restart local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/common/AppPcPermissionItem;>;"
    :cond_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1201
    if-eqz v3, :cond_2

    .line 1202
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/common/AppPcPermissionItem;

    .line 1203
    .local v2, "item":Lcom/lenovo/common/AppPcPermissionItem;
    invoke-virtual {v2}, Lcom/lenovo/common/AppPcPermissionItem;->getStatus()I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    .line 1204
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1200
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "item":Lcom/lenovo/common/AppPcPermissionItem;
    .end local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/lenovo/common/AppPcPermissionItem;>;"
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 1208
    .restart local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/lenovo/common/AppPcPermissionItem;>;"
    :cond_2
    iget-object v7, p0, Lcom/android/server/am/AppPcDataManager;->mAppLockOnAppCountLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1209
    :try_start_2
    iput v0, p0, Lcom/android/server/am/AppPcDataManager;->mAppLockOnAppCount:I

    .line 1210
    monitor-exit v7

    .line 1211
    return-void

    .line 1210
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6
.end method

.method private reInitPackageUserPermissions(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "isReplacing"    # Z

    .prologue
    .line 613
    new-instance v0, Lcom/android/server/am/AppPcDataManager$8;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/AppPcDataManager$8;-><init>(Lcom/android/server/am/AppPcDataManager;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/am/AppPcDataManager$8;->start()V

    .line 709
    return-void
.end method

.method private removeDbPermissionByPackageName(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1050
    iget-object v1, p0, Lcom/android/server/am/AppPcDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1051
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/server/am/AppPcDataManager;->CONTENT_PERM_USER_URI:Landroid/net/Uri;

    const-string v2, "package=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1052
    return-void
.end method

.method private removePackageUserPermissions(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 711
    new-instance v0, Lcom/android/server/am/AppPcDataManager$9;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/AppPcDataManager$9;-><init>(Lcom/android/server/am/AppPcDataManager;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/am/AppPcDataManager$9;->start()V

    .line 719
    return-void
.end method

.method private removePackageUserPermissionsInternal(Ljava/lang/String;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 721
    const/4 v4, 0x0

    .line 722
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/lenovo/common/AppPcPermissionItem;>;"
    iget-object v6, p0, Lcom/android/server/am/AppPcDataManager;->mUserPkgPermissionMaps:Ljava/util/HashMap;

    monitor-enter v6

    .line 723
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/AppPcDataManager;->mUserPkgPermissionMaps:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/util/HashMap;

    move-object v4, v0

    .line 724
    if-eqz v4, :cond_0

    .line 725
    iget-object v5, p0, Lcom/android/server/am/AppPcDataManager;->mUserPkgPermissionMaps:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    :cond_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 728
    if-eqz v4, :cond_2

    .line 729
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 730
    .local v3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/common/AppPcPermissionItem;>;"
    iget-object v6, p0, Lcom/android/server/am/AppPcDataManager;->mUserCodePermissionMaps:Ljava/util/HashMap;

    monitor-enter v6

    .line 731
    :try_start_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/common/AppPcPermissionItem;

    .line 732
    .local v2, "item":Lcom/lenovo/common/AppPcPermissionItem;
    iget-object v5, p0, Lcom/android/server/am/AppPcDataManager;->mUserCodePermissionMaps:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/lenovo/common/AppPcPermissionItem;->getCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 734
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "item":Lcom/lenovo/common/AppPcPermissionItem;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 727
    .end local v3    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/common/AppPcPermissionItem;>;"
    :catchall_1
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5

    .line 734
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/common/AppPcPermissionItem;>;"
    :cond_1
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 736
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/common/AppPcPermissionItem;>;"
    :cond_2
    return-void
.end method

.method private revokeSupportsRuntimePermissions(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "fixedByTheUser"    # Z

    .prologue
    const/4 v3, 0x3

    .line 434
    iget-object v1, p0, Lcom/android/server/am/AppPcDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 435
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/android/server/am/AppPcDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/pm/PackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 439
    if-eqz p3, :cond_0

    .line 440
    const/4 v4, 0x2

    new-instance v5, Landroid/os/UserHandle;

    iget-object v1, p0, Lcom/android/server/am/AppPcDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-direct {v5, v1}, Landroid/os/UserHandle;-><init>(I)V

    move-object v1, p2

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    .line 455
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 448
    :cond_0
    const/4 v4, 0x0

    new-instance v5, Landroid/os/UserHandle;

    iget-object v1, p0, Lcom/android/server/am/AppPcDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-direct {v5, v1}, Landroid/os/UserHandle;-><init>(I)V

    move-object v1, p2

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    goto :goto_0
.end method

.method private startSyncSystemPermissionMaps()V
    .locals 2

    .prologue
    .line 274
    const-string v0, "Security/AppPcDataManager"

    const-string v1, "startSyncSystemPermissionMaps"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mSystemPermissionMapsSyncThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mSystemPermissionMapsSyncThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 278
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/am/AppPcDataManager$6;

    invoke-direct {v1, p0}, Lcom/android/server/am/AppPcDataManager$6;-><init>(Lcom/android/server/am/AppPcDataManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mSystemPermissionMapsSyncThread:Ljava/lang/Thread;

    .line 399
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mSystemPermissionMapsSyncThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 400
    return-void
.end method

.method private startSyncSystemWhiteLists()V
    .locals 2

    .prologue
    .line 188
    const-string v0, "Security/AppPcDataManager"

    const-string v1, "startSyncSystemWhiteLists"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mSystemWhiteListsSyncThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mSystemWhiteListsSyncThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 192
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/am/AppPcDataManager$4;

    invoke-direct {v1, p0}, Lcom/android/server/am/AppPcDataManager$4;-><init>(Lcom/android/server/am/AppPcDataManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mSystemWhiteListsSyncThread:Ljava/lang/Thread;

    .line 227
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mSystemWhiteListsSyncThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 228
    return-void
.end method

.method private startSyncUserPermissions()V
    .locals 2

    .prologue
    .line 461
    const-string v0, "Security/AppPcDataManager"

    const-string v1, "startSyncUserPermissions"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mUserPermissionSyncThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mUserPermissionSyncThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 465
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/am/AppPcDataManager$7;

    invoke-direct {v1, p0}, Lcom/android/server/am/AppPcDataManager$7;-><init>(Lcom/android/server/am/AppPcDataManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mUserPermissionSyncThread:Ljava/lang/Thread;

    .line 566
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mUserPermissionSyncThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 567
    return-void
.end method

.method private startSyncUserWhiteLists()V
    .locals 2

    .prologue
    .line 233
    const-string v0, "Security/AppPcDataManager"

    const-string v1, "startSyncUserWhiteLists"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mUserWhiteListsSyncThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mUserWhiteListsSyncThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 237
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/am/AppPcDataManager$5;

    invoke-direct {v1, p0}, Lcom/android/server/am/AppPcDataManager$5;-><init>(Lcom/android/server/am/AppPcDataManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mUserWhiteListsSyncThread:Ljava/lang/Thread;

    .line 267
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mUserWhiteListsSyncThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 268
    return-void
.end method


# virtual methods
.method public changeAppPcPermissionBackgroundStatus(Lcom/lenovo/common/AppPcPermissionItem;)Z
    .locals 8
    .param p1, "item"    # Lcom/lenovo/common/AppPcPermissionItem;

    .prologue
    .line 984
    const/4 v0, 0x0

    .line 985
    .local v0, "changeDb":Z
    const/4 v2, 0x0

    .line 986
    .local v2, "hasMatch":Z
    iget-object v6, p0, Lcom/android/server/am/AppPcDataManager;->mUserPkgPermissionMaps:Ljava/util/HashMap;

    monitor-enter v6

    .line 987
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/AppPcDataManager;->mUserPkgPermissionMaps:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/lenovo/common/AppPcPermissionItem;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 989
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/lenovo/common/AppPcPermissionItem;>;"
    if-eqz v3, :cond_3

    .line 990
    invoke-virtual {p1}, Lcom/lenovo/common/AppPcPermissionItem;->getCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/common/AppPcPermissionItem;

    .line 991
    .local v1, "destItem":Lcom/lenovo/common/AppPcPermissionItem;
    if-eqz v1, :cond_2

    .line 992
    const/4 v2, 0x1

    .line 993
    invoke-virtual {v1}, Lcom/lenovo/common/AppPcPermissionItem;->getBackgroundStatus()I

    move-result v5

    invoke-virtual {p1}, Lcom/lenovo/common/AppPcPermissionItem;->getBackgroundStatus()I

    move-result v7

    if-eq v5, v7, :cond_0

    .line 994
    const/4 v0, 0x1

    .line 995
    invoke-virtual {p1}, Lcom/lenovo/common/AppPcPermissionItem;->getBackgroundStatus()I

    move-result v4

    .line 996
    .local v4, "newStatus":I
    invoke-virtual {v1, v4}, Lcom/lenovo/common/AppPcPermissionItem;->setBackgroundStatus(I)V

    .line 1007
    .end local v1    # "destItem":Lcom/lenovo/common/AppPcPermissionItem;
    .end local v4    # "newStatus":I
    :cond_0
    :goto_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1008
    if-eqz v0, :cond_1

    .line 1009
    invoke-direct {p0, p1}, Lcom/android/server/am/AppPcDataManager;->changeDbPermissionBackgroundStatus(Lcom/lenovo/common/AppPcPermissionItem;)V

    .line 1010
    const/4 v2, 0x1

    .line 1012
    .end local v2    # "hasMatch":Z
    :cond_1
    return v2

    .line 1002
    .restart local v1    # "destItem":Lcom/lenovo/common/AppPcPermissionItem;
    .restart local v2    # "hasMatch":Z
    :cond_2
    :try_start_1
    const-string v5, "Security/AppPcDataManager"

    const-string v7, "changeAppPcPermissionBackgroundStatus destItem==null"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1007
    .end local v1    # "destItem":Lcom/lenovo/common/AppPcPermissionItem;
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/lenovo/common/AppPcPermissionItem;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 1005
    .restart local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/lenovo/common/AppPcPermissionItem;>;"
    :cond_3
    :try_start_2
    const-string v5, "Security/AppPcDataManager"

    const-string v7, "changeAppPcPermissionBackgroundStatus map==null"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public changeAppPcPermissionStatus(Lcom/lenovo/common/AppPcPermissionItem;)Z
    .locals 9
    .param p1, "item"    # Lcom/lenovo/common/AppPcPermissionItem;

    .prologue
    const/4 v5, 0x1

    .line 932
    const/4 v2, 0x0

    .line 933
    .local v2, "hasMatch":Z
    const/4 v4, 0x0

    .line 934
    .local v4, "olderStatus":I
    const/4 v0, 0x0

    .line 935
    .local v0, "changeDb":Z
    iget-object v6, p0, Lcom/android/server/am/AppPcDataManager;->mUserPkgPermissionMaps:Ljava/util/HashMap;

    monitor-enter v6

    .line 936
    :try_start_0
    iget-object v7, p0, Lcom/android/server/am/AppPcDataManager;->mUserPkgPermissionMaps:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/lenovo/common/AppPcPermissionItem;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 938
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/lenovo/common/AppPcPermissionItem;>;"
    if-eqz v3, :cond_0

    .line 939
    invoke-virtual {p1}, Lcom/lenovo/common/AppPcPermissionItem;->getCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/common/AppPcPermissionItem;

    .line 940
    .local v1, "destItem":Lcom/lenovo/common/AppPcPermissionItem;
    if-eqz v1, :cond_4

    .line 941
    const/4 v2, 0x1

    .line 942
    invoke-virtual {v1}, Lcom/lenovo/common/AppPcPermissionItem;->getStatus()I

    move-result v7

    invoke-virtual {p1}, Lcom/lenovo/common/AppPcPermissionItem;->getStatus()I

    move-result v8

    if-eq v7, v8, :cond_3

    .line 943
    const/4 v0, 0x1

    .line 944
    invoke-virtual {v1}, Lcom/lenovo/common/AppPcPermissionItem;->getStatus()I

    move-result v4

    .line 945
    invoke-virtual {p1}, Lcom/lenovo/common/AppPcPermissionItem;->getStatus()I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/lenovo/common/AppPcPermissionItem;->setStatus(I)V

    .line 954
    .end local v1    # "destItem":Lcom/lenovo/common/AppPcPermissionItem;
    :cond_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 955
    if-eqz v0, :cond_1

    .line 956
    iget-object v6, p0, Lcom/android/server/am/AppPcDataManager;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/am/AppPcDataManager$10;

    invoke-direct {v7, p0, p1}, Lcom/android/server/am/AppPcDataManager$10;-><init>(Lcom/android/server/am/AppPcDataManager;Lcom/lenovo/common/AppPcPermissionItem;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 964
    :cond_1
    invoke-virtual {p1}, Lcom/lenovo/common/AppPcPermissionItem;->getCode()I

    move-result v6

    const/16 v7, 0x16

    if-ne v6, v7, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/lenovo/common/AppPcPermissionItem;->getStatus()I

    move-result v6

    if-eq v6, v4, :cond_2

    .line 967
    iget-object v6, p0, Lcom/android/server/am/AppPcDataManager;->mAppLockOnAppCountLock:Ljava/lang/Object;

    monitor-enter v6

    .line 968
    if-ne v4, v5, :cond_5

    .line 970
    :try_start_1
    iget v5, p0, Lcom/android/server/am/AppPcDataManager;->mAppLockOnAppCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/server/am/AppPcDataManager;->mAppLockOnAppCount:I

    .line 974
    :goto_0
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_2
    move v5, v2

    .line 976
    :goto_1
    return v5

    .line 948
    .restart local v1    # "destItem":Lcom/lenovo/common/AppPcPermissionItem;
    :cond_3
    :try_start_2
    monitor-exit v6

    goto :goto_1

    .line 954
    .end local v1    # "destItem":Lcom/lenovo/common/AppPcPermissionItem;
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/lenovo/common/AppPcPermissionItem;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 951
    .restart local v1    # "destItem":Lcom/lenovo/common/AppPcPermissionItem;
    .restart local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/lenovo/common/AppPcPermissionItem;>;"
    :cond_4
    const/4 v5, 0x0

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 972
    .end local v1    # "destItem":Lcom/lenovo/common/AppPcPermissionItem;
    :cond_5
    :try_start_4
    iget v5, p0, Lcom/android/server/am/AppPcDataManager;->mAppLockOnAppCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/server/am/AppPcDataManager;->mAppLockOnAppCount:I

    goto :goto_0

    .line 974
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5
.end method

.method public getAppPcPermissionItemsByCode(I)Landroid/content/pm/ParceledListSlice;
    .locals 5
    .param p1, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/content/pm/ParceledListSlice",
            "<",
            "Lcom/lenovo/common/AppPcPermissionItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 901
    iget-object v3, p0, Lcom/android/server/am/AppPcDataManager;->mUserCodePermissionMaps:Ljava/util/HashMap;

    monitor-enter v3

    .line 902
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/AppPcDataManager;->mUserCodePermissionMaps:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 903
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/lenovo/common/AppPcPermissionItem;>;"
    if-eqz v1, :cond_0

    .line 904
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 905
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/common/AppPcPermissionItem;>;"
    new-instance v2, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v2, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v3

    .line 909
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/common/AppPcPermissionItem;>;"
    :goto_0
    return-object v2

    .line 907
    :cond_0
    monitor-exit v3

    .line 909
    const/4 v2, 0x0

    goto :goto_0

    .line 907
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/lenovo/common/AppPcPermissionItem;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getAppPcPermissionItemsByPackageName(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice",
            "<",
            "Lcom/lenovo/common/AppPcPermissionItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 917
    iget-object v3, p0, Lcom/android/server/am/AppPcDataManager;->mUserPkgPermissionMaps:Ljava/util/HashMap;

    monitor-enter v3

    .line 918
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/AppPcDataManager;->mUserPkgPermissionMaps:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 919
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/lenovo/common/AppPcPermissionItem;>;"
    if-eqz v1, :cond_0

    .line 920
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 921
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/common/AppPcPermissionItem;>;"
    new-instance v2, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v2, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v3

    .line 924
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/common/AppPcPermissionItem;>;"
    :goto_0
    return-object v2

    .line 923
    :cond_0
    monitor-exit v3

    .line 924
    const/4 v2, 0x0

    goto :goto_0

    .line 923
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/lenovo/common/AppPcPermissionItem;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getPermBackgroundStatus(Ljava/lang/String;I)I
    .locals 6
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "code"    # I

    .prologue
    const/4 v4, 0x1

    .line 1093
    const/4 v3, -0x1

    if-ne v3, p2, :cond_0

    move v3, v4

    .line 1117
    :goto_0
    return v3

    .line 1097
    :cond_0
    iget-object v5, p0, Lcom/android/server/am/AppPcDataManager;->mModifyDisSystemPermissionMaps:Ljava/util/HashMap;

    monitor-enter v5

    .line 1098
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/AppPcDataManager;->mModifyDisSystemPermissionMaps:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 1100
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/lenovo/common/AppPcPermissionItem;>;"
    if-eqz v2, :cond_1

    .line 1101
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/common/AppPcPermissionItem;

    .line 1102
    .local v1, "item":Lcom/lenovo/common/AppPcPermissionItem;
    if-eqz v1, :cond_1

    .line 1103
    invoke-virtual {v1}, Lcom/lenovo/common/AppPcPermissionItem;->getBackgroundStatus()I

    move-result v3

    monitor-exit v5

    goto :goto_0

    .line 1106
    .end local v1    # "item":Lcom/lenovo/common/AppPcPermissionItem;
    .end local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/lenovo/common/AppPcPermissionItem;>;"
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/lenovo/common/AppPcPermissionItem;>;"
    :cond_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1107
    iget-object v5, p0, Lcom/android/server/am/AppPcDataManager;->mUserPkgPermissionMaps:Ljava/util/HashMap;

    monitor-enter v5

    .line 1108
    :try_start_2
    iget-object v3, p0, Lcom/android/server/am/AppPcDataManager;->mUserPkgPermissionMaps:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/HashMap;

    move-object v2, v0

    .line 1110
    if-eqz v2, :cond_2

    .line 1111
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/common/AppPcPermissionItem;

    .line 1112
    .restart local v1    # "item":Lcom/lenovo/common/AppPcPermissionItem;
    if-eqz v1, :cond_2

    .line 1113
    invoke-virtual {v1}, Lcom/lenovo/common/AppPcPermissionItem;->getBackgroundStatus()I

    move-result v3

    monitor-exit v5

    goto :goto_0

    .line 1116
    .end local v1    # "item":Lcom/lenovo/common/AppPcPermissionItem;
    :catchall_1
    move-exception v3

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    :cond_2
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move v3, v4

    .line 1117
    goto :goto_0
.end method

.method public getPermStatus(Ljava/lang/String;I)I
    .locals 6
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "code"    # I

    .prologue
    const/4 v4, 0x1

    .line 1060
    const/4 v3, -0x1

    if-ne v3, p2, :cond_0

    move v3, v4

    .line 1084
    :goto_0
    return v3

    .line 1064
    :cond_0
    iget-object v5, p0, Lcom/android/server/am/AppPcDataManager;->mModifyDisSystemPermissionMaps:Ljava/util/HashMap;

    monitor-enter v5

    .line 1065
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/AppPcDataManager;->mModifyDisSystemPermissionMaps:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 1067
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/lenovo/common/AppPcPermissionItem;>;"
    if-eqz v2, :cond_1

    .line 1068
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/common/AppPcPermissionItem;

    .line 1069
    .local v1, "item":Lcom/lenovo/common/AppPcPermissionItem;
    if-eqz v1, :cond_1

    .line 1070
    invoke-virtual {v1}, Lcom/lenovo/common/AppPcPermissionItem;->getStatus()I

    move-result v3

    monitor-exit v5

    goto :goto_0

    .line 1073
    .end local v1    # "item":Lcom/lenovo/common/AppPcPermissionItem;
    .end local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/lenovo/common/AppPcPermissionItem;>;"
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/lenovo/common/AppPcPermissionItem;>;"
    :cond_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1074
    iget-object v5, p0, Lcom/android/server/am/AppPcDataManager;->mUserPkgPermissionMaps:Ljava/util/HashMap;

    monitor-enter v5

    .line 1075
    :try_start_2
    iget-object v3, p0, Lcom/android/server/am/AppPcDataManager;->mUserPkgPermissionMaps:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/HashMap;

    move-object v2, v0

    .line 1077
    if-eqz v2, :cond_2

    .line 1078
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/common/AppPcPermissionItem;

    .line 1079
    .restart local v1    # "item":Lcom/lenovo/common/AppPcPermissionItem;
    if-eqz v1, :cond_2

    .line 1080
    invoke-virtual {v1}, Lcom/lenovo/common/AppPcPermissionItem;->getStatus()I

    move-result v3

    monitor-exit v5

    goto :goto_0

    .line 1083
    .end local v1    # "item":Lcom/lenovo/common/AppPcPermissionItem;
    :catchall_1
    move-exception v3

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    :cond_2
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move v3, v4

    .line 1084
    goto :goto_0
.end method

.method public init()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 114
    invoke-direct {p0}, Lcom/android/server/am/AppPcDataManager;->startSyncSystemWhiteLists()V

    .line 115
    invoke-direct {p0}, Lcom/android/server/am/AppPcDataManager;->startSyncUserWhiteLists()V

    .line 116
    invoke-direct {p0}, Lcom/android/server/am/AppPcDataManager;->startSyncSystemPermissionMaps()V

    .line 117
    invoke-direct {p0}, Lcom/android/server/am/AppPcDataManager;->startSyncUserPermissions()V

    .line 119
    iget-object v2, p0, Lcom/android/server/am/AppPcDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/server/am/AppPcDataManager;->CONTENT_PERM_WHITE_LIST_SYS_URI:Landroid/net/Uri;

    new-instance v4, Lcom/android/server/am/AppPcDataManager$1;

    iget-object v5, p0, Lcom/android/server/am/AppPcDataManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lcom/android/server/am/AppPcDataManager$1;-><init>(Lcom/android/server/am/AppPcDataManager;Landroid/os/Handler;)V

    invoke-virtual {v2, v3, v6, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 127
    iget-object v2, p0, Lcom/android/server/am/AppPcDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/server/am/AppPcDataManager;->CONTENT_PERM_SYS_URI:Landroid/net/Uri;

    new-instance v4, Lcom/android/server/am/AppPcDataManager$2;

    iget-object v5, p0, Lcom/android/server/am/AppPcDataManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lcom/android/server/am/AppPcDataManager$2;-><init>(Lcom/android/server/am/AppPcDataManager;Landroid/os/Handler;)V

    invoke-virtual {v2, v3, v6, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 136
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 137
    .local v1, "sdFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    iget-object v2, p0, Lcom/android/server/am/AppPcDataManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/am/AppPcDataManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 141
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 142
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 145
    iget-object v2, p0, Lcom/android/server/am/AppPcDataManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/am/AppPcDataManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 146
    return-void
.end method

.method public isAnyAppLockOn()Z
    .locals 2

    .prologue
    .line 1216
    iget-object v1, p0, Lcom/android/server/am/AppPcDataManager;->mAppLockOnAppCountLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1217
    :try_start_0
    iget v0, p0, Lcom/android/server/am/AppPcDataManager;->mAppLockOnAppCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1218
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isInWhiteList(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 883
    iget-object v1, p0, Lcom/android/server/am/AppPcDataManager;->mSystemWhiteLists:Ljava/util/HashSet;

    monitor-enter v1

    .line 884
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/AppPcDataManager;->mSystemWhiteLists:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 885
    monitor-exit v1

    .line 893
    :goto_0
    return v0

    .line 887
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 888
    iget-object v1, p0, Lcom/android/server/am/AppPcDataManager;->mUserWhiteLists:Ljava/util/HashSet;

    monitor-enter v1

    .line 889
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/AppPcDataManager;->mUserWhiteLists:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 890
    monitor-exit v1

    goto :goto_0

    .line 892
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 887
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 892
    :cond_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 893
    const/4 v0, 0x0

    goto :goto_0
.end method
