.class public Lcom/android/server/StartShutdownService;
.super Landroid/app/IStartShutdownManager$Stub;
.source "StartShutdownService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/StartShutdownService$SSThread;,
        Lcom/android/server/StartShutdownService$State;,
        Lcom/android/server/StartShutdownService$ServiceCallback;
    }
.end annotation


# static fields
.field static final AC_CHARGER:Ljava/lang/String; = "ac_charger"

.field static final APN_TYPE_DEFAULT:Ljava/lang/String; = "default"

.field static final APN_TYPE_WAP:Ljava/lang/String; = "wap"

.field public static final BATTERY_PLUGGED_DOCKING:I = 0x3

.field public static final BOOTMODE_CHARGEIN:I = 0x1

.field public static final BOOTMODE_RESET:I = 0x2

.field public static final BOOTMODE_RTC_ALARM:I = 0x3

.field public static final BOOTMODE_RTC_STARTUP:I = 0x4

.field public static final BOOTMODE_USER:I = 0x0

.field public static final BOOT_ANIMA_ALARM:Ljava/lang/String; = "alarm"

.field public static final BOOT_ANIMA_CHARGE:Ljava/lang/String; = "charge"

.field public static final BOOT_ANIMA_NORMAL:Ljava/lang/String; = "normal"

.field public static final BOOT_ANIMA_POWER_OFF:Ljava/lang/String; = "poweroff"

.field public static final BOOT_ANIMA_PROPERTY:Ljava/lang/String; = "sys.power.startup_mode"

.field static final BOOT_SILENTLY_PROPERTY:Ljava/lang/String; = "persist.sys.boot_silently"

.field public static final CHECK_SCREEN_IDLE_ACTION:Ljava/lang/String; = "android.intent.action.stk.check_screen_idle"

.field private static final DELAY_LAUNCHER_READY_STEP:I = 0x5dc

.field public static final EPC_CURRENT_ATTEMPTS:Ljava/lang/String; = "epc_current_attempts_remaining"

.field static final FEATURE_ENABLE_NET:Ljava/lang/String; = "enalbeNET"

.field static final FEATURE_ENABLE_WAP:Ljava/lang/String; = "enableWAP"

.field public static final INTENT_KEY_ICC_STATE:Ljava/lang/String; = "ss"

.field public static final INTENT_KEY_LOCKED_REASON:Ljava/lang/String; = "reason"

.field public static final INTENT_VALUE_ICC_ABSENT:Ljava/lang/String; = "ABSENT"

.field public static final INTENT_VALUE_ICC_CARD_IO_ERROR:Ljava/lang/String; = "CARD_IO_ERROR"

.field public static final INTENT_VALUE_ICC_LOCKED:Ljava/lang/String; = "LOCKED"

.field public static final INTENT_VALUE_ICC_READY:Ljava/lang/String; = "READY"

.field public static final INTENT_VALUE_ICC_REFRESH:Ljava/lang/String; = "REFRESH"

.field public static final INTENT_VALUE_LOCKED_CORPORATE:Ljava/lang/String; = "SIM CORPORATE"

.field public static final INTENT_VALUE_LOCKED_NETWORK:Ljava/lang/String; = "NETWORK"

.field public static final INTENT_VALUE_LOCKED_NETWORK_SUBSET:Ljava/lang/String; = "SIM NETWORK SUBSET"

.field public static final INTENT_VALUE_LOCKED_ON_PIN:Ljava/lang/String; = "PIN"

.field public static final INTENT_VALUE_LOCKED_ON_PUK:Ljava/lang/String; = "PUK"

.field public static final INTENT_VALUE_LOCKED_RUIM_CORPORATE:Ljava/lang/String; = "RUIM CORPORATE"

.field public static final INTENT_VALUE_LOCKED_RUIM_HRPD:Ljava/lang/String; = "RUIM HRPD"

.field public static final INTENT_VALUE_LOCKED_RUIM_NETWORK1:Ljava/lang/String; = "RUIM NETWORK1"

.field public static final INTENT_VALUE_LOCKED_RUIM_NETWORK2:Ljava/lang/String; = "RUIM NETWORK2"

.field public static final INTENT_VALUE_LOCKED_RUIM_RUIM:Ljava/lang/String; = "RUIM RUIM"

.field public static final INTENT_VALUE_LOCKED_RUIM_SERVICE_PROVIDER:Ljava/lang/String; = "RUIM SERVICE PROVIDER"

.field public static final INTENT_VALUE_LOCKED_SERVICE_PROVIDER:Ljava/lang/String; = "SIM SERVICE PROVIDER"

.field public static final INTENT_VALUE_LOCKED_SIM:Ljava/lang/String; = "SIM SIM"

.field private static final MASK_BOOT_CABLE:I = 0x4

.field private static final MASK_BOOT_KEYPAD:I = 0x1

.field private static final MASK_BOOT_RTC:I = 0x2

.field private static final MASK_BOOT_SMPL:I = 0x8

.field private static final MASK_BOOT_USBCHARGE:I = 0x20

.field private static final MASK_BOOT_WALLCHARGE:I = 0x40

.field private static final MASK_BOOT_WDOG:I = 0x10

.field private static final MESSAGE_DISABLE_AUTO_SHUTDOWN:I = 0x4

.field private static final MESSAGE_DISABLE_AUTO_START:I = 0x2

.field private static final MESSAGE_ENABLE_AUTO_SHUTDOWN:I = 0x3

.field private static final MESSAGE_ENABLE_AUTO_SHUTDOWN_BETA:I = 0xc

.field private static final MESSAGE_ENABLE_AUTO_START:I = 0x1

.field private static final MESSAGE_ENABLE_AUTO_START_BETA:I = 0xb

.field private static final MESSAGE_HIDE_SYSTEM_WINDOW:I = 0x8

.field private static final MESSAGE_LAUNCHER_READY:I = 0x9

.field private static final MESSAGE_REBOOT:I = 0xa

.field private static final MESSAGE_SHUTDOWN:I = 0x5

.field static final RTC:Ljava/lang/String; = "rtc_alarm"

.field static final RTC_ALARM_TIME_PROPERTY:Ljava/lang/String; = "persist.sys.rtc_alarm_time"

.field static final RTC_START_TIME_PROPERTY:Ljava/lang/String; = "persist.sys.rtc_start_time"

.field static final SHUTDOWN_AND_CHARGING_PROPERTY:Ljava/lang/String; = "persist.sys.shutdown_charge"

.field static final SHUTDOWN_SILENTLY_PROPERTY:Ljava/lang/String; = "persist.sys.shutdown_silently"

.field public static final STK_IDLE_SCREEN_ACTION:Ljava/lang/String; = "android.intent.action.stk.idle_screen"

.field private static final TAG:Ljava/lang/String; = "StartShutdownService"

.field private static final TIMEOUT_LAUNCHER_READY:I = 0x3a98

.field static final USB_CABLE:Ljava/lang/String; = "usb_cable"

.field private static sBootEnum:I

.field private static sBootMode:I

.field private static sLock:Ljava/lang/Object;


# instance fields
.field private mAlarmScreenOnWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mBootCompleted:Z

.field private final mContext:Landroid/content/Context;

.field private mDataDialog:Landroid/app/AlertDialog;

.field private mDataDialogShowOnEndCall:Z

.field private mDataDialogShown:Z

.field private final mFactoryTest:I

.field private mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLauncherReady:Z

.field private mNoSimDialog:Landroid/app/AlertDialog;

.field private mNoSimListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mPhoneState:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPolicy:Lcom/android/server/StartShutdownPolicy;

.field private final mServiceCallback:Lcom/android/server/StartShutdownService$ServiceCallback;

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mSimReady:Z

.field private mSimReadyOnce:Z

.field private mSimSlot0Absent:Z

.field private mSimSlot1Absent:Z

.field private mState:Lcom/android/server/StartShutdownService$State;

.field private mSystemBusy:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 154
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/StartShutdownService;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "factoryTest"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 219
    invoke-direct {p0}, Landroid/app/IStartShutdownManager$Stub;-><init>()V

    .line 50
    iput-object v5, p0, Lcom/android/server/StartShutdownService;->mAlarmScreenOnWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 67
    iput v1, p0, Lcom/android/server/StartShutdownService;->mPhoneState:I

    .line 156
    new-instance v2, Lcom/android/server/StartShutdownService$1;

    invoke-direct {v2, p0}, Lcom/android/server/StartShutdownService$1;-><init>(Lcom/android/server/StartShutdownService;)V

    iput-object v2, p0, Lcom/android/server/StartShutdownService;->mServiceCallback:Lcom/android/server/StartShutdownService$ServiceCallback;

    .line 397
    new-instance v2, Lcom/android/server/StartShutdownService$2;

    invoke-direct {v2, p0}, Lcom/android/server/StartShutdownService$2;-><init>(Lcom/android/server/StartShutdownService;)V

    iput-object v2, p0, Lcom/android/server/StartShutdownService;->mHandler:Landroid/os/Handler;

    .line 582
    new-instance v2, Lcom/android/server/StartShutdownService$6;

    invoke-direct {v2, p0}, Lcom/android/server/StartShutdownService$6;-><init>(Lcom/android/server/StartShutdownService;)V

    iput-object v2, p0, Lcom/android/server/StartShutdownService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 654
    new-instance v2, Lcom/android/server/StartShutdownService$7;

    invoke-direct {v2, p0}, Lcom/android/server/StartShutdownService$7;-><init>(Lcom/android/server/StartShutdownService;)V

    iput-object v2, p0, Lcom/android/server/StartShutdownService;->mNoSimListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 660
    new-instance v2, Lcom/android/server/StartShutdownService$8;

    invoke-direct {v2, p0}, Lcom/android/server/StartShutdownService$8;-><init>(Lcom/android/server/StartShutdownService;)V

    iput-object v2, p0, Lcom/android/server/StartShutdownService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 220
    iput-object p1, p0, Lcom/android/server/StartShutdownService;->mContext:Landroid/content/Context;

    .line 221
    iput p2, p0, Lcom/android/server/StartShutdownService;->mFactoryTest:I

    .line 223
    iget v2, p0, Lcom/android/server/StartShutdownService;->mFactoryTest:I

    if-eqz v2, :cond_0

    .line 240
    :goto_0
    return-void

    .line 226
    :cond_0
    new-instance v2, Lcom/android/server/StartShutdownPolicy;

    iget-object v3, p0, Lcom/android/server/StartShutdownService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/StartShutdownService;->mServiceCallback:Lcom/android/server/StartShutdownService$ServiceCallback;

    invoke-direct {v2, v3, v4}, Lcom/android/server/StartShutdownPolicy;-><init>(Landroid/content/Context;Lcom/android/server/StartShutdownService$ServiceCallback;)V

    iput-object v2, p0, Lcom/android/server/StartShutdownService;->mPolicy:Lcom/android/server/StartShutdownPolicy;

    .line 228
    sget v2, Lcom/android/server/StartShutdownService;->sBootMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    .line 229
    .local v1, "reducedBoot":Z
    :cond_1
    iget-object v2, p0, Lcom/android/server/StartShutdownService;->mPolicy:Lcom/android/server/StartShutdownPolicy;

    invoke-virtual {v2, v1}, Lcom/android/server/StartShutdownPolicy;->init(Z)V

    .line 231
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 232
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 233
    iget-object v2, p0, Lcom/android/server/StartShutdownService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/StartShutdownService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/server/StartShutdownService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v0, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 235
    iget-object v2, p0, Lcom/android/server/StartShutdownService;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/server/StartShutdownService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x21

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/StartShutdownService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/StartShutdownService;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/server/StartShutdownService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/StartShutdownService;)Lcom/android/server/StartShutdownPolicy;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/StartShutdownService;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/server/StartShutdownService;->mPolicy:Lcom/android/server/StartShutdownPolicy;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/StartShutdownService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/StartShutdownService;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/server/StartShutdownService;->mSimSlot1Absent:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/StartShutdownService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/StartShutdownService;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/server/StartShutdownService;->mSimSlot1Absent:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/StartShutdownService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/StartShutdownService;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/server/StartShutdownService;->mSimReady:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/StartShutdownService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/StartShutdownService;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/server/StartShutdownService;->mSimReady:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/StartShutdownService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/StartShutdownService;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/server/StartShutdownService;->mSimReadyOnce:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/StartShutdownService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/StartShutdownService;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/server/StartShutdownService;->mSimReadyOnce:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/StartShutdownService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/StartShutdownService;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/server/StartShutdownService;->isTeleProduct()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400()I
    .locals 1

    .prologue
    .line 44
    sget v0, Lcom/android/server/StartShutdownService;->sBootMode:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/StartShutdownService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/StartShutdownService;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/server/StartShutdownService;->isAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/StartShutdownService;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/StartShutdownService;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/server/StartShutdownService;->mNoSimDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/server/StartShutdownService;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/StartShutdownService;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/server/StartShutdownService;->mNoSimDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/server/StartShutdownService;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/StartShutdownService;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/server/StartShutdownService;->mNoSimListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/StartShutdownService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/StartShutdownService;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/server/StartShutdownService;->hasService()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/StartShutdownService;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/StartShutdownService;
    .param p1, "x1"    # Landroid/telephony/ServiceState;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/server/StartShutdownService;->mServiceState:Landroid/telephony/ServiceState;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/StartShutdownService;)Lcom/android/server/StartShutdownService$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/StartShutdownService;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/server/StartShutdownService;->mState:Lcom/android/server/StartShutdownService$State;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/StartShutdownService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/StartShutdownService;

    .prologue
    .line 44
    iget v0, p0, Lcom/android/server/StartShutdownService;->mPhoneState:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/StartShutdownService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/StartShutdownService;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/android/server/StartShutdownService;->mPhoneState:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/server/StartShutdownService;Lcom/android/server/StartShutdownService$State;)Lcom/android/server/StartShutdownService$State;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/StartShutdownService;
    .param p1, "x1"    # Lcom/android/server/StartShutdownService$State;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/server/StartShutdownService;->mState:Lcom/android/server/StartShutdownService$State;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/server/StartShutdownService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/StartShutdownService;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/server/StartShutdownService;->mDataDialogShowOnEndCall:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/server/StartShutdownService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/StartShutdownService;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/server/StartShutdownService;->mDataDialogShowOnEndCall:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/server/StartShutdownService;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/StartShutdownService;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/server/StartShutdownService;->mDataDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/server/StartShutdownService;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/StartShutdownService;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/server/StartShutdownService;->mDataDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/StartShutdownService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/StartShutdownService;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/server/StartShutdownService;->mSystemBusy:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/StartShutdownService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/StartShutdownService;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/server/StartShutdownService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/StartShutdownService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/StartShutdownService;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/server/StartShutdownService;->handleLauncherReady()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/StartShutdownService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/StartShutdownService;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/server/StartShutdownService;->setAirplaneModeOff()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/StartShutdownService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/StartShutdownService;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/server/StartShutdownService;->showDataConnectionDialog()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/StartShutdownService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/StartShutdownService;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/server/StartShutdownService;->mBootCompleted:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/StartShutdownService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/StartShutdownService;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/server/StartShutdownService;->mSimSlot0Absent:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/StartShutdownService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/StartShutdownService;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/server/StartShutdownService;->mSimSlot0Absent:Z

    return p1
.end method

.method private declared-synchronized disableKeyguard()V
    .locals 2

    .prologue
    .line 204
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/StartShutdownService;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    if-nez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/server/StartShutdownService;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/StartShutdownService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 207
    iget-object v0, p0, Lcom/android/server/StartShutdownService;->mKeyguardManager:Landroid/app/KeyguardManager;

    const-string v1, "StartShutdownService"

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/StartShutdownService;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 208
    iget-object v0, p0, Lcom/android/server/StartShutdownService;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    :cond_0
    monitor-exit p0

    return-void

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized enableKeyguard()V
    .locals 1

    .prologue
    .line 213
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/StartShutdownService;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/server/StartShutdownService;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/StartShutdownService;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    :cond_0
    monitor-exit p0

    return-void

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getConstValueByModuleName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "moduleName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 687
    if-nez p0, :cond_1

    .line 733
    :cond_0
    :goto_0
    return-object v0

    .line 689
    :cond_1
    const-string v1, "IccCard_INTENT_VALUE_ICC_CARD_IO_ERROR"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 690
    const-string v0, "CARD_IO_ERROR"

    goto :goto_0

    .line 691
    :cond_2
    const-string v1, "IccCard_INTENT_VALUE_LOCKED_NETWORK_SUBSET"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 692
    const-string v0, "SIM NETWORK SUBSET"

    goto :goto_0

    .line 693
    :cond_3
    const-string v1, "IccCard_INTENT_VALUE_LOCKED_CORPORATE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 694
    const-string v0, "SIM CORPORATE"

    goto :goto_0

    .line 695
    :cond_4
    const-string v1, "IccCard_INTENT_VALUE_LOCKED_SERVICE_PROVIDER"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 696
    const-string v0, "SIM SERVICE PROVIDER"

    goto :goto_0

    .line 697
    :cond_5
    const-string v1, "IccCard_INTENT_VALUE_LOCKED_SIM"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 698
    const-string v0, "SIM SIM"

    goto :goto_0

    .line 699
    :cond_6
    const-string v1, "IccCard_INTENT_VALUE_LOCKED_RUIM_NETWORK1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 700
    const-string v0, "RUIM NETWORK1"

    goto :goto_0

    .line 701
    :cond_7
    const-string v1, "IccCard_INTENT_VALUE_LOCKED_RUIM_NETWORK2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 702
    const-string v0, "RUIM NETWORK2"

    goto :goto_0

    .line 704
    :cond_8
    const-string v1, "IccCard_INTENT_VALUE_ICC_REFRESH"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 705
    const-string v0, "REFRESH"

    goto :goto_0

    .line 706
    :cond_9
    const-string v1, "IccCard_INTENT_VALUE_LOCKED_RUIM_HRPD"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 707
    const-string v0, "RUIM HRPD"

    goto :goto_0

    .line 708
    :cond_a
    const-string v1, "IccCard_INTENT_VALUE_LOCKED_RUIM_CORPORATE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 709
    const-string v0, "RUIM CORPORATE"

    goto :goto_0

    .line 710
    :cond_b
    const-string v1, "IccCard_INTENT_VALUE_LOCKED_RUIM_SERVICE_PROVIDER"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 712
    const-string v0, "RUIM SERVICE PROVIDER"

    goto :goto_0

    .line 713
    :cond_c
    const-string v1, "IccCard_INTENT_VALUE_LOCKED_RUIM_RUIM"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 714
    const-string v0, "RUIM RUIM"

    goto/16 :goto_0

    .line 716
    :cond_d
    const-string v1, "Phone_APN_TYPE_DEFAULT"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 717
    const-string v0, "default"

    goto/16 :goto_0

    .line 718
    :cond_e
    const-string v1, "Phone_APN_TYPE_WAP"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 719
    const-string v0, "wap"

    goto/16 :goto_0

    .line 720
    :cond_f
    const-string v1, "Phone_FEATURE_ENABLE_NET"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 721
    const-string v0, "enalbeNET"

    goto/16 :goto_0

    .line 722
    :cond_10
    const-string v1, "Phone_FEATURE_ENABLE_WAP"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 723
    const-string v0, "enableWAP"

    goto/16 :goto_0

    .line 724
    :cond_11
    const-string v1, "BatteryManager_BATTERY_PLUGGED_DOCKING"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 725
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 726
    :cond_12
    const-string v1, "AppInterface_STK_IDLE_SCREEN_ACTION"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 727
    const-string v0, "android.intent.action.stk.idle_screen"

    goto/16 :goto_0

    .line 728
    :cond_13
    const-string v1, "AppInterface_CHECK_SCREEN_IDLE_ACTION"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 729
    const-string v0, "android.intent.action.stk.check_screen_idle"

    goto/16 :goto_0

    .line 730
    :cond_14
    const-string v1, "Settings_EPC_CURRENT_ATTEMPTS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 731
    const-string v0, "epc_current_attempts_remaining"

    goto/16 :goto_0
.end method

.method public static getStaticBootMode()I
    .locals 1

    .prologue
    .line 317
    sget v0, Lcom/android/server/StartShutdownService;->sBootMode:I

    return v0
.end method

.method private handleLauncherReady()V
    .locals 2

    .prologue
    .line 450
    iget-boolean v0, p0, Lcom/android/server/StartShutdownService;->mBootCompleted:Z

    if-eqz v0, :cond_1

    .line 459
    :cond_0
    :goto_0
    return-void

    .line 453
    :cond_1
    iget-object v0, p0, Lcom/android/server/StartShutdownService;->mState:Lcom/android/server/StartShutdownService$State;

    sget-object v1, Lcom/android/server/StartShutdownService$State;->Idle:Lcom/android/server/StartShutdownService$State;

    if-ne v0, v1, :cond_0

    .line 456
    const-string v0, "StartShutdownService"

    const-string v1, "******StartShutdownService --- MESSAGE_LAUNCHER_READY******"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/StartShutdownService;->mBootCompleted:Z

    goto :goto_0
.end method

.method private hasService()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 737
    iget-object v1, p0, Lcom/android/server/StartShutdownService;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_0

    .line 738
    iget-object v1, p0, Lcom/android/server/StartShutdownService;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 743
    :pswitch_0
    const/4 v0, 0x1

    .line 746
    :cond_0
    :pswitch_1
    return v0

    .line 738
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static init()V
    .locals 4

    .prologue
    .line 547
    const-string v2, "ro.boot.mode"

    const-string v3, "unknown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 548
    .local v0, "kBootMode":Ljava/lang/String;
    const-string v2, "sys.boot.mode"

    const-string v3, "unknown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 549
    .local v1, "sysBootMode":Ljava/lang/String;
    const-string v2, "unknown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 550
    move-object v0, v1

    .line 553
    :cond_0
    const/4 v2, 0x0

    sput v2, Lcom/android/server/StartShutdownService;->sBootMode:I

    .line 555
    const-string v2, "ac_charger"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "usb_cable"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 556
    :cond_1
    const/4 v2, 0x1

    sput v2, Lcom/android/server/StartShutdownService;->sBootMode:I

    .line 558
    :cond_2
    const-string v2, "rtc_alarm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 561
    :cond_3
    return-void
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 526
    iget-object v1, p0, Lcom/android/server/StartShutdownService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isTeleProduct()Z
    .locals 1

    .prologue
    .line 579
    const/4 v0, 0x0

    return v0
.end method

.method private loadSettings()V
    .locals 5

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/android/server/StartShutdownService;->getBootMode()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 463
    const-string v2, "StartShutdownService"

    const-string v3, "******StartShutdownService ---do not LoadSettings in RTC_ALARM mode******"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :goto_0
    return-void

    .line 467
    :cond_0
    const-string v2, "StartShutdownService"

    const-string v3, "******StartShutdownService --- LoadSettings******"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    const-string v2, "vold.decrypt"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 471
    .local v1, "state":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/StartShutdownService;->isAirplaneModeOn()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "trigger_restart_framework"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 473
    :cond_1
    const-string v2, "StartShutdownService"

    const-string v3, "******StartShutdownService --- AirplaneModeOn******"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/server/StartShutdownService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040087

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040013

    new-instance v4, Lcom/android/server/StartShutdownService$3;

    invoke-direct {v4, p0}, Lcom/android/server/StartShutdownService$3;-><init>(Lcom/android/server/StartShutdownService;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040009

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 485
    .local v0, "dialog":Landroid/app/AlertDialog;
    new-instance v2, Lcom/android/server/StartShutdownService$4;

    invoke-direct {v2, p0}, Lcom/android/server/StartShutdownService$4;-><init>(Lcom/android/server/StartShutdownService;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 491
    new-instance v2, Lcom/android/server/StartShutdownService$5;

    invoke-direct {v2, p0}, Lcom/android/server/StartShutdownService$5;-><init>(Lcom/android/server/StartShutdownService;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 497
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 500
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 503
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 505
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    :cond_2
    invoke-direct {p0}, Lcom/android/server/StartShutdownService;->showDataConnectionDialog()V

    goto :goto_0
.end method

.method public static main(Landroid/content/Context;I)Lcom/android/server/StartShutdownService;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "factoryTest"    # I

    .prologue
    .line 163
    new-instance v0, Lcom/android/server/StartShutdownService$SSThread;

    invoke-direct {v0, p0, p1}, Lcom/android/server/StartShutdownService$SSThread;-><init>(Landroid/content/Context;I)V

    .line 164
    .local v0, "thr":Lcom/android/server/StartShutdownService$SSThread;
    invoke-virtual {v0}, Lcom/android/server/StartShutdownService$SSThread;->start()V

    .line 166
    monitor-enter v0

    .line 167
    :goto_0
    :try_start_0
    iget-object v1, v0, Lcom/android/server/StartShutdownService$SSThread;->mService:Lcom/android/server/StartShutdownService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 169
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 170
    :catch_0
    move-exception v1

    goto :goto_0

    .line 173
    :cond_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 175
    iget-object v1, v0, Lcom/android/server/StartShutdownService$SSThread;->mService:Lcom/android/server/StartShutdownService;

    return-object v1

    .line 173
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public static powerSaveWhileCharging()V
    .locals 0

    .prologue
    .line 540
    return-void
.end method

.method private setAirplaneModeOff()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 531
    iget-object v1, p0, Lcom/android/server/StartShutdownService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 534
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 535
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 536
    iget-object v1, p0, Lcom/android/server/StartShutdownService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 537
    return-void
.end method

.method private static setBootAnim()V
    .locals 2

    .prologue
    .line 564
    const-string v0, "normal"

    .line 565
    .local v0, "bootAnim":Ljava/lang/String;
    sget v1, Lcom/android/server/StartShutdownService;->sBootMode:I

    packed-switch v1, :pswitch_data_0

    .line 573
    :goto_0
    :pswitch_0
    const-string v1, "sys.power.startup_mode"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    return-void

    .line 567
    :pswitch_1
    const-string v0, "alarm"

    .line 568
    goto :goto_0

    .line 570
    :pswitch_2
    const-string v0, "charge"

    goto :goto_0

    .line 565
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showDataConnectionDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 510
    iget-object v2, p0, Lcom/android/server/StartShutdownService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mobile_data_enable"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 512
    .local v1, "on":I
    iget-object v2, p0, Lcom/android/server/StartShutdownService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "first_boot_on"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 514
    .local v0, "firstBoot":I
    const-string v2, "StartShutdownService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "******showDataConnectionDialog --- mSimReady:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/StartShutdownService;->mSimReady:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",on:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mDataDialog:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/StartShutdownService;->mDataDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "******"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-boolean v2, p0, Lcom/android/server/StartShutdownService;->mDataDialogShown:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/StartShutdownService;->mSimReady:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/StartShutdownService;->isAirplaneModeOn()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/StartShutdownService;->hasService()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/server/StartShutdownService;->mDataDialog:Landroid/app/AlertDialog;

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    .line 520
    iget-object v2, p0, Lcom/android/server/StartShutdownService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "first_boot_on"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 523
    :cond_0
    return-void
.end method

.method private startFullSystem()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 265
    const-string v5, "R2"

    const-string v6, "Touch Startfull."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const-string v5, "sys.power.startup_ready"

    const-string v6, "1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    sget-object v5, Lcom/android/server/StartShutdownService$State;->Idle:Lcom/android/server/StartShutdownService$State;

    iput-object v5, p0, Lcom/android/server/StartShutdownService;->mState:Lcom/android/server/StartShutdownService$State;

    .line 269
    iget-boolean v5, p0, Lcom/android/server/StartShutdownService;->mLauncherReady:Z

    if-eqz v5, :cond_0

    const/4 v4, 0x0

    .line 270
    .local v4, "timeout":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/StartShutdownService;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/StartShutdownService;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x9

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    int-to-long v8, v4

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 273
    iget v5, p0, Lcom/android/server/StartShutdownService;->mFactoryTest:I

    if-eqz v5, :cond_1

    .line 303
    :goto_1
    return-void

    .line 269
    .end local v4    # "timeout":I
    :cond_0
    const/16 v4, 0x3a98

    goto :goto_0

    .line 278
    .restart local v4    # "timeout":I
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 279
    .local v0, "am":Landroid/app/IActivityManager;
    if-eqz v0, :cond_2

    .line 280
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 281
    .local v1, "config":Landroid/content/res/Configuration;
    if-eqz v1, :cond_2

    .line 282
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 288
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v1    # "config":Landroid/content/res/Configuration;
    :cond_2
    :goto_2
    sget v5, Lcom/android/server/StartShutdownService;->sBootMode:I

    if-ne v5, v10, :cond_3

    .line 289
    const-string v5, "sys.power.disable_radio"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v5, "R2"

    const-string v6, "Touch Start Full system, release locks now."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-direct {p0}, Lcom/android/server/StartShutdownService;->enableKeyguard()V

    .line 293
    :try_start_1
    const-string v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 295
    .local v3, "sPhone":Lcom/android/internal/telephony/ITelephony;
    if-eqz v3, :cond_3

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v5

    if-nez v5, :cond_3

    .line 296
    const/4 v5, 0x1

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 302
    .end local v3    # "sPhone":Lcom/android/internal/telephony/ITelephony;
    :cond_3
    :goto_3
    iget-object v5, p0, Lcom/android/server/StartShutdownService;->mPolicy:Lcom/android/server/StartShutdownPolicy;

    invoke-virtual {v5}, Lcom/android/server/StartShutdownPolicy;->onBootCompleted()V

    goto :goto_1

    .line 298
    :catch_0
    move-exception v2

    .line 299
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v5, "StartShutdownService"

    const-string v6, "RemoteException during radio on"

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 285
    .end local v2    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v5

    goto :goto_2
.end method


# virtual methods
.method public disableAutoShutdown()V
    .locals 3

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/server/StartShutdownService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/StartShutdownService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 385
    return-void
.end method

.method public disableAutoStart()V
    .locals 3

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/server/StartShutdownService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/StartShutdownService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 359
    return-void
.end method

.method public enableAutoShutdown(J)Z
    .locals 5
    .param p1, "timeMillisSeconds"    # J

    .prologue
    .line 372
    const-string v0, "StartShutdownService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shutdown:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/android/server/StartShutdownService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/StartShutdownService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 376
    const/4 v0, 0x1

    .line 378
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enableAutoStart(J)Z
    .locals 5
    .param p1, "timeMillisSeconds"    # J

    .prologue
    .line 347
    const-string v0, "StartShutdownService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/server/StartShutdownService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/StartShutdownService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 351
    const/4 v0, 0x1

    .line 353
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBootMode()I
    .locals 1

    .prologue
    .line 313
    sget v0, Lcom/android/server/StartShutdownService;->sBootMode:I

    return v0
.end method

.method public isAutoShutdownEnable()Z
    .locals 3

    .prologue
    .line 388
    sget-object v2, Lcom/android/server/StartShutdownService;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 389
    const/4 v0, 0x0

    .line 390
    .local v0, "result":Z
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StartShutdownService;->mPolicy:Lcom/android/server/StartShutdownPolicy;

    if-eqz v1, :cond_0

    .line 391
    iget-object v1, p0, Lcom/android/server/StartShutdownService;->mPolicy:Lcom/android/server/StartShutdownPolicy;

    invoke-virtual {v1}, Lcom/android/server/StartShutdownPolicy;->isAutoShutdownTimeSet()Z

    .line 393
    :cond_0
    monitor-exit v2

    return v0

    .line 394
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isAutoStartEnable()Z
    .locals 3

    .prologue
    .line 362
    sget-object v2, Lcom/android/server/StartShutdownService;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 363
    const/4 v0, 0x0

    .line 364
    .local v0, "result":Z
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StartShutdownService;->mPolicy:Lcom/android/server/StartShutdownPolicy;

    if-eqz v1, :cond_0

    .line 365
    iget-object v1, p0, Lcom/android/server/StartShutdownService;->mPolicy:Lcom/android/server/StartShutdownPolicy;

    invoke-virtual {v1}, Lcom/android/server/StartShutdownPolicy;->isAutoStartTimeSet()Z

    move-result v0

    .line 367
    :cond_0
    monitor-exit v2

    return v0

    .line 368
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isBootCompleted()Z
    .locals 2

    .prologue
    .line 751
    const-string v0, "sys.power.startup_ready"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSilentBoot()Z
    .locals 2

    .prologue
    .line 759
    const-string v0, "persist.sys.boot_silently"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSilentShutdown()Z
    .locals 2

    .prologue
    .line 763
    const-string v0, "persist.sys.shutdown_silently"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public launcherReady()V
    .locals 4

    .prologue
    .line 306
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/StartShutdownService;->mLauncherReady:Z

    .line 307
    iget-object v0, p0, Lcom/android/server/StartShutdownService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/StartShutdownService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 310
    return-void
.end method

.method public poweroffAlarmAlertFinish()V
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/server/StartShutdownService;->mState:Lcom/android/server/StartShutdownService$State;

    sget-object v1, Lcom/android/server/StartShutdownService$State;->Notify:Lcom/android/server/StartShutdownService$State;

    if-ne v0, v1, :cond_0

    .line 342
    iget-object v0, p0, Lcom/android/server/StartShutdownService;->mServiceCallback:Lcom/android/server/StartShutdownService$ServiceCallback;

    invoke-interface {v0}, Lcom/android/server/StartShutdownService$ServiceCallback;->shutdownAction()V

    .line 344
    :cond_0
    return-void
.end method

.method public poweroffAlarmAlertPrepare()V
    .locals 3

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/server/StartShutdownService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/StartShutdownService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 338
    return-void
.end method

.method public reboot()V
    .locals 3

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/server/StartShutdownService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/StartShutdownService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 328
    return-void
.end method

.method public setSilentBoot(Z)V
    .locals 2
    .param p1, "silent"    # Z

    .prologue
    .line 755
    const-string v0, "persist.sys.boot_silently"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    return-void
.end method

.method public setSilentShutdown(Z)V
    .locals 2
    .param p1, "silent"    # Z

    .prologue
    .line 767
    const-string v0, "persist.sys.shutdown_silently"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    return-void
.end method

.method public setSystemBusy(Z)V
    .locals 2
    .param p1, "busy"    # Z

    .prologue
    .line 331
    sget-object v1, Lcom/android/server/StartShutdownService;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 332
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/StartShutdownService;->mSystemBusy:Z

    .line 333
    monitor-exit v1

    .line 334
    return-void

    .line 333
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public shutdown(Z)V
    .locals 5
    .param p1, "needConfirm"    # Z

    .prologue
    const/4 v1, 0x0

    .line 321
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 322
    .local v0, "confirm":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/StartShutdownService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/StartShutdownService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 324
    return-void

    .end local v0    # "confirm":I
    :cond_0
    move v0, v1

    .line 321
    goto :goto_0
.end method

.method public systemReady()V
    .locals 3

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/android/server/StartShutdownService;->loadSettings()V

    .line 244
    iget v0, p0, Lcom/android/server/StartShutdownService;->mFactoryTest:I

    if-eqz v0, :cond_0

    .line 246
    invoke-direct {p0}, Lcom/android/server/StartShutdownService;->startFullSystem()V

    .line 262
    :goto_0
    return-void

    .line 249
    :cond_0
    const-string v0, "StartShutdownService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "******StartShutdownService --- systemReady:mBootMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/StartShutdownService;->sBootMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "******"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    sget v0, Lcom/android/server/StartShutdownService;->sBootMode:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 259
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/StartShutdownService;->startFullSystem()V

    goto :goto_0

    .line 253
    :pswitch_2
    const-string v0, "R2"

    const-string v1, "Disable keyguard for RTC Alarm!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-direct {p0}, Lcom/android/server/StartShutdownService;->disableKeyguard()V

    goto :goto_0

    .line 251
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
