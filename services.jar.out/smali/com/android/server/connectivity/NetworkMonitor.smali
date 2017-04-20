.class public Lcom/android/server/connectivity/NetworkMonitor;
.super Lcom/android/internal/util/StateMachine;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/NetworkMonitor$1;,
        Lcom/android/server/connectivity/NetworkMonitor$LingeringState;,
        Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;,
        Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;,
        Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;,
        Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;,
        Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;,
        Lcom/android/server/connectivity/NetworkMonitor$DefaultState;
    }
.end annotation


# static fields
.field private static final ACCEPT_CHARSET_HEADER_DEFAULT_VALUE:Ljava/lang/String; = "utf-8, utf-16, *;q=0.7"

.field private static final ACCEPT_ENCODING_HEADER_DEFAULT_VALUE:Ljava/lang/String; = "gzip,deflate"

.field private static final ACCEPT_HEADER_DEFAULT_VALUE:Ljava/lang/String; = "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"

.field private static final ACCEPT_LANGUAGE_HEADER_DEFAULT_VALUE:Ljava/lang/String; = "zh-CN, en-US"

.field public static final ACTION_NETWORK_CONDITIONS_MEASURED:Ljava/lang/String; = "android.net.conn.NETWORK_CONDITIONS_MEASURED"

.field private static final BASE:I = 0x82000

.field private static final BLAME_FOR_EVALUATION_ATTEMPTS:I = 0x5

.field private static final BODY_BEGIN_TAG:Ljava/lang/String; = "<BODY>"

.field private static final BODY_END_TAG:Ljava/lang/String; = "</BODY>"

.field private static final CAPTIVE_PORTAL_REEVALUATE_DELAY_MS:I = 0x927c0

.field private static final CMD_CAPTIVE_PORTAL_APP_FINISHED:I = 0x82009

.field private static final CMD_CAPTIVE_PORTAL_RECHECK:I = 0x8200c

.field public static final CMD_FORCE_REEVALUATION:I = 0x82008

.field private static final CMD_LAUNCH_CAPTIVE_PORTAL_APP:I = 0x8200b

.field private static final CMD_LINGER_EXPIRED:I = 0x82004

.field public static final CMD_NETWORK_CONNECTED:I = 0x82001

.field public static final CMD_NETWORK_DISCONNECTED:I = 0x82007

.field public static final CMD_NETWORK_LINGER:I = 0x82003

.field private static final CMD_REEVALUATE:I = 0x82006

.field private static final CMD_USER_WANTS_SIGN_IN:I = 0x8200e

.field private static final CONNECTION_HEADER_DEFAULT_VALUE:Ljava/lang/String; = "keep-alive"

.field private static final DBG:Z = true

.field private static DEFAULT_LINGER_DELAY_MS:I = 0x0

.field private static final DEFAULT_SERVER:Ljava/lang/String; = "captive.apple.com"

.field public static final EVENT_NETWORK_LINGER_COMPLETE:I = 0x82005

.field public static final EVENT_NETWORK_TESTED:I = 0x82002

.field public static final EVENT_PROVISIONING_NOTIFICATION:I = 0x8200a

.field public static final EXTRA_BSSID:Ljava/lang/String; = "extra_bssid"

.field public static final EXTRA_CELL_ID:Ljava/lang/String; = "extra_cellid"

.field public static final EXTRA_CONNECTIVITY_TYPE:Ljava/lang/String; = "extra_connectivity_type"

.field public static final EXTRA_IS_CAPTIVE_PORTAL:Ljava/lang/String; = "extra_is_captive_portal"

.field public static final EXTRA_NETWORK_TYPE:Ljava/lang/String; = "extra_network_type"

.field public static final EXTRA_REQUEST_TIMESTAMP_MS:Ljava/lang/String; = "extra_request_timestamp_ms"

.field public static final EXTRA_RESPONSE_RECEIVED:Ljava/lang/String; = "extra_response_received"

.field public static final EXTRA_RESPONSE_TIMESTAMP_MS:Ljava/lang/String; = "extra_response_timestamp_ms"

.field public static final EXTRA_SSID:Ljava/lang/String; = "extra_ssid"

.field private static final FILE_WIFI_SUPPLICANT:Ljava/lang/String; = "/data/misc/wifi/wpa_supplicant.conf"

.field private static final HOST_LIST:[Ljava/lang/String;

.field private static final HTTP_CONNECTION_TIMEOUT_DEFAULT_VALUE:I = 0x1388

.field private static final HTTP_HEADER_NAME_ACCEPT:Ljava/lang/String; = "Accept"

.field private static final HTTP_HEADER_NAME_ACCEPT_CHARSET:Ljava/lang/String; = "Accept-Charset"

.field private static final HTTP_HEADER_NAME_ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field private static final HTTP_HEADER_NAME_ACCEPT_LANGUAGE:Ljava/lang/String; = "Accept-Language"

.field private static final HTTP_HEADER_NAME_CONNECTION:Ljava/lang/String; = "Connection"

.field private static final HTTP_HEADER_NAME_USER_AGENT:Ljava/lang/String; = "User-Agent"

.field private static final HTTP_HEADER_NAME_X_REQUESTED_WITH:Ljava/lang/String; = "X-Requested-with"

.field private static final HTTP_HEADER_NAME_X_WAP_PROFILE:Ljava/lang/String; = "x-wap-profile"

.field private static final HTTP_SOCKET_CONNECTION_TIMEOUT_DEFAULT_VALUE:I = 0x1388

.field private static final IGNORE_REEVALUATE_ATTEMPTS:I = 0x5

.field private static final INITIAL_REEVALUATE_DELAY_MS:I = 0x3e8

.field private static final INVALID_UID:I = -0x1

.field private static final LINGER_DELAY_PROPERTY:Ljava/lang/String; = "persist.netmon.linger"

.field private static final MAX_REEVALUATE_DELAY_MS:I = 0x927c0

.field public static final NETWORK_TEST_RESULT_INVALID:I = 0x1

.field public static final NETWORK_TEST_RESULT_VALID:I = 0x0

.field private static final PERMISSION_ACCESS_NETWORK_CONDITIONS:Ljava/lang/String; = "android.permission.ACCESS_NETWORK_CONDITIONS"

.field private static final SOCKET_TIMEOUT_MS:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "NetworkMonitor"

.field private static final TITLE_BEGIN_TAG:Ljava/lang/String; = "<TITLE>"

.field private static final TITLE_END_TAG:Ljava/lang/String; = "</TITLE>"

.field private static final USER_AGENT_HEADER_DEFAULT_VALUE:Ljava/lang/String; = "Lenovo-S960/S104 Linux/3.0.13 Android/4.2 Release/07.05.2013 Browser/AppleWebKit534.30 Profile/ configuration"

.field private static final X_REQUESTED_WITH_HEADER_DEFAULT_VALUE:Ljava/lang/String; = "com.lenovo.browser"

.field private static final X_WAP_PROFILE_HEADER_DEFAULT_VALUE:Ljava/lang/String; = "http://218.249.47.94/xianghe/MTK_Phone_JB_UAprofile.xml"


# instance fields
.field private CAPTIVE_PORTAL_RECHECK_DELAY_MS:I

.field private DEFAULT_TRAFFIC_THRESHOLD:I

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mCaptivePortalState:Lcom/android/internal/util/State;

.field private final mConnectivityServiceHandler:Landroid/os/Handler;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultRequest:Landroid/net/NetworkRequest;

.field private final mDefaultState:Lcom/android/internal/util/State;

.field private mDontDisplaySigninNotification:Z

.field private final mEvaluatingState:Lcom/android/internal/util/State;

.field private mIsCaptivePortalCheckEnabled:Z

.field private mIsNeedCancelNotify:Z

.field private mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

.field private final mLingerDelayMs:I

.field private mLingerToken:I

.field private final mLingeringState:Lcom/android/internal/util/State;

.field private final mMaybeNotifyState:Lcom/android/internal/util/State;

.field private final mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

.field private mPolicyEditor:Lcom/android/server/connectivity/NetworkPolicyEditor;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mRecheck:I

.field private mReevaluateToken:I

.field private mServer:Ljava/lang/String;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTemplate:Landroid/net/NetworkTemplate;

.field private mUidResponsibleForReeval:I

.field private mUserDoesNotWant:Z

.field private mUserPrompted:I

.field private final mValidatedState:Lcom/android/internal/util/State;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private nNetd:Landroid/os/INetworkManagementService;

.field public systemReady:Z

.field private final validationLogs:Landroid/util/LocalLog;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 289
    const/16 v0, 0x7530

    sput v0, Lcom/android/server/connectivity/NetworkMonitor;->DEFAULT_LINGER_DELAY_MS:I

    .line 1756
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "www.baidu.com"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "www.sina.com.cn"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "www.bing.com"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/connectivity/NetworkMonitor;->HOST_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkRequest;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "networkAgentInfo"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p4, "defaultRequest"    # Landroid/net/NetworkRequest;

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkMonitor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 291
    iput v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLingerToken:I

    .line 298
    iput v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateToken:I

    .line 300
    iput v4, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUidResponsibleForReeval:I

    .line 315
    iput-boolean v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalCheckEnabled:Z

    .line 317
    iput v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUserPrompted:I

    .line 318
    iput-boolean v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsNeedCancelNotify:Z

    .line 322
    iput-boolean v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUserDoesNotWant:Z

    .line 324
    iput-boolean v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDontDisplaySigninNotification:Z

    .line 326
    iput-boolean v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->systemReady:Z

    .line 328
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;

    invoke-direct {v0, p0, v3}, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    .line 329
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;

    invoke-direct {v0, p0, v3}, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mValidatedState:Lcom/android/internal/util/State;

    .line 330
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;

    invoke-direct {v0, p0, v3}, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMaybeNotifyState:Lcom/android/internal/util/State;

    .line 331
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;

    invoke-direct {v0, p0, v3}, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingState:Lcom/android/internal/util/State;

    .line 332
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;

    invoke-direct {v0, p0, v3}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalState:Lcom/android/internal/util/State;

    .line 333
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;

    invoke-direct {v0, p0, v3}, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLingeringState:Lcom/android/internal/util/State;

    .line 335
    iput-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    .line 337
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->validationLogs:Landroid/util/LocalLog;

    .line 346
    const/16 v0, 0x400

    iput v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->DEFAULT_TRAFFIC_THRESHOLD:I

    .line 347
    iput v4, p0, Lcom/android/server/connectivity/NetworkMonitor;->mRecheck:I

    .line 348
    const v0, 0x927c0

    iput v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->CAPTIVE_PORTAL_RECHECK_DELAY_MS:I

    .line 356
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    .line 357
    iput-object p2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityServiceHandler:Landroid/os/Handler;

    .line 358
    iput-object p3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 359
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 360
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 361
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mAlarmManager:Landroid/app/AlarmManager;

    .line 362
    iput-object p4, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultRequest:Landroid/net/NetworkRequest;

    .line 364
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;)V

    .line 365
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mValidatedState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 366
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMaybeNotifyState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 367
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMaybeNotifyState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 368
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMaybeNotifyState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 369
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLingeringState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 370
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/NetworkMonitor;->setInitialState(Lcom/android/internal/util/State;)V

    .line 376
    const-string v0, "captive.apple.com"

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mServer:Ljava/lang/String;

    .line 379
    const-string v0, "persist.netmon.linger"

    sget v1, Lcom/android/server/connectivity/NetworkMonitor;->DEFAULT_LINGER_DELAY_MS:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLingerDelayMs:I

    .line 382
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_1

    .line 383
    iput-boolean v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalCheckEnabled:Z

    .line 391
    :cond_0
    :goto_0
    invoke-static {p1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 392
    const-string v0, "lenovo-internet"

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateWifi(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mTemplate:Landroid/net/NetworkTemplate;

    .line 393
    new-instance v0, Lcom/android/server/connectivity/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/NetworkPolicyEditor;-><init>(Landroid/net/NetworkPolicyManager;)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mPolicyEditor:Lcom/android/server/connectivity/NetworkPolicyEditor;

    .line 394
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mPolicyEditor:Lcom/android/server/connectivity/NetworkPolicyEditor;

    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkPolicyEditor;->read()V

    .line 395
    const-string v0, "network_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->nNetd:Landroid/os/INetworkManagementService;

    .line 405
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkMonitor;->start()V

    .line 406
    return-void

    .line 384
    :cond_1
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 385
    iput-boolean v5, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalCheckEnabled:Z

    goto :goto_0
.end method

.method public static SetDefaultLingerTime(I)V
    .locals 2
    .param p0, "time_ms"    # I

    .prologue
    .line 1181
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 1182
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "SetDefaultLingerTime only for internal testing."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1184
    :cond_0
    sput p0, Lcom/android/server/connectivity/NetworkMonitor;->DEFAULT_LINGER_DELAY_MS:I

    .line 1185
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/connectivity/NetworkMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsNeedCancelNotify:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/connectivity/NetworkMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 160
    iput-boolean p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsNeedCancelNotify:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/connectivity/NetworkMonitor;ZZILandroid/app/PendingIntent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # I
    .param p4, "x4"    # Landroid/app/PendingIntent;

    .prologue
    .line 160
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/connectivity/NetworkMonitor;->setProvNotificationVisibleIntent(ZZILandroid/app/PendingIntent;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;)Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/connectivity/NetworkMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkMonitor;->quit()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/connectivity/NetworkMonitor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 160
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUidResponsibleForReeval:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/connectivity/NetworkMonitor;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 160
    iput p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUidResponsibleForReeval:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 160
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1802(Lcom/android/server/connectivity/NetworkMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 160
    iput-boolean p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDontDisplaySigninNotification:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mValidatedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 160
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/connectivity/NetworkMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUserDoesNotWant:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/server/connectivity/NetworkMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 160
    iput-boolean p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUserDoesNotWant:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 160
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 160
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/NetworkTemplate;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mTemplate:Landroid/net/NetworkTemplate;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkPolicyEditor;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mPolicyEditor:Lcom/android/server/connectivity/NetworkPolicyEditor;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/connectivity/NetworkMonitor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 160
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->CAPTIVE_PORTAL_RECHECK_DELAY_MS:I

    return v0
.end method

.method static synthetic access$2702(Lcom/android/server/connectivity/NetworkMonitor;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 160
    iput p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->CAPTIVE_PORTAL_RECHECK_DELAY_MS:I

    return p1
.end method

.method static synthetic access$2800(Lcom/android/server/connectivity/NetworkMonitor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 160
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->DEFAULT_TRAFFIC_THRESHOLD:I

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/INetworkManagementService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->nNetd:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/connectivity/NetworkMonitor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 160
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUserPrompted:I

    return v0
.end method

.method static synthetic access$3002(Lcom/android/server/connectivity/NetworkMonitor;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 160
    iput p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUserPrompted:I

    return p1
.end method

.method static synthetic access$3100(Lcom/android/server/connectivity/NetworkMonitor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 160
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateToken:I

    return v0
.end method

.method static synthetic access$3104(Lcom/android/server/connectivity/NetworkMonitor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 160
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateToken:I

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/connectivity/NetworkMonitor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 160
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mRecheck:I

    return v0
.end method

.method static synthetic access$3202(Lcom/android/server/connectivity/NetworkMonitor;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 160
    iput p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mRecheck:I

    return p1
.end method

.method static synthetic access$3300(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/NetworkRequest;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultRequest:Landroid/net/NetworkRequest;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 160
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/connectivity/NetworkMonitor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->isCaptivePortalEx()I

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/android/server/connectivity/NetworkMonitor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mServer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->lookupHost(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/connectivity/NetworkMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->autoAuthorize()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/android/server/connectivity/NetworkMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->isInvalidNetwork()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/connectivity/NetworkMonitor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->getTopVisiblePackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 160
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 160
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 160
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/connectivity/NetworkMonitor;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 160
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/connectivity/NetworkMonitor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 160
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLingerToken:I

    return v0
.end method

.method static synthetic access$4602(Lcom/android/server/connectivity/NetworkMonitor;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 160
    iput p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLingerToken:I

    return p1
.end method

.method static synthetic access$4700(Lcom/android/server/connectivity/NetworkMonitor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 160
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLingerDelayMs:I

    return v0
.end method

.method static synthetic access$4800(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/app/AlarmManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 160
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLingeringState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 160
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 160
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method private addDefaultHeader(Lorg/apache/http/client/methods/HttpGet;)V
    .locals 2
    .param p1, "getMethod"    # Lorg/apache/http/client/methods/HttpGet;

    .prologue
    .line 1289
    if-nez p1, :cond_0

    .line 1299
    :goto_0
    return-void

    .line 1291
    :cond_0
    const-string v0, "Connection"

    const-string v1, "keep-alive"

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1292
    const-string v0, "Accept"

    const-string v1, "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1293
    const-string v0, "x-wap-profile"

    const-string v1, "http://218.249.47.94/xianghe/MTK_Phone_JB_UAprofile.xml"

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    const-string v0, "User-Agent"

    const-string v1, "Lenovo-S960/S104 Linux/3.0.13 Android/4.2 Release/07.05.2013 Browser/AppleWebKit534.30 Profile/ configuration"

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    const-string v0, "Accept-Encoding"

    const-string v1, "gzip,deflate"

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1296
    const-string v0, "Accept-Language"

    const-string v1, "zh-CN, en-US"

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    const-string v0, "Accept-Charset"

    const-string v1, "utf-8, utf-16, *;q=0.7"

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1298
    const-string v0, "X-Requested-with"

    const-string v1, "com.lenovo.browser"

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private autoAuthorize()Z
    .locals 26

    .prologue
    .line 1499
    new-instance v10, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v10}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 1501
    .local v10, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    const/4 v8, 0x0

    .line 1503
    .local v8, "getMethod":Lorg/apache/http/client/methods/HttpGet;
    const/4 v14, 0x0

    .line 1505
    .local v14, "response":Lorg/apache/http/HttpResponse;
    const/16 v18, 0x0

    .line 1507
    .local v18, "statusCode":I
    const/4 v15, 0x0

    .line 1509
    .local v15, "responseString":Ljava/lang/String;
    const/16 v20, 0x0

    .line 1511
    .local v20, "uriString":Ljava/lang/String;
    const/16 v19, 0x1

    .line 1513
    .local v19, "step":I
    const/4 v13, 0x0

    .line 1515
    .local v13, "redirect_count":I
    const-string v23, "NetworkMonitor"

    const-string v24, "[ Auto Authorize ] :: autoAuthorize Begin"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    if-nez v10, :cond_0

    .line 1519
    const-string v23, "NetworkMonitor"

    const-string v24, "[ Auto Authorize ] :: autoAuthorize, Null HTTP Client"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    const/16 v23, 0x0

    .line 1752
    :goto_0
    return v23

    .line 1524
    :cond_0
    invoke-virtual {v10}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v12

    .line 1525
    .local v12, "params":Lorg/apache/http/params/HttpParams;
    if-eqz v12, :cond_1

    .line 1527
    const-string v23, "http.protocol.handle-redirects"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-interface {v12, v0, v1}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 1528
    const-string v23, "http.socket.timeout"

    const/16 v24, 0x1388

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-interface {v12, v0, v1}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 1529
    const-string v23, "http.connection.timeout"

    const/16 v24, 0x1388

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-interface {v12, v0, v1}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 1532
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkMonitor;->mServer:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->lookupHost(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v17

    .line 1534
    .local v17, "server":Ljava/net/InetAddress;
    if-nez v17, :cond_2

    .line 1535
    const/16 v23, 0x0

    goto :goto_0

    .line 1537
    :cond_2
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "http://"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkMonitor;->mServer:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1542
    :goto_1
    const-string v23, "NetworkMonitor"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step 1, uri: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    :try_start_0
    new-instance v9, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, v20

    invoke-direct {v9, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1555
    .end local v8    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .local v9, "getMethod":Lorg/apache/http/client/methods/HttpGet;
    :goto_2
    if-nez v9, :cond_3

    .line 1557
    const-string v23, "NetworkMonitor"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", Null Get Method"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    const/16 v23, 0x0

    move-object v8, v9

    .end local v9    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .restart local v8    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    goto/16 :goto_0

    .line 1547
    :catch_0
    move-exception v4

    .line 1549
    .local v4, "e0":Ljava/lang/IllegalArgumentException;
    const-string v23, "NetworkMonitor"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", create HttpGet Fail, IllegalArgumentException occured"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v8

    .line 1553
    .end local v8    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .restart local v9    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    goto :goto_2

    .line 1550
    .end local v4    # "e0":Ljava/lang/IllegalArgumentException;
    .end local v9    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .restart local v8    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    :catch_1
    move-exception v3

    .line 1552
    .local v3, "e":Ljava/lang/Exception;
    const-string v23, "NetworkMonitor"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", create HttpGet Fail, Exception: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " occured"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v8

    .end local v8    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .restart local v9    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    goto :goto_2

    .line 1561
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/connectivity/NetworkMonitor;->addDefaultHeader(Lorg/apache/http/client/methods/HttpGet;)V

    .line 1563
    const/4 v14, 0x0

    .line 1566
    :try_start_1
    invoke-virtual {v10, v9}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v14

    .line 1582
    :goto_3
    if-nez v14, :cond_4

    .line 1583
    const-string v23, "NetworkMonitor"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", Null HTTP Response"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    const/16 v23, 0x0

    move-object v8, v9

    .end local v9    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .restart local v8    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    goto/16 :goto_0

    .line 1567
    .end local v8    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .restart local v9    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    :catch_2
    move-exception v5

    .line 1568
    .local v5, "e1":Lorg/apache/http/client/ClientProtocolException;
    const-string v23, "NetworkMonitor"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", execute() Fail, ClientProtocolException occured"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1570
    .end local v5    # "e1":Lorg/apache/http/client/ClientProtocolException;
    :catch_3
    move-exception v6

    .line 1571
    .local v6, "e2":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 1572
    const-string v23, "NetworkMonitor"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", execute() Fail, IOException occured"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1574
    .end local v6    # "e2":Ljava/io/IOException;
    :catch_4
    move-exception v7

    .line 1575
    .local v7, "e3":Ljava/lang/IllegalStateException;
    const-string v23, "NetworkMonitor"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", execute() Fail, IllegalStateException occured"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1577
    .end local v7    # "e3":Ljava/lang/IllegalStateException;
    :catch_5
    move-exception v3

    .line 1578
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v23, "NetworkMonitor"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", execute() Fail, Exception: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " occured"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1588
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v18

    .line 1590
    const-string v23, "NetworkMonitor"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", responseCode: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    const/16 v23, 0x12d

    move/from16 v0, v18

    move/from16 v1, v23

    if-eq v0, v1, :cond_5

    const/16 v23, 0x12e

    move/from16 v0, v18

    move/from16 v1, v23

    if-eq v0, v1, :cond_5

    .line 1594
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "http://"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkMonitor;->mServer:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 1595
    const-string v23, "NetworkMonitor"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", Unexpected HTTP ResponseCode: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    const/16 v23, 0x0

    move-object v8, v9

    .end local v9    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .restart local v8    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    goto/16 :goto_0

    .line 1599
    .end local v8    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .restart local v9    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    :cond_5
    const-string v23, "location"

    move-object/from16 v0, v23

    invoke-interface {v14, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v11

    .line 1600
    .local v11, "locationHeader":Lorg/apache/http/Header;
    if-nez v11, :cond_6

    .line 1601
    const-string v23, "NetworkMonitor"

    const-string v24, "[ Auto Authorize ] :: autoAuthorize, Step 1, Location Header Not Found"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    const/16 v23, 0x0

    move-object v8, v9

    .end local v9    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .restart local v8    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    goto/16 :goto_0

    .line 1604
    .end local v8    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .restart local v9    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    :cond_6
    invoke-interface {v11}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v20

    .line 1605
    add-int/lit8 v13, v13, 0x1

    .line 1620
    .end local v11    # "locationHeader":Lorg/apache/http/Header;
    :cond_7
    const/16 v23, 0x12d

    move/from16 v0, v18

    move/from16 v1, v23

    if-eq v0, v1, :cond_8

    const/16 v23, 0x12e

    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_9

    :cond_8
    const/16 v23, 0x3

    move/from16 v0, v23

    if-le v13, v0, :cond_13

    .line 1622
    :cond_9
    const/16 v23, 0x3

    move/from16 v0, v23

    if-le v13, v0, :cond_b

    const/16 v23, 0x12d

    move/from16 v0, v18

    move/from16 v1, v23

    if-eq v0, v1, :cond_a

    const/16 v23, 0x12e

    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_b

    .line 1624
    :cond_a
    const-string v23, "NetworkMonitor"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", Too Many Redirect"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    const/16 v23, 0x0

    move-object v8, v9

    .end local v9    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .restart local v8    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    goto/16 :goto_0

    .line 1628
    .end local v8    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .restart local v9    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    :cond_b
    const-string v23, "NetworkMonitor"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step 1 Complete, Redirect to: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    add-int/lit8 v19, v19, 0x1

    .line 1636
    :try_start_2
    new-instance v8, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    .line 1645
    .end local v9    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .restart local v8    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    :goto_4
    if-nez v8, :cond_c

    .line 1647
    const-string v23, "NetworkMonitor"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", Null Get Method"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 1637
    .end local v8    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .restart local v9    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    :catch_6
    move-exception v4

    .line 1639
    .restart local v4    # "e0":Ljava/lang/IllegalArgumentException;
    const-string v23, "NetworkMonitor"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", create HttpGet Fail, IllegalArgumentException occured"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v9

    .line 1643
    .end local v9    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .restart local v8    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    goto :goto_4

    .line 1640
    .end local v4    # "e0":Ljava/lang/IllegalArgumentException;
    .end local v8    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .restart local v9    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    :catch_7
    move-exception v3

    .line 1642
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v23, "NetworkMonitor"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", create HttpGet Fail, Exception: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " occured"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v9

    .end local v9    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .restart local v8    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    goto :goto_4

    .line 1652
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_c
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/connectivity/NetworkMonitor;->addDefaultHeader(Lorg/apache/http/client/methods/HttpGet;)V

    .line 1656
    :try_start_3
    invoke-virtual {v10, v8}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a

    move-result-object v14

    .line 1668
    :goto_5
    if-nez v14, :cond_d

    .line 1670
    const-string v23, "NetworkMonitor"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", Null HTTP Response"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 1657
    :catch_8
    move-exception v5

    .line 1659
    .restart local v5    # "e1":Lorg/apache/http/client/ClientProtocolException;
    const-string v23, "NetworkMonitor"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", execute() Fail, ClientProtocolException occured"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1660
    .end local v5    # "e1":Lorg/apache/http/client/ClientProtocolException;
    :catch_9
    move-exception v6

    .line 1662
    .restart local v6    # "e2":Ljava/io/IOException;
    const-string v23, "NetworkMonitor"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", execute() Fail, IOException occured"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1663
    .end local v6    # "e2":Ljava/io/IOException;
    :catch_a
    move-exception v3

    .line 1665
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v23, "NetworkMonitor"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", execute() Fail, Exception: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " occured"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1674
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_d
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v18

    .line 1676
    const-string v23, "NetworkMonitor"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", responseCode: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    const/16 v23, 0x191

    move/from16 v0, v18

    move/from16 v1, v23

    if-eq v0, v1, :cond_e

    .line 1680
    const-string v23, "NetworkMonitor"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step 2 Complete, Authorization is NOT requested, ResponseCode: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 1684
    :cond_e
    const-string v23, "NetworkMonitor"

    const-string v24, "[ Auto Authorize ] :: autoAuthorize, Step 2 Complete, Authorization is requested"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    add-int/lit8 v19, v19, 0x1

    .line 1689
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->getUserNameAndPasswordForHost(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 1691
    .local v16, "result":[Ljava/lang/String;
    if-nez v16, :cond_f

    .line 1693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string v24, "wifi"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/net/wifi/WifiManager;

    .line 1695
    .local v22, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v22, :cond_f

    .line 1697
    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v21

    .line 1699
    .local v21, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v21, :cond_f

    .line 1701
    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->getUserNameAndPasswordForAP(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 1706
    .end local v21    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v22    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_f
    if-nez v16, :cond_10

    .line 1708
    const-string v23, "NetworkMonitor"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", Username & Password Not Found, Authorize Fail"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 1712
    :cond_10
    const-string v23, "NetworkMonitor"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", Username: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x0

    aget-object v25, v16, v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", Password: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "*"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1714
    new-instance v2, Lorg/apache/http/auth/NTCredentials;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v24, 0x0

    aget-object v24, v16, v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ":"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x1

    aget-object v24, v16, v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v2, v0}, Lorg/apache/http/auth/NTCredentials;-><init>(Ljava/lang/String;)V

    .line 1716
    .local v2, "creds":Lorg/apache/http/auth/NTCredentials;
    invoke-virtual {v10}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v23

    sget-object v24, Lorg/apache/http/auth/AuthScope;->ANY:Lorg/apache/http/auth/AuthScope;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    .line 1720
    :try_start_4
    invoke-virtual {v10, v8}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_d

    move-result-object v14

    .line 1732
    :goto_6
    if-nez v14, :cond_11

    .line 1734
    const-string v23, "NetworkMonitor"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", Null HTTP Response"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 1721
    :catch_b
    move-exception v5

    .line 1723
    .restart local v5    # "e1":Lorg/apache/http/client/ClientProtocolException;
    const-string v23, "NetworkMonitor"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", execute() Fail, ClientProtocolException occured"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1724
    .end local v5    # "e1":Lorg/apache/http/client/ClientProtocolException;
    :catch_c
    move-exception v6

    .line 1726
    .restart local v6    # "e2":Ljava/io/IOException;
    const-string v23, "NetworkMonitor"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", execute() Fail, IOException occured"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1727
    .end local v6    # "e2":Ljava/io/IOException;
    :catch_d
    move-exception v3

    .line 1729
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v23, "NetworkMonitor"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", execute() Fail, Exception: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " occured"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1738
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_11
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v18

    .line 1740
    const-string v23, "NetworkMonitor"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", responseCode: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    const/16 v23, 0x191

    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_12

    .line 1744
    const-string v23, "NetworkMonitor"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step 3 Complete, Authorization is FAIL, ResponseCode: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 1748
    :cond_12
    const-string v23, "NetworkMonitor"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step 3 Complete, Authorization is SUCCESS, ResponseCode: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1750
    const-string v23, "NetworkMonitor"

    const-string v24, "[ Auto Authorize ] :: autoAuthorize End"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    const/16 v23, 0x1

    goto/16 :goto_0

    .end local v2    # "creds":Lorg/apache/http/auth/NTCredentials;
    .end local v8    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .end local v16    # "result":[Ljava/lang/String;
    .restart local v9    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    :cond_13
    move-object v8, v9

    .end local v9    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .restart local v8    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    goto/16 :goto_1
.end method

.method private getTopVisiblePackageName()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1778
    const/4 v1, 0x0

    .line 1780
    .local v1, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1782
    .local v0, "activityManager":Landroid/app/ActivityManager;
    if-eqz v0, :cond_0

    .line 1784
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 1786
    .local v3, "taskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 1789
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1791
    .local v2, "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v2, :cond_0

    iget-object v4, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_0

    .line 1794
    iget-object v4, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1796
    const-string v4, "NetworkMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getTopVisiblePackageName, packageName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", topActivity: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    .end local v2    # "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v3    # "taskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_0
    return-object v1
.end method

.method private getUserNameAndPasswordForAP(Ljava/lang/String;)[Ljava/lang/String;
    .locals 21
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 1304
    const/16 v17, 0x0

    .local v17, "userName":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1306
    .local v10, "passWord":Ljava/lang/String;
    if-nez p1, :cond_1

    .line 1307
    const/4 v15, 0x0

    .line 1484
    :cond_0
    :goto_0
    return-object v15

    .line 1309
    :cond_1
    const-string v18, "NetworkMonitor"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[ Auto Authorize ] :: getUserNameAndPasswordForAP, ssid: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    const/4 v13, 0x0

    .line 1315
    .local v13, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v6, Ljava/io/File;

    const-string v18, "/data/misc/wifi/wpa_supplicant.conf"

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1317
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_2

    .line 1319
    const-string v18, "NetworkMonitor"

    const-string v19, "[ Auto Authorize ] :: getUserNameAndPasswordForAP, Supplicant file NOT Exist"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1320
    const/4 v15, 0x0

    .line 1409
    if-eqz v13, :cond_0

    .line 1413
    :try_start_1
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1414
    :catch_0
    move-exception v5

    .line 1416
    .local v5, "e2":Ljava/io/IOException;
    const-string v18, "NetworkMonitor"

    const-string v19, "[ Auto Authorize ] :: getUserNameAndPasswordForAP, IOException occured when close BufferReader"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1323
    .end local v5    # "e2":Ljava/io/IOException;
    :cond_2
    :try_start_2
    new-instance v14, Ljava/io/BufferedReader;

    new-instance v18, Ljava/io/FileReader;

    move-object/from16 v0, v18

    invoke-direct {v0, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1325
    .end local v13    # "reader":Ljava/io/BufferedReader;
    .local v14, "reader":Ljava/io/BufferedReader;
    const/4 v9, 0x0

    .line 1329
    .local v9, "networkInfoMask":Z
    const/4 v12, 0x0

    .local v12, "preSharedKey":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "identity":Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "password":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "SSID":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1331
    .local v2, "BSSID":Ljava/lang/String;
    :cond_3
    :goto_1
    :try_start_3
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .local v8, "line":Ljava/lang/String;
    if-eqz v8, :cond_6

    .line 1333
    const/16 v16, 0x0

    .line 1335
    .local v16, "start":I
    const-string v18, "network={"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 1337
    const/4 v9, 0x1

    .line 1339
    const/4 v3, 0x0

    .line 1340
    const/4 v2, 0x0

    .line 1341
    const/4 v7, 0x0

    .line 1342
    const/4 v11, 0x0

    .line 1343
    const/4 v12, 0x0

    .line 1369
    :cond_4
    if-eqz v9, :cond_3

    .line 1371
    const-string v18, "bssid="

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    if-lez v18, :cond_a

    .line 1373
    const-string v18, "bssid="

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    const-string v19, "bssid="

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int v16, v18, v19

    .line 1375
    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1345
    :cond_5
    const-string v18, "}"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 1347
    const/4 v9, 0x0

    .line 1349
    const-string v18, "NetworkMonitor"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[ Auto Authorize ] :: getUserNameAndPasswordForAP, Read AP Info From Supplicant, ssid: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", BSSID: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", identity: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", password: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "*"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", psk: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "*"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    if-eqz v3, :cond_4

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v18

    if-eqz v18, :cond_4

    .line 1354
    if-eqz v7, :cond_9

    if-eqz v11, :cond_9

    .line 1356
    move-object/from16 v17, v7

    .line 1357
    move-object v10, v11

    .line 1409
    .end local v16    # "start":I
    :cond_6
    :goto_2
    if-eqz v14, :cond_7

    .line 1413
    :try_start_4
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1474
    :cond_7
    :goto_3
    if-eqz v17, :cond_8

    if-nez v10, :cond_f

    .line 1476
    :cond_8
    const-string v18, "NetworkMonitor"

    const-string v19, "[ Auto Authorize ] :: getUserNameAndPasswordForAP, Get UserName & Password Fail"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 1359
    .restart local v16    # "start":I
    :cond_9
    if-eqz v12, :cond_6

    .line 1361
    :try_start_5
    const-string v17, ""

    .line 1362
    move-object v10, v12

    goto :goto_2

    .line 1377
    :cond_a
    const-string v18, "ssid="

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    if-lez v18, :cond_b

    .line 1379
    const-string v18, "ssid="

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    const-string v19, "ssid="

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int v16, v18, v19

    .line 1381
    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 1383
    :cond_b
    const-string v18, "identity="

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    if-lez v18, :cond_c

    .line 1385
    const-string v18, "identity="

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    const-string v19, "identity="

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int v16, v18, v19

    .line 1387
    add-int/lit8 v18, v16, 0x1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 1389
    :cond_c
    const-string v18, "password="

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    if-lez v18, :cond_d

    .line 1391
    const-string v18, "password="

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    const-string v19, "password="

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int v16, v18, v19

    .line 1393
    add-int/lit8 v18, v16, 0x1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1

    .line 1395
    :cond_d
    const-string v18, "psk="

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    if-lez v18, :cond_3

    .line 1397
    const-string v18, "psk="

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    const-string v19, "psk="

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int v16, v18, v19

    .line 1399
    add-int/lit8 v18, v16, 0x1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v12

    goto/16 :goto_1

    .line 1414
    .end local v16    # "start":I
    :catch_1
    move-exception v5

    .line 1416
    .restart local v5    # "e2":Ljava/io/IOException;
    const-string v18, "NetworkMonitor"

    const-string v19, "[ Auto Authorize ] :: getUserNameAndPasswordForAP, IOException occured when close BufferReader"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1403
    .end local v2    # "BSSID":Ljava/lang/String;
    .end local v3    # "SSID":Ljava/lang/String;
    .end local v5    # "e2":Ljava/io/IOException;
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "identity":Ljava/lang/String;
    .end local v8    # "line":Ljava/lang/String;
    .end local v9    # "networkInfoMask":Z
    .end local v11    # "password":Ljava/lang/String;
    .end local v12    # "preSharedKey":Ljava/lang/String;
    .end local v14    # "reader":Ljava/io/BufferedReader;
    .restart local v13    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v4

    .line 1405
    .local v4, "e1":Ljava/io/IOException;
    :goto_4
    :try_start_6
    const-string v18, "NetworkMonitor"

    const-string v19, "[ Auto Authorize ] :: getUserNameAndPasswordForAP, IOException occured"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1406
    const/4 v15, 0x0

    .line 1409
    if-eqz v13, :cond_0

    .line 1413
    :try_start_7
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_0

    .line 1414
    :catch_3
    move-exception v5

    .line 1416
    .restart local v5    # "e2":Ljava/io/IOException;
    const-string v18, "NetworkMonitor"

    const-string v19, "[ Auto Authorize ] :: getUserNameAndPasswordForAP, IOException occured when close BufferReader"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1409
    .end local v4    # "e1":Ljava/io/IOException;
    .end local v5    # "e2":Ljava/io/IOException;
    :catchall_0
    move-exception v18

    :goto_5
    if-eqz v13, :cond_e

    .line 1413
    :try_start_8
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 1417
    :cond_e
    :goto_6
    throw v18

    .line 1414
    :catch_4
    move-exception v5

    .line 1416
    .restart local v5    # "e2":Ljava/io/IOException;
    const-string v19, "NetworkMonitor"

    const-string v20, "[ Auto Authorize ] :: getUserNameAndPasswordForAP, IOException occured when close BufferReader"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1480
    .end local v5    # "e2":Ljava/io/IOException;
    .end local v13    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "BSSID":Ljava/lang/String;
    .restart local v3    # "SSID":Ljava/lang/String;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v7    # "identity":Ljava/lang/String;
    .restart local v8    # "line":Ljava/lang/String;
    .restart local v9    # "networkInfoMask":Z
    .restart local v11    # "password":Ljava/lang/String;
    .restart local v12    # "preSharedKey":Ljava/lang/String;
    .restart local v14    # "reader":Ljava/io/BufferedReader;
    :cond_f
    const-string v18, "NetworkMonitor"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[ Auto Authorize ] :: getUserNameAndPasswordForAP, ssid: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", userName: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", passWord: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "*"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v15, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    aput-object v17, v15, v18

    const/16 v18, 0x1

    aput-object v10, v15, v18

    .line 1484
    .local v15, "result":[Ljava/lang/String;
    goto/16 :goto_0

    .line 1409
    .end local v8    # "line":Ljava/lang/String;
    .end local v15    # "result":[Ljava/lang/String;
    :catchall_1
    move-exception v18

    move-object v13, v14

    .end local v14    # "reader":Ljava/io/BufferedReader;
    .restart local v13    # "reader":Ljava/io/BufferedReader;
    goto :goto_5

    .line 1403
    .end local v13    # "reader":Ljava/io/BufferedReader;
    .restart local v14    # "reader":Ljava/io/BufferedReader;
    :catch_5
    move-exception v4

    move-object v13, v14

    .end local v14    # "reader":Ljava/io/BufferedReader;
    .restart local v13    # "reader":Ljava/io/BufferedReader;
    goto :goto_4
.end method

.method private getUserNameAndPasswordForHost(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "hostName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1489
    const/4 v1, 0x0

    .local v1, "userName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1491
    .local v0, "passWord":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 1494
    :cond_0
    return-object v2
.end method

.method private isCaptivePortalEx()I
    .locals 21

    .prologue
    .line 1813
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalCheckEnabled:Z

    if-nez v3, :cond_1

    .line 1814
    const/16 v14, 0xcc

    .line 1937
    :cond_0
    :goto_0
    return v14

    .line 1816
    :cond_1
    const/16 v20, 0x0

    .line 1817
    .local v20, "urlConnection":Ljava/net/HttpURLConnection;
    const/16 v14, 0x257

    .line 1819
    .local v14, "httpResponseCode":I
    const/16 v16, 0x0

    .line 1823
    .local v16, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v19, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/connectivity/NetworkMonitor;->mServer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1826
    .local v19, "url":Ljava/net/URL;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Checking "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v4, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 1828
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v3, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object/from16 v20, v0

    .line 1829
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 1830
    const/16 v3, 0x2710

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1831
    const/16 v3, 0x2710

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1832
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 1835
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1840
    .local v6, "requestTimestamp":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1842
    .local v8, "responseTimestamp":J
    invoke-virtual/range {v20 .. v20}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v14

    .line 1845
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCaptivePortalEx: ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " headers="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 1858
    const/16 v3, 0xc8

    if-ne v14, v3, :cond_4

    invoke-virtual/range {v20 .. v20}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    if-nez v3, :cond_4

    .line 1861
    const-string v3, "Empty 200 response interpreted as 204 response."

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 1862
    const/16 v14, 0xcc

    .line 1908
    :cond_2
    :goto_1
    const/4 v4, 0x1

    const/16 v3, 0xcc

    if-ne v14, v3, :cond_8

    const/4 v5, 0x1

    :goto_2
    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/server/connectivity/NetworkMonitor;->sendNetworkConditionsBroadcast(ZZJJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1920
    if-eqz v16, :cond_3

    .line 1924
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1931
    :cond_3
    :goto_3
    if-eqz v20, :cond_0

    .line 1933
    invoke-virtual/range {v20 .. v20}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 1864
    :cond_4
    const/16 v3, 0xc8

    if-ne v14, v3, :cond_2

    .line 1866
    :try_start_2
    new-instance v17, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual/range {v20 .. v20}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1867
    .end local v16    # "reader":Ljava/io/BufferedReader;
    .local v17, "reader":Ljava/io/BufferedReader;
    if-eqz v17, :cond_d

    .line 1869
    const/4 v15, 0x0

    .line 1870
    .local v15, "line":Ljava/lang/String;
    :cond_5
    :goto_4
    :try_start_3
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_d

    .line 1872
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCaptivePortalEx, line: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 1874
    const/16 v18, 0x0

    .local v18, "title":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1875
    .local v10, "body":Ljava/lang/String;
    const/4 v2, -0x1

    .local v2, "begin":I
    const/4 v13, -0x1

    .line 1877
    .local v13, "end":I
    const-string v3, "<TITLE>"

    invoke-virtual {v15, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1878
    const-string v3, "</TITLE>"

    invoke-virtual {v15, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    .line 1880
    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    const/4 v3, -0x1

    if-eq v13, v3, :cond_6

    if-le v13, v2, :cond_6

    .line 1884
    const-string v3, "<TITLE>"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v15, v3, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 1887
    :cond_6
    const-string v3, "<BODY>"

    invoke-virtual {v15, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1888
    const-string v3, "</BODY>"

    invoke-virtual {v15, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    .line 1890
    const/4 v3, -0x1

    if-eq v2, v3, :cond_7

    const/4 v3, -0x1

    if-eq v13, v3, :cond_7

    if-le v13, v2, :cond_7

    .line 1894
    const-string v3, "<BODY>"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v15, v3, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 1897
    :cond_7
    if-eqz v18, :cond_5

    const-string v3, "SUCCESS"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v10, :cond_5

    const-string v3, "SUCCESS"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v3

    if-eqz v3, :cond_5

    .line 1902
    const/16 v14, 0xcc

    goto :goto_4

    .line 1908
    .end local v2    # "begin":I
    .end local v10    # "body":Ljava/lang/String;
    .end local v13    # "end":I
    .end local v15    # "line":Ljava/lang/String;
    .end local v17    # "reader":Ljava/io/BufferedReader;
    .end local v18    # "title":Ljava/lang/String;
    .restart local v16    # "reader":Ljava/io/BufferedReader;
    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 1925
    :catch_0
    move-exception v12

    .line 1927
    .local v12, "e2":Ljava/io/IOException;
    const-string v3, "NetworkMonitor"

    const-string v4, "isCaptivePortalEx, IOException occured when close BufferReader"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1909
    .end local v6    # "requestTimestamp":J
    .end local v8    # "responseTimestamp":J
    .end local v12    # "e2":Ljava/io/IOException;
    .end local v19    # "url":Ljava/net/URL;
    :catch_1
    move-exception v11

    .line 1912
    .local v11, "e":Ljava/io/IOException;
    :goto_5
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Probably not a portal: exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1914
    const/16 v3, 0x257

    if-ne v14, v3, :cond_9

    .line 1920
    :cond_9
    if-eqz v16, :cond_a

    .line 1924
    :try_start_5
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 1931
    :cond_a
    :goto_6
    if-eqz v20, :cond_0

    .line 1933
    invoke-virtual/range {v20 .. v20}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 1925
    :catch_2
    move-exception v12

    .line 1927
    .restart local v12    # "e2":Ljava/io/IOException;
    const-string v3, "NetworkMonitor"

    const-string v4, "isCaptivePortalEx, IOException occured when close BufferReader"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1920
    .end local v11    # "e":Ljava/io/IOException;
    .end local v12    # "e2":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_7
    if-eqz v16, :cond_b

    .line 1924
    :try_start_6
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 1931
    :cond_b
    :goto_8
    if-eqz v20, :cond_c

    .line 1933
    invoke-virtual/range {v20 .. v20}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_c
    throw v3

    .line 1925
    :catch_3
    move-exception v12

    .line 1927
    .restart local v12    # "e2":Ljava/io/IOException;
    const-string v4, "NetworkMonitor"

    const-string v5, "isCaptivePortalEx, IOException occured when close BufferReader"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 1920
    .end local v12    # "e2":Ljava/io/IOException;
    .end local v16    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "requestTimestamp":J
    .restart local v8    # "responseTimestamp":J
    .restart local v15    # "line":Ljava/lang/String;
    .restart local v17    # "reader":Ljava/io/BufferedReader;
    .restart local v19    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v3

    move-object/from16 v16, v17

    .end local v17    # "reader":Ljava/io/BufferedReader;
    .restart local v16    # "reader":Ljava/io/BufferedReader;
    goto :goto_7

    .line 1909
    .end local v16    # "reader":Ljava/io/BufferedReader;
    .restart local v17    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v11

    move-object/from16 v16, v17

    .end local v17    # "reader":Ljava/io/BufferedReader;
    .restart local v16    # "reader":Ljava/io/BufferedReader;
    goto :goto_5

    .end local v15    # "line":Ljava/lang/String;
    .end local v16    # "reader":Ljava/io/BufferedReader;
    .restart local v17    # "reader":Ljava/io/BufferedReader;
    :cond_d
    move-object/from16 v16, v17

    .end local v17    # "reader":Ljava/io/BufferedReader;
    .restart local v16    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_1
.end method

.method private isInvalidNetwork()Z
    .locals 5

    .prologue
    .line 1760
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/android/server/connectivity/NetworkMonitor;->HOST_LIST:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1762
    sget-object v2, Lcom/android/server/connectivity/NetworkMonitor;->HOST_LIST:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-direct {p0, v2}, Lcom/android/server/connectivity/NetworkMonitor;->lookupHost(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 1764
    .local v1, "server":Ljava/net/InetAddress;
    if-eqz v1, :cond_0

    .line 1766
    const-string v2, "NetworkMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isInvalidNetwork, Host: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/connectivity/NetworkMonitor;->HOST_LIST:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", IP: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    const/4 v2, 0x0

    .line 1773
    .end local v1    # "server":Ljava/net/InetAddress;
    :goto_1
    return v2

    .line 1760
    .restart local v1    # "server":Ljava/net/InetAddress;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1771
    .end local v1    # "server":Ljava/net/InetAddress;
    :cond_1
    const-string v2, "NetworkMonitor"

    const-string v3, "isInvalidNetwork, current WLAN network is INVALID"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1773
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private lookupHost(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 10
    .param p1, "hostname"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1191
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "lookupHost, hostName: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 1192
    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v7, v7, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v7, v7, Landroid/net/Network;->netId:I

    invoke-static {p1, v7}, Ljava/net/InetAddress;->getAllByNameOnNet(Ljava/lang/String;I)[Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1199
    .local v4, "inetAddress":[Ljava/net/InetAddress;
    const-string v7, "lookupHost success"

    invoke-virtual {p0, v7}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 1201
    move-object v1, v4

    .local v1, "arr$":[Ljava/net/InetAddress;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, v1, v3

    .line 1202
    .local v0, "a":Ljava/net/InetAddress;
    instance-of v7, v0, Ljava/net/Inet4Address;

    if-eqz v7, :cond_0

    .line 1206
    .end local v0    # "a":Ljava/net/InetAddress;
    .end local v1    # "arr$":[Ljava/net/InetAddress;
    .end local v3    # "i$":I
    .end local v4    # "inetAddress":[Ljava/net/InetAddress;
    .end local v5    # "len$":I
    :goto_1
    return-object v0

    .line 1193
    :catch_0
    move-exception v2

    .line 1194
    .local v2, "e":Ljava/net/UnknownHostException;
    const-string v7, "lookupHost, UnknownHostException"

    invoke-virtual {p0, v7}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 1195
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Lcom/android/server/connectivity/NetworkMonitor;->sendFailedCaptivePortalCheckBroadcast(J)V

    move-object v0, v6

    .line 1196
    goto :goto_1

    .line 1201
    .end local v2    # "e":Ljava/net/UnknownHostException;
    .restart local v0    # "a":Ljava/net/InetAddress;
    .restart local v1    # "arr$":[Ljava/net/InetAddress;
    .restart local v3    # "i$":I
    .restart local v4    # "inetAddress":[Ljava/net/InetAddress;
    .restart local v5    # "len$":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1205
    .end local v0    # "a":Ljava/net/InetAddress;
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Lcom/android/server/connectivity/NetworkMonitor;->sendFailedCaptivePortalCheckBroadcast(J)V

    move-object v0, v6

    .line 1206
    goto :goto_1
.end method

.method private sendFailedCaptivePortalCheckBroadcast(J)V
    .locals 9
    .param p1, "requestTimestampMs"    # J

    .prologue
    const/4 v2, 0x0

    .line 1210
    const-wide/16 v6, 0x0

    move-object v1, p0

    move v3, v2

    move-wide v4, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/connectivity/NetworkMonitor;->sendNetworkConditionsBroadcast(ZZJJ)V

    .line 1212
    return-void
.end method

.method private sendNetworkConditionsBroadcast(ZZJJ)V
    .locals 13
    .param p1, "responseReceived"    # Z
    .param p2, "isCaptivePortal"    # Z
    .param p3, "requestTimestampMs"    # J
    .param p5, "responseTimestampMs"    # J

    .prologue
    .line 1105
    iget-object v9, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "wifi_scan_always_enabled"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_1

    .line 1176
    :cond_0
    :goto_0
    return-void

    .line 1110
    :cond_1
    iget-boolean v9, p0, Lcom/android/server/connectivity/NetworkMonitor;->systemReady:Z

    if-eqz v9, :cond_0

    .line 1112
    new-instance v7, Landroid/content/Intent;

    const-string v9, "android.net.conn.NETWORK_CONDITIONS_MEASURED"

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1113
    .local v7, "latencyBroadcast":Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v9, v9, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    goto :goto_0

    .line 1132
    :pswitch_0
    const-string v9, "extra_network_type"

    iget-object v10, p0, Lcom/android/server/connectivity/NetworkMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v10

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1133
    iget-object v9, p0, Lcom/android/server/connectivity/NetworkMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v6

    .line 1134
    .local v6, "info":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    if-eqz v6, :cond_0

    .line 1135
    const/4 v8, 0x0

    .line 1136
    .local v8, "numRegisteredCellInfo":I
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CellInfo;

    .line 1137
    .local v3, "cellInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v3}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1138
    add-int/lit8 v8, v8, 0x1

    .line 1139
    const/4 v9, 0x1

    if-le v8, v9, :cond_6

    .line 1140
    const-string v9, "more than one registered CellInfo.  Can\'t tell which is active.  Bailing."

    invoke-virtual {p0, v9}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1115
    .end local v3    # "cellInfo":Landroid/telephony/CellInfo;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "info":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    .end local v8    # "numRegisteredCellInfo":I
    :pswitch_1
    iget-object v9, p0, Lcom/android/server/connectivity/NetworkMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 1116
    .local v4, "currentWifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v4, :cond_5

    .line 1124
    const-string v9, "extra_ssid"

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1125
    const-string v9, "extra_bssid"

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1166
    .end local v4    # "currentWifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_3
    const-string v9, "extra_connectivity_type"

    iget-object v10, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v10, v10, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getType()I

    move-result v10

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1167
    const-string v9, "extra_response_received"

    invoke-virtual {v7, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1168
    const-string v9, "extra_request_timestamp_ms"

    move-wide/from16 v0, p3

    invoke-virtual {v7, v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1170
    if-eqz p1, :cond_4

    .line 1171
    const-string v9, "extra_is_captive_portal"

    invoke-virtual {v7, v9, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1172
    const-string v9, "extra_response_timestamp_ms"

    move-wide/from16 v0, p5

    invoke-virtual {v7, v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1174
    :cond_4
    iget-object v9, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v11, "android.permission.ACCESS_NETWORK_CONDITIONS"

    invoke-virtual {v9, v7, v10, v11}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1127
    .restart local v4    # "currentWifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_5
    const-string v9, "network info is TYPE_WIFI but no ConnectionInfo found"

    invoke-virtual {p0, v9}, Lcom/android/server/connectivity/NetworkMonitor;->logw(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1144
    .end local v4    # "currentWifiInfo":Landroid/net/wifi/WifiInfo;
    .restart local v3    # "cellInfo":Landroid/telephony/CellInfo;
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v6    # "info":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    .restart local v8    # "numRegisteredCellInfo":I
    :cond_6
    instance-of v9, v3, Landroid/telephony/CellInfoCdma;

    if-eqz v9, :cond_7

    .line 1145
    check-cast v3, Landroid/telephony/CellInfoCdma;

    .end local v3    # "cellInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v3}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v2

    .line 1146
    .local v2, "cellId":Landroid/telephony/CellIdentityCdma;
    const-string v9, "extra_cellid"

    invoke-virtual {v7, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1

    .line 1147
    .end local v2    # "cellId":Landroid/telephony/CellIdentityCdma;
    .restart local v3    # "cellInfo":Landroid/telephony/CellInfo;
    :cond_7
    instance-of v9, v3, Landroid/telephony/CellInfoGsm;

    if-eqz v9, :cond_8

    .line 1148
    check-cast v3, Landroid/telephony/CellInfoGsm;

    .end local v3    # "cellInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v3}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v2

    .line 1149
    .local v2, "cellId":Landroid/telephony/CellIdentityGsm;
    const-string v9, "extra_cellid"

    invoke-virtual {v7, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 1150
    .end local v2    # "cellId":Landroid/telephony/CellIdentityGsm;
    .restart local v3    # "cellInfo":Landroid/telephony/CellInfo;
    :cond_8
    instance-of v9, v3, Landroid/telephony/CellInfoLte;

    if-eqz v9, :cond_9

    .line 1151
    check-cast v3, Landroid/telephony/CellInfoLte;

    .end local v3    # "cellInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v3}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v2

    .line 1152
    .local v2, "cellId":Landroid/telephony/CellIdentityLte;
    const-string v9, "extra_cellid"

    invoke-virtual {v7, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 1153
    .end local v2    # "cellId":Landroid/telephony/CellIdentityLte;
    .restart local v3    # "cellInfo":Landroid/telephony/CellInfo;
    :cond_9
    instance-of v9, v3, Landroid/telephony/CellInfoWcdma;

    if-eqz v9, :cond_a

    .line 1154
    check-cast v3, Landroid/telephony/CellInfoWcdma;

    .end local v3    # "cellInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v3}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v2

    .line 1155
    .local v2, "cellId":Landroid/telephony/CellIdentityWcdma;
    const-string v9, "extra_cellid"

    invoke-virtual {v7, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 1157
    .end local v2    # "cellId":Landroid/telephony/CellIdentityWcdma;
    .restart local v3    # "cellInfo":Landroid/telephony/CellInfo;
    :cond_a
    const-string v9, "Registered cellinfo is unrecognized"

    invoke-virtual {p0, v9}, Lcom/android/server/connectivity/NetworkMonitor;->logw(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1113
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setProvNotificationVisibleIntent(ZZILandroid/app/PendingIntent;)V
    .locals 10
    .param p1, "visible"    # Z
    .param p2, "isCaptiveProtal"    # Z
    .param p3, "id"    # I
    .param p4, "intent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1215
    iget-object v6, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 1217
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    if-eqz p1, :cond_1

    .line 1220
    new-instance v6, Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x108064c

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v6

    const-string v7, "sys"

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 1229
    .local v1, "notificationBuilder":Landroid/app/Notification$Builder;
    invoke-virtual {v1, p4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1230
    if-eqz p2, :cond_0

    .line 1231
    iget-object v6, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x9090049

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1233
    .local v5, "title":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x909004a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1241
    .local v4, "summary":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1242
    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1243
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 1245
    .local v0, "n":Landroid/app/Notification;
    const/4 v6, 0x1

    :try_start_0
    iput-boolean v6, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsNeedCancelNotify:Z

    .line 1246
    const-string v6, "CaptivePortal.Notification"

    invoke-virtual {v2, v6, p3, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1262
    .end local v0    # "n":Landroid/app/Notification;
    .end local v1    # "notificationBuilder":Landroid/app/Notification$Builder;
    .end local v4    # "summary":Ljava/lang/String;
    .end local v5    # "title":Ljava/lang/String;
    :goto_1
    return-void

    .line 1236
    .restart local v1    # "notificationBuilder":Landroid/app/Notification$Builder;
    :cond_0
    iget-object v6, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x909004c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1238
    .restart local v5    # "title":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x909004d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "summary":Ljava/lang/String;
    goto :goto_0

    .line 1247
    .restart local v0    # "n":Landroid/app/Notification;
    :catch_0
    move-exception v3

    .line 1248
    .local v3, "npe":Ljava/lang/NullPointerException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setNotificaitionVisible: visible notificationManager npe="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/connectivity/NetworkMonitor;->loge(Ljava/lang/String;)V

    .line 1249
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 1253
    .end local v0    # "n":Landroid/app/Notification;
    .end local v1    # "notificationBuilder":Landroid/app/Notification$Builder;
    .end local v3    # "npe":Ljava/lang/NullPointerException;
    .end local v4    # "summary":Ljava/lang/String;
    .end local v5    # "title":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-boolean v6, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsNeedCancelNotify:Z

    if-eqz v6, :cond_2

    .line 1254
    const-string v6, "CaptivePortal.Notification"

    invoke-virtual {v2, v6, p3}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 1256
    :cond_2
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsNeedCancelNotify:Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1257
    :catch_1
    move-exception v3

    .line 1258
    .restart local v3    # "npe":Ljava/lang/NullPointerException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setNotificaitionVisible: cancel notificationManager npe="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/connectivity/NetworkMonitor;->loge(Ljava/lang/String;)V

    .line 1259
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method

.method private validationLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 414
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 415
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->validationLogs:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 416
    return-void
.end method


# virtual methods
.method public getValidationLogs()Landroid/util/LocalLog$ReadOnlyLocalLog;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->validationLogs:Landroid/util/LocalLog;

    invoke-virtual {v0}, Landroid/util/LocalLog;->readOnlyLocalLog()Landroid/util/LocalLog$ReadOnlyLocalLog;

    move-result-object v0

    return-object v0
.end method

.method protected isCaptivePortal()I
    .locals 29

    .prologue
    .line 958
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalCheckEnabled:Z

    if-nez v3, :cond_1

    const/16 v19, 0xcc

    .line 1093
    :cond_0
    :goto_0
    return v19

    .line 960
    :cond_1
    const/16 v28, 0x0

    .line 961
    .local v28, "urlConnection":Ljava/net/HttpURLConnection;
    const/16 v19, 0x257

    .line 963
    .local v19, "httpResponseCode":I
    :try_start_0
    new-instance v27, Ljava/net/URL;

    const-string v3, "http"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/connectivity/NetworkMonitor;->mServer:Ljava/lang/String;

    const-string v5, "/generate_204"

    move-object/from16 v0, v27

    invoke-direct {v0, v3, v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    .local v27, "url":Ljava/net/URL;
    const/16 v17, 0x0

    .line 981
    .local v17, "fetchPac":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v3, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v24

    .line 982
    .local v24, "proxyInfo":Landroid/net/ProxyInfo;
    if-eqz v24, :cond_2

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual/range {v24 .. v24}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 983
    new-instance v27, Ljava/net/URL;

    .end local v27    # "url":Ljava/net/URL;
    invoke-virtual/range {v24 .. v24}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 984
    .restart local v27    # "url":Ljava/net/URL;
    const/16 v17, 0x1

    .line 986
    :cond_2
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    .line 987
    .local v14, "connectInfo":Ljava/lang/StringBuffer;
    const/16 v18, 0x0

    .line 990
    .local v18, "hostToResolve":Ljava/lang/String;
    if-eqz v24, :cond_3

    if-eqz v17, :cond_6

    .line 991
    :cond_3
    invoke-virtual/range {v27 .. v27}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v18

    .line 995
    :cond_4
    :goto_1
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 996
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 997
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v3, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v10

    .line 999
    .local v10, "addresses":[Ljava/net/InetAddress;
    move-object v11, v10

    .local v11, "arr$":[Ljava/net/InetAddress;
    array-length v0, v11

    move/from16 v21, v0

    .local v21, "len$":I
    const/16 v20, 0x0

    .local v20, "i$":I
    :goto_2
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_7

    aget-object v2, v11, v20

    .line 1000
    .local v2, "address":Ljava/net/InetAddress;
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1001
    array-length v3, v10

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v10, v3

    if-eq v2, v3, :cond_5

    const-string v3, ","

    invoke-virtual {v14, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 999
    :cond_5
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 992
    .end local v2    # "address":Ljava/net/InetAddress;
    .end local v10    # "addresses":[Ljava/net/InetAddress;
    .end local v11    # "arr$":[Ljava/net/InetAddress;
    .end local v20    # "i$":I
    .end local v21    # "len$":I
    :cond_6
    if-eqz v24, :cond_4

    .line 993
    invoke-virtual/range {v24 .. v24}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v18

    goto :goto_1

    .line 1004
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Checking "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v27 .. v27}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v4, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 1006
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v3, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object/from16 v28, v0

    .line 1007
    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 1008
    const/16 v3, 0x2710

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1009
    const/16 v3, 0x2710

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1010
    const/4 v3, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 1013
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1015
    .local v6, "requestTimestamp":J
    invoke-virtual/range {v28 .. v28}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    .line 1018
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1020
    .local v8, "responseTimestamp":J
    invoke-virtual/range {v28 .. v28}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v19

    .line 1021
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCaptivePortal: ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " headers="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v28 .. v28}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 1039
    const/16 v3, 0xc8

    move/from16 v0, v19

    if-ne v0, v3, :cond_b

    .line 1040
    new-instance v25, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual/range {v28 .. v28}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v25

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1041
    .local v25, "reader":Ljava/io/BufferedReader;
    if-eqz v25, :cond_b

    .line 1042
    const/16 v22, 0x0

    .line 1043
    .local v22, "line":Ljava/lang/String;
    :cond_8
    :goto_3
    invoke-virtual/range {v25 .. v25}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_b

    .line 1044
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCaptivePortalEx, line: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 1045
    const/16 v26, 0x0

    .local v26, "title":Ljava/lang/String;
    const/4 v13, 0x0

    .line 1046
    .local v13, "body":Ljava/lang/String;
    const/4 v12, -0x1

    .local v12, "begin":I
    const/16 v16, -0x1

    .line 1048
    .local v16, "end":I
    const-string v3, "<TITLE>"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 1049
    const-string v3, "</TITLE>"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    .line 1050
    const/4 v3, -0x1

    if-eq v12, v3, :cond_9

    const/4 v3, -0x1

    move/from16 v0, v16

    if-eq v0, v3, :cond_9

    move/from16 v0, v16

    if-le v0, v12, :cond_9

    .line 1051
    const-string v3, "<TITLE>"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v12

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    .line 1054
    :cond_9
    const-string v3, "<BODY>"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 1055
    const-string v3, "</BODY>"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    .line 1056
    const/4 v3, -0x1

    if-eq v12, v3, :cond_a

    const/4 v3, -0x1

    move/from16 v0, v16

    if-eq v0, v3, :cond_a

    move/from16 v0, v16

    if-le v0, v12, :cond_a

    .line 1057
    const-string v3, "<BODY>"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v12

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 1059
    :cond_a
    if-eqz v26, :cond_8

    const-string v3, "SUCCESS"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz v13, :cond_8

    const-string v3, "SUCCESS"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1061
    const/16 v19, 0xcc

    goto/16 :goto_3

    .line 1067
    .end local v12    # "begin":I
    .end local v13    # "body":Ljava/lang/String;
    .end local v16    # "end":I
    .end local v22    # "line":Ljava/lang/String;
    .end local v25    # "reader":Ljava/io/BufferedReader;
    .end local v26    # "title":Ljava/lang/String;
    :cond_b
    const/16 v3, 0x12e

    move/from16 v0, v19

    if-eq v0, v3, :cond_c

    const/16 v3, 0x12e

    move/from16 v0, v19

    if-ne v0, v3, :cond_d

    .line 1068
    :cond_c
    const-string v3, "Location"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1069
    .local v23, "location":Ljava/lang/String;
    if-eqz v23, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/connectivity/NetworkMonitor;->mServer:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1070
    const/16 v19, 0xcc

    .line 1075
    .end local v23    # "location":Ljava/lang/String;
    :cond_d
    const/16 v3, 0xc8

    move/from16 v0, v19

    if-ne v0, v3, :cond_e

    if-eqz v17, :cond_e

    .line 1076
    const-string v3, "PAC fetch 200 response interpreted as 204 response."

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 1077
    const/16 v19, 0xcc

    .line 1080
    :cond_e
    const/4 v4, 0x1

    const/16 v3, 0xcc

    move/from16 v0, v19

    if-eq v0, v3, :cond_f

    const/4 v5, 0x1

    :goto_4
    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/server/connectivity/NetworkMonitor;->sendNetworkConditionsBroadcast(ZZJJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1089
    if-eqz v28, :cond_0

    .line 1090
    invoke-virtual/range {v28 .. v28}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 1080
    :cond_f
    const/4 v5, 0x0

    goto :goto_4

    .line 1083
    .end local v6    # "requestTimestamp":J
    .end local v8    # "responseTimestamp":J
    .end local v14    # "connectInfo":Ljava/lang/StringBuffer;
    .end local v17    # "fetchPac":Z
    .end local v18    # "hostToResolve":Ljava/lang/String;
    .end local v24    # "proxyInfo":Landroid/net/ProxyInfo;
    .end local v27    # "url":Ljava/net/URL;
    :catch_0
    move-exception v15

    .line 1084
    .local v15, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Probably not a portal: exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1085
    const/16 v3, 0x257

    move/from16 v0, v19

    if-ne v0, v3, :cond_10

    .line 1089
    :cond_10
    if-eqz v28, :cond_0

    .line 1090
    invoke-virtual/range {v28 .. v28}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 1089
    .end local v15    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz v28, :cond_11

    .line 1090
    invoke-virtual/range {v28 .. v28}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_11
    throw v3
.end method

.method protected log(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkMonitor/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    return-void
.end method
