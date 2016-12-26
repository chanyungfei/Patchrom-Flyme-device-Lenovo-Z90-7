.class public Lcom/android/server/devicepolicy/DevicePolicyManagerService;
.super Landroid/app/admin/IDevicePolicyManager$Stub;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;,
        Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;,
        Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;,
        Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;,
        Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;,
        Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    }
.end annotation


# static fields
.field protected static final ACTION_EXPIRED_PASSWORD_NOTIFICATION:Ljava/lang/String; = "com.android.server.ACTION_EXPIRED_PASSWORD_NOTIFICATION"

.field private static final ATTR_PERMISSION_PROVIDER:Ljava/lang/String; = "permission-provider"

.field private static final ATTR_SETUP_COMPLETE:Ljava/lang/String; = "setup-complete"

.field private static final DBG:Z = false

.field private static final DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEVICE_POLICIES_XML:Ljava/lang/String; = "device_policies.xml"

.field private static final EXPIRATION_GRACE_PERIOD_MS:J = 0x19bfcc00L

.field private static final GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOCK_TASK_COMPONENTS_XML:Ljava/lang/String; = "lock-task-component"

.field private static final LOG_TAG:Ljava/lang/String; = "DevicePolicyManagerService"

.field private static final MONITORING_CERT_NOTIFICATION_ID:I = #android:string@ssl_ca_cert_warning#t

.field private static final MS_PER_DAY:J = 0x5265c00L

.field private static final REQUEST_EXPIRE_PASSWORD:I = 0x15c3

.field private static final SECURE_SETTINGS_DEVICEOWNER_WHITELIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SECURE_SETTINGS_WHITELIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SYSTEM_PROP_DISABLE_CAMERA:Ljava/lang/String; = "sys.secpolicy.camera.disabled"


# instance fields
.field final mContext:Landroid/content/Context;

.field private mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

.field mHandler:Landroid/os/Handler;

.field private mHasFeature:Z

.field mIWindowManager:Landroid/view/IWindowManager;

.field final mLocalService:Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;

.field mNotificationManager:Landroid/app/NotificationManager;

.field final mPowerManager:Landroid/os/PowerManager;

.field final mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field final mUserData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;",
            ">;"
        }
    .end annotation
.end field

.field final mUserManager:Landroid/os/UserManager;

.field final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 174
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    .line 175
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    const-string v1, "no_usb_file_transfer"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 176
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    const-string v1, "no_config_tethering"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 177
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    const-string v1, "no_factory_reset"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 178
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    const-string v1, "no_add_user"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 179
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    const-string v1, "no_config_cell_broadcasts"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 180
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    const-string v1, "no_config_mobile_networks"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 181
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    const-string v1, "no_physical_media"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 182
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    const-string v1, "no_unmute_microphone"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 183
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    const-string v1, "no_adjust_volume"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 184
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    const-string v1, "no_sms"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 191
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->SECURE_SETTINGS_WHITELIST:Ljava/util/Set;

    .line 192
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->SECURE_SETTINGS_WHITELIST:Ljava/util/Set;

    const-string v1, "default_input_method"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 193
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->SECURE_SETTINGS_WHITELIST:Ljava/util/Set;

    const-string v1, "skip_first_use_hints"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 194
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->SECURE_SETTINGS_WHITELIST:Ljava/util/Set;

    const-string v1, "install_non_market_apps"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 196
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->SECURE_SETTINGS_DEVICEOWNER_WHITELIST:Ljava/util/Set;

    .line 197
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->SECURE_SETTINGS_DEVICEOWNER_WHITELIST:Ljava/util/Set;

    sget-object v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->SECURE_SETTINGS_WHITELIST:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 198
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->SECURE_SETTINGS_DEVICEOWNER_WHITELIST:Ljava/util/Set;

    const-string v1, "location_mode"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 200
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;

    .line 201
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;

    const-string v1, "adb_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 202
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;

    const-string v1, "auto_time"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 203
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;

    const-string v1, "auto_time_zone"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 204
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;

    const-string v1, "bluetooth_on"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 205
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;

    const-string v1, "data_roaming"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 206
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;

    const-string v1, "development_settings_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 207
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;

    const-string v1, "mode_ringer"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 208
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;

    const-string v1, "network_preference"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 209
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;

    const-string v1, "usb_mass_storage_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 210
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;

    const-string v1, "wifi_on"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 211
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;

    const-string v1, "wifi_sleep_policy"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 212
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 952
    invoke-direct {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;-><init>()V

    .line 289
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    .line 291
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 293
    new-instance v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 953
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    .line 954
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 955
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.device_admin"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    .line 957
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 958
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 959
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "DPM"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 960
    new-instance v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;

    invoke-direct {v0, p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mLocalService:Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;

    .line 961
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v0, :cond_0

    .line 982
    :goto_0
    return-void

    .line 965
    :cond_0
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 966
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 967
    const-string v0, "com.android.server.ACTION_EXPIRED_PASSWORD_NOTIFICATION"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 968
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 969
    const-string v0, "android.intent.action.USER_STARTED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 970
    const-string v0, "android.security.STORAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 971
    const/16 v0, 0x3e8

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 972
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 973
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 974
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 975
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 976
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 977
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 978
    const-string v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 979
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 981
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mLocalService:Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->handlePasswordExpirationNotification(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 148
    invoke-direct {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->handlePackagesChanged(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;
    .param p1, "x1"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->resetGlobalProxyLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isManagedProfile(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Lcom/android/server/devicepolicy/DeviceOwner;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    return-object v0
.end method

.method private allowedToSetDeviceOwnerOnDevice()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4080
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4081
    .local v0, "callingId":I
    const/16 v3, 0x7d0

    if-eq v0, v3, :cond_0

    if-nez v0, :cond_3

    .line 4082
    :cond_0
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v3

    array-length v3, v3

    if-nez v3, :cond_2

    .line 4084
    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, v2

    .line 4082
    goto :goto_0

    .line 4084
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->hasUserSetupCompleted(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    goto :goto_0
.end method

.method private checkCallerIsCurrentUserOrProfile()Z
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 4588
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 4589
    .local v1, "callingUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 4592
    .local v4, "token":J
    :try_start_0
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v7, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 4594
    .local v0, "callingUser":Landroid/content/pm/UserInfo;
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 4600
    .local v2, "currentUser":Landroid/content/pm/UserInfo;
    :try_start_2
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget v8, v2, Landroid/content/pm/UserInfo;->id:I

    if-eq v7, v8, :cond_0

    .line 4601
    const-string v7, "DevicePolicyManagerService"

    const-string v8, "Cannot set permitted input methods for managed profile of a user that isn\'t the foreground user."

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4611
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4613
    .end local v2    # "currentUser":Landroid/content/pm/UserInfo;
    :goto_0
    return v6

    .line 4595
    :catch_0
    move-exception v3

    .line 4596
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v7, "DevicePolicyManagerService"

    const-string v8, "Failed to talk to activity managed."

    invoke-static {v7, v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4611
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 4605
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v2    # "currentUser":Landroid/content/pm/UserInfo;
    :cond_0
    :try_start_4
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v7

    if-nez v7, :cond_1

    iget v7, v2, Landroid/content/pm/UserInfo;->id:I

    if-eq v1, v7, :cond_1

    .line 4606
    const-string v7, "DevicePolicyManagerService"

    const-string v8, "Cannot set permitted input methods of a user that isn\'t the foreground user."

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4611
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :cond_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4613
    const/4 v6, 0x1

    goto :goto_0

    .line 4611
    .end local v0    # "callingUser":Landroid/content/pm/UserInfo;
    .end local v2    # "currentUser":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method private checkPackagesInPermittedListOrSystem(Ljava/util/List;Ljava/util/List;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 4415
    .local p1, "enabledPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "permittedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    .line 4416
    .local v9, "userIdToCheck":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 4420
    .local v4, "id":J
    :try_start_0
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v10, v9}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v8

    .line 4421
    .local v8, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 4422
    iget v9, v8, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 4425
    :cond_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    .line 4426
    .local v6, "pm":Landroid/content/pm/IPackageManager;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4427
    .local v2, "enabledPackage":Ljava/lang/String;
    const/4 v7, 0x0

    .line 4429
    .local v7, "systemService":Z
    const/16 v10, 0x2000

    :try_start_1
    invoke-interface {v6, v2, v10, v9}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 4431
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v10, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_2

    const/4 v7, 0x1

    .line 4436
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    if-nez v7, :cond_1

    :try_start_2
    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v10

    if-nez v10, :cond_1

    .line 4437
    const/4 v10, 0x0

    .line 4441
    invoke-static {v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 4443
    .end local v2    # "enabledPackage":Ljava/lang/String;
    .end local v7    # "systemService":Z
    :goto_1
    return v10

    .line 4431
    .restart local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "enabledPackage":Ljava/lang/String;
    .restart local v7    # "systemService":Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 4433
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 4434
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v10, "DevicePolicyManagerService"

    const-string v11, "Can\'t talk to package managed"

    invoke-static {v10, v11, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 4441
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "enabledPackage":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "pm":Landroid/content/pm/IPackageManager;
    .end local v7    # "systemService":Z
    .end local v8    # "user":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v10

    invoke-static {v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v10

    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v6    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v8    # "user":Landroid/content/pm/UserInfo;
    :cond_3
    invoke-static {v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 4443
    const/4 v10, 0x1

    goto :goto_1
.end method

.method private cleanUpOldUsers()V
    .locals 9

    .prologue
    .line 1632
    monitor-enter p0

    .line 1633
    :try_start_0
    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v8}, Lcom/android/server/devicepolicy/DeviceOwner;->getProfileOwnerKeys()Ljava/util/Set;

    move-result-object v7

    .line 1635
    .local v7, "usersWithProfileOwners":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :goto_0
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 1636
    .local v6, "usersWithData":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v2, v8, :cond_1

    .line 1637
    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1636
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1633
    .end local v2    # "i":I
    .end local v6    # "usersWithData":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v7    # "usersWithProfileOwners":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_0
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    goto :goto_0

    .line 1639
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .restart local v2    # "i":I
    .restart local v6    # "usersWithData":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v7    # "usersWithProfileOwners":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1640
    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 1642
    .local v0, "allUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1643
    .local v1, "deletedUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v1, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1644
    invoke-interface {v1, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1645
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 1646
    .local v5, "userInfo":Landroid/content/pm/UserInfo;
    iget v8, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1648
    .end local v5    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_2
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1649
    .local v4, "userId":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->removeUserData(I)V

    goto :goto_3

    .line 1651
    .end local v4    # "userId":Ljava/lang/Integer;
    :cond_3
    return-void
.end method

.method private clearUserRestrictions(Landroid/os/UserHandle;)V
    .locals 5
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    const/4 v4, 0x0

    .line 3951
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3953
    .local v0, "audioManager":Landroid/media/AudioManager;
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUserRestrictions()Landroid/os/Bundle;

    move-result-object v1

    .line 3954
    .local v1, "userRestrictions":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v3, p1}, Landroid/os/UserManager;->setUserRestrictions(Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 3955
    const-string v2, "no_adjust_volume"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3956
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setMasterMute(Z)V

    .line 3958
    :cond_0
    const-string v2, "no_unmute_microphone"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3959
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 3961
    :cond_1
    return-void
.end method

.method private enableIfNecessary(Ljava/lang/String;I)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 4133
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 4134
    .local v0, "ipm":Landroid/content/pm/IPackageManager;
    const v1, 0x8000

    invoke-interface {v0, p1, v1, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 4137
    .local v6, "ai":Landroid/content/pm/ApplicationInfo;
    iget v1, v6, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 4139
    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v5, "DevicePolicyManager"

    move-object v1, p1

    move v4, p2

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4145
    .end local v0    # "ipm":Landroid/content/pm/IPackageManager;
    .end local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return-void

    .line 4143
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private enforceCrossUserPermission(I)V
    .locals 4
    .param p1, "userHandle"    # I

    .prologue
    .line 4089
    if-gez p1, :cond_0

    .line 4090
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid userId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4092
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4093
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne p1, v1, :cond_2

    .line 4099
    :cond_1
    :goto_0
    return-void

    .line 4094
    :cond_2
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_1

    .line 4095
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v3, "Must be system or have INTERACT_ACROSS_USERS_FULL permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private enforceNotManagedProfile(ILjava/lang/String;)V
    .locals 3
    .param p1, "userHandle"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 4108
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isManagedProfile(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4109
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You can not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for a managed profile. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4111
    :cond_0
    return-void
.end method

.method private enforceSystemProcess(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 4102
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 4103
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4105
    :cond_0
    return-void
.end method

.method private getAccessibilityManagerForUser(I)Landroid/view/accessibility/AccessibilityManager;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 4450
    const-string v2, "accessibility"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 4451
    .local v0, "iBinder":Landroid/os/IBinder;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 4453
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    :goto_0
    new-instance v2, Landroid/view/accessibility/AccessibilityManager;

    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1, p1}, Landroid/view/accessibility/AccessibilityManager;-><init>(Landroid/content/Context;Landroid/view/accessibility/IAccessibilityManager;I)V

    return-object v2

    .line 4451
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :cond_0
    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    goto :goto_0
.end method

.method private getAdminWithMinimumFailedPasswordsForWipeLocked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .locals 8
    .param p1, "userHandle"    # I

    .prologue
    .line 2636
    const/4 v1, 0x0

    .line 2637
    .local v1, "count":I
    const/4 v5, 0x0

    .line 2638
    .local v5, "strictestAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v7, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 2639
    .local v6, "userInfo":Landroid/content/pm/UserInfo;
    iget v7, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 2640
    .local v4, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v7, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 2641
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v7, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    if-eqz v7, :cond_1

    .line 2647
    if-eqz v1, :cond_2

    iget v7, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    if-gt v1, v7, :cond_2

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v7

    if-eqz v7, :cond_1

    iget v7, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    if-lt v1, v7, :cond_1

    .line 2650
    :cond_2
    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    .line 2651
    move-object v5, v0

    goto :goto_0

    .line 2655
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v6    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_3
    return-object v5
.end method

.method private getDeviceOwnerAdmin()Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 3837
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwner()Ljava/lang/String;

    move-result-object v1

    .line 3838
    .local v1, "deviceOwnerPackageName":Ljava/lang/String;
    if-nez v1, :cond_1

    move-object v0, v5

    .line 3850
    :cond_0
    :goto_0
    return-object v0

    .line 3842
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 3843
    .local v4, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v6, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3844
    .local v3, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 3845
    iget-object v6, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 3846
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v6, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v6}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 3844
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    move-object v0, v5

    .line 3850
    goto :goto_0
.end method

.method private getEncryptionStatus()I
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3511
    const-string v6, "vold.pfe"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3512
    .local v0, "pfeStatus":Ljava/lang/String;
    const-string v6, "activated"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v4, v5

    .line 3529
    :cond_0
    :goto_0
    return v4

    .line 3516
    :cond_1
    const-string v6, "ro.crypto.state"

    const-string v7, "unsupported"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3517
    .local v1, "status":Ljava/lang/String;
    const-string v6, "encrypted"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3518
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3520
    .local v2, "token":J
    :try_start_0
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncrypted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x3

    .line 3524
    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 3526
    .end local v2    # "token":J
    :cond_3
    const-string v6, "unencrypted"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    move v4, v5

    .line 3529
    goto :goto_0
.end method

.method private getNotificationManager()Landroid/app/NotificationManager;
    .locals 2

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 1100
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 1103
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method private getPasswordExpirationLocked(Landroid/content/ComponentName;I)J
    .locals 16
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2204
    const-wide/16 v8, 0x0

    .line 2206
    .local v8, "timeout":J
    if-eqz p1, :cond_1

    .line 2207
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v3

    .line 2208
    .local v3, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v3, :cond_0

    iget-wide v12, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    .line 2223
    .end local v3    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :goto_0
    return-wide v12

    .restart local v3    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_0
    move-wide v12, v8

    .line 2208
    goto :goto_0

    .line 2211
    .end local v3    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v7

    .line 2212
    .local v7, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/UserInfo;

    .line 2213
    .local v10, "userInfo":Landroid/content/pm/UserInfo;
    iget v11, v10, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v6

    .line 2214
    .local v6, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v11, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2215
    .local v2, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_2

    .line 2216
    iget-object v11, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 2217
    .restart local v3    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    const-wide/16 v12, 0x0

    cmp-long v11, v8, v12

    if-eqz v11, :cond_3

    iget-wide v12, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_4

    iget-wide v12, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    cmp-long v11, v8, v12

    if-lez v11, :cond_4

    .line 2219
    :cond_3
    iget-wide v8, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    .line 2215
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v2    # "N":I
    .end local v3    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v4    # "i":I
    .end local v6    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v10    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_5
    move-wide v12, v8

    .line 2223
    goto :goto_0
.end method

.method private getProfileOwnerAdmin(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .locals 7
    .param p1, "userHandle"    # I

    .prologue
    const/4 v5, 0x0

    .line 4043
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v6, p1}, Lcom/android/server/devicepolicy/DeviceOwner;->getProfileOwnerComponent(I)Landroid/content/ComponentName;

    move-result-object v4

    .line 4045
    .local v4, "profileOwner":Landroid/content/ComponentName;
    :goto_0
    if-nez v4, :cond_2

    move-object v0, v5

    .line 4057
    :cond_0
    :goto_1
    return-object v0

    .end local v4    # "profileOwner":Landroid/content/ComponentName;
    :cond_1
    move-object v4, v5

    .line 4043
    goto :goto_0

    .line 4049
    .restart local v4    # "profileOwner":Landroid/content/ComponentName;
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 4050
    .local v3, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v6, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4051
    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_3

    .line 4052
    iget-object v6, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 4053
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v6, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v6}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 4051
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    move-object v0, v5

    .line 4057
    goto :goto_1
.end method

.method private getProfileParent(I)Landroid/content/pm/UserInfo;
    .locals 3
    .param p1, "userHandle"    # I

    .prologue
    .line 4114
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4116
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4118
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private getWindowManager()Landroid/view/IWindowManager;
    .locals 2

    .prologue
    .line 1091
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    if-nez v1, :cond_0

    .line 1092
    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1093
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    .line 1095
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    return-object v1
.end method

.method private handlePackagesChanged(Ljava/lang/String;I)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 917
    const/4 v5, 0x0

    .line 919
    .local v5, "removed":Z
    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 920
    .local v4, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 921
    .local v3, "pm":Landroid/content/pm/IPackageManager;
    monitor-enter p0

    .line 922
    :try_start_0
    iget-object v6, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    .line 923
    iget-object v6, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 927
    .local v0, "aa":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :try_start_1
    iget-object v6, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v6}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 928
    .local v1, "adminPackage":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 929
    :cond_0
    const/4 v6, 0x0

    invoke-interface {v3, v1, v6, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v6}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7, p2}, Landroid/content/pm/IPackageManager;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    if-nez v6, :cond_2

    .line 932
    :cond_1
    const/4 v5, 0x1

    .line 933
    iget-object v6, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 934
    iget-object v6, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    iget-object v7, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v7}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 922
    .end local v1    # "adminPackage":Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 941
    .end local v0    # "aa":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    if-eqz v5, :cond_4

    .line 942
    :try_start_2
    invoke-virtual {p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->validatePasswordOwnerLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    .line 943
    invoke-virtual {p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->syncDeviceCapabilitiesLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    .line 944
    iget v6, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    invoke-direct {p0, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 946
    :cond_4
    monitor-exit p0

    .line 947
    return-void

    .line 946
    .end local v2    # "i":I
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 937
    .restart local v0    # "aa":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .restart local v2    # "i":I
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method private handlePasswordExpirationNotification(I)V
    .locals 14
    .param p1, "userHandle"    # I

    .prologue
    .line 1654
    monitor-enter p0

    .line 1655
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1657
    .local v4, "now":J
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v10, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v8

    .line 1658
    .local v8, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserInfo;

    .line 1659
    .local v9, "ui":Landroid/content/pm/UserInfo;
    iget v7, v9, Landroid/content/pm/UserInfo;->id:I

    .line 1660
    .local v7, "profileUserHandle":I
    invoke-virtual {p0, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v6

    .line 1661
    .local v6, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v10, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1662
    .local v1, "count":I
    if-lez v1, :cond_0

    .line 1663
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1664
    iget-object v10, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 1665
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v10, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    const/4 v11, 0x6

    invoke-virtual {v10, v11}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-wide v10, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_1

    iget-wide v10, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    const-wide/32 v12, 0x19bfcc00

    sub-long/2addr v10, v12

    cmp-long v10, v4, v10

    if-ltz v10, :cond_1

    iget-wide v10, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_1

    .line 1669
    const-string v10, "android.app.action.ACTION_PASSWORD_EXPIRING"

    invoke-virtual {p0, v0, v10}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V

    .line 1663
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1675
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v6    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v7    # "profileUserHandle":I
    .end local v9    # "ui":Landroid/content/pm/UserInfo;
    :cond_2
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setExpirationAlarmCheckLocked(Landroid/content/Context;Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    .line 1676
    monitor-exit p0

    .line 1677
    return-void

    .line 1676
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "now":J
    .end local v8    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v10

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10
.end method

.method private hasUserSetupCompleted(I)Z
    .locals 3
    .param p1, "userHandle"    # I

    .prologue
    const/4 v1, 0x1

    .line 3969
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v2, :cond_1

    .line 3974
    :cond_0
    :goto_0
    return v1

    .line 3972
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v0

    .line 3974
    .local v0, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserSetupComplete:Z

    if-nez v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isEncryptionSupported()Z
    .locals 1

    .prologue
    .line 3501
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getEncryptionStatus()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isExtStorageEncrypted()Z
    .locals 2

    .prologue
    .line 2897
    const-string v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2898
    .local v0, "state":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isManagedProfile(I)Z
    .locals 3
    .param p1, "userHandle"    # I

    .prologue
    .line 4123
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4125
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4127
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private isSystemApp(Landroid/content/pm/IPackageManager;Ljava/lang/String;I)Z
    .locals 2
    .param p1, "pm"    # Landroid/content/pm/IPackageManager;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5115
    const/16 v1, 0x2000

    invoke-interface {p1, p2, v1, p3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 5117
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadSettingsLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;I)V
    .locals 21
    .param p1, "policy"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .param p2, "userHandle"    # I

    .prologue
    .line 1408
    invoke-static/range {p2 .. p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v7

    .line 1409
    .local v7, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v12, 0x0

    .line 1410
    .local v12, "stream":Ljava/io/FileInputStream;
    invoke-virtual {v7}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v6

    .line 1412
    .local v6, "file":Ljava/io/File;
    :try_start_0
    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_8

    .line 1413
    .end local v12    # "stream":Ljava/io/FileInputStream;
    .local v13, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v10

    .line 1414
    .local v10, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-interface {v10, v13, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1418
    :cond_0
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v15

    .local v15, "type":I
    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v15, v0, :cond_1

    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v15, v0, :cond_0

    .line 1420
    :cond_1
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    .line 1421
    .local v14, "tag":Ljava/lang/String;
    const-string v18, "policies"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_4

    .line 1422
    new-instance v18, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Settings do not start with policies tag: found "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_6

    .line 1500
    .end local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v14    # "tag":Ljava/lang/String;
    .end local v15    # "type":I
    :catch_0
    move-exception v5

    move-object v12, v13

    .line 1501
    .end local v13    # "stream":Ljava/io/FileInputStream;
    .local v5, "e":Ljava/lang/NullPointerException;
    .restart local v12    # "stream":Ljava/io/FileInputStream;
    :goto_0
    const-string v18, "DevicePolicyManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "failed parsing "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    .end local v5    # "e":Ljava/lang/NullPointerException;
    :goto_1
    if-eqz v12, :cond_2

    .line 1515
    :try_start_2
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 1522
    :cond_2
    :goto_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1528
    new-instance v17, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1529
    .local v17, "utils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v18

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    .line 1530
    const-string v18, "DevicePolicyManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Active password quality 0x"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " does not match actual quality 0x"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    .line 1535
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    .line 1536
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    .line 1537
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    .line 1538
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    .line 1539
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    .line 1540
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    .line 1541
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    .line 1544
    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->validatePasswordOwnerLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    .line 1545
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->syncDeviceCapabilitiesLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    .line 1546
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateMaximumTimeToLockLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    .line 1547
    return-void

    .line 1427
    .end local v12    # "stream":Ljava/io/FileInputStream;
    .end local v17    # "utils":Lcom/android/internal/widget/LockPatternUtils;
    .restart local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v13    # "stream":Ljava/io/FileInputStream;
    .restart local v14    # "tag":Ljava/lang/String;
    .restart local v15    # "type":I
    :cond_4
    const/16 v18, 0x0

    :try_start_3
    const-string v19, "permission-provider"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v10, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1428
    .local v11, "permissionProvider":Ljava/lang/String;
    if-eqz v11, :cond_5

    .line 1429
    invoke-static {v11}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mRestrictionsProvider:Landroid/content/ComponentName;

    .line 1431
    :cond_5
    const/16 v18, 0x0

    const-string v19, "setup-complete"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v10, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1432
    .local v16, "userSetupComplete":Ljava/lang/String;
    if-eqz v16, :cond_6

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 1433
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserSetupComplete:Z

    .line 1436
    :cond_6
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v15

    .line 1437
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    .line 1438
    .local v9, "outerDepth":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->clear()V

    .line 1439
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 1440
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->clear()V

    .line 1442
    :cond_7
    :goto_3
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v15

    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v15, v0, :cond_e

    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v15, v0, :cond_8

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v18

    move/from16 v0, v18

    if-le v0, v9, :cond_e

    .line 1443
    :cond_8
    const/16 v18, 0x3

    move/from16 v0, v18

    if-eq v15, v0, :cond_7

    const/16 v18, 0x4

    move/from16 v0, v18

    if-eq v15, v0, :cond_7

    .line 1446
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    .line 1447
    const-string v18, "admin"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 1448
    const/16 v18, 0x0

    const-string v19, "name"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v10, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_6

    move-result-object v8

    .line 1450
    .local v8, "name":Ljava/lang/String;
    :try_start_4
    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->findAdmin(Landroid/content/ComponentName;I)Landroid/app/admin/DeviceAdminInfo;

    move-result-object v4

    .line 1458
    .local v4, "dai":Landroid/app/admin/DeviceAdminInfo;
    if-eqz v4, :cond_7

    .line 1459
    new-instance v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    invoke-direct {v3, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;-><init>(Landroid/app/admin/DeviceAdminInfo;)V

    .line 1460
    .local v3, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    invoke-virtual {v3, v10}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1461
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    iget-object v0, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_3

    .line 1463
    .end local v3    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v4    # "dai":Landroid/app/admin/DeviceAdminInfo;
    :catch_1
    move-exception v5

    .line 1464
    .local v5, "e":Ljava/lang/RuntimeException;
    :try_start_5
    const-string v18, "DevicePolicyManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed loading admin "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_6

    goto/16 :goto_3

    .line 1502
    .end local v5    # "e":Ljava/lang/RuntimeException;
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "outerDepth":I
    .end local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v11    # "permissionProvider":Ljava/lang/String;
    .end local v14    # "tag":Ljava/lang/String;
    .end local v15    # "type":I
    .end local v16    # "userSetupComplete":Ljava/lang/String;
    :catch_2
    move-exception v5

    move-object v12, v13

    .line 1503
    .end local v13    # "stream":Ljava/io/FileInputStream;
    .local v5, "e":Ljava/lang/NumberFormatException;
    .restart local v12    # "stream":Ljava/io/FileInputStream;
    :goto_4
    const-string v18, "DevicePolicyManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "failed parsing "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1466
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    .end local v12    # "stream":Ljava/io/FileInputStream;
    .restart local v9    # "outerDepth":I
    .restart local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11    # "permissionProvider":Ljava/lang/String;
    .restart local v13    # "stream":Ljava/io/FileInputStream;
    .restart local v14    # "tag":Ljava/lang/String;
    .restart local v15    # "type":I
    .restart local v16    # "userSetupComplete":Ljava/lang/String;
    :cond_9
    :try_start_6
    const-string v18, "failed-password-attempts"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 1467
    const/16 v18, 0x0

    const-string v19, "value"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v10, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    .line 1469
    invoke-static {v10}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_3

    .line 1504
    .end local v9    # "outerDepth":I
    .end local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v11    # "permissionProvider":Ljava/lang/String;
    .end local v14    # "tag":Ljava/lang/String;
    .end local v15    # "type":I
    .end local v16    # "userSetupComplete":Ljava/lang/String;
    :catch_3
    move-exception v5

    move-object v12, v13

    .line 1505
    .end local v13    # "stream":Ljava/io/FileInputStream;
    .local v5, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v12    # "stream":Ljava/io/FileInputStream;
    :goto_5
    const-string v18, "DevicePolicyManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "failed parsing "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1470
    .end local v5    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v12    # "stream":Ljava/io/FileInputStream;
    .restart local v9    # "outerDepth":I
    .restart local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11    # "permissionProvider":Ljava/lang/String;
    .restart local v13    # "stream":Ljava/io/FileInputStream;
    .restart local v14    # "tag":Ljava/lang/String;
    .restart local v15    # "type":I
    .restart local v16    # "userSetupComplete":Ljava/lang/String;
    :cond_a
    :try_start_7
    const-string v18, "password-owner"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 1471
    const/16 v18, 0x0

    const-string v19, "value"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v10, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    .line 1473
    invoke-static {v10}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_3

    .line 1506
    .end local v9    # "outerDepth":I
    .end local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v11    # "permissionProvider":Ljava/lang/String;
    .end local v14    # "tag":Ljava/lang/String;
    .end local v15    # "type":I
    .end local v16    # "userSetupComplete":Ljava/lang/String;
    :catch_4
    move-exception v18

    move-object v12, v13

    .end local v13    # "stream":Ljava/io/FileInputStream;
    .restart local v12    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 1474
    .end local v12    # "stream":Ljava/io/FileInputStream;
    .restart local v9    # "outerDepth":I
    .restart local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11    # "permissionProvider":Ljava/lang/String;
    .restart local v13    # "stream":Ljava/io/FileInputStream;
    .restart local v14    # "tag":Ljava/lang/String;
    .restart local v15    # "type":I
    .restart local v16    # "userSetupComplete":Ljava/lang/String;
    :cond_b
    const-string v18, "active-password"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 1475
    const/16 v18, 0x0

    const-string v19, "quality"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v10, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    .line 1477
    const/16 v18, 0x0

    const-string v19, "length"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v10, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    .line 1479
    const/16 v18, 0x0

    const-string v19, "uppercase"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v10, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    .line 1481
    const/16 v18, 0x0

    const-string v19, "lowercase"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v10, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    .line 1483
    const/16 v18, 0x0

    const-string v19, "letters"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v10, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    .line 1485
    const/16 v18, 0x0

    const-string v19, "numeric"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v10, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    .line 1487
    const/16 v18, 0x0

    const-string v19, "symbols"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v10, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    .line 1489
    const/16 v18, 0x0

    const-string v19, "nonletter"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v10, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    .line 1491
    invoke-static {v10}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_3

    .line 1508
    .end local v9    # "outerDepth":I
    .end local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v11    # "permissionProvider":Ljava/lang/String;
    .end local v14    # "tag":Ljava/lang/String;
    .end local v15    # "type":I
    .end local v16    # "userSetupComplete":Ljava/lang/String;
    :catch_5
    move-exception v5

    move-object v12, v13

    .line 1509
    .end local v13    # "stream":Ljava/io/FileInputStream;
    .local v5, "e":Ljava/io/IOException;
    .restart local v12    # "stream":Ljava/io/FileInputStream;
    :goto_6
    const-string v18, "DevicePolicyManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "failed parsing "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1492
    .end local v5    # "e":Ljava/io/IOException;
    .end local v12    # "stream":Ljava/io/FileInputStream;
    .restart local v9    # "outerDepth":I
    .restart local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11    # "permissionProvider":Ljava/lang/String;
    .restart local v13    # "stream":Ljava/io/FileInputStream;
    .restart local v14    # "tag":Ljava/lang/String;
    .restart local v15    # "type":I
    .restart local v16    # "userSetupComplete":Ljava/lang/String;
    :cond_c
    :try_start_8
    const-string v18, "lock-task-component"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 1493
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string v20, "name"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v10, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1494
    invoke-static {v10}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_3

    .line 1510
    .end local v9    # "outerDepth":I
    .end local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v11    # "permissionProvider":Ljava/lang/String;
    .end local v14    # "tag":Ljava/lang/String;
    .end local v15    # "type":I
    .end local v16    # "userSetupComplete":Ljava/lang/String;
    :catch_6
    move-exception v5

    move-object v12, v13

    .line 1511
    .end local v13    # "stream":Ljava/io/FileInputStream;
    .local v5, "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v12    # "stream":Ljava/io/FileInputStream;
    :goto_7
    const-string v18, "DevicePolicyManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "failed parsing "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1496
    .end local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v12    # "stream":Ljava/io/FileInputStream;
    .restart local v9    # "outerDepth":I
    .restart local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11    # "permissionProvider":Ljava/lang/String;
    .restart local v13    # "stream":Ljava/io/FileInputStream;
    .restart local v14    # "tag":Ljava/lang/String;
    .restart local v15    # "type":I
    .restart local v16    # "userSetupComplete":Ljava/lang/String;
    :cond_d
    :try_start_9
    const-string v18, "DevicePolicyManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unknown tag: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    invoke-static {v10}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_6

    goto/16 :goto_3

    :cond_e
    move-object v12, v13

    .line 1512
    .end local v13    # "stream":Ljava/io/FileInputStream;
    .restart local v12    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 1517
    .end local v9    # "outerDepth":I
    .end local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v11    # "permissionProvider":Ljava/lang/String;
    .end local v14    # "tag":Ljava/lang/String;
    .end local v15    # "type":I
    .end local v16    # "userSetupComplete":Ljava/lang/String;
    :catch_7
    move-exception v18

    goto/16 :goto_2

    .line 1510
    :catch_8
    move-exception v5

    goto :goto_7

    .line 1508
    :catch_9
    move-exception v5

    goto/16 :goto_6

    .line 1506
    :catch_a
    move-exception v18

    goto/16 :goto_1

    .line 1504
    :catch_b
    move-exception v5

    goto/16 :goto_5

    .line 1502
    :catch_c
    move-exception v5

    goto/16 :goto_4

    .line 1500
    :catch_d
    move-exception v5

    goto/16 :goto_0
.end method

.method private lockNowUnchecked()V
    .locals 7

    .prologue
    .line 2882
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2885
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v3, v6}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 2888
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->requireCredentialEntry(I)V

    .line 2889
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2892
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2894
    :goto_0
    return-void

    .line 2890
    :catch_0
    move-exception v2

    .line 2892
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private static makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;
    .locals 6
    .param p0, "userHandle"    # I

    .prologue
    .line 1302
    if-nez p0, :cond_0

    const-string v0, "/data/system/device_policies.xml"

    .line 1306
    .local v0, "base":Ljava/lang/String;
    :goto_0
    new-instance v1, Lcom/android/internal/util/JournaledFile;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v1

    .line 1302
    .end local v0    # "base":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "device_policies.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static parseCert([B)Ljava/security/cert/X509Certificate;
    .locals 2
    .param p0, "certBuffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 2950
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 2951
    .local v0, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    return-object v1
.end method

.method private resetGlobalProxyLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V
    .locals 5
    .param p1, "policy"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    .prologue
    const/4 v4, 0x0

    .line 3356
    iget-object v3, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3357
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 3358
    iget-object v3, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 3359
    .local v1, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    if-eqz v3, :cond_0

    .line 3360
    iget-object v3, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveGlobalProxyLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 3366
    .end local v1    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :goto_1
    return-void

    .line 3357
    .restart local v1    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3365
    .end local v1    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    invoke-direct {p0, v4, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveGlobalProxyLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private saveGlobalProxyLocked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "proxySpec"    # Ljava/lang/String;
    .param p2, "exclusionList"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3369
    if-nez p2, :cond_0

    .line 3370
    const-string p2, ""

    .line 3372
    :cond_0
    if-nez p1, :cond_1

    .line 3373
    const-string p1, ""

    .line 3376
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 3377
    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3378
    .local v0, "data":[Ljava/lang/String;
    const/16 v1, 0x1f90

    .line 3379
    .local v1, "proxyPort":I
    array-length v4, v0

    if-le v4, v6, :cond_2

    .line 3381
    const/4 v4, 0x1

    :try_start_0
    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3384
    :cond_2
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 3385
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 3387
    .local v3, "res":Landroid/content/ContentResolver;
    new-instance v2, Landroid/net/ProxyInfo;

    aget-object v4, v0, v5

    invoke-direct {v2, v4, v1, p2}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 3388
    .local v2, "proxyProperties":Landroid/net/ProxyInfo;
    invoke-virtual {v2}, Landroid/net/ProxyInfo;->isValid()Z

    move-result v4

    if-nez v4, :cond_3

    .line 3389
    const-string v4, "DevicePolicyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid proxy properties, ignoring: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3396
    :goto_1
    return-void

    .line 3392
    :cond_3
    const-string v4, "global_http_proxy_host"

    aget-object v5, v0, v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3393
    const-string v4, "global_http_proxy_port"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3394
    const-string v4, "global_http_proxy_exclusion_list"

    invoke-static {v3, v4, p2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 3382
    .end local v2    # "proxyProperties":Landroid/net/ProxyInfo;
    .end local v3    # "res":Landroid/content/ContentResolver;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private saveSettingsLocked(I)V
    .locals 13
    .param p1, "userHandle"    # I

    .prologue
    .line 1310
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v7

    .line 1311
    .local v7, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    invoke-static {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v5

    .line 1312
    .local v5, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v8, 0x0

    .line 1314
    .local v8, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-virtual {v5}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1315
    .end local v8    # "stream":Ljava/io/FileOutputStream;
    .local v9, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v6, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v6}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1316
    .local v6, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v10, "utf-8"

    invoke-interface {v6, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1317
    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1319
    const/4 v10, 0x0

    const-string v11, "policies"

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1320
    iget-object v10, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mRestrictionsProvider:Landroid/content/ComponentName;

    if-eqz v10, :cond_0

    .line 1321
    const/4 v10, 0x0

    const-string v11, "permission-provider"

    iget-object v12, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mRestrictionsProvider:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1324
    :cond_0
    iget-boolean v10, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserSetupComplete:Z

    if-eqz v10, :cond_1

    .line 1325
    const/4 v10, 0x0

    const-string v11, "setup-complete"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1329
    :cond_1
    iget-object v10, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1330
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_3

    .line 1331
    iget-object v10, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 1332
    .local v1, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_2

    .line 1333
    const/4 v10, 0x0

    const-string v11, "admin"

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1334
    const/4 v10, 0x0

    const-string v11, "name"

    iget-object v12, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v12}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1335
    invoke-virtual {v1, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1336
    const/4 v10, 0x0

    const-string v11, "admin"

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1330
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1340
    .end local v1    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    iget v10, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    if-ltz v10, :cond_4

    .line 1341
    const/4 v10, 0x0

    const-string v11, "password-owner"

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1342
    const/4 v10, 0x0

    const-string v11, "value"

    iget v12, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1343
    const/4 v10, 0x0

    const-string v11, "password-owner"

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1346
    :cond_4
    iget v10, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    if-eqz v10, :cond_5

    .line 1347
    const/4 v10, 0x0

    const-string v11, "failed-password-attempts"

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1348
    const/4 v10, 0x0

    const-string v11, "value"

    iget v12, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1349
    const/4 v10, 0x0

    const-string v11, "failed-password-attempts"

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1352
    :cond_5
    iget v10, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    if-nez v10, :cond_6

    iget v10, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    if-nez v10, :cond_6

    iget v10, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    if-nez v10, :cond_6

    iget v10, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    if-nez v10, :cond_6

    iget v10, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    if-nez v10, :cond_6

    iget v10, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    if-nez v10, :cond_6

    iget v10, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    if-nez v10, :cond_6

    iget v10, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    if-eqz v10, :cond_7

    .line 1356
    :cond_6
    const/4 v10, 0x0

    const-string v11, "active-password"

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1357
    const/4 v10, 0x0

    const-string v11, "quality"

    iget v12, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1358
    const/4 v10, 0x0

    const-string v11, "length"

    iget v12, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1359
    const/4 v10, 0x0

    const-string v11, "uppercase"

    iget v12, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1360
    const/4 v10, 0x0

    const-string v11, "lowercase"

    iget v12, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1361
    const/4 v10, 0x0

    const-string v11, "letters"

    iget v12, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1362
    const/4 v10, 0x0

    const-string v11, "numeric"

    iget v12, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1364
    const/4 v10, 0x0

    const-string v11, "symbols"

    iget v12, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1365
    const/4 v10, 0x0

    const-string v11, "nonletter"

    iget v12, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1366
    const/4 v10, 0x0

    const-string v11, "active-password"

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1369
    :cond_7
    const/4 v4, 0x0

    :goto_1
    iget-object v10, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v4, v10, :cond_8

    .line 1370
    iget-object v10, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1371
    .local v2, "component":Ljava/lang/String;
    const/4 v10, 0x0

    const-string v11, "lock-task-component"

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1372
    const/4 v10, 0x0

    const-string v11, "name"

    invoke-interface {v6, v10, v11, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1373
    const/4 v10, 0x0

    const-string v11, "lock-task-component"

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1369
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1376
    .end local v2    # "component":Ljava/lang/String;
    :cond_8
    const/4 v10, 0x0

    const-string v11, "policies"

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1378
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1379
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->flush()V

    .line 1380
    invoke-static {v9}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1381
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 1382
    invoke-virtual {v5}, Lcom/android/internal/util/JournaledFile;->commit()V

    .line 1383
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendChangedNotification(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v8, v9

    .line 1394
    .end local v0    # "N":I
    .end local v4    # "i":I
    .end local v6    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v9    # "stream":Ljava/io/FileOutputStream;
    .restart local v8    # "stream":Ljava/io/FileOutputStream;
    :goto_2
    return-void

    .line 1384
    :catch_0
    move-exception v3

    .line 1386
    .local v3, "e":Ljava/io/IOException;
    :goto_3
    if-eqz v8, :cond_9

    .line 1387
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1392
    :cond_9
    :goto_4
    invoke-virtual {v5}, Lcom/android/internal/util/JournaledFile;->rollback()V

    goto :goto_2

    .line 1389
    :catch_1
    move-exception v10

    goto :goto_4

    .line 1384
    .end local v3    # "e":Ljava/io/IOException;
    .end local v8    # "stream":Ljava/io/FileOutputStream;
    .restart local v9    # "stream":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v3

    move-object v8, v9

    .end local v9    # "stream":Ljava/io/FileOutputStream;
    .restart local v8    # "stream":Ljava/io/FileOutputStream;
    goto :goto_3
.end method

.method private sendAdminCommandToSelfAndProfilesLocked(Ljava/lang/String;II)V
    .locals 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "reqPolicy"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 1234
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, p3}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    .line 1235
    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 1236
    .local v3, "ui":Landroid/content/pm/UserInfo;
    iget v1, v3, Landroid/content/pm/UserInfo;->id:I

    .line 1237
    .local v1, "id":I
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandLocked(Ljava/lang/String;II)V

    goto :goto_0

    .line 1239
    .end local v1    # "id":I
    .end local v3    # "ui":Landroid/content/pm/UserInfo;
    :cond_0
    return-void
.end method

.method private sendChangedNotification(I)V
    .locals 5
    .param p1, "userHandle"    # I

    .prologue
    .line 1397
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1398
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1399
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1401
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1403
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1405
    return-void

    .line 1403
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private setActiveAdmin(Landroid/content/ComponentName;ZILandroid/os/Bundle;)V
    .locals 14
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "refreshing"    # Z
    .param p3, "userHandle"    # I
    .param p4, "onEnableData"    # Landroid/os/Bundle;

    .prologue
    .line 1781
    iget-object v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v12, "android.permission.MANAGE_DEVICE_ADMINS"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1783
    move/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1785
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v9

    .line 1786
    .local v9, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    move/from16 v0, p3

    invoke-virtual {p0, p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->findAdmin(Landroid/content/ComponentName;I)Landroid/app/admin/DeviceAdminInfo;

    move-result-object v6

    .line 1787
    .local v6, "info":Landroid/app/admin/DeviceAdminInfo;
    if-nez v6, :cond_0

    .line 1788
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Bad admin: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1790
    :cond_0
    monitor-enter p0

    .line 1791
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v4

    .line 1793
    .local v4, "ident":J
    if-nez p2, :cond_1

    :try_start_1
    move/from16 v0, p3

    invoke-virtual {p0, p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 1795
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Admin is already added"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1818
    :catchall_0
    move-exception v11

    :try_start_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v11

    .line 1820
    .end local v4    # "ident":J
    :catchall_1
    move-exception v11

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v11

    .line 1797
    .restart local v4    # "ident":J
    :cond_1
    :try_start_3
    new-instance v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    invoke-direct {v7, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;-><init>(Landroid/app/admin/DeviceAdminInfo;)V

    .line 1798
    .local v7, "newAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v11, v9, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v11, p1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1799
    const/4 v10, -0x1

    .line 1800
    .local v10, "replaceIndex":I
    iget-object v11, v9, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1801
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 1802
    iget-object v11, v9, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 1803
    .local v8, "oldAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v11, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v11}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1804
    move v10, v3

    .line 1808
    .end local v8    # "oldAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    const/4 v11, -0x1

    if-ne v10, v11, :cond_4

    .line 1809
    iget-object v11, v9, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1810
    invoke-virtual {v6}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v11

    move/from16 v0, p3

    invoke-direct {p0, v11, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enableIfNecessary(Ljava/lang/String;I)V

    .line 1814
    :goto_1
    move/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 1815
    const-string v11, "android.app.action.DEVICE_ADMIN_ENABLED"

    const/4 v12, 0x0

    move-object/from16 v0, p4

    invoke-virtual {p0, v7, v11, v0, v12}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/BroadcastReceiver;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1818
    :try_start_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1820
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1821
    return-void

    .line 1801
    .restart local v8    # "oldAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1812
    .end local v8    # "oldAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_4
    :try_start_5
    iget-object v11, v9, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v11, v10, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method private setEncryptionRequested(Z)V
    .locals 0
    .param p1, "encrypt"    # Z

    .prologue
    .line 3537
    return-void
.end method

.method private updatePasswordExpirationsLocked(I)V
    .locals 14
    .param p1, "userHandle"    # I

    .prologue
    .line 3176
    iget-object v12, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v12, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v8

    .line 3177
    .local v8, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserInfo;

    .line 3178
    .local v9, "userInfo":Landroid/content/pm/UserInfo;
    iget v7, v9, Landroid/content/pm/UserInfo;->id:I

    .line 3179
    .local v7, "profileId":I
    invoke-virtual {p0, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v6

    .line 3180
    .local v6, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v12, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3181
    .local v0, "N":I
    if-lez v0, :cond_2

    .line 3182
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_2

    .line 3183
    iget-object v12, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 3184
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v12, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    const/4 v13, 0x6

    invoke-virtual {v12, v13}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 3185
    iget-wide v10, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    .line 3186
    .local v10, "timeout":J
    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-lez v12, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    add-long v2, v10, v12

    .line 3187
    .local v2, "expiration":J
    :goto_2
    iput-wide v2, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    .line 3182
    .end local v2    # "expiration":J
    .end local v10    # "timeout":J
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3186
    .restart local v10    # "timeout":J
    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_2

    .line 3191
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v4    # "i":I
    .end local v10    # "timeout":J
    :cond_2
    invoke-direct {p0, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    goto :goto_0

    .line 3193
    .end local v0    # "N":I
    .end local v6    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v7    # "profileId":I
    .end local v9    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_3
    return-void
.end method

.method private updateScreenCaptureDisabledInWindowManager(IZ)V
    .locals 5
    .param p1, "userHandle"    # I
    .param p2, "disabled"    # Z

    .prologue
    .line 3589
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3591
    .local v2, "ident":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/view/IWindowManager;->setScreenCaptureDisabled(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3595
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3597
    :goto_0
    return-void

    .line 3592
    :catch_0
    move-exception v0

    .line 3593
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "DevicePolicyManagerService"

    const-string v4, "Unable to notify WindowManager."

    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3595
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method static validateQualityConstant(I)V
    .locals 3
    .param p0, "quality"    # I

    .prologue
    .line 1550
    sparse-switch p0, :sswitch_data_0

    .line 1561
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid quality constant: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1559
    :sswitch_0
    return-void

    .line 1550
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8000 -> :sswitch_0
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_0
        0x30000 -> :sswitch_0
        0x40000 -> :sswitch_0
        0x50000 -> :sswitch_0
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method

.method private wipeDataLocked(ZLjava/lang/String;)V
    .locals 6
    .param p1, "wipeExtRequested"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 3009
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isExtStorageEncrypted()Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v3

    .line 3012
    .local v1, "forceExtWipe":Z
    :goto_0
    if-nez v1, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v4

    if-nez v4, :cond_2

    .line 3013
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3014
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "always_reset"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3015
    const-string v3, "android.intent.extra.REASON"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3016
    sget-object v3, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3017
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x2710

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 3018
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3026
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 3009
    .end local v1    # "forceExtWipe":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 3021
    .restart local v1    # "forceExtWipe":Z
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3, p2}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 3022
    :catch_0
    move-exception v0

    .line 3023
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    const-string v3, "DevicePolicyManagerService"

    const-string v4, "Failed requesting data wipe"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 3022
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private wipeDeviceOrUserLocked(ZILjava/lang/String;)V
    .locals 2
    .param p1, "wipeExtRequested"    # Z
    .param p2, "userHandle"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 3072
    if-nez p2, :cond_0

    .line 3073
    invoke-direct {p0, p1, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->wipeDataLocked(ZLjava/lang/String;)V

    .line 3091
    :goto_0
    return-void

    .line 3075
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$3;

    invoke-direct {v1, p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$3;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public addCrossProfileIntentFilter(Landroid/content/ComponentName;Landroid/content/IntentFilter;I)V
    .locals 14
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "flags"    # I

    .prologue
    .line 4359
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 4360
    .local v4, "callingUserId":I
    monitor-enter p0

    .line 4361
    if-nez p1, :cond_0

    .line 4362
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4382
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 4364
    :cond_0
    const/4 v1, -0x1

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 4366
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 4367
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v12

    .line 4369
    .local v12, "id":J
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_1

    .line 4370
    :try_start_2
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p2

    invoke-interface/range {v0 .. v6}, Landroid/content/pm/IPackageManager;->addCrossProfileIntentFilter(Landroid/content/IntentFilter;Ljava/lang/String;IIII)V

    .line 4373
    :cond_1
    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_2

    .line 4374
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v8

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v5, v0

    move-object/from16 v6, p2

    move v10, v4

    invoke-interface/range {v5 .. v11}, Landroid/content/pm/IPackageManager;->addCrossProfileIntentFilter(Landroid/content/IntentFilter;Ljava/lang/String;IIII)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4380
    :cond_2
    :try_start_3
    invoke-static {v12, v13}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 4382
    :goto_0
    monitor-exit p0

    .line 4383
    return-void

    .line 4377
    :catch_0
    move-exception v1

    .line 4380
    invoke-static {v12, v13}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_1
    move-exception v1

    invoke-static {v12, v13}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public addCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2131
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 2132
    .local v4, "userId":I
    const/4 v1, 0x0

    .line 2134
    .local v1, "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    .line 2135
    const/4 v5, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2137
    .local v0, "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v5, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    if-nez v5, :cond_0

    .line 2138
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    .line 2140
    :cond_0
    iget-object v3, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    .line 2141
    .local v3, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2142
    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2143
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2144
    .end local v1    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v2, "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_1
    invoke-direct {p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 2146
    .end local v2    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2148
    if-eqz v1, :cond_2

    .line 2149
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mLocalService:Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;

    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->notifyCrossProfileProvidersChanged(ILjava/util/List;)V
    invoke-static {v5, v4, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->access$800(Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;ILjava/util/List;)V

    .line 2150
    const/4 v5, 0x1

    .line 2153
    :goto_0
    return v5

    .line 2146
    .end local v0    # "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v3    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v5

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 2153
    .restart local v0    # "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .restart local v3    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 2146
    .end local v1    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_1
.end method

.method public addPersistentPreferredActivity(Landroid/content/ComponentName;Landroid/content/IntentFilter;Landroid/content/ComponentName;)V
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "activity"    # Landroid/content/ComponentName;

    .prologue
    .line 4190
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 4192
    .local v3, "userHandle":I
    monitor-enter p0

    .line 4193
    if-nez p1, :cond_0

    .line 4194
    :try_start_0
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "ComponentName is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4207
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 4196
    :cond_0
    const/4 v4, -0x1

    :try_start_1
    invoke-virtual {p0, p1, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 4198
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 4199
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 4201
    .local v0, "id":J
    :try_start_2
    invoke-interface {v2, p2, p3, v3}, Landroid/content/pm/IPackageManager;->addPersistentPreferredActivity(Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4205
    :try_start_3
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 4207
    :goto_0
    monitor-exit p0

    .line 4208
    return-void

    .line 4202
    :catch_0
    move-exception v4

    .line 4205
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_1
    move-exception v4

    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public clearCrossProfileIntentFilters(Landroid/content/ComponentName;)V
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 4386
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 4387
    .local v0, "callingUserId":I
    monitor-enter p0

    .line 4388
    if-nez p1, :cond_0

    .line 4389
    :try_start_0
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "ComponentName is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4406
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 4391
    :cond_0
    const/4 v4, -0x1

    :try_start_1
    invoke-virtual {p0, p1, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 4392
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 4393
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 4395
    .local v2, "id":J
    :try_start_2
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v4, v0}, Landroid/content/pm/IPackageManager;->clearCrossProfileIntentFilters(ILjava/lang/String;I)V

    .line 4399
    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5, v0}, Landroid/content/pm/IPackageManager;->clearCrossProfileIntentFilters(ILjava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4404
    :try_start_3
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 4406
    :goto_0
    monitor-exit p0

    .line 4407
    return-void

    .line 4401
    :catch_0
    move-exception v4

    .line 4404
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_1
    move-exception v4

    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public clearDeviceOwner(Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3855
    if-nez p1, :cond_0

    .line 3856
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "packageName is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3859
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v1

    .line 3860
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    if-eq v1, v4, :cond_1

    .line 3861
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Invalid packageName"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3863
    .end local v1    # "uid":I
    :catch_0
    move-exception v0

    .line 3864
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Ljava/lang/SecurityException;

    invoke-direct {v4, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 3866
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "uid":I
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDeviceOwner(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3867
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "clearDeviceOwner can only be called by the device owner"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3869
    :cond_2
    monitor-enter p0

    .line 3870
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v2

    .line 3872
    .local v2, "ident":J
    :try_start_2
    new-instance v4, Landroid/os/UserHandle;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct {p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->clearUserRestrictions(Landroid/os/UserHandle;)V

    .line 3873
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-eqz v4, :cond_3

    .line 3874
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v4}, Lcom/android/server/devicepolicy/DeviceOwner;->clearDeviceOwner()V

    .line 3875
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v4}, Lcom/android/server/devicepolicy/DeviceOwner;->writeOwnerFile()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3878
    :cond_3
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3880
    monitor-exit p0

    .line 3881
    return-void

    .line 3878
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 3880
    .end local v2    # "ident":J
    :catchall_1
    move-exception v4

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4
.end method

.method public clearPackagePersistentPreferredActivities(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4212
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 4214
    .local v3, "userHandle":I
    monitor-enter p0

    .line 4215
    if-nez p1, :cond_0

    .line 4216
    :try_start_0
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "ComponentName is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4229
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 4218
    :cond_0
    const/4 v4, -0x1

    :try_start_1
    invoke-virtual {p0, p1, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 4220
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 4221
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 4223
    .local v0, "id":J
    :try_start_2
    invoke-interface {v2, p2, v3}, Landroid/content/pm/IPackageManager;->clearPackagePersistentPreferredActivities(Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4227
    :try_start_3
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 4229
    :goto_0
    monitor-exit p0

    .line 4230
    return-void

    .line 4224
    :catch_0
    move-exception v4

    .line 4227
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_1
    move-exception v4

    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public clearProfileOwner(Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 3930
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 3948
    :goto_0
    return-void

    .line 3933
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 3935
    .local v0, "callingUser":Landroid/os/UserHandle;
    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 3936
    monitor-enter p0

    .line 3937
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 3939
    .local v2, "ident":J
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->clearUserRestrictions(Landroid/os/UserHandle;)V

    .line 3940
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-eqz v1, :cond_1

    .line 3941
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/server/devicepolicy/DeviceOwner;->removeProfileOwner(I)V

    .line 3942
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DeviceOwner;->writeOwnerFile()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3945
    :cond_1
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3947
    monitor-exit p0

    goto :goto_0

    .end local v2    # "ident":J
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 3945
    .restart local v2    # "ident":J
    :catchall_1
    move-exception v1

    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public createAndInitializeUser(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/Bundle;)Landroid/os/UserHandle;
    .locals 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "ownerName"    # Ljava/lang/String;
    .param p4, "profileOwnerComponent"    # Landroid/content/ComponentName;
    .param p5, "adminExtras"    # Landroid/os/Bundle;

    .prologue
    .line 4770
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->createUser(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/os/UserHandle;

    move-result-object v6

    .line 4771
    .local v6, "user":Landroid/os/UserHandle;
    if-nez v6, :cond_0

    .line 4772
    const/4 v6, 0x0

    .line 4796
    .end local v6    # "user":Landroid/os/UserHandle;
    :goto_0
    return-object v6

    .line 4774
    .restart local v6    # "user":Landroid/os/UserHandle;
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4776
    .local v2, "id":J
    :try_start_0
    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 4777
    .local v5, "profileOwnerPkg":Ljava/lang/String;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 4778
    .local v4, "ipm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 4782
    .local v0, "activityManager":Landroid/app/IActivityManager;
    :try_start_1
    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-interface {v4, v5, v7}, Landroid/content/pm/IPackageManager;->isPackageAvailable(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 4783
    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-interface {v4, v5, v7}, Landroid/content/pm/IPackageManager;->installExistingPackageAsUser(Ljava/lang/String;I)I

    .line 4787
    :cond_1
    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-interface {v0, v7}, Landroid/app/IActivityManager;->startUserInBackground(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4792
    :goto_1
    const/4 v7, 0x1

    :try_start_2
    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-direct {p0, p4, v7, v8, p5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setActiveAdmin(Landroid/content/ComponentName;ZILandroid/os/Bundle;)V

    .line 4793
    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-virtual {p0, p4, p3, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4796
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 4788
    :catch_0
    move-exception v1

    .line 4789
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v7, "DevicePolicyManagerService"

    const-string v8, "Failed to make remote calls for configureUser"

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 4796
    .end local v0    # "activityManager":Landroid/app/IActivityManager;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v4    # "ipm":Landroid/content/pm/IPackageManager;
    .end local v5    # "profileOwnerPkg":Ljava/lang/String;
    :catchall_0
    move-exception v7

    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v7
.end method

.method public createUser(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/os/UserHandle;
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 4748
    monitor-enter p0

    .line 4749
    if-nez p1, :cond_0

    .line 4750
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4764
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 4752
    :cond_0
    const/4 v3, -0x2

    :try_start_1
    invoke-virtual {p0, p1, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 4754
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 4756
    .local v0, "id":J
    :try_start_2
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Landroid/os/UserManager;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 4757
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_1

    .line 4758
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v3

    .line 4762
    :try_start_3
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    monitor-exit p0

    :goto_0
    return-object v3

    .line 4760
    :cond_1
    const/4 v3, 0x0

    .line 4762
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    monitor-exit p0

    goto :goto_0

    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_1
    move-exception v3

    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 4149
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.DUMP"

    invoke-virtual {v7, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_0

    .line 4152
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permission Denial: can\'t dump DevicePolicyManagerService from from pid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4185
    :goto_0
    return-void

    .line 4158
    :cond_0
    new-instance v3, Landroid/util/PrintWriterPrinter;

    invoke-direct {v3, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 4160
    .local v3, "p":Landroid/util/Printer;
    monitor-enter p0

    .line 4161
    :try_start_0
    const-string v7, "Current Device Policy Manager state:"

    invoke-interface {v3, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4163
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 4164
    .local v6, "userCount":I
    const/4 v5, 0x0

    .local v5, "u":I
    :goto_1
    if-ge v5, v6, :cond_4

    .line 4165
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 4166
    .local v4, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Enabled Device Admins (User "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "):"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4167
    iget-object v7, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4168
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_2

    .line 4169
    iget-object v7, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 4170
    .local v1, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    .line 4171
    const-string v7, "  "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v7}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4172
    const-string v7, ":"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4173
    const-string v7, "    "

    invoke-virtual {v1, v7, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 4168
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 4176
    .end local v1    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    iget-object v7, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mRemovingAdmins:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 4177
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Removing Device Admins (User "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mRemovingAdmins:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4181
    :cond_3
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4182
    const-string v7, "  mPasswordOwner="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 4164
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 4184
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v4    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :cond_4
    monitor-exit p0

    goto/16 :goto_0

    .end local v5    # "u":I
    .end local v6    # "userCount":I
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method public enableSystemApp(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 5013
    monitor-enter p0

    .line 5014
    if-nez p1, :cond_0

    .line 5015
    :try_start_0
    new-instance v7, Ljava/lang/NullPointerException;

    const-string v8, "ComponentName is null"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 5053
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 5020
    :cond_0
    const/4 v7, -0x1

    :try_start_1
    invoke-virtual {p0, p1, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 5022
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    .line 5023
    .local v6, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 5031
    .local v0, "id":J
    :try_start_2
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v5

    .line 5032
    .local v5, "um":Landroid/os/UserManager;
    invoke-virtual {v5, v6}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 5035
    .local v3, "primaryUser":Landroid/content/pm/UserInfo;
    if-nez v3, :cond_1

    .line 5036
    invoke-virtual {v5, v6}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 5039
    :cond_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 5040
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v2, p2, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isSystemApp(Landroid/content/pm/IPackageManager;Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 5041
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Only system apps can be enabled this way."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5047
    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    .end local v3    # "primaryUser":Landroid/content/pm/UserInfo;
    .end local v5    # "um":Landroid/os/UserManager;
    :catch_0
    move-exception v4

    .line 5049
    .local v4, "re":Landroid/os/RemoteException;
    :try_start_3
    const-string v7, "DevicePolicyManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to install "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 5051
    :try_start_4
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 5053
    .end local v4    # "re":Landroid/os/RemoteException;
    :goto_0
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 5054
    return-void

    .line 5045
    .restart local v2    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v3    # "primaryUser":Landroid/content/pm/UserInfo;
    .restart local v5    # "um":Landroid/os/UserManager;
    :cond_2
    :try_start_5
    invoke-interface {v2, p2, v6}, Landroid/content/pm/IPackageManager;->installExistingPackageAsUser(Ljava/lang/String;I)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 5051
    :try_start_6
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    .end local v3    # "primaryUser":Landroid/content/pm/UserInfo;
    .end local v5    # "um":Landroid/os/UserManager;
    :catchall_1
    move-exception v7

    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public enableSystemAppWithIntent(Landroid/content/ComponentName;Landroid/content/Intent;)I
    .locals 16
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 5058
    monitor-enter p0

    .line 5059
    if-nez p1, :cond_0

    .line 5060
    :try_start_0
    new-instance v13, Ljava/lang/NullPointerException;

    const-string v14, "ComponentName is null"

    invoke-direct {v13, v14}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 5110
    :catchall_0
    move-exception v13

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v13

    .line 5065
    :cond_0
    const/4 v13, -0x1

    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v13}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 5067
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v12

    .line 5068
    .local v12, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    .line 5071
    .local v6, "id":J
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v13}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v11

    .line 5072
    .local v11, "um":Landroid/os/UserManager;
    invoke-virtual {v11, v12}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v10

    .line 5075
    .local v10, "primaryUser":Landroid/content/pm/UserInfo;
    if-nez v10, :cond_1

    .line 5076
    invoke-virtual {v11, v12}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v10

    .line 5079
    :cond_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v9

    .line 5080
    .local v9, "pm":Landroid/content/pm/IPackageManager;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    iget v15, v10, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p2

    invoke-interface {v9, v0, v13, v14, v15}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v2

    .line 5086
    .local v2, "activitiesToEnable":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v8, 0x0

    .line 5087
    .local v8, "numberOfAppsInstalled":I
    if-eqz v2, :cond_4

    .line 5088
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 5089
    .local v5, "info":Landroid/content/pm/ResolveInfo;
    iget-object v13, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v13, :cond_2

    .line 5091
    iget-object v13, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget v14, v10, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v13, v14}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isSystemApp(Landroid/content/pm/IPackageManager;Ljava/lang/String;I)Z

    move-result v13

    if-nez v13, :cond_3

    .line 5092
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "Only system apps can be enabled this way."

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5103
    .end local v2    # "activitiesToEnable":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "info":Landroid/content/pm/ResolveInfo;
    .end local v8    # "numberOfAppsInstalled":I
    .end local v9    # "pm":Landroid/content/pm/IPackageManager;
    .end local v10    # "primaryUser":Landroid/content/pm/UserInfo;
    .end local v11    # "um":Landroid/os/UserManager;
    :catch_0
    move-exception v3

    .line 5105
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v13, "DevicePolicyManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to resolve intent for: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 5106
    const/4 v8, 0x0

    .line 5108
    :try_start_4
    invoke-static {v6, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    return v8

    .line 5097
    .restart local v2    # "activitiesToEnable":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "info":Landroid/content/pm/ResolveInfo;
    .restart local v8    # "numberOfAppsInstalled":I
    .restart local v9    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v10    # "primaryUser":Landroid/content/pm/UserInfo;
    .restart local v11    # "um":Landroid/os/UserManager;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    .line 5098
    :try_start_5
    iget-object v13, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v9, v13, v12}, Landroid/content/pm/IPackageManager;->installExistingPackageAsUser(Ljava/lang/String;I)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 5108
    .end local v2    # "activitiesToEnable":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "info":Landroid/content/pm/ResolveInfo;
    .end local v8    # "numberOfAppsInstalled":I
    .end local v9    # "pm":Landroid/content/pm/IPackageManager;
    .end local v10    # "primaryUser":Landroid/content/pm/UserInfo;
    .end local v11    # "um":Landroid/os/UserManager;
    :catchall_1
    move-exception v13

    :try_start_6
    invoke-static {v6, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v13

    .restart local v2    # "activitiesToEnable":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v8    # "numberOfAppsInstalled":I
    .restart local v9    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v10    # "primaryUser":Landroid/content/pm/UserInfo;
    .restart local v11    # "um":Landroid/os/UserManager;
    :cond_4
    invoke-static {v6, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method

.method public enforceCanManageCaCerts(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 2903
    if-nez p1, :cond_0

    .line 2904
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_CA_CERTIFICATES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2910
    :goto_0
    return-void

    .line 2906
    :cond_0
    monitor-enter p0

    .line 2907
    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 2908
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public findAdmin(Landroid/content/ComponentName;I)Landroid/app/admin/DeviceAdminInfo;
    .locals 7
    .param p1, "adminName"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 1274
    iget-boolean v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v3, :cond_0

    move-object v3, v4

    .line 1297
    :goto_0
    return-object v3

    .line 1277
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1278
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1279
    .local v2, "resolveIntent":Landroid/content/Intent;
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1280
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const v5, 0x8080

    invoke-virtual {v3, v2, v5, p2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    .line 1284
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_2

    .line 1285
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown admin: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1289
    :cond_2
    :try_start_0
    new-instance v5, Landroid/app/admin/DeviceAdminInfo;

    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v5, v6, v3}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v3, v5

    goto :goto_0

    .line 1290
    :catch_0
    move-exception v0

    .line 1291
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v3, "DevicePolicyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad device admin requested for user="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v4

    .line 1293
    goto :goto_0

    .line 1294
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    .line 1295
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "DevicePolicyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad device admin requested for user="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v4

    .line 1297
    goto/16 :goto_0
.end method

.method public getAccountTypesWithManagementDisabled()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 5143
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getAccountTypesWithManagementDisabledAsUser(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccountTypesWithManagementDisabledAsUser(I)[Ljava/lang/String;
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 5148
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 5149
    iget-boolean v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_0

    .line 5150
    const/4 v5, 0x0

    .line 5160
    :goto_0
    return-object v5

    .line 5152
    :cond_0
    monitor-enter p0

    .line 5153
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 5154
    .local v3, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5155
    .local v0, "N":I
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 5156
    .local v4, "resultSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 5157
    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 5158
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v5, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 5156
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5160
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    monitor-exit p0

    goto :goto_0

    .line 5161
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v4    # "resultSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .locals 13
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "reqPolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v12, -0x1

    const/4 v11, -0x2

    const/4 v9, 0x0

    .line 1118
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1119
    .local v1, "callingUid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 1120
    .local v7, "userHandle":I
    invoke-virtual {p0, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v6

    .line 1122
    .local v6, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1125
    .local v2, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;>;"
    if-eqz p1, :cond_5

    .line 1126
    iget-object v8, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 1127
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-nez v0, :cond_0

    .line 1128
    new-instance v8, Ljava/lang/SecurityException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No active admin "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1130
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v8

    if-eq v8, v1, :cond_1

    .line 1131
    new-instance v8, Ljava/lang/SecurityException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Admin "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is not owned by uid "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1134
    :cond_1
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1144
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 1145
    .restart local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v8, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v8}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDeviceOwner(Ljava/lang/String;)Z

    move-result v4

    .line 1146
    .local v4, "ownsDevice":Z
    invoke-virtual {p0, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwner(I)Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-virtual {p0, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwner(I)Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v10, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v10}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v5, 0x1

    .line 1150
    .local v5, "ownsProfile":Z
    :goto_0
    if-ne p2, v11, :cond_8

    .line 1151
    if-eqz v4, :cond_3

    .line 1160
    :cond_4
    :goto_1
    return-object v0

    .line 1136
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "ownsDevice":Z
    .end local v5    # "ownsProfile":Z
    :cond_5
    iget-object v8, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 1137
    .restart local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v8

    if-ne v8, v1, :cond_6

    .line 1138
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .restart local v4    # "ownsDevice":Z
    :cond_7
    move v5, v9

    .line 1146
    goto :goto_0

    .line 1154
    .restart local v5    # "ownsProfile":Z
    :cond_8
    if-ne p2, v12, :cond_9

    .line 1155
    if-nez v4, :cond_4

    if-eqz v5, :cond_3

    goto :goto_1

    .line 1159
    :cond_9
    iget-object v8, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v8, p2}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_1

    .line 1165
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v4    # "ownsDevice":Z
    .end local v5    # "ownsProfile":Z
    :cond_a
    if-eqz p1, :cond_d

    .line 1166
    if-ne p2, v11, :cond_b

    .line 1167
    new-instance v10, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Admin "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    iget-object v8, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v8}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " does not own the device"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v10, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1170
    :cond_b
    if-ne p2, v12, :cond_c

    .line 1171
    new-instance v10, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Admin "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    iget-object v8, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v8}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " does not own the profile"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v10, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1174
    :cond_c
    new-instance v10, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Admin "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    iget-object v8, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v8}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " did not specify uses-policy for: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    iget-object v8, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v8, p2}, Landroid/app/admin/DeviceAdminInfo;->getTagForPolicy(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v10, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1178
    :cond_d
    new-instance v8, Ljava/lang/SecurityException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No active admin owned by uid "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " for policy #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1107
    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 1108
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1113
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :goto_0
    return-object v0

    .restart local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActiveAdmins(I)Ljava/util/List;
    .locals 5
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1861
    iget-boolean v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v4, :cond_0

    .line 1862
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 1876
    :goto_0
    return-object v3

    .line 1865
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1866
    monitor-enter p0

    .line 1867
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .line 1868
    .local v2, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v4, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1869
    .local v0, "N":I
    if-gtz v0, :cond_1

    .line 1870
    const/4 v3, 0x0

    monitor-exit p0

    goto :goto_0

    .line 1877
    .end local v0    # "N":I
    .end local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1872
    .restart local v0    # "N":I
    .restart local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :cond_1
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1873
    .local v3, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 1874
    iget-object v4, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    iget-object v4, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v4}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1873
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1876
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4843
    new-instance v2, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 4845
    .local v2, "userHandle":Landroid/os/UserHandle;
    monitor-enter p0

    .line 4846
    if-nez p1, :cond_0

    .line 4847
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4857
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 4849
    :cond_0
    const/4 v3, -0x1

    :try_start_1
    invoke-virtual {p0, p1, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 4851
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 4853
    .local v0, "id":J
    :try_start_2
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, p2, v2}, Landroid/os/UserManager;->getApplicationRestrictions(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/os/Bundle;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v3

    .line 4855
    :try_start_3
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    monitor-exit p0

    return-object v3

    :catchall_1
    move-exception v3

    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public getAutoTimeRequired()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 3635
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v2, :cond_0

    .line 3640
    :goto_0
    return v1

    .line 3638
    :cond_0
    monitor-enter p0

    .line 3639
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwnerAdmin()Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3640
    .local v0, "deviceOwner":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->requireAutoTime:Z

    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 3641
    .end local v0    # "deviceOwner":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCameraDisabled(Landroid/content/ComponentName;I)Z
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 3677
    iget-boolean v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_0

    .line 3695
    :goto_0
    return v4

    .line 3680
    :cond_0
    monitor-enter p0

    .line 3681
    if-eqz p1, :cond_2

    .line 3682
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 3683
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget-boolean v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 3696
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 3686
    :cond_2
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 3688
    .local v3, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3689
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 3690
    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 3691
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v5, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    if-eqz v5, :cond_3

    .line 3692
    const/4 v4, 0x1

    monitor-exit p0

    goto :goto_0

    .line 3689
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3695
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getCrossProfileCallerIdDisabled(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 5234
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 5235
    const/4 v1, 0x0

    .line 5245
    :goto_0
    return v1

    .line 5238
    :cond_0
    monitor-enter p0

    .line 5239
    if-nez p1, :cond_1

    .line 5240
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5246
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 5243
    :cond_1
    const/4 v1, -0x1

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 5245
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCallerId:Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getCrossProfileCallerIdDisabledForUser(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 5253
    monitor-enter p0

    .line 5254
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwnerAdmin(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 5255
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCallerId:Z

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 5256
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCrossProfileWidgetProviders(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2184
    monitor-enter p0

    .line 2185
    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2187
    .local v0, "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2189
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    .line 2194
    :goto_0
    return-object v1

    .line 2191
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 2192
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit p0

    goto :goto_0

    .line 2196
    .end local v0    # "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2194
    .restart local v0    # "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    :try_start_1
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getCurrentFailedPasswordAttempts(I)I
    .locals 9
    .param p1, "userHandle"    # I
    .annotation build Landroid/annotation/VibeHook;
        module = .enum Landroid/annotation/VibeHook$VibeHookModule;->KEYGUARD:Landroid/annotation/VibeHook$VibeHookModule;
        note = "Lenovo-sw keyguard huangjy add 2015-01-22 systemui getCurrentFailedPasswordAttempts LVPCCR-34"
        type = .enum Landroid/annotation/VibeHook$VibeHookType;->CHANGE_CODE:Landroid/annotation/VibeHook$VibeHookType;
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2552
    monitor-enter p0

    .line 2557
    const/4 v0, 0x0

    .line 2559
    .local v0, "backdoor":Z
    :try_start_0
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.android.systemui"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-ne v6, v7, :cond_1

    move v0, v4

    .line 2562
    :goto_0
    if-nez v0, :cond_0

    .line 2565
    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_1
    invoke-virtual {p0, v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 2574
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 2575
    .local v2, "parent":Landroid/content/pm/UserInfo;
    if-nez v2, :cond_2

    move v1, p1

    .line 2576
    .local v1, "id":I
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 2578
    .local v3, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget v4, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    monitor-exit p0

    return v4

    .end local v1    # "id":I
    .end local v2    # "parent":Landroid/content/pm/UserInfo;
    .end local v3    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :cond_1
    move v0, v5

    .line 2559
    goto :goto_0

    .line 2575
    .restart local v2    # "parent":Landroid/content/pm/UserInfo;
    :cond_2
    iget v1, v2, Landroid/content/pm/UserInfo;->id:I

    goto :goto_1

    .line 2579
    .end local v2    # "parent":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 2560
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public getDeviceOwner()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3810
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 3818
    :goto_0
    return-object v0

    .line 3813
    :cond_0
    monitor-enter p0

    .line 3814
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DeviceOwner;->hasDeviceOwner()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3815
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DeviceOwner;->getDeviceOwnerPackageName()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 3817
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getDeviceOwnerName()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3823
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 3832
    :goto_0
    return-object v0

    .line 3826
    :cond_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_USERS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3827
    monitor-enter p0

    .line 3828
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-eqz v1, :cond_1

    .line 3829
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DeviceOwner;->getDeviceOwnerName()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 3831
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getGlobalProxyAdmin(I)Landroid/content/ComponentName;
    .locals 6
    .param p1, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 3319
    iget-boolean v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_0

    .line 3338
    :goto_0
    return-object v4

    .line 3322
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3323
    monitor-enter p0

    .line 3324
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 3327
    .local v3, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3328
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 3329
    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 3330
    .local v1, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v5, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    if-eqz v5, :cond_1

    .line 3333
    iget-object v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v4}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    monitor-exit p0

    goto :goto_0

    .line 3336
    .end local v0    # "N":I
    .end local v1    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v3    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 3328
    .restart local v0    # "N":I
    .restart local v1    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .restart local v2    # "i":I
    .restart local v3    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3336
    .end local v1    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 3727
    iget-boolean v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_0

    .line 3745
    :goto_0
    return v4

    .line 3730
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3731
    monitor-enter p0

    .line 3732
    if-eqz p1, :cond_2

    .line 3733
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 3734
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 3746
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 3738
    :cond_2
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 3739
    .local v3, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3740
    .local v0, "N":I
    const/4 v4, 0x0

    .line 3741
    .local v4, "which":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 3742
    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 3743
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v5, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    or-int/2addr v4, v5

    .line 3741
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3745
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getLockTaskPackages(Landroid/content/ComponentName;)[Ljava/lang/String;
    .locals 4
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 5291
    monitor-enter p0

    .line 5292
    if-nez p1, :cond_0

    .line 5293
    :try_start_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "ComponentName is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5300
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 5295
    :cond_0
    const/4 v2, -0x2

    :try_start_1
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 5297
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 5298
    .local v1, "userHandle":I
    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v0

    .line 5299
    .local v0, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2
.end method

.method public getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v1, 0x0

    .line 2606
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v2, :cond_0

    .line 2613
    :goto_0
    return v1

    .line 2609
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2610
    monitor-enter p0

    .line 2611
    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2613
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :goto_1
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 2614
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2611
    :cond_2
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getAdminWithMinimumFailedPasswordsForWipeLocked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_1
.end method

.method public getMaximumTimeToLock(Landroid/content/ComponentName;I)J
    .locals 16
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2837
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v11, :cond_0

    .line 2838
    const-wide/16 v8, 0x0

    .line 2864
    :goto_0
    return-wide v8

    .line 2840
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2841
    monitor-enter p0

    .line 2842
    const-wide/16 v8, 0x0

    .line 2844
    .local v8, "time":J
    if-eqz p1, :cond_2

    .line 2845
    :try_start_0
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v3

    .line 2846
    .local v3, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v3, :cond_1

    iget-wide v12, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    :goto_1
    monitor-exit p0

    move-wide v8, v12

    goto :goto_0

    :cond_1
    move-wide v12, v8

    goto :goto_1

    .line 2850
    .end local v3    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v7

    .line 2851
    .local v7, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/UserInfo;

    .line 2852
    .local v10, "userInfo":Landroid/content/pm/UserInfo;
    iget v11, v10, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v6

    .line 2853
    .local v6, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v11, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2854
    .local v2, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v2, :cond_3

    .line 2855
    iget-object v11, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 2856
    .restart local v3    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    const-wide/16 v12, 0x0

    cmp-long v11, v8, v12

    if-nez v11, :cond_5

    .line 2857
    iget-wide v8, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    .line 2854
    :cond_4
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2858
    :cond_5
    iget-wide v12, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_4

    iget-wide v12, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    cmp-long v11, v8, v12

    if-lez v11, :cond_4

    .line 2860
    iget-wide v8, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    goto :goto_3

    .line 2864
    .end local v2    # "N":I
    .end local v3    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v4    # "i":I
    .end local v6    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v10    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_6
    monitor-exit p0

    goto :goto_0

    .line 2865
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v11

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11
.end method

.method public getPasswordExpiration(Landroid/content/ComponentName;I)J
    .locals 2
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2227
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v0, :cond_0

    .line 2228
    const-wide/16 v0, 0x0

    .line 2232
    :goto_0
    return-wide v0

    .line 2230
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2231
    monitor-enter p0

    .line 2232
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordExpirationLocked(Landroid/content/ComponentName;I)J

    move-result-wide v0

    monitor-exit p0

    goto :goto_0

    .line 2233
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPasswordExpirationTimeout(Landroid/content/ComponentName;I)J
    .locals 16
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2101
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v11, :cond_0

    .line 2102
    const-wide/16 v8, 0x0

    .line 2125
    :goto_0
    return-wide v8

    .line 2104
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2105
    monitor-enter p0

    .line 2106
    const-wide/16 v8, 0x0

    .line 2108
    .local v8, "timeout":J
    if-eqz p1, :cond_2

    .line 2109
    :try_start_0
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v3

    .line 2110
    .local v3, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v3, :cond_1

    iget-wide v12, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    :goto_1
    monitor-exit p0

    move-wide v8, v12

    goto :goto_0

    :cond_1
    move-wide v12, v8

    goto :goto_1

    .line 2113
    .end local v3    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v7

    .line 2114
    .local v7, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/UserInfo;

    .line 2115
    .local v10, "userInfo":Landroid/content/pm/UserInfo;
    iget v11, v10, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v6

    .line 2116
    .local v6, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v11, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2117
    .local v2, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v2, :cond_3

    .line 2118
    iget-object v11, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 2119
    .restart local v3    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    const-wide/16 v12, 0x0

    cmp-long v11, v8, v12

    if-eqz v11, :cond_4

    iget-wide v12, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_5

    iget-wide v12, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    cmp-long v11, v8, v12

    if-lez v11, :cond_5

    .line 2121
    :cond_4
    iget-wide v8, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    .line 2117
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2125
    .end local v2    # "N":I
    .end local v3    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v4    # "i":I
    .end local v6    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v10    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_6
    monitor-exit p0

    goto :goto_0

    .line 2126
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v11

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11
.end method

.method public getPasswordHistoryLength(Landroid/content/ComponentName;I)I
    .locals 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2039
    iget-boolean v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v8, :cond_0

    .line 2040
    const/4 v4, 0x0

    .line 2063
    :goto_0
    return v4

    .line 2042
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2043
    monitor-enter p0

    .line 2044
    const/4 v4, 0x0

    .line 2046
    .local v4, "length":I
    if-eqz p1, :cond_2

    .line 2047
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2048
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    :goto_1
    monitor-exit p0

    move v4, v8

    goto :goto_0

    :cond_1
    move v8, v4

    goto :goto_1

    .line 2052
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8, p2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v6

    .line 2053
    .local v6, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 2054
    .local v7, "userInfo":Landroid/content/pm/UserInfo;
    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v5

    .line 2055
    .local v5, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2056
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 2057
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 2058
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    if-ge v4, v8, :cond_4

    .line 2059
    iget v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    .line 2056
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2063
    .end local v0    # "N":I
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v5    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v7    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_5
    monitor-exit p0

    goto :goto_0

    .line 2064
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method

.method public getPasswordMinimumLength(Landroid/content/ComponentName;I)I
    .locals 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1992
    iget-boolean v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v8, :cond_0

    .line 1993
    const/4 v4, 0x0

    .line 2016
    :goto_0
    return v4

    .line 1995
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1996
    monitor-enter p0

    .line 1997
    const/4 v4, 0x0

    .line 1999
    .local v4, "length":I
    if-eqz p1, :cond_2

    .line 2000
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2001
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    :goto_1
    monitor-exit p0

    move v4, v8

    goto :goto_0

    :cond_1
    move v8, v4

    goto :goto_1

    .line 2005
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8, p2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v6

    .line 2006
    .local v6, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 2007
    .local v7, "userInfo":Landroid/content/pm/UserInfo;
    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v5

    .line 2008
    .local v5, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2009
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 2010
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 2011
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    if-ge v4, v8, :cond_4

    .line 2012
    iget v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    .line 2009
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2016
    .end local v0    # "N":I
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v5    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v7    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_5
    monitor-exit p0

    goto :goto_0

    .line 2017
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method

.method public getPasswordMinimumLetters(Landroid/content/ComponentName;I)I
    .locals 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2346
    iget-boolean v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v8, :cond_0

    .line 2347
    const/4 v4, 0x0

    .line 2370
    :goto_0
    return v4

    .line 2349
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2350
    monitor-enter p0

    .line 2351
    const/4 v4, 0x0

    .line 2353
    .local v4, "length":I
    if-eqz p1, :cond_2

    .line 2354
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2355
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    :goto_1
    monitor-exit p0

    move v4, v8

    goto :goto_0

    :cond_1
    move v8, v4

    goto :goto_1

    .line 2359
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8, p2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v6

    .line 2360
    .local v6, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 2361
    .local v7, "userInfo":Landroid/content/pm/UserInfo;
    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v5

    .line 2362
    .local v5, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2363
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 2364
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 2365
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    if-ge v4, v8, :cond_4

    .line 2366
    iget v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    .line 2363
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2370
    .end local v0    # "N":I
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v5    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v7    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_5
    monitor-exit p0

    goto :goto_0

    .line 2371
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method

.method public getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I
    .locals 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2299
    iget-boolean v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v8, :cond_0

    .line 2300
    const/4 v4, 0x0

    .line 2323
    :goto_0
    return v4

    .line 2302
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2303
    monitor-enter p0

    .line 2304
    const/4 v4, 0x0

    .line 2306
    .local v4, "length":I
    if-eqz p1, :cond_2

    .line 2307
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2308
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    :goto_1
    monitor-exit p0

    move v4, v8

    goto :goto_0

    :cond_1
    move v8, v4

    goto :goto_1

    .line 2312
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8, p2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v6

    .line 2313
    .local v6, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 2314
    .local v7, "userInfo":Landroid/content/pm/UserInfo;
    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v5

    .line 2315
    .local v5, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2316
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 2317
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 2318
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    if-ge v4, v8, :cond_4

    .line 2319
    iget v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    .line 2316
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2323
    .end local v0    # "N":I
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v5    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v7    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_5
    monitor-exit p0

    goto :goto_0

    .line 2324
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method

.method public getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I
    .locals 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2487
    iget-boolean v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v8, :cond_0

    .line 2488
    const/4 v4, 0x0

    .line 2511
    :goto_0
    return v4

    .line 2490
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2491
    monitor-enter p0

    .line 2492
    const/4 v4, 0x0

    .line 2494
    .local v4, "length":I
    if-eqz p1, :cond_2

    .line 2495
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2496
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    :goto_1
    monitor-exit p0

    move v4, v8

    goto :goto_0

    :cond_1
    move v8, v4

    goto :goto_1

    .line 2500
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8, p2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v6

    .line 2501
    .local v6, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 2502
    .local v7, "userInfo":Landroid/content/pm/UserInfo;
    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v5

    .line 2503
    .local v5, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2504
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 2505
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 2506
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    if-ge v4, v8, :cond_4

    .line 2507
    iget v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    .line 2504
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2511
    .end local v0    # "N":I
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v5    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v7    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_5
    monitor-exit p0

    goto :goto_0

    .line 2512
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method

.method public getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I
    .locals 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2393
    iget-boolean v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v8, :cond_0

    .line 2394
    const/4 v4, 0x0

    .line 2417
    :goto_0
    return v4

    .line 2396
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2397
    monitor-enter p0

    .line 2398
    const/4 v4, 0x0

    .line 2400
    .local v4, "length":I
    if-eqz p1, :cond_2

    .line 2401
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2402
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    :goto_1
    monitor-exit p0

    move v4, v8

    goto :goto_0

    :cond_1
    move v8, v4

    goto :goto_1

    .line 2406
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8, p2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v6

    .line 2407
    .local v6, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 2408
    .local v7, "userInfo":Landroid/content/pm/UserInfo;
    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v5

    .line 2409
    .local v5, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2410
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 2411
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 2412
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    if-ge v4, v8, :cond_4

    .line 2413
    iget v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    .line 2410
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2417
    .end local v0    # "N":I
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v5    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v7    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_5
    monitor-exit p0

    goto :goto_0

    .line 2418
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method

.method public getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I
    .locals 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2440
    iget-boolean v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v8, :cond_0

    .line 2441
    const/4 v4, 0x0

    .line 2464
    :goto_0
    return v4

    .line 2443
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2444
    monitor-enter p0

    .line 2445
    const/4 v4, 0x0

    .line 2447
    .local v4, "length":I
    if-eqz p1, :cond_2

    .line 2448
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2449
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    :goto_1
    monitor-exit p0

    move v4, v8

    goto :goto_0

    :cond_1
    move v8, v4

    goto :goto_1

    .line 2453
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8, p2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v6

    .line 2454
    .local v6, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 2455
    .local v7, "userInfo":Landroid/content/pm/UserInfo;
    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v5

    .line 2456
    .local v5, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2457
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 2458
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 2459
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    if-ge v4, v8, :cond_4

    .line 2460
    iget v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    .line 2457
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2464
    .end local v0    # "N":I
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v5    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v7    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_5
    monitor-exit p0

    goto :goto_0

    .line 2465
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method

.method public getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I
    .locals 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2255
    iget-boolean v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v8, :cond_0

    .line 2256
    const/4 v4, 0x0

    .line 2279
    :goto_0
    return v4

    .line 2258
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2259
    monitor-enter p0

    .line 2260
    const/4 v4, 0x0

    .line 2262
    .local v4, "length":I
    if-eqz p1, :cond_2

    .line 2263
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2264
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    :goto_1
    monitor-exit p0

    move v4, v8

    goto :goto_0

    :cond_1
    move v8, v4

    goto :goto_1

    .line 2268
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8, p2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v6

    .line 2269
    .local v6, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 2270
    .local v7, "userInfo":Landroid/content/pm/UserInfo;
    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v5

    .line 2271
    .local v5, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2272
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 2273
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 2274
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    if-ge v4, v8, :cond_4

    .line 2275
    iget v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    .line 2272
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2279
    .end local v0    # "N":I
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v5    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v7    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_5
    monitor-exit p0

    goto :goto_0

    .line 2280
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method

.method public getPasswordQuality(Landroid/content/ComponentName;I)I
    .locals 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1945
    iget-boolean v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v8, :cond_0

    .line 1946
    const/4 v4, 0x0

    .line 1969
    :goto_0
    return v4

    .line 1948
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1949
    monitor-enter p0

    .line 1950
    const/4 v4, 0x0

    .line 1952
    .local v4, "mode":I
    if-eqz p1, :cond_2

    .line 1953
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1954
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    :goto_1
    monitor-exit p0

    move v4, v8

    goto :goto_0

    :cond_1
    move v8, v4

    goto :goto_1

    .line 1958
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8, p2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v6

    .line 1959
    .local v6, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 1960
    .local v7, "userInfo":Landroid/content/pm/UserInfo;
    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v5

    .line 1961
    .local v5, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1962
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 1963
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 1964
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    if-ge v4, v8, :cond_4

    .line 1965
    iget v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    .line 1962
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1969
    .end local v0    # "N":I
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v5    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v7    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_5
    monitor-exit p0

    goto :goto_0

    .line 1970
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method

.method public getPermittedAccessibilityServices(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 4505
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 4506
    const/4 v1, 0x0

    .line 4516
    :goto_0
    return-object v1

    .line 4509
    :cond_0
    if-nez p1, :cond_1

    .line 4510
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4513
    :cond_1
    monitor-enter p0

    .line 4514
    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 4516
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedAccessiblityServices:Ljava/util/List;

    monitor-exit p0

    goto :goto_0

    .line 4517
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPermittedAccessibilityServicesForUser(I)Ljava/util/List;
    .locals 27
    .param p1, "userId"    # I

    .prologue
    .line 4522
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    move/from16 v25, v0

    if-nez v25, :cond_0

    .line 4523
    const/16 v21, 0x0

    .line 4583
    :goto_0
    return-object v21

    .line 4525
    :cond_0
    monitor-enter p0

    .line 4526
    const/16 v21, 0x0

    .line 4530
    .local v21, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v20

    .line 4531
    .local v20, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v5

    .line 4532
    .local v5, "PROFILES_SIZE":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v5, :cond_4

    .line 4535
    move-object/from16 v0, v20

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v19

    .line 4536
    .local v19, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v4

    .line 4537
    .local v4, "N":I
    const/16 v16, 0x0

    .local v16, "j":I
    move-object/from16 v22, v21

    .end local v21    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v22, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_2
    move/from16 v0, v16

    if-ge v0, v4, :cond_3

    .line 4538
    :try_start_1
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 4539
    .local v7, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v10, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedAccessiblityServices:Ljava/util/List;

    .line 4540
    .local v10, "fromAdmin":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v10, :cond_2

    .line 4541
    if-nez v22, :cond_1

    .line 4542
    new-instance v21, Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-direct {v0, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4537
    .end local v22    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v21    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_3
    add-int/lit8 v16, v16, 0x1

    move-object/from16 v22, v21

    .end local v21    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v22    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_2

    .line 4544
    :cond_1
    move-object/from16 v0, v22

    invoke-interface {v0, v10}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :cond_2
    move-object/from16 v21, v22

    .end local v22    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v21    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_3

    .line 4532
    .end local v7    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v10    # "fromAdmin":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v22    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v21, v22

    .end local v22    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v21    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_1

    .line 4551
    .end local v4    # "N":I
    .end local v16    # "j":I
    .end local v19    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :cond_4
    if-eqz v21, :cond_8

    .line 4552
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v14

    .line 4554
    .local v14, "id":J
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v24

    .line 4555
    .local v24, "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {v24 .. v24}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v25

    if-eqz v25, :cond_5

    .line 4556
    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    move/from16 p1, v0

    .line 4558
    :cond_5
    invoke-direct/range {p0 .. p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getAccessibilityManagerForUser(I)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v6

    .line 4560
    .local v6, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v13

    .line 4563
    .local v13, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v18

    .line 4564
    .local v18, "pm":Landroid/content/pm/IPackageManager;
    if-eqz v13, :cond_7

    .line 4565
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 4566
    .local v23, "service":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual/range {v23 .. v23}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4568
    .local v17, "packageName":Ljava/lang/String;
    const/16 v25, 0x2000

    :try_start_4
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move/from16 v2, v25

    move/from16 v3, p1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 4570
    .local v8, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v0, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v25, v0

    and-int/lit8 v25, v25, 0x1

    if-eqz v25, :cond_6

    .line 4571
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 4573
    .end local v8    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v9

    .line 4574
    .local v9, "e":Landroid/os/RemoteException;
    :try_start_5
    const-string v25, "DevicePolicyManagerService"

    const-string v26, "Accessibility service in missing package"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 4579
    .end local v6    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .end local v9    # "e":Landroid/os/RemoteException;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    .end local v17    # "packageName":Ljava/lang/String;
    .end local v18    # "pm":Landroid/content/pm/IPackageManager;
    .end local v23    # "service":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v24    # "user":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v25

    :try_start_6
    invoke-static {v14, v15}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v25

    .line 4584
    .end local v5    # "PROFILES_SIZE":I
    .end local v11    # "i":I
    .end local v14    # "id":J
    .end local v20    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_1
    move-exception v25

    :goto_5
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v25

    .line 4579
    .restart local v5    # "PROFILES_SIZE":I
    .restart local v6    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .restart local v11    # "i":I
    .restart local v13    # "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    .restart local v14    # "id":J
    .restart local v18    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v20    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v24    # "user":Landroid/content/pm/UserInfo;
    :cond_7
    :try_start_7
    invoke-static {v14, v15}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 4583
    .end local v6    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .end local v13    # "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    .end local v14    # "id":J
    .end local v18    # "pm":Landroid/content/pm/IPackageManager;
    .end local v24    # "user":Landroid/content/pm/UserInfo;
    :cond_8
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_0

    .line 4584
    .end local v21    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "N":I
    .restart local v16    # "j":I
    .restart local v19    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .restart local v22    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_2
    move-exception v25

    move-object/from16 v21, v22

    .end local v22    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v21    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_5
.end method

.method public getPermittedInputMethods(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 4663
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 4664
    const/4 v1, 0x0

    .line 4674
    :goto_0
    return-object v1

    .line 4667
    :cond_0
    if-nez p1, :cond_1

    .line 4668
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4671
    :cond_1
    monitor-enter p0

    .line 4672
    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 4674
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedInputMethods:Ljava/util/List;

    monitor-exit p0

    goto :goto_0

    .line 4675
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPermittedInputMethodsForCurrentUser()Ljava/util/List;
    .locals 28

    .prologue
    .line 4682
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 4689
    .local v8, "currentUser":Landroid/content/pm/UserInfo;
    iget v0, v8, Landroid/content/pm/UserInfo;->id:I

    move/from16 v25, v0

    .line 4690
    .local v25, "userId":I
    monitor-enter p0

    .line 4691
    const/16 v23, 0x0

    .line 4695
    .local v23, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v22

    .line 4696
    .local v22, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v5

    .line 4697
    .local v5, "PROFILES_SIZE":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v5, :cond_3

    .line 4700
    move-object/from16 v0, v22

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v26

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v21

    .line 4701
    .local v21, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    .line 4702
    .local v4, "N":I
    const/16 v18, 0x0

    .local v18, "j":I
    move-object/from16 v24, v23

    .end local v23    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v24, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    move/from16 v0, v18

    if-ge v0, v4, :cond_2

    .line 4703
    :try_start_2
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 4704
    .local v6, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v10, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedInputMethods:Ljava/util/List;

    .line 4705
    .local v10, "fromAdmin":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v10, :cond_1

    .line 4706
    if-nez v24, :cond_0

    .line 4707
    new-instance v23, Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-direct {v0, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 4702
    .end local v24    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v23    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_2
    add-int/lit8 v18, v18, 0x1

    move-object/from16 v24, v23

    .end local v23    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_1

    .line 4683
    .end local v4    # "N":I
    .end local v5    # "PROFILES_SIZE":I
    .end local v6    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v8    # "currentUser":Landroid/content/pm/UserInfo;
    .end local v10    # "fromAdmin":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "i":I
    .end local v18    # "j":I
    .end local v21    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v22    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v24    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "userId":I
    :catch_0
    move-exception v9

    .line 4684
    .local v9, "e":Landroid/os/RemoteException;
    const-string v26, "DevicePolicyManagerService"

    const-string v27, "Failed to make remote calls to get current user"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4686
    const/16 v23, 0x0

    .line 4742
    .end local v9    # "e":Landroid/os/RemoteException;
    :goto_3
    return-object v23

    .line 4709
    .restart local v4    # "N":I
    .restart local v5    # "PROFILES_SIZE":I
    .restart local v6    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .restart local v8    # "currentUser":Landroid/content/pm/UserInfo;
    .restart local v10    # "fromAdmin":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "i":I
    .restart local v18    # "j":I
    .restart local v21    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .restart local v22    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v24    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v25    # "userId":I
    :cond_0
    :try_start_3
    move-object/from16 v0, v24

    invoke-interface {v0, v10}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_1
    move-object/from16 v23, v24

    .end local v24    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v23    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_2

    .line 4697
    .end local v6    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v10    # "fromAdmin":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v23    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v23, v24

    .end local v24    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v23    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 4716
    .end local v4    # "N":I
    .end local v18    # "j":I
    .end local v21    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :cond_3
    if-eqz v23, :cond_6

    .line 4717
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const-string v27, "input_method"

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/inputmethod/InputMethodManager;

    .line 4719
    .local v17, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual/range {v17 .. v17}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v16

    .line 4720
    .local v16, "imes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-wide v14

    .line 4722
    .local v14, "id":J
    :try_start_5
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v20

    .line 4723
    .local v20, "pm":Landroid/content/pm/IPackageManager;
    if-eqz v16, :cond_5

    .line 4724
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/inputmethod/InputMethodInfo;

    .line 4725
    .local v13, "ime":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v13}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v19

    .line 4727
    .local v19, "packageName":Ljava/lang/String;
    const/16 v26, 0x2000

    :try_start_6
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move/from16 v2, v26

    move/from16 v3, v25

    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 4730
    .local v7, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v0, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v26, v0

    and-int/lit8 v26, v26, 0x1

    if-eqz v26, :cond_4

    .line 4731
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    .line 4733
    .end local v7    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v9

    .line 4734
    .restart local v9    # "e":Landroid/os/RemoteException;
    :try_start_7
    const-string v26, "DevicePolicyManagerService"

    const-string v27, "Input method for missing package"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    .line 4739
    .end local v9    # "e":Landroid/os/RemoteException;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "ime":Landroid/view/inputmethod/InputMethodInfo;
    .end local v19    # "packageName":Ljava/lang/String;
    .end local v20    # "pm":Landroid/content/pm/IPackageManager;
    :catchall_0
    move-exception v26

    :try_start_8
    invoke-static {v14, v15}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v26

    .line 4743
    .end local v5    # "PROFILES_SIZE":I
    .end local v11    # "i":I
    .end local v14    # "id":J
    .end local v16    # "imes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v17    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    .end local v22    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_1
    move-exception v26

    :goto_5
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v26

    .line 4739
    .restart local v5    # "PROFILES_SIZE":I
    .restart local v11    # "i":I
    .restart local v14    # "id":J
    .restart local v16    # "imes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .restart local v17    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    .restart local v20    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v22    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_5
    :try_start_9
    invoke-static {v14, v15}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 4742
    .end local v14    # "id":J
    .end local v16    # "imes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v17    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    .end local v20    # "pm":Landroid/content/pm/IPackageManager;
    :cond_6
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_3

    .line 4743
    .end local v23    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "N":I
    .restart local v18    # "j":I
    .restart local v21    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .restart local v24    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_2
    move-exception v26

    move-object/from16 v23, v24

    .end local v24    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v23    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_5
.end method

.method public getProfileOwner(I)Landroid/content/ComponentName;
    .locals 2
    .param p1, "userHandle"    # I

    .prologue
    const/4 v0, 0x0

    .line 4028
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 4037
    :goto_0
    return-object v0

    .line 4032
    :cond_0
    monitor-enter p0

    .line 4033
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-eqz v1, :cond_1

    .line 4034
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v0, p1}, Lcom/android/server/devicepolicy/DeviceOwner;->getProfileOwnerComponent(I)Landroid/content/ComponentName;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 4036
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getProfileOwnerName(I)Ljava/lang/String;
    .locals 3
    .param p1, "userHandle"    # I

    .prologue
    const/4 v0, 0x0

    .line 4062
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 4072
    :goto_0
    return-object v0

    .line 4065
    :cond_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_USERS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4067
    monitor-enter p0

    .line 4068
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-eqz v1, :cond_1

    .line 4069
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v0, p1}, Lcom/android/server/devicepolicy/DeviceOwner;->getProfileOwnerName(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 4071
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getProfileWithMinimumFailedPasswordsForWipe(I)I
    .locals 3
    .param p1, "userHandle"    # I

    .prologue
    const/16 v1, -0x2710

    .line 2619
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v2, :cond_0

    .line 2625
    :goto_0
    return v1

    .line 2622
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2623
    monitor-enter p0

    .line 2624
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getAdminWithMinimumFailedPasswordsForWipeLocked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2625
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 2626
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;I)V
    .locals 10
    .param p1, "comp"    # Landroid/content/ComponentName;
    .param p2, "result"    # Landroid/os/RemoteCallback;
    .param p3, "userHandle"    # I

    .prologue
    const/4 v3, 0x0

    .line 3094
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v0, :cond_0

    .line 3124
    :goto_0
    return-void

    .line 3097
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3098
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BIND_DEVICE_ADMIN"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3101
    monitor-enter p0

    .line 3102
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 3103
    .local v9, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-nez v9, :cond_1

    .line 3105
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p2, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3108
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 3123
    .end local v9    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 3110
    .restart local v9    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    :try_start_3
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.app.action.DEVICE_ADMIN_DISABLE_REQUESTED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3111
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3112
    iget-object v0, v9, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3113
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p3}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v3, 0x0

    new-instance v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;

    invoke-direct {v4, p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/os/RemoteCallback;)V

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 3123
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 3106
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public getRestrictionsProvider(I)Landroid/content/ComponentName;
    .locals 3
    .param p1, "userHandle"    # I

    .prologue
    .line 4349
    monitor-enter p0

    .line 4350
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    .line 4351
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only the system can query the permission provider"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4355
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 4353
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v0

    .line 4354
    .local v0, "userData":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mRestrictionsProvider:Landroid/content/ComponentName;

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getScreenCaptureDisabled(Landroid/content/ComponentName;I)Z
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 3567
    iget-boolean v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_0

    .line 3584
    :goto_0
    return v4

    .line 3570
    :cond_0
    monitor-enter p0

    .line 3571
    if-eqz p1, :cond_2

    .line 3572
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 3573
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget-boolean v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableScreenCapture:Z

    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 3585
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 3576
    :cond_2
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 3577
    .local v3, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3578
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 3579
    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 3580
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v5, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableScreenCapture:Z

    if-eqz v5, :cond_3

    .line 3581
    const/4 v4, 0x1

    monitor-exit p0

    goto :goto_0

    .line 3578
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3584
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getStorageEncryption(Landroid/content/ComponentName;I)Z
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v5, 0x0

    .line 3457
    iget-boolean v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v4, :cond_0

    move v4, v5

    .line 3478
    :goto_0
    return v4

    .line 3460
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3461
    monitor-enter p0

    .line 3463
    if-eqz p1, :cond_2

    .line 3465
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 3466
    .local v1, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget-boolean v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    :goto_1
    monitor-exit p0

    goto :goto_0

    .line 3479
    .end local v1    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v1    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    move v4, v5

    .line 3466
    goto :goto_1

    .line 3471
    .end local v1    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 3472
    .local v3, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v4, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3473
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_4

    .line 3474
    iget-object v4, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    iget-boolean v4, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    if-eqz v4, :cond_3

    .line 3475
    const/4 v4, 0x1

    monitor-exit p0

    goto :goto_0

    .line 3473
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3478
    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v4, v5

    goto :goto_0
.end method

.method public getStorageEncryptionStatus(I)I
    .locals 1
    .param p1, "userHandle"    # I

    .prologue
    .line 3486
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v0, :cond_0

    .line 3489
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3490
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getEncryptionStatus()I

    move-result v0

    return v0
.end method

.method public getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;I)Ljava/util/List;
    .locals 20
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "agent"    # Landroid/content/ComponentName;
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/os/PersistableBundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4275
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 4276
    const/4 v14, 0x0

    .line 4328
    :goto_0
    return-object v14

    .line 4278
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 4279
    if-nez p2, :cond_1

    .line 4280
    new-instance v17, Ljava/lang/NullPointerException;

    const-string v18, "agent is null"

    invoke-direct/range {v17 .. v18}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 4283
    :cond_1
    monitor-enter p0

    .line 4284
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    .line 4285
    .local v7, "componentName":Ljava/lang/String;
    if-eqz p1, :cond_5

    .line 4286
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v6

    .line 4287
    .local v6, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-nez v6, :cond_2

    const/4 v14, 0x0

    monitor-exit p0

    goto :goto_0

    .line 4329
    .end local v6    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v7    # "componentName":Ljava/lang/String;
    :catchall_0
    move-exception v17

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v17

    .line 4288
    .restart local v6    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .restart local v7    # "componentName":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v0, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->trustAgentInfos:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;

    .line 4289
    .local v15, "trustAgentInfo":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;
    if-eqz v15, :cond_3

    iget-object v0, v15, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;->options:Landroid/os/PersistableBundle;

    move-object/from16 v17, v0

    if-nez v17, :cond_4

    :cond_3
    const/4 v14, 0x0

    monitor-exit p0

    goto :goto_0

    .line 4290
    :cond_4
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 4291
    .local v14, "result":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    iget-object v0, v15, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;->options:Landroid/os/PersistableBundle;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4292
    monitor-exit p0

    goto :goto_0

    .line 4296
    .end local v6    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v14    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    .end local v15    # "trustAgentInfo":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v13

    .line 4297
    .local v13, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v14, 0x0

    .line 4302
    .restart local v14    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    const/4 v5, 0x1

    .line 4303
    .local v5, "allAdminsHaveOptions":Z
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/UserInfo;

    .line 4304
    .local v16, "userInfo":Landroid/content/pm/UserInfo;
    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v12

    .line 4305
    .local v12, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v0, v12, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4306
    .local v3, "N":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    if-ge v9, v3, :cond_6

    .line 4307
    iget-object v0, v12, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 4308
    .local v4, "active":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v0, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x10

    if-eqz v17, :cond_9

    const/4 v8, 0x1

    .line 4310
    .local v8, "disablesTrust":Z
    :goto_3
    iget-object v0, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->trustAgentInfos:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;

    .line 4311
    .local v11, "info":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;
    if-eqz v11, :cond_b

    iget-object v0, v11, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;->options:Landroid/os/PersistableBundle;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    iget-object v0, v11, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;->options:Landroid/os/PersistableBundle;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_b

    .line 4312
    if-eqz v8, :cond_a

    .line 4313
    if-nez v14, :cond_7

    .line 4314
    new-instance v14, Ljava/util/ArrayList;

    .end local v14    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 4316
    .restart local v14    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    :cond_7
    iget-object v0, v11, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;->options:Landroid/os/PersistableBundle;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4306
    :cond_8
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 4308
    .end local v8    # "disablesTrust":Z
    .end local v11    # "info":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;
    :cond_9
    const/4 v8, 0x0

    goto :goto_3

    .line 4318
    .restart local v8    # "disablesTrust":Z
    .restart local v11    # "info":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;
    :cond_a
    const-string v17, "DevicePolicyManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Ignoring admin "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " because it has trust options but doesn\'t declare "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "KEYGUARD_DISABLE_TRUST_AGENTS"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 4322
    :cond_b
    if-eqz v8, :cond_8

    .line 4323
    const/4 v5, 0x0

    .line 4324
    goto/16 :goto_1

    .line 4328
    .end local v3    # "N":I
    .end local v4    # "active":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v8    # "disablesTrust":Z
    .end local v9    # "i":I
    .end local v11    # "info":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;
    .end local v12    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v16    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_c
    if-eqz v5, :cond_d

    .end local v14    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    :goto_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .restart local v14    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    :cond_d
    const/4 v14, 0x0

    goto :goto_5
.end method

.method getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .locals 2
    .param p1, "userHandle"    # I

    .prologue
    .line 990
    monitor-enter p0

    .line 991
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    .line 992
    .local v0, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    if-nez v0, :cond_0

    .line 993
    new-instance v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    .end local v0    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    invoke-direct {v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;-><init>(I)V

    .line 994
    .restart local v0    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 995
    invoke-direct {p0, v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->loadSettingsLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;I)V

    .line 997
    :cond_0
    monitor-exit p0

    return-object v0

    .line 998
    .end local v0    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .locals 3
    .param p1, "userHandle"    # I

    .prologue
    .line 1012
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1014
    .local v0, "ident":J
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1016
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public hasGrantedPolicy(Landroid/content/ComponentName;II)Z
    .locals 4
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "policyId"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 1846
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 1847
    const/4 v1, 0x0

    .line 1855
    :goto_0
    return v1

    .line 1849
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1850
    monitor-enter p0

    .line 1851
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1852
    .local v0, "administrator":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-nez v0, :cond_1

    .line 1853
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No active admin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1856
    .end local v0    # "administrator":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1855
    .restart local v0    # "administrator":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    :try_start_1
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1, p2}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public hasUserSetupCompleted()Z
    .locals 1

    .prologue
    .line 3965
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->hasUserSetupCompleted(I)Z

    move-result v0

    return v0
.end method

.method public installCaCert(Landroid/content/ComponentName;[B)Z
    .locals 12
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "certBuffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2914
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCanManageCaCerts(Landroid/content/ComponentName;)V

    .line 2918
    :try_start_0
    invoke-static {p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->parseCert([B)Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 2919
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/security/cert/Certificate;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    invoke-static {v10}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    .line 2928
    .local v8, "pemCert":[B
    new-instance v9, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    invoke-direct {v9, v10}, Landroid/os/UserHandle;-><init>(I)V

    .line 2929
    .local v9, "userHandle":Landroid/os/UserHandle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2931
    .local v4, "id":J
    :try_start_1
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v10, v9}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v7

    .line 2933
    .local v7, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_2
    invoke-virtual {v7}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v10

    invoke-interface {v10, v8}, Landroid/security/IKeyChainService;->installCaCertificate([B)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2934
    const/4 v10, 0x1

    .line 2938
    :try_start_3
    invoke-virtual {v7}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2944
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2946
    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    .end local v4    # "id":J
    .end local v7    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v8    # "pemCert":[B
    .end local v9    # "userHandle":Landroid/os/UserHandle;
    :goto_0
    return v10

    .line 2920
    :catch_0
    move-exception v0

    .line 2921
    .local v0, "ce":Ljava/security/cert/CertificateException;
    const-string v10, "DevicePolicyManagerService"

    const-string v11, "Problem converting cert"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2922
    const/4 v10, 0x0

    goto :goto_0

    .line 2923
    .end local v0    # "ce":Ljava/security/cert/CertificateException;
    :catch_1
    move-exception v6

    .line 2924
    .local v6, "ioe":Ljava/io/IOException;
    const-string v10, "DevicePolicyManagerService"

    const-string v11, "Problem reading cert"

    invoke-static {v10, v11, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2925
    const/4 v10, 0x0

    goto :goto_0

    .line 2935
    .end local v6    # "ioe":Ljava/io/IOException;
    .restart local v1    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v4    # "id":J
    .restart local v7    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v8    # "pemCert":[B
    .restart local v9    # "userHandle":Landroid/os/UserHandle;
    :catch_2
    move-exception v2

    .line 2936
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v10, "DevicePolicyManagerService"

    const-string v11, "installCaCertsToKeyChain(): "

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2938
    :try_start_5
    invoke-virtual {v7}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2944
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2946
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v7    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :goto_1
    const/4 v10, 0x0

    goto :goto_0

    .line 2938
    .restart local v7    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catchall_0
    move-exception v10

    :try_start_6
    invoke-virtual {v7}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    throw v10
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2940
    .end local v7    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catch_3
    move-exception v3

    .line 2941
    .local v3, "e1":Ljava/lang/InterruptedException;
    :try_start_7
    const-string v10, "DevicePolicyManagerService"

    const-string v11, "installCaCertsToKeyChain(): "

    invoke-static {v10, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2942
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->interrupt()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2944
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .end local v3    # "e1":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v10

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10
.end method

.method public installKeyPair(Landroid/content/ComponentName;[B[BLjava/lang/String;)Z
    .locals 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "privKey"    # [B
    .param p3, "cert"    # [B
    .param p4, "alias"    # Ljava/lang/String;

    .prologue
    .line 2980
    if-nez p1, :cond_0

    .line 2981
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "ComponentName is null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2983
    :cond_0
    monitor-enter p0

    .line 2984
    const/4 v6, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 2985
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2986
    new-instance v5, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 2987
    .local v5, "userHandle":Landroid/os/UserHandle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2989
    .local v2, "id":J
    :try_start_1
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v4

    .line 2991
    .local v4, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_2
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v1

    .line 2992
    .local v1, "keyChain":Landroid/security/IKeyChainService;
    invoke-interface {v1, p2, p3, p4}, Landroid/security/IKeyChainService;->installKeyPair([B[BLjava/lang/String;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v6

    .line 2996
    :try_start_3
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 3002
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3004
    .end local v1    # "keyChain":Landroid/security/IKeyChainService;
    .end local v4    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :goto_0
    return v6

    .line 2985
    .end local v2    # "id":J
    .end local v5    # "userHandle":Landroid/os/UserHandle;
    :catchall_0
    move-exception v6

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    .line 2993
    .restart local v2    # "id":J
    .restart local v4    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v5    # "userHandle":Landroid/os/UserHandle;
    :catch_0
    move-exception v0

    .line 2994
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_5
    const-string v6, "DevicePolicyManagerService"

    const-string v7, "Installing certificate"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2996
    :try_start_6
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 3002
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3004
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v4    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :goto_1
    const/4 v6, 0x0

    goto :goto_0

    .line 2996
    .restart local v4    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catchall_1
    move-exception v6

    :try_start_7
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    throw v6
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2998
    .end local v4    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catch_1
    move-exception v0

    .line 2999
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_8
    const-string v6, "DevicePolicyManagerService"

    const-string v7, "Interrupted while installing certificate"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3000
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 3002
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_2
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public isActivePasswordSufficient(I)Z
    .locals 7
    .param p1, "userHandle"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2516
    iget-boolean v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_0

    .line 2541
    :goto_0
    return v3

    .line 2519
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2521
    monitor-enter p0

    .line 2526
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 2527
    .local v1, "parent":Landroid/content/pm/UserInfo;
    if-nez v1, :cond_2

    move v0, p1

    .line 2528
    .local v0, "id":I
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .line 2532
    .local v2, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 2534
    iget v5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    const/4 v6, 0x0

    invoke-virtual {p0, v6, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v6

    if-lt v5, v6, :cond_1

    iget v5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    const/4 v6, 0x0

    invoke-virtual {p0, v6, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 2536
    :cond_1
    monitor-exit p0

    move v3, v4

    goto :goto_0

    .line 2527
    .end local v0    # "id":I
    .end local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :cond_2
    iget v0, v1, Landroid/content/pm/UserInfo;->id:I

    goto :goto_1

    .line 2538
    .restart local v0    # "id":I
    .restart local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :cond_3
    iget v5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    const/high16 v6, 0x60000

    if-eq v5, v6, :cond_4

    .line 2539
    monitor-exit p0

    goto :goto_0

    .line 2547
    .end local v0    # "id":I
    .end local v1    # "parent":Landroid/content/pm/UserInfo;
    .end local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2541
    .restart local v0    # "id":I
    .restart local v1    # "parent":Landroid/content/pm/UserInfo;
    .restart local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :cond_4
    :try_start_1
    iget v5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    const/4 v6, 0x0

    invoke-virtual {p0, v6, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I

    move-result v6

    if-lt v5, v6, :cond_5

    iget v5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    const/4 v6, 0x0

    invoke-virtual {p0, v6, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I

    move-result v6

    if-lt v5, v6, :cond_5

    iget v5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    const/4 v6, 0x0

    invoke-virtual {p0, v6, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordMinimumLetters(Landroid/content/ComponentName;I)I

    move-result v6

    if-lt v5, v6, :cond_5

    iget v5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    const/4 v6, 0x0

    invoke-virtual {p0, v6, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I

    move-result v6

    if-lt v5, v6, :cond_5

    iget v5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    const/4 v6, 0x0

    invoke-virtual {p0, v6, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I

    move-result v6

    if-lt v5, v6, :cond_5

    iget v5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    const/4 v6, 0x0

    invoke-virtual {p0, v6, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I

    move-result v6

    if-lt v5, v6, :cond_5

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_5
    move v3, v4

    goto :goto_2
.end method

.method public isAdminActive(Landroid/content/ComponentName;I)Z
    .locals 2
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v0, 0x0

    .line 1824
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 1829
    :goto_0
    return v0

    .line 1827
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1828
    monitor-enter p0

    .line 1829
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 1830
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4990
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 4991
    .local v0, "callingUserId":I
    monitor-enter p0

    .line 4992
    if-nez p1, :cond_0

    .line 4993
    :try_start_0
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "ComponentName is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 5008
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 4995
    :cond_0
    const/4 v5, -0x1

    :try_start_1
    invoke-virtual {p0, p1, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 4997
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 4999
    .local v2, "id":J
    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 5000
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    invoke-interface {v1, p2, v0}, Landroid/content/pm/IPackageManager;->getApplicationHiddenSettingAsUser(Ljava/lang/String;I)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v5

    .line 5005
    :try_start_3
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5007
    .end local v1    # "pm":Landroid/content/pm/IPackageManager;
    :goto_0
    return v5

    .line 5001
    :catch_0
    move-exception v4

    .line 5003
    .local v4, "re":Landroid/os/RemoteException;
    :try_start_4
    const-string v5, "DevicePolicyManagerService"

    const-string v6, "Failed to getApplicationHiddenSettingAsUser"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 5005
    :try_start_5
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 5007
    const/4 v5, 0x0

    monitor-exit p0

    goto :goto_0

    .line 5005
    .end local v4    # "re":Landroid/os/RemoteException;
    :catchall_1
    move-exception v5

    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public isDeviceOwner(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 3798
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 3802
    :goto_0
    return v0

    .line 3801
    :cond_0
    monitor-enter p0

    .line 3802
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DeviceOwner;->hasDeviceOwner()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DeviceOwner;->getDeviceOwnerPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 3805
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isLockTaskPermitted(Ljava/lang/String;)Z
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 5310
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 5311
    .local v3, "uid":I
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 5312
    .local v4, "userHandle":I
    invoke-virtual {p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .line 5313
    .local v2, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    monitor-enter p0

    .line 5314
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 5315
    iget-object v5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5319
    .local v1, "lockTaskPackage":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5320
    const/4 v5, 0x1

    monitor-exit p0

    .line 5324
    .end local v1    # "lockTaskPackage":Ljava/lang/String;
    :goto_1
    return v5

    .line 5314
    .restart local v1    # "lockTaskPackage":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5323
    .end local v1    # "lockTaskPackage":Ljava/lang/String;
    :cond_1
    monitor-exit p0

    .line 5324
    const/4 v5, 0x0

    goto :goto_1

    .line 5323
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public isMasterVolumeMuted(Landroid/content/ComponentName;)Z
    .locals 4
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 5429
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 5431
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    monitor-enter p0

    .line 5432
    if-nez p1, :cond_0

    .line 5433
    :try_start_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "ComponentName is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5440
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 5435
    :cond_0
    const/4 v2, -0x1

    :try_start_1
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 5437
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 5439
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMasterMute()Z

    move-result v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v2
.end method

.method public isRemovingAdmin(Landroid/content/ComponentName;I)Z
    .locals 2
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1835
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 1836
    const/4 v1, 0x0

    .line 1841
    :goto_0
    return v1

    .line 1838
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1839
    monitor-enter p0

    .line 1840
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v0

    .line 1841
    .local v0, "policyData":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mRemovingAdmins:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit p0

    goto :goto_0

    .line 1842
    .end local v0    # "policyData":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 5193
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 5195
    .local v4, "userId":I
    monitor-enter p0

    .line 5196
    if-eqz p1, :cond_0

    .line 5197
    const/4 v5, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 5200
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 5202
    .local v0, "id":J
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 5203
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    invoke-interface {v2, p2, v4}, Landroid/content/pm/IPackageManager;->getBlockUninstallForUser(Ljava/lang/String;I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    .line 5208
    :try_start_2
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5211
    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    :goto_0
    return v5

    .line 5204
    :catch_0
    move-exception v3

    .line 5206
    .local v3, "re":Landroid/os/RemoteException;
    :try_start_3
    const-string v5, "DevicePolicyManagerService"

    const-string v6, "Failed to getBlockUninstallForUser"

    invoke-static {v5, v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5208
    :try_start_4
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 5210
    monitor-exit p0

    .line 5211
    const/4 v5, 0x0

    goto :goto_0

    .line 5208
    .end local v3    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v5

    .line 5210
    .end local v0    # "id":J
    :catchall_1
    move-exception v5

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5
.end method

.method loadDeviceOwner()V
    .locals 1

    .prologue
    .line 1044
    monitor-enter p0

    .line 1045
    :try_start_0
    invoke-static {}, Lcom/android/server/devicepolicy/DeviceOwner;->load()Lcom/android/server/devicepolicy/DeviceOwner;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    .line 1046
    monitor-exit p0

    .line 1047
    return-void

    .line 1046
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public lockNow()V
    .locals 2

    .prologue
    .line 2869
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v0, :cond_0

    .line 2879
    :goto_0
    return-void

    .line 2872
    :cond_0
    monitor-enter p0

    .line 2875
    const/4 v0, 0x0

    const/4 v1, 0x3

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 2877
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->lockNowUnchecked()V

    .line 2878
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notifyLockTaskModeChanged(ZLjava/lang/String;I)V
    .locals 8
    .param p1, "isEnabled"    # Z
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    .line 5329
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const/16 v7, 0x3e8

    if-eq v6, v7, :cond_0

    .line 5330
    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "notifyLockTaskModeChanged can only be called by system"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 5332
    :cond_0
    monitor-enter p0

    .line 5333
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v5

    .line 5334
    .local v5, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 5335
    .local v1, "adminExtras":Landroid/os/Bundle;
    const-string v6, "android.app.extra.LOCK_TASK_PACKAGE"

    invoke-virtual {v1, v6, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5336
    iget-object v6, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 5337
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v6, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v6}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDeviceOwner(Ljava/lang/String;)Z

    move-result v3

    .line 5338
    .local v3, "ownsDevice":Z
    invoke-virtual {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwner(I)Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwner(I)Landroid/content/ComponentName;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v7}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v4, 0x1

    .line 5340
    .local v4, "ownsProfile":Z
    :goto_1
    if-nez v3, :cond_2

    if-eqz v4, :cond_1

    .line 5341
    :cond_2
    if-eqz p1, :cond_4

    .line 5342
    const-string v6, "android.app.action.LOCK_TASK_ENTERING"

    const/4 v7, 0x0

    invoke-virtual {p0, v0, v6, v1, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    .line 5349
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v1    # "adminExtras":Landroid/os/Bundle;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "ownsDevice":Z
    .end local v4    # "ownsProfile":Z
    .end local v5    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 5338
    .restart local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .restart local v1    # "adminExtras":Landroid/os/Bundle;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "ownsDevice":Z
    .restart local v5    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 5345
    .restart local v4    # "ownsProfile":Z
    :cond_4
    :try_start_1
    const-string v6, "android.app.action.LOCK_TASK_EXITING"

    invoke-virtual {p0, v0, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V

    goto :goto_0

    .line 5349
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v3    # "ownsDevice":Z
    .end local v4    # "ownsProfile":Z
    :cond_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5350
    return-void
.end method

.method public packageHasActiveAdmins(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 1881
    iget-boolean v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v3, :cond_0

    move v3, v4

    .line 1893
    :goto_0
    return v3

    .line 1884
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1885
    monitor-enter p0

    .line 1886
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .line 1887
    .local v2, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1888
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 1889
    iget-object v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    iget-object v3, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1890
    const/4 v3, 0x1

    monitor-exit p0

    goto :goto_0

    .line 1894
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1888
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1893
    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v4

    goto :goto_0
.end method

.method public removeActiveAdmin(Landroid/content/ComponentName;I)V
    .locals 6
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1898
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 1922
    :goto_0
    return-void

    .line 1901
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1902
    monitor-enter p0

    .line 1903
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1904
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-nez v0, :cond_1

    .line 1905
    monitor-exit p0

    goto :goto_0

    .line 1921
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1907
    .restart local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    if-eq v1, v4, :cond_3

    .line 1909
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDeviceOwner(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1910
    monitor-exit p0

    goto :goto_0

    .line 1912
    :cond_2
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.MANAGE_DEVICE_ADMINS"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1915
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 1917
    .local v2, "ident":J
    :try_start_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->removeActiveAdminLocked(Landroid/content/ComponentName;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1919
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1921
    monitor-exit p0

    goto :goto_0

    .line 1919
    :catchall_1
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method removeActiveAdminLocked(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1242
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1243
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v0, :cond_0

    .line 1244
    monitor-enter p0

    .line 1245
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mRemovingAdmins:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1246
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1247
    const-string v1, "android.app.action.DEVICE_ADMIN_DISABLED"

    new-instance v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Landroid/content/ComponentName;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 1271
    :cond_0
    return-void

    .line 1246
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public removeCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 2158
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 2159
    .local v4, "userId":I
    const/4 v1, 0x0

    .line 2161
    .local v1, "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    .line 2162
    const/4 v6, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2164
    .local v0, "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v6, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    if-nez v6, :cond_1

    .line 2165
    monitor-exit p0

    .line 2179
    :cond_0
    :goto_0
    return v5

    .line 2167
    :cond_1
    iget-object v3, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    .line 2168
    .local v3, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2169
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2170
    .end local v1    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v2, "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_1
    invoke-direct {p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 2172
    .end local v2    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2174
    if-eqz v1, :cond_0

    .line 2175
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mLocalService:Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;

    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->notifyCrossProfileProvidersChanged(ILjava/util/List;)V
    invoke-static {v5, v4, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->access$800(Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;ILjava/util/List;)V

    .line 2176
    const/4 v5, 0x1

    goto :goto_0

    .line 2172
    .end local v0    # "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v3    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v5

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .end local v1    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v0    # "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .restart local v2    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_1
.end method

.method public removeUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    .locals 4
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 4802
    monitor-enter p0

    .line 4803
    if-nez p1, :cond_0

    .line 4804
    :try_start_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "ComponentName is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4814
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 4806
    :cond_0
    const/4 v2, -0x2

    :try_start_1
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 4808
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 4810
    .local v0, "id":J
    :try_start_2
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->removeUser(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v2

    .line 4812
    :try_start_3
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    monitor-exit p0

    return v2

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method removeUserData(I)V
    .locals 5
    .param p1, "userHandle"    # I

    .prologue
    .line 1021
    monitor-enter p0

    .line 1022
    if-nez p1, :cond_0

    .line 1023
    :try_start_0
    const-string v2, "DevicePolicyManagerService"

    const-string v3, "Tried to remove device policy file for user 0! Ignoring."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    monitor-exit p0

    .line 1041
    :goto_0
    return-void

    .line 1026
    :cond_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-eqz v2, :cond_1

    .line 1027
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v2, p1}, Lcom/android/server/devicepolicy/DeviceOwner;->removeProfileOwner(I)V

    .line 1028
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v2}, Lcom/android/server/devicepolicy/DeviceOwner;->writeOwnerFile()V

    .line 1031
    :cond_1
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    .line 1032
    .local v0, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    if-eqz v0, :cond_2

    .line 1033
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1035
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "device_policies.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1037
    .local v1, "policyFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1038
    const-string v2, "DevicePolicyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removed device policy file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1040
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateScreenCaptureDisabledInWindowManager(IZ)V

    goto :goto_0

    .line 1039
    .end local v0    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v1    # "policyFile":Ljava/io/File;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public reportFailedPasswordAttempt(I)V
    .locals 10
    .param p1, "userHandle"    # I

    .prologue
    const/4 v3, 0x0

    .line 3196
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3197
    const-string v7, "report failed password attempt"

    invoke-direct {p0, p1, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceNotManagedProfile(ILjava/lang/String;)V

    .line 3198
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3201
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3203
    .local v0, "ident":J
    const/4 v6, 0x0

    .line 3204
    .local v6, "wipeData":Z
    const/4 v2, 0x0

    .line 3205
    .local v2, "identifier":I
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3206
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 3207
    .local v4, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget v7, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    .line 3208
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 3209
    iget-boolean v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-eqz v7, :cond_2

    .line 3210
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getAdminWithMinimumFailedPasswordsForWipeLocked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v5

    .line 3212
    .local v5, "strictestAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v5, :cond_0

    iget v3, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    .line 3214
    .local v3, "max":I
    :cond_0
    if-lez v3, :cond_1

    iget v7, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    if-lt v7, v3, :cond_1

    .line 3218
    const/4 v6, 0x1

    .line 3219
    invoke-virtual {v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 3221
    :cond_1
    const-string v7, "android.app.action.ACTION_PASSWORD_FAILED"

    const/4 v8, 0x1

    invoke-direct {p0, v7, v8, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandToSelfAndProfilesLocked(Ljava/lang/String;II)V

    .line 3225
    .end local v3    # "max":I
    .end local v5    # "strictestAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3226
    if-eqz v6, :cond_3

    .line 3228
    const/4 v7, 0x0

    :try_start_2
    const-string v8, "reportFailedPasswordAttempt()"

    invoke-direct {p0, v7, v2, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->wipeDeviceOrUserLocked(ZILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3232
    :cond_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3234
    return-void

    .line 3225
    .end local v4    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v7

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3232
    :catchall_1
    move-exception v7

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
.end method

.method public reportSuccessfulPasswordAttempt(I)V
    .locals 6
    .param p1, "userHandle"    # I

    .prologue
    .line 3237
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3238
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3241
    monitor-enter p0

    .line 3242
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .line 3243
    .local v2, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    if-nez v3, :cond_0

    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    if-ltz v3, :cond_2

    .line 3244
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 3246
    .local v0, "ident":J
    const/4 v3, 0x0

    :try_start_1
    iput v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    .line 3247
    const/4 v3, -0x1

    iput v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    .line 3248
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 3249
    iget-boolean v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-eqz v3, :cond_1

    .line 3250
    const-string v3, "android.app.action.ACTION_PASSWORD_SUCCEEDED"

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandToSelfAndProfilesLocked(Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3255
    :cond_1
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3258
    .end local v0    # "ident":J
    :cond_2
    monitor-exit p0

    .line 3259
    return-void

    .line 3255
    .restart local v0    # "ident":J
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 3258
    .end local v0    # "ident":J
    .end local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_1
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3
.end method

.method public resetPassword(Ljava/lang/String;II)Z
    .locals 34
    .param p1, "passwordOrNull"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 2659
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    move/from16 v31, v0

    if-nez v31, :cond_0

    .line 2660
    const/16 v31, 0x0

    .line 2790
    :goto_0
    return v31

    .line 2662
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2663
    const-string v31, "reset the password"

    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceNotManagedProfile(ILjava/lang/String;)V

    .line 2665
    if-eqz p1, :cond_1

    move-object/from16 v23, p1

    .line 2668
    .local v23, "password":Ljava/lang/String;
    :goto_1
    monitor-enter p0

    .line 2671
    const/16 v31, 0x0

    const/16 v32, 0x2

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 2673
    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v25

    .line 2674
    .local v25, "quality":I
    if-eqz v25, :cond_3

    .line 2675
    invoke-static/range {v23 .. v23}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordQuality(Ljava/lang/String;)I

    move-result v26

    .line 2676
    .local v26, "realQuality":I
    move/from16 v0, v26

    move/from16 v1, v25

    if-ge v0, v1, :cond_2

    const/high16 v31, 0x60000

    move/from16 v0, v25

    move/from16 v1, v31

    if-eq v0, v1, :cond_2

    .line 2678
    const-string v31, "DevicePolicyManagerService"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "resetPassword: password quality 0x"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " does not meet required quality 0x"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2682
    const/16 v31, 0x0

    monitor-exit p0

    goto :goto_0

    .line 2756
    .end local v25    # "quality":I
    .end local v26    # "realQuality":I
    :catchall_0
    move-exception v31

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v31

    .line 2665
    .end local v23    # "password":Ljava/lang/String;
    :cond_1
    const-string v23, ""

    goto :goto_1

    .line 2684
    .restart local v23    # "password":Ljava/lang/String;
    .restart local v25    # "quality":I
    .restart local v26    # "realQuality":I
    :cond_2
    :try_start_1
    move/from16 v0, v26

    move/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 2686
    .end local v26    # "realQuality":I
    :cond_3
    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v9

    .line 2687
    .local v9, "length":I
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v31

    move/from16 v0, v31

    if-ge v0, v9, :cond_4

    .line 2688
    const-string v31, "DevicePolicyManagerService"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "resetPassword: password length "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " does not meet required length "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2690
    const/16 v31, 0x0

    monitor-exit p0

    goto/16 :goto_0

    .line 2692
    :cond_4
    const/high16 v31, 0x60000

    move/from16 v0, v25

    move/from16 v1, v31

    if-ne v0, v1, :cond_e

    .line 2693
    const/4 v12, 0x0

    .line 2694
    .local v12, "letters":I
    const/16 v29, 0x0

    .line 2695
    .local v29, "uppercase":I
    const/4 v13, 0x0

    .line 2696
    .local v13, "lowercase":I
    const/16 v22, 0x0

    .line 2697
    .local v22, "numbers":I
    const/16 v28, 0x0

    .line 2698
    .local v28, "symbols":I
    const/16 v21, 0x0

    .line 2699
    .local v21, "nonletter":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v31

    move/from16 v0, v31

    if-ge v8, v0, :cond_8

    .line 2700
    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 2701
    .local v6, "c":C
    const/16 v31, 0x41

    move/from16 v0, v31

    if-lt v6, v0, :cond_5

    const/16 v31, 0x5a

    move/from16 v0, v31

    if-gt v6, v0, :cond_5

    .line 2702
    add-int/lit8 v12, v12, 0x1

    .line 2703
    add-int/lit8 v29, v29, 0x1

    .line 2699
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 2704
    :cond_5
    const/16 v31, 0x61

    move/from16 v0, v31

    if-lt v6, v0, :cond_6

    const/16 v31, 0x7a

    move/from16 v0, v31

    if-gt v6, v0, :cond_6

    .line 2705
    add-int/lit8 v12, v12, 0x1

    .line 2706
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 2707
    :cond_6
    const/16 v31, 0x30

    move/from16 v0, v31

    if-lt v6, v0, :cond_7

    const/16 v31, 0x39

    move/from16 v0, v31

    if-gt v6, v0, :cond_7

    .line 2708
    add-int/lit8 v22, v22, 0x1

    .line 2709
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 2711
    :cond_7
    add-int/lit8 v28, v28, 0x1

    .line 2712
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 2715
    .end local v6    # "c":C
    :cond_8
    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordMinimumLetters(Landroid/content/ComponentName;I)I

    move-result v14

    .line 2716
    .local v14, "neededLetters":I
    if-ge v12, v14, :cond_9

    .line 2717
    const-string v31, "DevicePolicyManagerService"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "resetPassword: number of letters "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " does not meet required number of letters "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2719
    const/16 v31, 0x0

    monitor-exit p0

    goto/16 :goto_0

    .line 2721
    :cond_9
    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I

    move-result v17

    .line 2722
    .local v17, "neededNumbers":I
    move/from16 v0, v22

    move/from16 v1, v17

    if-ge v0, v1, :cond_a

    .line 2723
    const-string v31, "DevicePolicyManagerService"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "resetPassword: number of numerical digits "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " does not meet required number of numerical digits "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2726
    const/16 v31, 0x0

    monitor-exit p0

    goto/16 :goto_0

    .line 2728
    :cond_a
    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I

    move-result v15

    .line 2729
    .local v15, "neededLowerCase":I
    if-ge v13, v15, :cond_b

    .line 2730
    const-string v31, "DevicePolicyManagerService"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "resetPassword: number of lowercase letters "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " does not meet required number of lowercase letters "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2733
    const/16 v31, 0x0

    monitor-exit p0

    goto/16 :goto_0

    .line 2735
    :cond_b
    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I

    move-result v19

    .line 2736
    .local v19, "neededUpperCase":I
    move/from16 v0, v29

    move/from16 v1, v19

    if-ge v0, v1, :cond_c

    .line 2737
    const-string v31, "DevicePolicyManagerService"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "resetPassword: number of uppercase letters "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " does not meet required number of uppercase letters "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2740
    const/16 v31, 0x0

    monitor-exit p0

    goto/16 :goto_0

    .line 2742
    :cond_c
    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I

    move-result v18

    .line 2743
    .local v18, "neededSymbols":I
    move/from16 v0, v28

    move/from16 v1, v18

    if-ge v0, v1, :cond_d

    .line 2744
    const-string v31, "DevicePolicyManagerService"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "resetPassword: number of special symbols "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " does not meet required number of special symbols "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2746
    const/16 v31, 0x0

    monitor-exit p0

    goto/16 :goto_0

    .line 2748
    :cond_d
    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I

    move-result v16

    .line 2749
    .local v16, "neededNonLetter":I
    move/from16 v0, v21

    move/from16 v1, v16

    if-ge v0, v1, :cond_e

    .line 2750
    const-string v31, "DevicePolicyManagerService"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "resetPassword: number of non-letter characters "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " does not meet required number of non-letter characters "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2753
    const/16 v31, 0x0

    monitor-exit p0

    goto/16 :goto_0

    .line 2756
    .end local v8    # "i":I
    .end local v12    # "letters":I
    .end local v13    # "lowercase":I
    .end local v14    # "neededLetters":I
    .end local v15    # "neededLowerCase":I
    .end local v16    # "neededNonLetter":I
    .end local v17    # "neededNumbers":I
    .end local v18    # "neededSymbols":I
    .end local v19    # "neededUpperCase":I
    .end local v21    # "nonletter":I
    .end local v22    # "numbers":I
    .end local v28    # "symbols":I
    .end local v29    # "uppercase":I
    :cond_e
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2758
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 2759
    .local v7, "callingUid":I
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v24

    .line 2760
    .local v24, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    move/from16 v31, v0

    if-ltz v31, :cond_f

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-eq v0, v7, :cond_f

    .line 2761
    const-string v31, "DevicePolicyManagerService"

    const-string v32, "resetPassword: already set by another uid and not entered by user"

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2762
    const/16 v31, 0x0

    goto/16 :goto_0

    .line 2767
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 2769
    .local v10, "ident":J
    :try_start_2
    new-instance v30, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-direct/range {v30 .. v31}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 2770
    .local v30, "utils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_12

    .line 2771
    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    move/from16 v2, v25

    move/from16 v3, v31

    move/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;IZI)V

    .line 2775
    :goto_4
    and-int/lit8 v31, p2, 0x1

    if-eqz v31, :cond_13

    const/16 v27, 0x1

    .line 2776
    .local v27, "requireEntry":Z
    :goto_5
    if-eqz v27, :cond_10

    .line 2777
    const/16 v31, -0x1

    invoke-virtual/range {v30 .. v31}, Lcom/android/internal/widget/LockPatternUtils;->requireCredentialEntry(I)V

    .line 2779
    :cond_10
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2780
    if-eqz v27, :cond_14

    move/from16 v20, v7

    .line 2781
    .local v20, "newOwner":I
    :goto_6
    :try_start_3
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    move/from16 v31, v0

    move/from16 v0, v31

    move/from16 v1, v20

    if-eq v0, v1, :cond_11

    .line 2782
    move/from16 v0, v20

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    .line 2783
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 2785
    :cond_11
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2787
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2790
    const/16 v31, 0x1

    goto/16 :goto_0

    .line 2773
    .end local v20    # "newOwner":I
    .end local v27    # "requireEntry":Z
    :cond_12
    const/16 v31, 0x0

    :try_start_4
    move-object/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(ZI)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    .line 2787
    .end local v30    # "utils":Lcom/android/internal/widget/LockPatternUtils;
    :catchall_1
    move-exception v31

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v31

    .line 2775
    .restart local v30    # "utils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_13
    const/16 v27, 0x0

    goto :goto_5

    .line 2780
    .restart local v27    # "requireEntry":Z
    :cond_14
    const/16 v20, -0x1

    goto :goto_6

    .line 2785
    .restart local v20    # "newOwner":I
    :catchall_2
    move-exception v31

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v31
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
.end method

.method sendAdminCommandLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V
    .locals 1
    .param p1, "admin"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 1184
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 1185
    return-void
.end method

.method sendAdminCommandLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V
    .locals 1
    .param p1, "admin"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 1188
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/BroadcastReceiver;)V

    .line 1189
    return-void
.end method

.method sendAdminCommandLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/BroadcastReceiver;)V
    .locals 9
    .param p1, "admin"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "adminExtras"    # Landroid/os/Bundle;
    .param p4, "result"    # Landroid/content/BroadcastReceiver;

    .prologue
    const/4 v3, 0x0

    .line 1196
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1197
    .local v1, "intent":Landroid/content/Intent;
    iget-object v0, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1198
    const-string v0, "android.app.action.ACTION_PASSWORD_EXPIRING"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1199
    const-string v0, "expiration"

    iget-wide v4, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    invoke-virtual {v1, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1201
    :cond_0
    if-eqz p3, :cond_1

    .line 1202
    invoke-virtual {v1, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1204
    :cond_1
    if-eqz p4, :cond_2

    .line 1205
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v6, -0x1

    move-object v4, p4

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1210
    :goto_0
    return-void

    .line 1208
    :cond_2
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method sendAdminCommandLocked(Ljava/lang/String;II)V
    .locals 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "reqPolicy"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 1216
    invoke-virtual {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 1217
    .local v3, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v4, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1218
    .local v1, "count":I
    if-lez v1, :cond_1

    .line 1219
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1220
    iget-object v4, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 1221
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v4, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v4, p2}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1222
    invoke-virtual {p0, v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V

    .line 1219
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1226
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public setAccountManagementDisabled(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "disabled"    # Z

    .prologue
    .line 5123
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 5139
    :goto_0
    return-void

    .line 5126
    :cond_0
    monitor-enter p0

    .line 5127
    if-nez p1, :cond_1

    .line 5128
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5138
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 5130
    :cond_1
    const/4 v1, -0x1

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 5132
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz p3, :cond_2

    .line 5133
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5137
    :goto_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 5138
    monitor-exit p0

    goto :goto_0

    .line 5135
    :cond_2
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public setActiveAdmin(Landroid/content/ComponentName;ZI)V
    .locals 1
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "refreshing"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 1773
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v0, :cond_0

    .line 1777
    :goto_0
    return-void

    .line 1776
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setActiveAdmin(Landroid/content/ComponentName;ZILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public setActivePasswordState(IIIIIIIII)V
    .locals 6
    .param p1, "quality"    # I
    .param p2, "length"    # I
    .param p3, "letters"    # I
    .param p4, "uppercase"    # I
    .param p5, "lowercase"    # I
    .param p6, "numbers"    # I
    .param p7, "symbols"    # I
    .param p8, "nonletter"    # I
    .param p9, "userHandle"    # I

    .prologue
    .line 3128
    iget-boolean v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v3, :cond_0

    .line 3170
    :goto_0
    return-void

    .line 3131
    :cond_0
    invoke-direct {p0, p9}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3132
    const-string v3, "set the active password"

    invoke-direct {p0, p9, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceNotManagedProfile(ILjava/lang/String;)V

    .line 3134
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3136
    invoke-virtual {p0, p9}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .line 3138
    .local v2, "p":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    invoke-static {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->validateQualityConstant(I)V

    .line 3140
    monitor-enter p0

    .line 3141
    :try_start_0
    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    if-ne v3, p1, :cond_1

    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    if-ne v3, p2, :cond_1

    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    if-nez v3, :cond_1

    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    if-ne v3, p3, :cond_1

    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    if-ne v3, p4, :cond_1

    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    if-ne v3, p5, :cond_1

    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    if-ne v3, p6, :cond_1

    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    if-ne v3, p7, :cond_1

    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    if-eq v3, p8, :cond_2

    .line 3148
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 3150
    .local v0, "ident":J
    :try_start_1
    iput p1, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    .line 3151
    iput p2, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    .line 3152
    iput p3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    .line 3153
    iput p5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    .line 3154
    iput p4, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    .line 3155
    iput p6, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    .line 3156
    iput p7, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    .line 3157
    iput p8, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    .line 3158
    const/4 v3, 0x0

    iput v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    .line 3159
    invoke-direct {p0, p9}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 3160
    invoke-direct {p0, p9}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updatePasswordExpirationsLocked(I)V

    .line 3161
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setExpirationAlarmCheckLocked(Landroid/content/Context;Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    .line 3162
    const-string v3, "android.app.action.ACTION_PASSWORD_CHANGED"

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4, p9}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandToSelfAndProfilesLocked(Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3166
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3169
    .end local v0    # "ident":J
    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 3166
    .restart local v0    # "ident":J
    :catchall_1
    move-exception v3

    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;Z)Z
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "hidden"    # Z

    .prologue
    .line 4967
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 4968
    .local v0, "callingUserId":I
    monitor-enter p0

    .line 4969
    if-nez p1, :cond_0

    .line 4970
    :try_start_0
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "ComponentName is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 4985
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 4972
    :cond_0
    const/4 v5, -0x1

    :try_start_1
    invoke-virtual {p0, p1, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 4974
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 4976
    .local v2, "id":J
    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 4977
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    invoke-interface {v1, p2, p3, v0}, Landroid/content/pm/IPackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v5

    .line 4982
    :try_start_3
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4984
    .end local v1    # "pm":Landroid/content/pm/IPackageManager;
    :goto_0
    return v5

    .line 4978
    :catch_0
    move-exception v4

    .line 4980
    .local v4, "re":Landroid/os/RemoteException;
    :try_start_4
    const-string v5, "DevicePolicyManagerService"

    const-string v6, "Failed to setApplicationHiddenSetting"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4982
    :try_start_5
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 4984
    const/4 v5, 0x0

    monitor-exit p0

    goto :goto_0

    .line 4982
    .end local v4    # "re":Landroid/os/RemoteException;
    :catchall_1
    move-exception v5

    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public setApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "settings"    # Landroid/os/Bundle;

    .prologue
    .line 4234
    new-instance v2, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 4236
    .local v2, "userHandle":Landroid/os/UserHandle;
    monitor-enter p0

    .line 4237
    if-nez p1, :cond_0

    .line 4238
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4248
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 4240
    :cond_0
    const/4 v3, -0x1

    :try_start_1
    invoke-virtual {p0, p1, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 4242
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 4244
    .local v0, "id":J
    :try_start_2
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, p2, p3, v2}, Landroid/os/UserManager;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4246
    :try_start_3
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 4248
    monitor-exit p0

    .line 4249
    return-void

    .line 4246
    :catchall_1
    move-exception v3

    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setAutoTimeRequired(Landroid/content/ComponentName;IZ)V
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "required"    # Z

    .prologue
    .line 3603
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_1

    .line 3629
    :cond_0
    :goto_0
    return-void

    .line 3606
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3607
    monitor-enter p0

    .line 3608
    if-nez p1, :cond_2

    .line 3609
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3617
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3611
    :cond_2
    const/4 v1, -0x2

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3613
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->requireAutoTime:Z

    if-eq v1, p3, :cond_3

    .line 3614
    iput-boolean p3, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->requireAutoTime:Z

    .line 3615
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 3617
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3620
    if-eqz p3, :cond_0

    .line 3621
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3623
    .local v2, "ident":J
    :try_start_2
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "auto_time"

    const/4 v5, 0x1

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3626
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_1
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public setCameraDisabled(Landroid/content/ComponentName;ZI)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 3654
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 3670
    :goto_0
    return-void

    .line 3657
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3658
    monitor-enter p0

    .line 3659
    if-nez p1, :cond_1

    .line 3660
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3669
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3662
    :cond_1
    const/16 v1, 0x8

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3664
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    if-eq v1, p2, :cond_2

    .line 3665
    iput-boolean p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    .line 3666
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 3668
    :cond_2
    invoke-virtual {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->syncDeviceCapabilitiesLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    .line 3669
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setCrossProfileCallerIdDisabled(Landroid/content/ComponentName;Z)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .prologue
    .line 5216
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 5230
    :goto_0
    return-void

    .line 5219
    :cond_0
    monitor-enter p0

    .line 5220
    if-nez p1, :cond_1

    .line 5221
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5229
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 5223
    :cond_1
    const/4 v1, -0x1

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 5225
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCallerId:Z

    if-eq v1, p2, :cond_2

    .line 5226
    iput-boolean p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCallerId:Z

    .line 5227
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 5229
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setDeviceOwner(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ownerName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3751
    iget-boolean v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v6, :cond_0

    .line 3791
    :goto_0
    return v4

    .line 3754
    :cond_0
    if-eqz p1, :cond_1

    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/server/devicepolicy/DeviceOwner;->isInstalled(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3756
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid package name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for device owner"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3759
    :cond_2
    monitor-enter p0

    .line 3760
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->allowedToSetDeviceOwnerOnDevice()Z

    move-result v4

    if-nez v4, :cond_3

    .line 3761
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Trying to set device owner but device is already provisioned."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3793
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 3765
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v4}, Lcom/android/server/devicepolicy/DeviceOwner;->hasDeviceOwner()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3766
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Trying to set device owner but device owner is already set."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3771
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 3773
    .local v2, "ident":J
    :try_start_2
    const-string v4, "backup"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v1

    .line 3775
    .local v1, "ibm":Landroid/app/backup/IBackupManager;
    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-interface {v1, v4, v6}, Landroid/app/backup/IBackupManager;->setBackupServiceActive(IZ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3779
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3782
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-nez v4, :cond_5

    .line 3784
    invoke-static {p1, p2}, Lcom/android/server/devicepolicy/DeviceOwner;->createWithDeviceOwner(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/devicepolicy/DeviceOwner;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    .line 3785
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v4}, Lcom/android/server/devicepolicy/DeviceOwner;->writeOwnerFile()V

    .line 3786
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v4, v5

    goto :goto_0

    .line 3776
    .end local v1    # "ibm":Landroid/app/backup/IBackupManager;
    :catch_0
    move-exception v0

    .line 3777
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Failed deactivating backup service."

    invoke-direct {v4, v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3779
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v4

    :try_start_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 3789
    .restart local v1    # "ibm":Landroid/app/backup/IBackupManager;
    :cond_5
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v4, p1, p2}, Lcom/android/server/devicepolicy/DeviceOwner;->setDeviceOwner(Ljava/lang/String;Ljava/lang/String;)V

    .line 3790
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v4}, Lcom/android/server/devicepolicy/DeviceOwner;->writeOwnerFile()V

    .line 3791
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v4, v5

    goto/16 :goto_0
.end method

.method protected setExpirationAlarmCheckLocked(Landroid/content/Context;Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V
    .locals 25
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "policy"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    .prologue
    .line 1054
    const/16 v20, 0x0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordExpirationLocked(Landroid/content/ComponentName;I)J

    move-result-wide v12

    .line 1055
    .local v12, "expiration":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 1056
    .local v14, "now":J
    sub-long v16, v12, v14

    .line 1058
    .local v16, "timeToExpire":J
    const-wide/16 v20, 0x0

    cmp-long v20, v12, v20

    if-nez v20, :cond_1

    .line 1060
    const-wide/16 v8, 0x0

    .line 1074
    .local v8, "alarmTime":J
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 1076
    .local v18, "token":J
    :try_start_0
    const-string v20, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/AlarmManager;

    .line 1077
    .local v10, "am":Landroid/app/AlarmManager;
    const/16 v20, 0x15c3

    new-instance v21, Landroid/content/Intent;

    const-string v22, "com.android.server.ACTION_EXPIRED_PASSWORD_NOTIFICATION"

    invoke-direct/range {v21 .. v22}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v22, 0x48000000    # 131072.0f

    new-instance v23, Landroid/os/UserHandle;

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    move/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    move-object/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v11

    .line 1081
    .local v11, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v10, v11}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1082
    const-wide/16 v20, 0x0

    cmp-long v20, v8, v20

    if-eqz v20, :cond_0

    .line 1083
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v10, v0, v8, v9, v11}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1086
    :cond_0
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1088
    return-void

    .line 1061
    .end local v8    # "alarmTime":J
    .end local v10    # "am":Landroid/app/AlarmManager;
    .end local v11    # "pi":Landroid/app/PendingIntent;
    .end local v18    # "token":J
    :cond_1
    const-wide/16 v20, 0x0

    cmp-long v20, v16, v20

    if-gtz v20, :cond_2

    .line 1063
    const-wide/32 v20, 0x5265c00

    add-long v8, v14, v20

    .restart local v8    # "alarmTime":J
    goto :goto_0

    .line 1067
    .end local v8    # "alarmTime":J
    :cond_2
    const-wide/32 v20, 0x5265c00

    rem-long v6, v16, v20

    .line 1068
    .local v6, "alarmInterval":J
    const-wide/16 v20, 0x0

    cmp-long v20, v6, v20

    if-nez v20, :cond_3

    .line 1069
    const-wide/32 v6, 0x5265c00

    .line 1071
    :cond_3
    add-long v8, v14, v6

    .restart local v8    # "alarmTime":J
    goto :goto_0

    .line 1086
    .end local v6    # "alarmInterval":J
    .restart local v18    # "token":J
    :catchall_0
    move-exception v20

    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v20
.end method

.method public setGlobalProxy(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;
    .locals 11
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "proxySpec"    # Ljava/lang/String;
    .param p3, "exclusionList"    # Ljava/lang/String;
    .param p4, "userHandle"    # I

    .prologue
    .line 3263
    iget-boolean v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v8, :cond_0

    .line 3264
    const/4 v3, 0x0

    .line 3314
    :goto_0
    return-object v3

    .line 3266
    :cond_0
    invoke-direct {p0, p4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3267
    monitor-enter p0

    .line 3268
    if-nez p1, :cond_1

    .line 3269
    :try_start_0
    new-instance v8, Ljava/lang/NullPointerException;

    const-string v9, "ComponentName is null"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 3315
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 3273
    :cond_1
    const/4 v8, 0x0

    :try_start_1
    invoke-virtual {p0, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v5

    .line 3274
    .local v5, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    const/4 v8, 0x5

    invoke-virtual {p0, p1, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3279
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 3280
    .local v2, "compSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 3281
    .local v3, "component":Landroid/content/ComponentName;
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 3282
    .local v1, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    if-eqz v8, :cond_2

    invoke-virtual {v3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 3285
    monitor-exit p0

    goto :goto_0

    .line 3290
    .end local v1    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v3    # "component":Landroid/content/ComponentName;
    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    if-eqz v8, :cond_4

    .line 3291
    const-string v8, "DevicePolicyManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Only the owner is allowed to set the global proxy. User "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is not permitted."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3293
    const/4 v3, 0x0

    monitor-exit p0

    goto :goto_0

    .line 3295
    :cond_4
    if-nez p2, :cond_5

    .line 3296
    const/4 v8, 0x0

    iput-boolean v8, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    .line 3297
    const/4 v8, 0x0

    iput-object v8, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    .line 3298
    const/4 v8, 0x0

    iput-object v8, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    .line 3308
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    .line 3310
    .local v6, "origId":J
    :try_start_2
    invoke-direct {p0, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->resetGlobalProxyLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3312
    :try_start_3
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3314
    const/4 v3, 0x0

    monitor-exit p0

    goto/16 :goto_0

    .line 3301
    .end local v6    # "origId":J
    :cond_5
    const/4 v8, 0x1

    iput-boolean v8, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    .line 3302
    iput-object p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    .line 3303
    iput-object p3, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    goto :goto_1

    .line 3312
    .restart local v6    # "origId":J
    :catchall_1
    move-exception v8

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setGlobalSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 5354
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5356
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    monitor-enter p0

    .line 5357
    if-nez p1, :cond_0

    .line 5358
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5373
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 5360
    :cond_0
    const/4 v1, -0x2

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 5362
    sget-object v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5363
    new-instance v1, Ljava/lang/SecurityException;

    const-string v4, "Permission denial: device owners cannot update %1$s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5367
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 5369
    .local v2, "id":J
    :try_start_2
    invoke-static {v0, p2, p3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5371
    :try_start_3
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 5373
    monitor-exit p0

    .line 5374
    return-void

    .line 5371
    :catchall_1
    move-exception v1

    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setKeyguardDisabledFeatures(Landroid/content/ComponentName;II)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "which"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 3703
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 3720
    :goto_0
    return-void

    .line 3706
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3707
    const-string v1, "disable keyguard features"

    invoke-direct {p0, p3, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceNotManagedProfile(ILjava/lang/String;)V

    .line 3708
    monitor-enter p0

    .line 3709
    if-nez p1, :cond_1

    .line 3710
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3719
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3712
    :cond_1
    const/16 v1, 0x9

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3714
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    if-eq v1, p2, :cond_2

    .line 3715
    iput p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    .line 3716
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 3718
    :cond_2
    invoke-virtual {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->syncDeviceCapabilitiesLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    .line 3719
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setLockTaskPackages(Landroid/content/ComponentName;[Ljava/lang/String;)V
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packages"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5266
    monitor-enter p0

    .line 5267
    if-nez p1, :cond_0

    .line 5268
    :try_start_0
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "ComponentName is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 5284
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 5270
    :cond_0
    const/4 v4, -0x2

    :try_start_1
    invoke-virtual {p0, p1, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 5272
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 5273
    .local v3, "userHandle":I
    invoke-virtual {p0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .line 5274
    .local v2, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v4, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 5275
    if-eqz p2, :cond_1

    .line 5276
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    array-length v4, p2

    if-ge v0, v4, :cond_1

    .line 5277
    aget-object v1, p2, v0

    .line 5278
    .local v1, "pkg":Ljava/lang/String;
    iget-object v4, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5276
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5283
    .end local v0    # "j":I
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 5284
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5285
    return-void
.end method

.method public setMasterVolumeMuted(Landroid/content/ComponentName;Z)V
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "on"    # Z

    .prologue
    .line 5409
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5411
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    monitor-enter p0

    .line 5412
    if-nez p1, :cond_0

    .line 5413
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 5424
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 5415
    :cond_0
    const/4 v3, -0x1

    :try_start_1
    invoke-virtual {p0, p1, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 5417
    const-string v3, "audio"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 5420
    .local v1, "iAudioService":Landroid/media/IAudioService;
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v1, p2, v3, v4, v5}, Landroid/media/IAudioService;->setMasterMute(ZILjava/lang/String;Landroid/os/IBinder;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5424
    :goto_0
    :try_start_3
    monitor-exit p0

    .line 5425
    return-void

    .line 5421
    :catch_0
    move-exception v2

    .line 5422
    .local v2, "re":Landroid/os/RemoteException;
    const-string v3, "DevicePolicyManagerService"

    const-string v4, "Failed to setMasterMute"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;II)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "num"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 2583
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 2602
    :goto_0
    return-void

    .line 2586
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2587
    monitor-enter p0

    .line 2588
    if-nez p1, :cond_1

    .line 2589
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2601
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2593
    :cond_1
    const/4 v1, 0x4

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 2595
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2597
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    if-eq v1, p2, :cond_2

    .line 2598
    iput p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    .line 2599
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 2601
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setMaximumTimeToLock(Landroid/content/ComponentName;JI)V
    .locals 4
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "timeMs"    # J
    .param p4, "userHandle"    # I

    .prologue
    .line 2794
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 2810
    :goto_0
    return-void

    .line 2797
    :cond_0
    invoke-direct {p0, p4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2798
    monitor-enter p0

    .line 2799
    if-nez p1, :cond_1

    .line 2800
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2809
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2802
    :cond_1
    const/4 v1, 0x3

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2804
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-wide v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    cmp-long v1, v2, p2

    if-eqz v1, :cond_2

    .line 2805
    iput-wide p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    .line 2806
    invoke-direct {p0, p4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 2807
    invoke-virtual {p0, p4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateMaximumTimeToLockLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    .line 2809
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setPasswordExpirationTimeout(Landroid/content/ComponentName;JI)V
    .locals 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "timeout"    # J
    .param p4, "userHandle"    # I

    .prologue
    const-wide/16 v4, 0x0

    .line 2068
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 2094
    :goto_0
    return-void

    .line 2071
    :cond_0
    invoke-direct {p0, p4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2072
    monitor-enter p0

    .line 2073
    if-nez p1, :cond_1

    .line 2074
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2093
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2076
    :cond_1
    cmp-long v1, p2, v4

    if-gez v1, :cond_2

    .line 2077
    :try_start_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "Timeout must be >= 0 ms"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2079
    :cond_2
    const/4 v1, 0x6

    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2082
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    cmp-long v1, p2, v4

    if-lez v1, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long v2, p2, v6

    .line 2083
    .local v2, "expiration":J
    :goto_1
    iput-wide v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    .line 2084
    iput-wide p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    .line 2085
    cmp-long v1, p2, v4

    if-lez v1, :cond_3

    .line 2086
    const-string v1, "DevicePolicyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPasswordExpiration(): password will expire on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x2

    invoke-static {v5, v6}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2090
    :cond_3
    invoke-direct {p0, p4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 2092
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setExpirationAlarmCheckLocked(Landroid/content/Context;Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    .line 2093
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v2    # "expiration":J
    :cond_4
    move-wide v2, v4

    .line 2082
    goto :goto_1
.end method

.method public setPasswordHistoryLength(Landroid/content/ComponentName;II)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 2021
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 2036
    :goto_0
    return-void

    .line 2024
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2025
    monitor-enter p0

    .line 2026
    if-nez p1, :cond_1

    .line 2027
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2035
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2029
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2031
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    if-eq v1, p2, :cond_2

    .line 2032
    iput p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    .line 2033
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 2035
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setPasswordMinimumLength(Landroid/content/ComponentName;II)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 1974
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 1989
    :goto_0
    return-void

    .line 1977
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1978
    monitor-enter p0

    .line 1979
    if-nez p1, :cond_1

    .line 1980
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1988
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1982
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1984
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    if-eq v1, p2, :cond_2

    .line 1985
    iput p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    .line 1986
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 1988
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setPasswordMinimumLetters(Landroid/content/ComponentName;II)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 2328
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 2343
    :goto_0
    return-void

    .line 2331
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2332
    monitor-enter p0

    .line 2333
    if-nez p1, :cond_1

    .line 2334
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2342
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2336
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2338
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    if-eq v1, p2, :cond_2

    .line 2339
    iput p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    .line 2340
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 2342
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setPasswordMinimumLowerCase(Landroid/content/ComponentName;II)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 2284
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2285
    monitor-enter p0

    .line 2286
    if-nez p1, :cond_0

    .line 2287
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2295
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2289
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2291
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    if-eq v1, p2, :cond_1

    .line 2292
    iput p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    .line 2293
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 2295
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2296
    return-void
.end method

.method public setPasswordMinimumNonLetter(Landroid/content/ComponentName;II)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 2469
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 2484
    :goto_0
    return-void

    .line 2472
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2473
    monitor-enter p0

    .line 2474
    if-nez p1, :cond_1

    .line 2475
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2483
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2477
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2479
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    if-eq v1, p2, :cond_2

    .line 2480
    iput p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    .line 2481
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 2483
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setPasswordMinimumNumeric(Landroid/content/ComponentName;II)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 2375
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 2390
    :goto_0
    return-void

    .line 2378
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2379
    monitor-enter p0

    .line 2380
    if-nez p1, :cond_1

    .line 2381
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2389
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2383
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2385
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    if-eq v1, p2, :cond_2

    .line 2386
    iput p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    .line 2387
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 2389
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setPasswordMinimumSymbols(Landroid/content/ComponentName;II)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 2422
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 2437
    :goto_0
    return-void

    .line 2425
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2426
    monitor-enter p0

    .line 2427
    if-nez p1, :cond_1

    .line 2428
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2436
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2430
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2432
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    if-eq v1, p2, :cond_2

    .line 2433
    iput p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    .line 2434
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 2436
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setPasswordMinimumUpperCase(Landroid/content/ComponentName;II)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 2237
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 2252
    :goto_0
    return-void

    .line 2240
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2241
    monitor-enter p0

    .line 2242
    if-nez p1, :cond_1

    .line 2243
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2251
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2245
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2247
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    if-eq v1, p2, :cond_2

    .line 2248
    iput p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    .line 2249
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 2251
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setPasswordQuality(Landroid/content/ComponentName;II)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "quality"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 1925
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 1942
    :goto_0
    return-void

    .line 1928
    :cond_0
    invoke-static {p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->validateQualityConstant(I)V

    .line 1929
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1931
    monitor-enter p0

    .line 1932
    if-nez p1, :cond_1

    .line 1933
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1941
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1935
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1937
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    if-eq v1, p2, :cond_2

    .line 1938
    iput p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    .line 1939
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 1941
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setPermittedAccessibilityServices(Landroid/content/ComponentName;Ljava/util/List;)Z
    .locals 13
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageList"    # Ljava/util/List;

    .prologue
    const/4 v10, 0x0

    .line 4458
    iget-boolean v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v11, :cond_0

    .line 4500
    :goto_0
    return v10

    .line 4461
    :cond_0
    if-nez p1, :cond_1

    .line 4462
    new-instance v10, Ljava/lang/NullPointerException;

    const-string v11, "ComponentName is null"

    invoke-direct {v10, v11}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 4465
    :cond_1
    if-eqz p2, :cond_4

    .line 4466
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    .line 4467
    .local v9, "userId":I
    const/4 v3, 0x0

    .line 4468
    .local v3, "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 4470
    .local v6, "id":J
    :try_start_0
    iget-object v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v11, v9}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v8

    .line 4471
    .local v8, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 4472
    iget v9, v8, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 4474
    :cond_2
    invoke-direct {p0, v9}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getAccessibilityManagerForUser(I)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 4475
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    const/4 v11, -0x1

    invoke-virtual {v0, v11}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 4478
    invoke-static {v6, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 4481
    if-eqz v3, :cond_4

    .line 4482
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4483
    .local v2, "enabledPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 4484
    .local v5, "service":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual {v5}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4478
    .end local v0    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .end local v2    # "enabledPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "service":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v8    # "user":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v10

    invoke-static {v6, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v10

    .line 4486
    .restart local v0    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .restart local v2    # "enabledPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v8    # "user":Landroid/content/pm/UserInfo;
    :cond_3
    invoke-direct {p0, v2, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->checkPackagesInPermittedListOrSystem(Ljava/util/List;Ljava/util/List;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 4487
    const-string v11, "DevicePolicyManagerService"

    const-string v12, "Cannot set permitted accessibility services, because it contains already enabled accesibility services."

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4494
    .end local v0    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .end local v2    # "enabledPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "id":J
    .end local v8    # "user":Landroid/content/pm/UserInfo;
    .end local v9    # "userId":I
    :cond_4
    monitor-enter p0

    .line 4495
    const/4 v10, -0x1

    :try_start_1
    invoke-virtual {p0, p1, v10}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 4497
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iput-object p2, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedAccessiblityServices:Ljava/util/List;

    .line 4498
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 4499
    monitor-exit p0

    .line 4500
    const/4 v10, 0x1

    goto :goto_0

    .line 4499
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_1
    move-exception v10

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v10
.end method

.method public setPermittedInputMethods(Landroid/content/ComponentName;Ljava/util/List;)Z
    .locals 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageList"    # Ljava/util/List;

    .prologue
    const/4 v6, 0x0

    .line 4618
    iget-boolean v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v7, :cond_1

    .line 4658
    :cond_0
    :goto_0
    return v6

    .line 4621
    :cond_1
    if-nez p1, :cond_2

    .line 4622
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "ComponentName is null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 4627
    :cond_2
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->checkCallerIsCurrentUserOrProfile()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 4631
    if-eqz p2, :cond_4

    .line 4635
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v8, "input_method"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    .line 4637
    .local v5, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 4639
    .local v1, "enabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    if-eqz v1, :cond_4

    .line 4640
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4641
    .local v2, "enabledPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    .line 4642
    .local v4, "ime":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4644
    .end local v4    # "ime":Landroid/view/inputmethod/InputMethodInfo;
    :cond_3
    invoke-direct {p0, v2, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->checkPackagesInPermittedListOrSystem(Ljava/util/List;Ljava/util/List;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 4645
    const-string v7, "DevicePolicyManagerService"

    const-string v8, "Cannot set permitted input methods, because it contains already enabled input method."

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4652
    .end local v1    # "enabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v2    # "enabledPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_4
    monitor-enter p0

    .line 4653
    const/4 v6, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 4655
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iput-object p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedInputMethods:Ljava/util/List;

    .line 4656
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 4657
    monitor-exit p0

    .line 4658
    const/4 v6, 0x1

    goto :goto_0

    .line 4657
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public setProfileEnabled(Landroid/content/ComponentName;)V
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 3979
    iget-boolean v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_0

    .line 4005
    :goto_0
    return-void

    .line 3982
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 3983
    .local v3, "userHandle":I
    monitor-enter p0

    .line 3985
    if-nez p1, :cond_1

    .line 3986
    :try_start_0
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "ComponentName is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 4004
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 3989
    :cond_1
    const/4 v5, -0x1

    :try_start_1
    invoke-virtual {p0, p1, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 3990
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 3992
    .local v4, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 3994
    .local v0, "id":J
    :try_start_2
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5, v4}, Landroid/os/UserManager;->setUserEnabled(I)V

    .line 3995
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3996
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "android.intent.extra.USER"

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3997
    const/high16 v5, 0x50000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4000
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4002
    :try_start_3
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 4004
    monitor-exit p0

    goto :goto_0

    .line 4002
    .end local v2    # "intent":Landroid/content/Intent;
    :catchall_1
    move-exception v5

    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setProfileName(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    .line 4009
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 4011
    .local v2, "userId":I
    if-nez p1, :cond_0

    .line 4012
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4016
    :cond_0
    const/4 v3, -0x1

    invoke-virtual {p0, p1, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 4018
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4020
    .local v0, "id":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, v2, p2}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4022
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 4024
    return-void

    .line 4022
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "ownerName"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    const/4 v1, 0x1

    .line 3885
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v2, :cond_0

    .line 3886
    const/4 v1, 0x0

    .line 3923
    :goto_0
    return v1

    .line 3888
    :cond_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MANAGE_USERS"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3890
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 3891
    .local v0, "info":Landroid/content/pm/UserInfo;
    if-nez v0, :cond_1

    .line 3893
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to set profile owner for invalid userId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3896
    :cond_1
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3897
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot set a profile owner on a guest"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3900
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p3}, Lcom/android/server/devicepolicy/DeviceOwner;->isInstalledForUser(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 3902
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Component "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not installed for userId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3905
    :cond_4
    monitor-enter p0

    .line 3907
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_5

    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->hasUserSetupCompleted(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3909
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Trying to set profile owner but user is already set-up."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3925
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3913
    :cond_5
    :try_start_1
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-nez v2, :cond_6

    .line 3915
    invoke-static {p1, p2, p3}, Lcom/android/server/devicepolicy/DeviceOwner;->createWithProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Lcom/android/server/devicepolicy/DeviceOwner;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    .line 3917
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v2}, Lcom/android/server/devicepolicy/DeviceOwner;->writeOwnerFile()V

    .line 3918
    monitor-exit p0

    goto/16 :goto_0

    .line 3921
    :cond_6
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/devicepolicy/DeviceOwner;->setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)V

    .line 3922
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v2}, Lcom/android/server/devicepolicy/DeviceOwner;->writeOwnerFile()V

    .line 3923
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public setRecommendedGlobalProxy(Landroid/content/ComponentName;Landroid/net/ProxyInfo;)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "proxyInfo"    # Landroid/net/ProxyInfo;

    .prologue
    .line 3342
    monitor-enter p0

    .line 3343
    const/4 v1, -0x2

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 3344
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3345
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3347
    .local v2, "token":J
    :try_start_1
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3349
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, p2}, Landroid/net/ConnectivityManager;->setGlobalProxy(Landroid/net/ProxyInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3351
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3353
    return-void

    .line 3344
    .end local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v2    # "token":J
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 3351
    .restart local v2    # "token":J
    :catchall_1
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public setRestrictionsProvider(Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "permissionProvider"    # Landroid/content/ComponentName;

    .prologue
    .line 4334
    monitor-enter p0

    .line 4335
    if-nez p1, :cond_0

    .line 4336
    :try_start_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "ComponentName is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4344
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 4338
    :cond_0
    const/4 v2, -0x1

    :try_start_1
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 4340
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 4341
    .local v1, "userHandle":I
    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v0

    .line 4342
    .local v0, "userData":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iput-object p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mRestrictionsProvider:Landroid/content/ComponentName;

    .line 4343
    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 4344
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4345
    return-void
.end method

.method public setScreenCaptureDisabled(Landroid/content/ComponentName;IZ)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "disabled"    # Z

    .prologue
    .line 3544
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 3560
    :goto_0
    return-void

    .line 3547
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3548
    monitor-enter p0

    .line 3549
    if-nez p1, :cond_1

    .line 3550
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3559
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3552
    :cond_1
    const/4 v1, -0x1

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3554
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableScreenCapture:Z

    if-eq v1, p3, :cond_2

    .line 3555
    iput-boolean p3, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableScreenCapture:Z

    .line 3556
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 3557
    invoke-direct {p0, p2, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateScreenCaptureDisabledInWindowManager(IZ)V

    .line 3559
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setSecureSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 5378
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 5379
    .local v1, "callingUserId":I
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 5381
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    monitor-enter p0

    .line 5382
    if-nez p1, :cond_0

    .line 5383
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v6, "ComponentName is null"

    invoke-direct {v3, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 5404
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 5385
    :cond_0
    const/4 v3, -0x1

    :try_start_1
    invoke-virtual {p0, p1, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 5388
    .local v0, "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v3, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDeviceOwner(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5389
    sget-object v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->SECURE_SETTINGS_DEVICEOWNER_WHITELIST:Ljava/util/Set;

    invoke-interface {v3, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 5390
    new-instance v3, Ljava/lang/SecurityException;

    const-string v6, "Permission denial: Device owners cannot update %1$s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p2, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 5393
    :cond_1
    sget-object v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->SECURE_SETTINGS_WHITELIST:Ljava/util/Set;

    invoke-interface {v3, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 5394
    new-instance v3, Ljava/lang/SecurityException;

    const-string v6, "Permission denial: Profile owners cannot update %1$s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p2, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 5398
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v4

    .line 5400
    .local v4, "id":J
    :try_start_2
    invoke-static {v2, p2, p3, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5402
    :try_start_3
    invoke-static {v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 5404
    monitor-exit p0

    .line 5405
    return-void

    .line 5402
    :catchall_1
    move-exception v3

    invoke-static {v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setStorageEncryption(Landroid/content/ComponentName;ZI)I
    .locals 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "encrypt"    # Z
    .param p3, "userHandle"    # I

    .prologue
    const/4 v5, 0x0

    .line 3403
    iget-boolean v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v6, :cond_0

    .line 3446
    :goto_0
    return v5

    .line 3406
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3407
    monitor-enter p0

    .line 3409
    if-nez p1, :cond_1

    .line 3410
    :try_start_0
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "ComponentName is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3449
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 3413
    :cond_1
    if-nez p3, :cond_2

    :try_start_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    if-eqz v6, :cond_3

    .line 3415
    :cond_2
    const-string v6, "DevicePolicyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Only owner is allowed to set storage encryption. User "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not permitted."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3417
    monitor-exit p0

    goto :goto_0

    .line 3420
    :cond_3
    const/4 v6, 0x7

    invoke-virtual {p0, p1, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 3424
    .local v1, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isEncryptionSupported()Z

    move-result v6

    if-nez v6, :cond_4

    .line 3425
    monitor-exit p0

    goto :goto_0

    .line 3429
    :cond_4
    iget-boolean v5, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    if-eq v5, p2, :cond_5

    .line 3430
    iput-boolean p2, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    .line 3431
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 3434
    :cond_5
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 3436
    .local v4, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    const/4 v3, 0x0

    .line 3437
    .local v3, "newRequested":Z
    iget-object v5, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3438
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_6

    .line 3439
    iget-object v5, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    iget-boolean v5, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    or-int/2addr v3, v5

    .line 3438
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3443
    :cond_6
    invoke-direct {p0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setEncryptionRequested(Z)V

    .line 3446
    if-eqz v3, :cond_7

    const/4 v5, 0x3

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_7
    const/4 v5, 0x1

    goto :goto_2
.end method

.method public setTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;I)V
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "agent"    # Landroid/content/ComponentName;
    .param p3, "args"    # Landroid/os/PersistableBundle;
    .param p4, "userHandle"    # I

    .prologue
    .line 4253
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 4271
    :goto_0
    return-void

    .line 4256
    :cond_0
    invoke-direct {p0, p4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 4257
    const-string v1, "set trust agent configuration"

    invoke-direct {p0, p4, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceNotManagedProfile(ILjava/lang/String;)V

    .line 4258
    monitor-enter p0

    .line 4259
    if-nez p1, :cond_1

    .line 4260
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "admin is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4270
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 4262
    :cond_1
    if-nez p2, :cond_2

    .line 4263
    :try_start_1
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "agent is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4265
    :cond_2
    const/16 v1, 0x9

    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 4267
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->trustAgentInfos:Ljava/util/HashMap;

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;

    invoke-direct {v3, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;-><init>(Landroid/os/PersistableBundle;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4268
    invoke-direct {p0, p4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 4269
    invoke-virtual {p0, p4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->syncDeviceCapabilitiesLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    .line 4270
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uninstallBlocked"    # Z

    .prologue
    .line 5167
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 5169
    .local v4, "userId":I
    monitor-enter p0

    .line 5170
    if-nez p1, :cond_0

    .line 5171
    :try_start_0
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "ComponentName is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 5185
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 5173
    :cond_0
    const/4 v5, -0x1

    :try_start_1
    invoke-virtual {p0, p1, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 5175
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 5177
    .local v0, "id":J
    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 5178
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    invoke-interface {v2, p2, p3, v4}, Landroid/content/pm/IPackageManager;->setBlockUninstallForUser(Ljava/lang/String;ZI)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5183
    :try_start_3
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 5185
    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    :goto_0
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5186
    return-void

    .line 5179
    :catch_0
    move-exception v3

    .line 5181
    .local v3, "re":Landroid/os/RemoteException;
    :try_start_4
    const-string v5, "DevicePolicyManagerService"

    const-string v6, "Failed to setBlockUninstallForUser"

    invoke-static {v5, v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 5183
    :try_start_5
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v3    # "re":Landroid/os/RemoteException;
    :catchall_1
    move-exception v5

    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public setUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .locals 24
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "enabled"    # Z

    .prologue
    .line 4862
    new-instance v15, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v17

    move/from16 v0, v17

    invoke-direct {v15, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 4863
    .local v15, "user":Landroid/os/UserHandle;
    invoke-virtual {v15}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v16

    .line 4864
    .local v16, "userHandle":I
    monitor-enter p0

    .line 4865
    if-nez p1, :cond_0

    .line 4866
    :try_start_0
    new-instance v17, Ljava/lang/NullPointerException;

    const-string v20, "ComponentName is null"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 4961
    :catchall_0
    move-exception v17

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v17

    .line 4868
    :cond_0
    const/16 v17, -0x1

    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v4

    .line 4870
    .local v4, "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v0, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDeviceOwner(Ljava/lang/String;)Z

    move-result v7

    .line 4871
    .local v7, "isDeviceOwner":Z
    if-nez v7, :cond_1

    if-eqz v16, :cond_1

    sget-object v17, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 4873
    new-instance v17, Ljava/lang/SecurityException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Profile owners cannot set user restriction "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 4875
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v15}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v5

    .line 4877
    .local v5, "alreadyRestricted":Z
    const/4 v6, 0x0

    .line 4878
    .local v6, "iAudioService":Landroid/media/IAudioService;
    const-string v17, "no_unmute_microphone"

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    const-string v17, "no_adjust_volume"

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 4880
    :cond_2
    const-string v17, "audio"

    invoke-static/range {v17 .. v17}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 4884
    :cond_3
    if-eqz p3, :cond_4

    if-nez v5, :cond_4

    .line 4886
    :try_start_2
    const-string v17, "no_unmute_microphone"

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 4887
    const/16 v17, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v20

    move/from16 v0, v17

    move-object/from16 v1, v20

    invoke-interface {v6, v0, v1}, Landroid/media/IAudioService;->setMicrophoneMute(ZLjava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4895
    :cond_4
    :goto_0
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v8

    .line 4897
    .local v8, "id":J
    if-eqz p3, :cond_5

    if-nez v5, :cond_5

    .line 4898
    :try_start_4
    const-string v17, "no_config_wifi"

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 4899
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v20, "wifi_networks_available_notification_on"

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v16

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 4932
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2, v15}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 4933
    move/from16 v0, p3

    if-eq v0, v5, :cond_6

    .line 4934
    const-string v17, "no_share_location"

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 4937
    const-string v12, "sys.settings_secure_version"

    .line 4938
    .local v12, "property":Ljava/lang/String;
    const-string v17, "sys.settings_secure_version"

    const-wide/16 v20, 0x0

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v20

    const-wide/16 v22, 0x1

    add-long v18, v20, v22

    .line 4939
    .local v18, "version":J
    const-string v17, "sys.settings_secure_version"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4941
    const-string v11, "location_providers_allowed"

    .line 4942
    .local v11, "name":Ljava/lang/String;
    sget-object v17, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const-string v20, "location_providers_allowed"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 4943
    .local v14, "url":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v16

    invoke-virtual {v0, v14, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;ZI)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4947
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "property":Ljava/lang/String;
    .end local v14    # "url":Landroid/net/Uri;
    .end local v18    # "version":J
    :cond_6
    :try_start_5
    invoke-static {v8, v9}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4949
    if-nez p3, :cond_7

    if-eqz v5, :cond_7

    .line 4951
    :try_start_6
    const-string v17, "no_unmute_microphone"

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 4952
    const/16 v17, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v20

    move/from16 v0, v17

    move-object/from16 v1, v20

    invoke-interface {v6, v0, v1}, Landroid/media/IAudioService;->setMicrophoneMute(ZLjava/lang/String;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 4960
    :cond_7
    :goto_2
    :try_start_7
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendChangedNotification(I)V

    .line 4961
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 4962
    return-void

    .line 4888
    .end local v8    # "id":J
    :cond_8
    :try_start_8
    const-string v17, "no_adjust_volume"

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 4889
    const/16 v17, 0x1

    const/16 v20, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move/from16 v0, v17

    move/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-interface {v6, v0, v1, v2, v3}, Landroid/media/IAudioService;->setMasterMute(ZILjava/lang/String;Landroid/os/IBinder;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 4891
    :catch_0
    move-exception v13

    .line 4892
    .local v13, "re":Landroid/os/RemoteException;
    :try_start_9
    const-string v17, "DevicePolicyManagerService"

    const-string v20, "Failed to talk to AudioService."

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    .line 4902
    .end local v13    # "re":Landroid/os/RemoteException;
    .restart local v8    # "id":J
    :cond_9
    :try_start_a
    const-string v17, "no_usb_file_transfer"

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 4903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v20, "usb"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/usb/UsbManager;

    .line 4905
    .local v10, "manager":Landroid/hardware/usb/UsbManager;
    const-string v17, "none"

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_1

    .line 4947
    .end local v10    # "manager":Landroid/hardware/usb/UsbManager;
    :catchall_1
    move-exception v17

    :try_start_b
    invoke-static {v8, v9}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v17
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 4906
    :cond_a
    :try_start_c
    const-string v17, "no_share_location"

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 4907
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v20, "location_mode"

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v16

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 4910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v20, "location_providers_allowed"

    const-string v21, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v16

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 4913
    :cond_b
    const-string v17, "no_debugging_features"

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 4915
    if-nez v16, :cond_5

    .line 4916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v20, "adb_enabled"

    const-string v21, "0"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v16

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 4919
    :cond_c
    const-string v17, "ensure_verify_apps"

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 4920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v20, "package_verifier_enable"

    const-string v21, "1"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v16

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 4923
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v20, "verifier_verify_adb_installs"

    const-string v21, "1"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v16

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 4926
    :cond_d
    const-string v17, "no_install_unknown_sources"

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 4927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v20, "install_non_market_apps"

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v16

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/16 :goto_1

    .line 4953
    :cond_e
    :try_start_d
    const-string v17, "no_adjust_volume"

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 4954
    const/16 v17, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move/from16 v0, v17

    move/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-interface {v6, v0, v1, v2, v3}, Landroid/media/IAudioService;->setMasterMute(ZILjava/lang/String;Landroid/os/IBinder;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_2

    .line 4956
    :catch_1
    move-exception v13

    .line 4957
    .restart local v13    # "re":Landroid/os/RemoteException;
    :try_start_e
    const-string v17, "DevicePolicyManagerService"

    const-string v20, "Failed to talk to AudioService."

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_2
.end method

.method public switchUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 4819
    monitor-enter p0

    .line 4820
    if-nez p1, :cond_0

    .line 4821
    :try_start_0
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "ComponentName is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4838
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 4823
    :cond_0
    const/4 v4, -0x2

    :try_start_1
    invoke-virtual {p0, p1, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 4825
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 4827
    .local v2, "id":J
    const/4 v1, 0x0

    .line 4828
    .local v1, "userId":I
    if-eqz p2, :cond_1

    .line 4829
    :try_start_2
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 4831
    :cond_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v4

    .line 4836
    :try_start_3
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    return v4

    .line 4832
    :catch_0
    move-exception v0

    .line 4833
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v4, "DevicePolicyManagerService"

    const-string v5, "Couldn\'t switch user"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4834
    const/4 v4, 0x0

    .line 4836
    :try_start_5
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    monitor-exit p0

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v4

    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method syncDeviceCapabilitiesLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V
    .locals 7
    .param p1, "policy"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    .prologue
    .line 1589
    const-string v5, "sys.secpolicy.camera.disabled"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1590
    .local v1, "systemState":Z
    const/4 v5, 0x0

    iget v6, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    invoke-virtual {p0, v5, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    move-result v0

    .line 1591
    .local v0, "cameraDisabled":Z
    if-eq v0, v1, :cond_0

    .line 1592
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1594
    .local v2, "token":J
    if-eqz v0, :cond_1

    :try_start_0
    const-string v4, "1"

    .line 1597
    .local v4, "value":Ljava/lang/String;
    :goto_0
    const-string v5, "sys.secpolicy.camera.disabled"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1599
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1602
    .end local v2    # "token":J
    .end local v4    # "value":Ljava/lang/String;
    :cond_0
    return-void

    .line 1594
    .restart local v2    # "token":J
    :cond_1
    :try_start_1
    const-string v4, "0"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1599
    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public systemReady()V
    .locals 6

    .prologue
    .line 1605
    iget-boolean v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v4, :cond_1

    .line 1625
    :cond_0
    return-void

    .line 1608
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    .line 1609
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->loadDeviceOwner()V

    .line 1610
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->cleanUpOldUsers()V

    .line 1612
    new-instance v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;

    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/os/Handler;)V

    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->register(Landroid/content/ContentResolver;)V

    .line 1614
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateUserSetupComplete()V

    .line 1617
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    .line 1618
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 1619
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1620
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v2, v4, Landroid/content/pm/UserInfo;->id:I

    .line 1621
    .local v2, "userHandle":I
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getScreenCaptureDisabled(Landroid/content/ComponentName;I)Z

    move-result v4

    invoke-direct {p0, v2, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateScreenCaptureDisabledInWindowManager(IZ)V

    .line 1619
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public uninstallCaCert(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 8
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    .line 2957
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCanManageCaCerts(Landroid/content/ComponentName;)V

    .line 2959
    new-instance v5, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 2960
    .local v5, "userHandle":Landroid/os/UserHandle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2962
    .local v2, "id":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v4

    .line 2964
    .local v4, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_1
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v6

    invoke-interface {v6, p2}, Landroid/security/IKeyChainService;->deleteCaCertificate(Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2968
    :try_start_2
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2974
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2976
    .end local v4    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :goto_1
    return-void

    .line 2965
    .restart local v4    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catch_0
    move-exception v0

    .line 2966
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v6, "DevicePolicyManagerService"

    const-string v7, "from CaCertUninstaller: "

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2968
    :try_start_4
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 2970
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v4    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catch_1
    move-exception v1

    .line 2971
    .local v1, "ie":Ljava/lang/InterruptedException;
    :try_start_5
    const-string v6, "DevicePolicyManagerService"

    const-string v7, "CaCertUninstaller: "

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2972
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2974
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 2968
    .end local v1    # "ie":Ljava/lang/InterruptedException;
    .restart local v4    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catchall_0
    move-exception v6

    :try_start_6
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    throw v6
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2974
    .end local v4    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catchall_1
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method updateMaximumTimeToLockLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V
    .locals 7
    .param p1, "policy"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    .prologue
    .line 2813
    const/4 v4, 0x0

    iget v5, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    invoke-virtual {p0, v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v2

    .line 2814
    .local v2, "timeMs":J
    iget-wide v4, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLastMaximumTimeToLock:J

    cmp-long v4, v4, v2

    if-nez v4, :cond_0

    .line 2834
    :goto_0
    return-void

    .line 2818
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2820
    .local v0, "ident":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_1

    .line 2821
    const-wide/32 v2, 0x7fffffff

    .line 2829
    :goto_1
    :try_start_0
    iput-wide v2, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLastMaximumTimeToLock:J

    .line 2830
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    long-to-int v5, v2

    invoke-virtual {v4, v5}, Landroid/os/PowerManagerInternal;->setMaximumScreenOffTimeoutFromDeviceAdmin(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2832
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 2825
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "stay_on_while_plugged_in"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2832
    :catchall_0
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method updateUserSetupComplete()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 5452
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6, v8}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v5

    .line 5453
    .local v5, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 5454
    .local v3, "resolver":Landroid/content/ContentResolver;
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 5455
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 5456
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    iget v4, v6, Landroid/content/pm/UserInfo;->id:I

    .line 5457
    .local v4, "userHandle":I
    const-string v6, "user_setup_complete"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-eqz v6, :cond_0

    .line 5459
    invoke-virtual {p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .line 5460
    .local v2, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-boolean v6, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserSetupComplete:Z

    if-nez v6, :cond_0

    .line 5461
    iput-boolean v8, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserSetupComplete:Z

    .line 5462
    monitor-enter p0

    .line 5463
    :try_start_0
    invoke-direct {p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 5464
    monitor-exit p0

    .line 5455
    .end local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5464
    .restart local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 5468
    .end local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v4    # "userHandle":I
    :cond_1
    return-void
.end method

.method validatePasswordOwnerLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V
    .locals 5
    .param p1, "policy"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    .prologue
    .line 1566
    iget v2, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    if-ltz v2, :cond_1

    .line 1567
    const/4 v0, 0x0

    .line 1568
    .local v0, "haveOwner":Z
    iget-object v2, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1569
    iget-object v2, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    invoke-virtual {v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v2

    iget v3, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    if-ne v2, v3, :cond_2

    .line 1570
    const/4 v0, 0x1

    .line 1574
    :cond_0
    if-nez v0, :cond_1

    .line 1575
    const-string v2, "DevicePolicyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Previous password owner "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " no longer active; disabling"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    const/4 v2, -0x1

    iput v2, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    .line 1580
    .end local v0    # "haveOwner":Z
    .end local v1    # "i":I
    :cond_1
    return-void

    .line 1568
    .restart local v0    # "haveOwner":Z
    .restart local v1    # "i":I
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public wipeData(II)V
    .locals 9
    .param p1, "flags"    # I
    .param p2, "userHandle"    # I

    .prologue
    .line 3030
    iget-boolean v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v7, :cond_0

    .line 3069
    :goto_0
    return-void

    .line 3033
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3034
    monitor-enter p0

    .line 3037
    const/4 v7, 0x0

    const/4 v8, 0x4

    :try_start_0
    invoke-virtual {p0, v7, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3041
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v7, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v7}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 3042
    .local v1, "cname":Landroid/content/ComponentName;
    if-eqz v1, :cond_2

    .line 3043
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    .line 3048
    .local v5, "source":Ljava/lang/String;
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v2

    .line 3050
    .local v2, "ident":J
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_4

    .line 3051
    if-nez p2, :cond_1

    :try_start_1
    iget-object v7, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v7}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDeviceOwner(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 3053
    :cond_1
    new-instance v7, Ljava/lang/SecurityException;

    const-string v8, "Only device owner admins can set WIPE_RESET_PROTECTION_DATA"

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3066
    :catchall_0
    move-exception v7

    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    .line 3068
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v1    # "cname":Landroid/content/ComponentName;
    .end local v2    # "ident":J
    .end local v5    # "source":Ljava/lang/String;
    :catchall_1
    move-exception v7

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v7

    .line 3045
    .restart local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .restart local v1    # "cname":Landroid/content/ComponentName;
    :cond_2
    :try_start_3
    iget-object v7, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v7}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v5

    .restart local v5    # "source":Ljava/lang/String;
    goto :goto_1

    .line 3056
    .restart local v2    # "ident":J
    :cond_3
    :try_start_4
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v8, "persistent_data_block"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 3058
    .local v4, "manager":Landroid/service/persistentdata/PersistentDataBlockManager;
    if-eqz v4, :cond_4

    .line 3059
    invoke-virtual {v4}, Landroid/service/persistentdata/PersistentDataBlockManager;->wipe()V

    .line 3062
    .end local v4    # "manager":Landroid/service/persistentdata/PersistentDataBlockManager;
    :cond_4
    and-int/lit8 v7, p1, 0x1

    if-eqz v7, :cond_5

    const/4 v6, 0x1

    .line 3063
    .local v6, "wipeExtRequested":Z
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DevicePolicyManager.wipeData() from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, p2, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->wipeDeviceOrUserLocked(ZILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3066
    :try_start_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3068
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 3062
    .end local v6    # "wipeExtRequested":Z
    :cond_5
    const/4 v6, 0x0

    goto :goto_2
.end method
