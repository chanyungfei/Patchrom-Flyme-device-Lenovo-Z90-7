.class public Lcom/android/server/wifi/WifiStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiStateMachine$UntetheringState;,
        Lcom/android/server/wifi/WifiStateMachine$TetheredState;,
        Lcom/android/server/wifi/WifiStateMachine$TetheringState;,
        Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;,
        Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;,
        Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;,
        Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;,
        Lcom/android/server/wifi/WifiStateMachine$DisconnectingState;,
        Lcom/android/server/wifi/WifiStateMachine$ConnectedState;,
        Lcom/android/server/wifi/WifiStateMachine$RoamingState;,
        Lcom/android/server/wifi/WifiStateMachine$VerifyingLinkState;,
        Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;,
        Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;,
        Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;,
        Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;,
        Lcom/android/server/wifi/WifiStateMachine$ScanModeState;,
        Lcom/android/server/wifi/WifiStateMachine$DriverStoppedState;,
        Lcom/android/server/wifi/WifiStateMachine$DriverStoppingState;,
        Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;,
        Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;,
        Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;,
        Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;,
        Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;,
        Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;,
        Lcom/android/server/wifi/WifiStateMachine$InitialState;,
        Lcom/android/server/wifi/WifiStateMachine$DefaultState;,
        Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;,
        Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;,
        Lcom/android/server/wifi/WifiStateMachine$SimAuthResponseData;,
        Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;,
        Lcom/android/server/wifi/WifiStateMachine$TetherStateChange;
    }
.end annotation


# static fields
.field private static final ACTION_DELAYED_DRIVER_STOP:Ljava/lang/String; = "com.android.server.WifiManager.action.DELAYED_DRIVER_STOP"

.field private static final ACTION_REFRESH_BATCHED_SCAN:Ljava/lang/String; = "com.android.server.WifiManager.action.REFRESH_BATCHED_SCAN"

.field private static final ACTION_START_SCAN:Ljava/lang/String; = "com.android.server.WifiManager.action.START_SCAN"

.field private static final ADD_OR_UPDATE_SOURCE:I = -0x3

.field static final BASE:I = 0x20000

.field private static final BATCHED_SETTING:Ljava/lang/String; = "batched_settings"

.field private static final BATCHED_WORKSOURCE:Ljava/lang/String; = "batched_worksource"

.field private static final BSSID_STR:Ljava/lang/String; = "bssid="

.field static final CMD_ADD_OR_UPDATE_NETWORK:I = 0x20034

.field static final CMD_ASSOCIATED_BSSID:I = 0x20093

.field static final CMD_AUTO_CONNECT:I = 0x2008f

.field static final CMD_AUTO_ROAM:I = 0x20091

.field static final CMD_AUTO_SAVE_NETWORK:I = 0x20092

.field static final CMD_BLACKLIST_NETWORK:I = 0x20038

.field static final CMD_BLUETOOTH_ADAPTER_STATE_CHANGE:I = 0x2001f

.field public static final CMD_BOOT_COMPLETED:I = 0x20086

.field static final CMD_CLEAR_BLACKLIST:I = 0x20039

.field static final CMD_DELAYED_NETWORK_DISCONNECT:I = 0x20057

.field static final CMD_DELAYED_STOP_DRIVER:I = 0x20012

.field static final CMD_DISABLE_EPHEMERAL_NETWORK:I = 0x20062

.field public static final CMD_DISABLE_P2P_REQ:I = 0x20084

.field public static final CMD_DISABLE_P2P_RSP:I = 0x20085

.field static final CMD_DISCONNECT:I = 0x20049

.field static final CMD_DISCONNECTING_WATCHDOG_TIMER:I = 0x20060

.field static final CMD_DRIVER_START_TIMED_OUT:I = 0x20013

.field static final CMD_ENABLE_ALL_NETWORKS:I = 0x20037

.field static final CMD_ENABLE_NETWORK:I = 0x20036

.field public static final CMD_ENABLE_P2P:I = 0x20083

.field static final CMD_ENABLE_RSSI_POLL:I = 0x20052

.field static final CMD_ENABLE_TDLS:I = 0x2005c

.field static final CMD_GET_CAPABILITY_FREQ:I = 0x2003c

.field static final CMD_GET_CONFIGURED_NETWORKS:I = 0x2003b

.field static final CMD_GET_CONNECTION_STATISTICS:I = 0x2004c

.field static final CMD_GET_LINK_LAYER_STATS:I = 0x2003f

.field static final CMD_GET_PRIVILEGED_CONFIGURED_NETWORKS:I = 0x2003e

.field static final CMD_GET_SUPPORTED_FEATURES:I = 0x2003d

.field static final CMD_IP_CONFIGURATION_LOST:I = 0x2008b

.field static final CMD_IP_CONFIGURATION_SUCCESSFUL:I = 0x2008a

.field static final CMD_NETWORK_STATUS:I = 0x20094

.field static final CMD_NO_NETWORKS_PERIODIC_SCAN:I = 0x20058

.field static final CMD_OBTAINING_IP_ADDRESS_WATCHDOG_TIMER:I = 0x2005d

.field static final CMD_PING_SUPPLICANT:I = 0x20033

.field static final CMD_PNO_PERIODIC_SCAN:I = 0x2005b

.field public static final CMD_POLL_BATCHED_SCAN:I = 0x20089

.field static final CMD_REASSOCIATE:I = 0x2004b

.field static final CMD_RECONNECT:I = 0x2004a

.field static final CMD_RELOAD_TLS_AND_RECONNECT:I = 0x2008e

.field static final CMD_REMOVE_NETWORK:I = 0x20035

.field static final CMD_REQUEST_AP_CONFIG:I = 0x2001b

.field static final CMD_RESET_SUPPLICANT_STATE:I = 0x2006f

.field static final CMD_RESPONSE_AP_CONFIG:I = 0x2001c

.field static final CMD_ROAM_WATCHDOG_TIMER:I = 0x2005e

.field static final CMD_RSSI_POLL:I = 0x20053

.field static final CMD_SAVE_CONFIG:I = 0x2003a

.field static final CMD_SCREEN_STATE_CHANGED:I = 0x2005f

.field static final CMD_SET_AP_CONFIG:I = 0x20019

.field static final CMD_SET_AP_CONFIG_COMPLETED:I = 0x2001a

.field public static final CMD_SET_BATCHED_SCAN:I = 0x20087

.field static final CMD_SET_COUNTRY_CODE:I = 0x20050

.field static final CMD_SET_FREQUENCY_BAND:I = 0x2005a

.field static final CMD_SET_HIGH_PERF_MODE:I = 0x2004d

.field static final CMD_SET_OPERATIONAL_MODE:I = 0x20048

.field static final CMD_SET_SUSPEND_OPT_ENABLED:I = 0x20056

.field static final CMD_START_AP:I = 0x20015

.field static final CMD_START_AP_FAILURE:I = 0x20017

.field static final CMD_START_AP_SUCCESS:I = 0x20016

.field static final CMD_START_DRIVER:I = 0x2000d

.field public static final CMD_START_NEXT_BATCHED_SCAN:I = 0x20088

.field static final CMD_START_PACKET_FILTERING:I = 0x20054

.field static final CMD_START_SCAN:I = 0x20047

.field static final CMD_START_SUPPLICANT:I = 0x2000b

.field static final CMD_STATIC_IP_FAILURE:I = 0x20010

.field static final CMD_STATIC_IP_SUCCESS:I = 0x2000f

.field static final CMD_STOP_AP:I = 0x20018

.field static final CMD_STOP_DRIVER:I = 0x2000e

.field static final CMD_STOP_PACKET_FILTERING:I = 0x20055

.field static final CMD_STOP_SUPPLICANT:I = 0x2000c

.field static final CMD_STOP_SUPPLICANT_FAILED:I = 0x20011

.field static final CMD_TARGET_BSSID:I = 0x2008d

.field static final CMD_TEST_NETWORK_DISCONNECT:I = 0x20059

.field static final CMD_TETHER_NOTIFICATION_TIMED_OUT:I = 0x2001e

.field static final CMD_TETHER_STATE_CHANGE:I = 0x2001d

.field static final CMD_UNWANTED_NETWORK:I = 0x20090

.field static final CMD_UPDATE_LINKPROPERTIES:I = 0x2008c

.field public static final CONNECT_MODE:I = 0x1

.field private static final CUSTOMIZED_SCAN_SETTING:Ljava/lang/String; = "customized_scan_settings"

.field private static final CUSTOMIZED_SCAN_WORKSOURCE:Ljava/lang/String; = "customized_scan_worksource"

.field private static DBG:Z = false

.field private static final DEBUG_PARSE:Z = false

.field private static DEFAULT_SCORE:I = 0x0

.field private static final DELAYED_STOP_COUNTER:Ljava/lang/String; = "DelayedStopCounter"

.field private static final DELIMITER_STR:Ljava/lang/String; = "===="

.field public static final DFS_RESTRICTED_SCAN_REQUEST:I = -0x6

.field static final DISCONNECTING_GUARD_TIMER_MSEC:I = 0x1388

.field private static final DRIVER_START_TIME_OUT_MSECS:I = 0x2710

.field private static final DRIVER_STOP_REQUEST:I = 0x0

.field private static final DTAG:Ljava/lang/String; = "WifiStateMachine"

.field private static final ENABLE_WIFI:I = -0x5

.field private static final END_STR:Ljava/lang/String; = "####"

.field private static final EXTRA_FEATURE_ID:Ljava/lang/String; = "cneFeatureId"

.field private static final EXTRA_FEATURE_PARAMETER:Ljava/lang/String; = "cneFeatureParameter"

.field private static final EXTRA_PARAMETER_VALUE:Ljava/lang/String; = "cneParameterValue"

.field private static final FAILURE:I = -0x1

.field private static final FEATURE_ID:I = 0x1

.field private static final FEATURE_OFF:I = 0x1

.field private static final FEATURE_ON:I = 0x2

.field private static final FEATURE_PARAM:I = 0x1

.field private static final FLAGS_STR:Ljava/lang/String; = "flags="

.field private static final FREQ_STR:Ljava/lang/String; = "freq="

.field private static final GOOGLE_OUI:Ljava/lang/String; = "DA-A1-19"

.field private static final ID_STR:Ljava/lang/String; = "id="

.field private static final LEVEL_STR:Ljava/lang/String; = "level="

.field private static final LINK_FLAPPING_DEBOUNCE_MSEC:I = 0x1b58

.field private static MESSAGE_HANDLING_STATUS_DEFERRED:I = 0x0

.field private static MESSAGE_HANDLING_STATUS_DISCARD:I = 0x0

.field private static MESSAGE_HANDLING_STATUS_FAIL:I = 0x0

.field private static MESSAGE_HANDLING_STATUS_HANDLING_ERROR:I = 0x0

.field private static MESSAGE_HANDLING_STATUS_LOOPED:I = 0x0

.field private static MESSAGE_HANDLING_STATUS_OBSOLETE:I = 0x0

.field private static MESSAGE_HANDLING_STATUS_OK:I = 0x0

.field private static MESSAGE_HANDLING_STATUS_PROCESSED:I = 0x0

.field private static MESSAGE_HANDLING_STATUS_REFUSED:I = 0x0

.field private static MESSAGE_HANDLING_STATUS_UNKNOWN:I = 0x0

.field private static final MIN_INTERVAL_ENABLE_ALL_NETWORKS_MS:I = 0x927c0

.field static final MULTICAST_V4:I = 0x0

.field static final MULTICAST_V6:I = 0x1

.field private static final M_CMD_BLOCK_CLIENT:I = 0x200aa

.field private static final M_CMD_GET_NETWORK_AUTO_CONNECTABLE:I = 0x200fb

.field private static final M_CMD_SET_NETWORK_AUTO_CONNECTABLE:I = 0x200fa

.field private static final M_CMD_UNBLOCK_CLIENT:I = 0x200ab

.field private static final NETWORKTYPE:Ljava/lang/String; = "WIFI"

.field private static final NETWORKTYPE_UNTRUSTED:Ljava/lang/String; = "WIFI_UT"

.field static final OBTAINING_IP_ADDRESS_GUARD_TIMER_MSEC:I = 0x9c40

.field private static final ONE_HOUR_MILLI:I = 0x36ee80

.field private static PDBG:Z = false

.field private static final POLL_RSSI_INTERVAL_MSECS:I = 0xbb8

.field static final ROAM_GUARD_TIMER_MSEC:I = 0x3a98

.field private static final SCAN_ALARM_SOURCE:I = -0x2

.field public static final SCAN_ONLY_MODE:I = 0x2

.field public static final SCAN_ONLY_WITH_WIFI_OFF_MODE:I = 0x3

.field private static final SCAN_REQUEST:I = 0x0

.field private static final SCAN_REQUEST_BUFFER_MAX_SIZE:I = 0xa

.field private static final SCAN_REQUEST_TIME:Ljava/lang/String; = "scan_request_time"

.field private static final SCAN_RESULT_CACHE_SIZE:I = 0xa0

.field private static final SET_ALLOW_UNTRUSTED_SOURCE:I = -0x4

.field private static final SSID_STR:Ljava/lang/String; = "ssid="

.field private static final SUCCESS:I = 0x1

.field private static final SUPPLICANT_RESTART_INTERVAL_MSECS:I = 0x1388

.field private static final SUPPLICANT_RESTART_TRIES:I = 0x5

.field private static final SUSPEND_DUE_TO_DHCP:I = 0x1

.field private static final SUSPEND_DUE_TO_HIGH_PERF:I = 0x2

.field private static final SUSPEND_DUE_TO_SCREEN:I = 0x4

.field private static final TAG:Ljava/lang/String; = "WifiStateMachine"

.field private static final TETHER_NOTIFICATION_TIME_OUT_MSECS:I = 0x1388

.field private static final TSF_STR:Ljava/lang/String; = "tsf="

.field private static final UNKNOWN_SCAN_SOURCE:I = -0x1

.field private static VDBG:Z = false

.field private static VVDBG:Z = false

.field static final frameworkMinScanIntervalSaneValue:I = 0x2710

.field private static mHotspotClients:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/HotspotClient;",
            ">;"
        }
    .end annotation
.end field

.field private static mLogMessages:Z = false

.field private static mNotZero:Ljava/util/regex/Pattern; = null

.field private static final maxFullBandConnectedTimeIntervalMilli:J = 0x493e0L

.field static final network_status_unwanted_disable_autojoin:I = 0x1

.field static final network_status_unwanted_disconnect:I

.field private static sScanAlarmIntentCount:I

.field private static final scanResultPattern:Ljava/util/regex/Pattern;


# instance fields
.field private ConnectNotScan:Z

.field private didBlackListBSSID:Z

.field disconnectingWatchdogCount:I

.field emptyScanResultCount:I

.field private fullBandConnectedTimeIntervalMilli:J

.field private isPropFeatureEnabled:Z

.field private lastConnectAttempt:J

.field private lastForgetConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

.field private lastFullBandConnectedTimeMilli:J

.field private lastLinkLayerStatsUpdate:J

.field private lastOntimeReportTimeStamp:J

.field private lastSavedConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

.field private lastScanDuration:J

.field private lastScanFreqs:Ljava/lang/String;

.field private lastScreenStateChangeTimeStamp:J

.field private lastStartScanTimeStamp:J

.field private linkDebouncing:Z

.field private mAggressiveHandover:I

.field private mAlarmEnabled:Z

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAutoRoaming:I

.field private mBackgroundScanConfigured:Z

.field private final mBackgroundScanSupported:Z

.field mBadLinkspeedcount:I

.field private mBatchedScanCsph:I

.field private mBatchedScanIntervalIntent:Landroid/app/PendingIntent;

.field private mBatchedScanMinPollTime:J

.field private mBatchedScanOwnerUid:I

.field private final mBatchedScanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/BatchedScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mBatchedScanSettings:Landroid/net/wifi/BatchedScanSettings;

.field private mBatchedScanWorkSource:Landroid/os/WorkSource;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBluetoothConnectionActive:Z

.field private final mBufferedScanMsg:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mCm:Landroid/net/ConnectivityManager;

.field private mConnectModeState:Lcom/android/internal/util/State;

.field private mConnectedState:Lcom/android/internal/util/State;

.field private mConnectionRequests:I

.field private mContext:Landroid/content/Context;

.field private final mCountryCodeSequence:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mDefaultFrameworkScanIntervalMs:I

.field private mDefaultState:Lcom/android/internal/util/State;

.field private mDelayedScanCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mDelayedStopCounter:I

.field private mDhcpActive:Z

.field private mDhcpResults:Landroid/net/DhcpResults;

.field private final mDhcpResultsLock:Ljava/lang/Object;

.field private mDhcpStateMachine:Landroid/net/DhcpStateMachine;

.field private mDisabled5GhzFrequencies:Z

.field private mDisconnectedScanPeriodMs:I

.field private mDisconnectedState:Lcom/android/internal/util/State;

.field private mDisconnectedTimeStamp:J

.field private mDisconnectingState:Lcom/android/internal/util/State;

.field private mDriverStartToken:I

.field private mDriverStartedState:Lcom/android/internal/util/State;

.field private mDriverStartingState:Lcom/android/internal/util/State;

.field private final mDriverStopDelayMs:I

.field private mDriverStopIntent:Landroid/app/PendingIntent;

.field private mDriverStoppedState:Lcom/android/internal/util/State;

.field private mDriverStoppingState:Lcom/android/internal/util/State;

.field private mEnableBackgroundScan:Z

.field private mEnableRssiPolling:Z

.field private mExpectedBatchedScans:I

.field private mFilteringMulticastV4Packets:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mFrameworkScanIntervalMs:J

.field private mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mHotspotMonitor:Lcom/android/server/wifi/WifiMonitor;

.field private mHotspotNative:Lcom/android/server/wifi/WifiNative;

.field private mInDelayedStop:Z

.field private mInitialState:Lcom/android/internal/util/State;

.field private mInterfaceName:Ljava/lang/String;

.field private mIsFullScanOngoing:Z

.field private mIsRunning:Z

.field private mIsScanOngoing:Z

.field private mL2ConnectedState:Lcom/android/internal/util/State;

.field private mLastBssid:Ljava/lang/String;

.field private mLastDriverRoamAttempt:J

.field private mLastEnableAllNetworksTime:J

.field private mLastNetworkId:I

.field private final mLastRunningWifiUids:Landroid/os/WorkSource;

.field private mLastSetCountryCode:Ljava/lang/String;

.field private mLastSignalLevel:I

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mNetlinkTracker:Lcom/android/server/net/NetlinkTracker;

.field private mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

.field private mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field private final mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

.field private mNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNotedBatchedScanCsph:I

.field private mNotedBatchedScanWorkSource:Landroid/os/WorkSource;

.field private mNumScanResultsKnown:I

.field private mNumScanResultsReturned:I

.field private mNwService:Landroid/os/INetworkManagementService;

.field private mObtainingIpState:Lcom/android/internal/util/State;

.field private mOnTime:I

.field private mOnTimeAtLastReport:I

.field private mOnTimeLastReport:I

.field private mOnTimeScan:I

.field private mOnTimeScreenStateChange:I

.field private mOnTimeStartScan:I

.field private mOnTimeThisScan:I

.field private mOperationalMode:I

.field private final mP2pConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mP2pSupported:Z

.field private mPeriodicScanToken:I

.field private volatile mPersistedCountryCode:Ljava/lang/String;

.field private mPnoPeriodicScanToken:I

.field private final mPrimaryDeviceType:Ljava/lang/String;

.field private mReplyChannel:Lcom/android/internal/util/AsyncChannel;

.field private mReportedRunning:Z

.field private mRoamFailCount:I

.field private mRoamingState:Lcom/android/internal/util/State;

.field private mRssiPollToken:I

.field mRunningBeaconCount:I

.field private final mRunningWifiUids:Landroid/os/WorkSource;

.field private mRxTime:I

.field private mRxTimeLastReport:I

.field private mRxTimeScan:I

.field private mRxTimeStartScan:I

.field private mRxTimeThisScan:I

.field private mScanIntent:Landroid/app/PendingIntent;

.field private mScanModeState:Lcom/android/internal/util/State;

.field private final mScanResultCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mScanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mScanWorkSource:Landroid/os/WorkSource;

.field private mScreenBroadcastReceived:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mScreenOn:Z

.field private mSendScanResultsBroadcast:Z

.field private mSoftApStartedState:Lcom/android/internal/util/State;

.field private mSoftApStartingState:Lcom/android/internal/util/State;

.field private mSupplicantRestartCount:I

.field private mSupplicantScanIntervalMs:J

.field private mSupplicantStartedState:Lcom/android/internal/util/State;

.field private mSupplicantStartingState:Lcom/android/internal/util/State;

.field private mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;

.field private mSupplicantStopFailureToken:I

.field private mSupplicantStoppingState:Lcom/android/internal/util/State;

.field private mSuspendOptNeedsDisabled:I

.field private mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mTargetRoamBSSID:Ljava/lang/String;

.field private mTcpBufferSizes:Ljava/lang/String;

.field private mTemporarilyDisconnectWifi:Z

.field private mTetherInterfaceName:Ljava/lang/String;

.field private mTetherToken:I

.field private mTetheredState:Lcom/android/internal/util/State;

.field private mTetheringState:Lcom/android/internal/util/State;

.field private mTxTime:I

.field private mTxTimeLastReport:I

.field private mTxTimeScan:I

.field private mTxTimeStartScan:I

.field private mTxTimeThisScan:I

.field private mUntetheringState:Lcom/android/internal/util/State;

.field private mUntrustedNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;

.field private mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mVerboseLoggingLevel:I

.field private mVerifyingLinkState:Lcom/android/internal/util/State;

.field private mWaitForP2pDisableState:Lcom/android/internal/util/State;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;

.field private final mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mWifiAutoJoinController:Lcom/android/server/wifi/WifiAutoJoinController;

.field private mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

.field private mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mWifiLinkLayerStatsSupported:I

.field private mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

.field private mWifiNative:Lcom/android/server/wifi/WifiNative;

.field private mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

.field private mWifiP2pServiceImpl:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

.field private final mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mWpsRunningState:Lcom/android/internal/util/State;

.field private messageHandlingStatus:I

.field obtainingIpWatchdogCount:I

.field roamWatchdogCount:I

.field private targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;

.field private testNetworkDisconnect:Z

.field private testNetworkDisconnectCounter:I

.field wifiScoringReport:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 158
    sput-boolean v2, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    .line 159
    sput-boolean v1, Lcom/android/server/wifi/WifiStateMachine;->VDBG:Z

    .line 160
    sput-boolean v1, Lcom/android/server/wifi/WifiStateMachine;->VVDBG:Z

    .line 161
    sput-boolean v2, Lcom/android/server/wifi/WifiStateMachine;->mLogMessages:Z

    .line 182
    sput-boolean v1, Lcom/android/server/wifi/WifiStateMachine;->PDBG:Z

    .line 219
    const-string v0, "\t+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiStateMachine;->scanResultPattern:Ljava/util/regex/Pattern;

    .line 916
    sput v1, Lcom/android/server/wifi/WifiStateMachine;->sScanAlarmIntentCount:I

    .line 919
    const/16 v0, 0x3c

    sput v0, Lcom/android/server/wifi/WifiStateMachine;->DEFAULT_SCORE:I

    .line 926
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/wifi/WifiStateMachine;->mHotspotClients:Ljava/util/HashMap;

    .line 1734
    const/4 v0, 0x2

    sput v0, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_PROCESSED:I

    .line 1735
    sput v2, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_OK:I

    .line 1736
    sput v1, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_UNKNOWN:I

    .line 1737
    const/4 v0, -0x1

    sput v0, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_REFUSED:I

    .line 1738
    const/4 v0, -0x2

    sput v0, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I

    .line 1739
    const/4 v0, -0x3

    sput v0, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_OBSOLETE:I

    .line 1740
    const/4 v0, -0x4

    sput v0, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_DEFERRED:I

    .line 1741
    const/4 v0, -0x5

    sput v0, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_DISCARD:I

    .line 1742
    const/4 v0, -0x6

    sput v0, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_LOOPED:I

    .line 1743
    const/4 v0, -0x7

    sput v0, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_HANDLING_ERROR:I

    .line 3451
    const-string v0, "[1-9a-fA-F]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiStateMachine;->mNotZero:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/wifi/WifiTrafficPoller;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wlanInterface"    # Ljava/lang/String;
    .param p3, "trafficPoller"    # Lcom/android/server/wifi/WifiTrafficPoller;

    .prologue
    .line 930
    const-string v2, "WifiStateMachine"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 187
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->didBlackListBSSID:Z

    .line 190
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->ConnectNotScan:Z

    .line 213
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mP2pConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 214
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z

    .line 218
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    .line 228
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mBatchedScanResults:Ljava/util/List;

    .line 230
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mBatchedScanOwnerUid:I

    .line 231
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mExpectedBatchedScans:I

    .line 232
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mBatchedScanMinPollTime:J

    .line 234
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mScreenOn:Z

    .line 240
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mBackgroundScanConfigured:Z

    .line 246
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastSignalLevel:I

    .line 249
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z

    .line 253
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->testNetworkDisconnect:Z

    .line 255
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mEnableRssiPolling:Z

    .line 256
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mEnableBackgroundScan:Z

    .line 257
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDisabled5GhzFrequencies:Z

    .line 258
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mRssiPollToken:I

    .line 264
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mOperationalMode:I

    .line 265
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mIsScanOngoing:Z

    .line 266
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mIsFullScanOngoing:Z

    .line 267
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSendScanResultsBroadcast:Z

    .line 269
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mBufferedScanMsg:Ljava/util/Queue;

    .line 270
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mScanWorkSource:Landroid/os/WorkSource;

    .line 289
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mScreenBroadcastReceived:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 291
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z

    .line 317
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantRestartCount:I

    .line 319
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStopFailureToken:I

    .line 327
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mTetherToken:I

    .line 335
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStartToken:I

    .line 344
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mPeriodicScanToken:I

    .line 347
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mPnoPeriodicScanToken:I

    .line 354
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResultsLock:Ljava/lang/Object;

    .line 361
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpActive:Z

    .line 363
    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiLinkLayerStatsSupported:I

    .line 365
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mCountryCodeSequence:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 368
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mAutoRoaming:I

    .line 371
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mRoamFailCount:I

    .line 377
    const-string v2, "any"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    .line 379
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastDriverRoamAttempt:J

    .line 381
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 384
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->lastSavedConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    .line 387
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->lastForgetConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    .line 436
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 439
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mFilteringMulticastV4Packets:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 442
    new-instance v2, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v2}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    .line 450
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectionRequests:I

    .line 458
    new-instance v2, Landroid/net/wifi/WifiConnectionStatistics;

    invoke-direct {v2}, Landroid/net/wifi/WifiConnectionStatistics;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;

    .line 461
    new-instance v2, Landroid/net/NetworkCapabilities;

    invoke-direct {v2}, Landroid/net/NetworkCapabilities;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    .line 579
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->testNetworkDisconnectCounter:I

    .line 602
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->obtainingIpWatchdogCount:I

    .line 615
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->roamWatchdogCount:I

    .line 621
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->disconnectingWatchdogCount:I

    .line 697
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    .line 704
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 715
    const/16 v2, 0x2710

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedScanPeriodMs:I

    .line 750
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mRunningBeaconCount:I

    .line 758
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mInDelayedStop:Z

    .line 769
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$DefaultState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$DefaultState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    .line 771
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$InitialState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$InitialState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;

    .line 773
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStartingState:Lcom/android/internal/util/State;

    .line 775
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    .line 777
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStoppingState:Lcom/android/internal/util/State;

    .line 779
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStartingState:Lcom/android/internal/util/State;

    .line 781
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/State;

    .line 786
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWaitForP2pDisableState:Lcom/android/internal/util/State;

    .line 788
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$DriverStoppingState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$DriverStoppingState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStoppingState:Lcom/android/internal/util/State;

    .line 790
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$DriverStoppedState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$DriverStoppedState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStoppedState:Lcom/android/internal/util/State;

    .line 792
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mScanModeState:Lcom/android/internal/util/State;

    .line 794
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    .line 796
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mL2ConnectedState:Lcom/android/internal/util/State;

    .line 798
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mObtainingIpState:Lcom/android/internal/util/State;

    .line 800
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$VerifyingLinkState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$VerifyingLinkState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mVerifyingLinkState:Lcom/android/internal/util/State;

    .line 802
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;

    .line 804
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$RoamingState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$RoamingState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mRoamingState:Lcom/android/internal/util/State;

    .line 806
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$DisconnectingState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$DisconnectingState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;

    .line 808
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;

    .line 810
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWpsRunningState:Lcom/android/internal/util/State;

    .line 813
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSoftApStartingState:Lcom/android/internal/util/State;

    .line 815
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    .line 817
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$TetheringState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$TetheringState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mTetheringState:Lcom/android/internal/util/State;

    .line 819
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$TetheredState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$TetheredState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mTetheredState:Lcom/android/internal/util/State;

    .line 821
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$UntetheringState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$UntetheringState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mUntetheringState:Lcom/android/internal/util/State;

    .line 857
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 867
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v3, 0xb

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 883
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mIsRunning:Z

    .line 888
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mReportedRunning:Z

    .line 893
    new-instance v2, Landroid/os/WorkSource;

    invoke-direct {v2}, Landroid/os/WorkSource;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    .line 898
    new-instance v2, Landroid/os/WorkSource;

    invoke-direct {v2}, Landroid/os/WorkSource;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    .line 902
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mBatchedScanSettings:Landroid/net/wifi/BatchedScanSettings;

    .line 908
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mBatchedScanWorkSource:Landroid/os/WorkSource;

    .line 909
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mBatchedScanCsph:I

    .line 910
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mNotedBatchedScanWorkSource:Landroid/os/WorkSource;

    .line 911
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mNotedBatchedScanCsph:I

    .line 913
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mTcpBufferSizes:Ljava/lang/String;

    .line 917
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->isPropFeatureEnabled:Z

    .line 1172
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingLevel:I

    .line 1201
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mAggressiveHandover:I

    .line 1224
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mAlarmEnabled:Z

    .line 1228
    const-wide/16 v2, 0x2710

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mFrameworkScanIntervalMs:J

    .line 1230
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDelayedScanCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1713
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedTimeStamp:J

    .line 1725
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/wifi/WifiStateMachine;->lastStartScanTimeStamp:J

    .line 1726
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/wifi/WifiStateMachine;->lastScanDuration:J

    .line 1729
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttempt:J

    .line 1730
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->lastScanFreqs:Ljava/lang/String;

    .line 1745
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I

    .line 1759
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mOnTime:I

    .line 1760
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mTxTime:I

    .line 1761
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mRxTime:I

    .line 1762
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mOnTimeStartScan:I

    .line 1763
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mTxTimeStartScan:I

    .line 1764
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mRxTimeStartScan:I

    .line 1765
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mOnTimeScan:I

    .line 1766
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mTxTimeScan:I

    .line 1767
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mRxTimeScan:I

    .line 1768
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mOnTimeThisScan:I

    .line 1769
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mTxTimeThisScan:I

    .line 1770
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mRxTimeThisScan:I

    .line 1772
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mOnTimeScreenStateChange:I

    .line 1773
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mOnTimeAtLastReport:I

    .line 1774
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/wifi/WifiStateMachine;->lastOntimeReportTimeStamp:J

    .line 1775
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/wifi/WifiStateMachine;->lastScreenStateChangeTimeStamp:J

    .line 1776
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mOnTimeLastReport:I

    .line 1777
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mTxTimeLastReport:I

    .line 1778
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mRxTimeLastReport:I

    .line 1780
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/wifi/WifiStateMachine;->lastLinkLayerStatsUpdate:J

    .line 3448
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->emptyScanResultCount:I

    .line 3806
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mBadLinkspeedcount:I

    .line 3809
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->wifiScoringReport:Ljava/lang/String;

    .line 931
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    .line 932
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 933
    new-instance v2, Landroid/net/NetworkInfo;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "WIFI"

    const-string v6, ""

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 934
    const-string v2, "batterystats"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 937
    const-string v2, "network_management"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    .line 938
    .local v8, "b":Landroid/os/IBinder;
    invoke-static {v8}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    .line 940
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.wifi.direct"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mP2pSupported:Z

    .line 943
    new-instance v2, Lcom/android/server/wifi/WifiNative;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/android/server/wifi/WifiNative;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 944
    new-instance v2, Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v3}, Lcom/android/server/wifi/WifiConfigStore;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiNative;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    .line 945
    new-instance v2, Lcom/android/server/wifi/WifiAutoJoinController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v3, p1

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wifi/WifiAutoJoinController;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiConfigStore;Landroid/net/wifi/WifiConnectionStatistics;Lcom/android/server/wifi/WifiNative;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiAutoJoinController:Lcom/android/server/wifi/WifiAutoJoinController;

    .line 947
    new-instance v2, Lcom/android/server/wifi/WifiMonitor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/server/wifi/WifiMonitor;-><init>(Lcom/android/internal/util/StateMachine;Lcom/android/server/wifi/WifiNative;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    .line 948
    new-instance v2, Landroid/net/wifi/WifiInfo;

    invoke-direct {v2}, Landroid/net/wifi/WifiInfo;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 949
    new-instance v2, Lcom/android/server/wifi/SupplicantStateTracker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v4

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/android/server/wifi/SupplicantStateTracker;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiConfigStore;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;

    .line 951
    new-instance v2, Landroid/net/LinkProperties;

    invoke-direct {v2}, Landroid/net/LinkProperties;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    .line 953
    const-string v2, "wifip2p"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v15

    .line 954
    .local v15, "s1":Landroid/os/IBinder;
    invoke-static {v15}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/p2p/IWifiP2pManager;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pServiceImpl:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .line 956
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 957
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    .line 958
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    .line 959
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastSignalLevel:I

    .line 961
    new-instance v2, Lcom/android/server/net/NetlinkTracker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    new-instance v4, Lcom/android/server/wifi/WifiStateMachine$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/server/wifi/WifiStateMachine$1;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    invoke-direct {v2, v3, v4}, Lcom/android/server/net/NetlinkTracker;-><init>(Ljava/lang/String;Lcom/android/server/net/NetlinkTracker$Callback;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetlinkTracker:Lcom/android/server/net/NetlinkTracker;

    .line 967
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetlinkTracker:Lcom/android/server/net/NetlinkTracker;

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 972
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    .line 973
    const-string v2, "com.android.server.WifiManager.action.START_SCAN"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->getPrivateBroadcast(Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mScanIntent:Landroid/app/PendingIntent;

    .line 974
    const-string v2, "com.android.server.WifiManager.action.REFRESH_BATCHED_SCAN"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->getPrivateBroadcast(Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mBatchedScanIntervalIntent:Landroid/app/PendingIntent;

    .line 977
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e002a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    .line 979
    .local v13, "period":I
    const/16 v2, 0x2710

    if-ge v13, v2, :cond_0

    .line 980
    const/16 v13, 0x2710

    .line 982
    :cond_0
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/wifi/WifiStateMachine;->mDefaultFrameworkScanIntervalMs:I

    .line 983
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0036

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStopDelayMs:I

    .line 986
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x112001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mBackgroundScanSupported:Z

    .line 989
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mPrimaryDeviceType:Ljava/lang/String;

    .line 992
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "wifi_suspend_optimizations_enabled"

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 995
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 996
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 997
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 998
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    const/high16 v3, 0x100000

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->setLinkUpstreamBandwidthKbps(I)V

    .line 999
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    const/high16 v3, 0x100000

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->setLinkDownstreamBandwidthKbps(I)V

    .line 1001
    new-instance v2, Landroid/net/NetworkCapabilities;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    invoke-direct {v2, v3}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 1003
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/wifi/WifiStateMachine$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/wifi/WifiStateMachine$2;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1015
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/wifi/WifiStateMachine$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/wifi/WifiStateMachine$3;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.android.server.WifiManager.action.START_SCAN"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1027
    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    .line 1028
    .local v10, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v10, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1029
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v10, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1030
    const-string v2, "com.android.server.WifiManager.action.REFRESH_BATCHED_SCAN"

    invoke-virtual {v10, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1031
    const-string v2, "persist.cne.feature"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 1032
    .local v16, "val":I
    const/4 v2, 0x3

    move/from16 v0, v16

    if-ne v0, v2, :cond_4

    const/4 v12, 0x1

    .line 1033
    .local v12, "isPropFeatureAvail":Z
    :goto_2
    if-eqz v12, :cond_1

    .line 1034
    const/4 v2, 0x1

    sput v2, Lcom/android/server/wifi/WifiStateMachine;->DEFAULT_SCORE:I

    .line 1035
    const-string v2, "com.quicinc.cne.CNE_PREFERENCE_CHANGED"

    invoke-virtual {v10, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1036
    const-string v2, "prop_state_change"

    invoke-virtual {v10, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1037
    const-string v2, "blacklist_bad_bssid"

    invoke-virtual {v10, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1040
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/wifi/WifiStateMachine$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/wifi/WifiStateMachine$4;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    invoke-virtual {v2, v3, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1070
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/wifi/WifiStateMachine$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/wifi/WifiStateMachine$5;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.android.server.WifiManager.action.DELAYED_DRIVER_STOP"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1080
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_suspend_optimizations_enabled"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Lcom/android/server/wifi/WifiStateMachine$6;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6}, Lcom/android/server/wifi/WifiStateMachine$6;-><init>(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Handler;)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1090
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_auto_connect_type"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Lcom/android/server/wifi/WifiStateMachine$7;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6}, Lcom/android/server/wifi/WifiStateMachine$7;-><init>(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Handler;)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1099
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/wifi/WifiStateMachine$8;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/wifi/WifiStateMachine$8;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1108
    new-instance v2, Landroid/util/LruCache;

    const/16 v3, 0xa0

    invoke-direct {v2, v3}, Landroid/util/LruCache;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;

    .line 1110
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/PowerManager;

    .line 1111
    .local v14, "powerManager":Landroid/os/PowerManager;
    const/4 v2, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1113
    const/4 v2, 0x1

    const-string v3, "WifiSuspend"

    invoke-virtual {v14, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1114
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1116
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040041

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mTcpBufferSizes:Ljava/lang/String;

    .line 1119
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 1120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1121
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStartingState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1122
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1123
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStartingState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1124
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1125
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mScanModeState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1126
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1127
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mL2ConnectedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mObtainingIpState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mL2ConnectedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1129
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mVerifyingLinkState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mL2ConnectedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1130
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mL2ConnectedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1131
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mRoamingState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mL2ConnectedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1132
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1133
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWpsRunningState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1135
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWaitForP2pDisableState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1136
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStoppingState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStoppedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1138
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStoppingState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1139
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSoftApStartingState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1140
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1141
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mTetheringState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1142
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mTetheredState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1143
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mUntetheringState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1145
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 1147
    new-instance v2, Lcom/android/server/wifi/WifiNative;

    const-string v3, "ap0"

    invoke-direct {v2, v3}, Lcom/android/server/wifi/WifiNative;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mHotspotNative:Lcom/android/server/wifi/WifiNative;

    .line 1148
    new-instance v2, Lcom/android/server/wifi/WifiMonitor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mHotspotNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/server/wifi/WifiMonitor;-><init>(Lcom/android/internal/util/StateMachine;Lcom/android/server/wifi/WifiNative;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mHotspotMonitor:Lcom/android/server/wifi/WifiMonitor;

    .line 1151
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x64

    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->setLogRecSize(I)V

    .line 1152
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->setLogOnlyTransitions(Z)V

    .line 1153
    sget-boolean v2, Lcom/android/server/wifi/WifiStateMachine;->VDBG:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->setDbg(Z)V

    .line 1156
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->start()V

    .line 1158
    new-instance v11, Landroid/content/Intent;

    const-string v2, "wifi_scan_available"

    invoke-direct {v11, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1159
    .local v11, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v11, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1160
    const-string v2, "scan_enabled"

    const/4 v3, 0x1

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v11, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1162
    return-void

    .line 968
    .end local v10    # "filter":Landroid/content/IntentFilter;
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v12    # "isPropFeatureAvail":Z
    .end local v13    # "period":I
    .end local v14    # "powerManager":Landroid/os/PowerManager;
    .end local v16    # "val":I
    :catch_0
    move-exception v9

    .line 969
    .local v9, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t register netlink tracker: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 992
    .end local v9    # "e":Landroid/os/RemoteException;
    .restart local v13    # "period":I
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 1032
    .restart local v10    # "filter":Landroid/content/IntentFilter;
    .restart local v16    # "val":I
    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 1151
    .restart local v12    # "isPropFeatureAvail":Z
    .restart local v14    # "powerManager":Landroid/os/PowerManager;
    :cond_5
    const/16 v2, 0xbb8

    goto :goto_3
.end method

.method static synthetic access$008()I
    .locals 2

    .prologue
    .line 151
    sget v0, Lcom/android/server/wifi/WifiStateMachine;->sScanAlarmIntentCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/server/wifi/WifiStateMachine;->sScanAlarmIntentCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDelayedScanCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method static synthetic access$10000(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDelayedStopCounter:I

    return v0
.end method

.method static synthetic access$10008(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDelayedStopCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDelayedStopCounter:I

    return v0
.end method

.method static synthetic access$10100(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->setCountryCode()V

    return-void
.end method

.method static synthetic access$10200(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->setFrequencyBand()V

    return-void
.end method

.method static synthetic access$10300(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$10400(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mFilteringMulticastV4Packets:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$10502(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 151
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpActive:Z

    return p1
.end method

.method static synthetic access$10600(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->startBatchedScan()V

    return-void
.end method

.method static synthetic access$10700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mScanModeState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$10800(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1100()Z
    .locals 1

    .prologue
    .line 151
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    return v0
.end method

.method static synthetic access$11000(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$11100(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mScreenBroadcastReceived:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$11200(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    return v0
.end method

.method static synthetic access$11300(Lcom/android/server/wifi/WifiStateMachine;ILandroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/Message;

    .prologue
    .line 151
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->handleScanRequest(ILandroid/os/Message;)V

    return-void
.end method

.method static synthetic access$11400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/BatchedScanSettings;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatchedScanSettings:Landroid/net/wifi/BatchedScanSettings;

    return-object v0
.end method

.method static synthetic access$11500(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->stopBatchedScan()V

    return-void
.end method

.method static synthetic access$11600(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastSetCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11602(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastSetCountryCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$11700(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$11800(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisabled5GhzFrequencies:Z

    return v0
.end method

.method static synthetic access$11802(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 151
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisabled5GhzFrequencies:Z

    return p1
.end method

.method static synthetic access$11900(Lcom/android/server/wifi/WifiStateMachine;ILjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->startScanNative(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mConnectionRequests:I

    return v0
.end method

.method static synthetic access$12000(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStopIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$12002(Lcom/android/server/wifi/WifiStateMachine;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/app/PendingIntent;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStopIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$1204(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mConnectionRequests:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mConnectionRequests:I

    return v0
.end method

.method static synthetic access$1206(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mConnectionRequests:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mConnectionRequests:I

    return v0
.end method

.method static synthetic access$12100(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStopDelayMs:I

    return v0
.end method

.method static synthetic access$12200(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/AlarmManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$12300(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12500(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$12600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStoppingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$12700(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$12800(Lcom/android/server/wifi/WifiStateMachine;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 151
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->setSuspendOptimizationsNative(IZ)V

    return-void
.end method

.method static synthetic access$12902(Lcom/android/server/wifi/WifiStateMachine;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiAutoJoinController:Lcom/android/server/wifi/WifiAutoJoinController;

    return-object v0
.end method

.method static synthetic access$13000(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$13100(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$13200(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$13300(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$13400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$13500(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$13600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStartingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$13700(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$13800(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$13900(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->logStateAndMessage(Landroid/os/Message;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$14000(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$14102(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 151
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->didBlackListBSSID:Z

    return p1
.end method

.method static synthetic access$14200(Lcom/android/server/wifi/WifiStateMachine;)Landroid/util/LruCache;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic access$14300(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$14400(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z

    return v0
.end method

.method static synthetic access$14402(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 151
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z

    return p1
.end method

.method static synthetic access$14500(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$14602(Lcom/android/server/wifi/WifiStateMachine;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # J

    .prologue
    .line 151
    iput-wide p1, p0, Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttempt:J

    return-wide p1
.end method

.method static synthetic access$14700(Lcom/android/server/wifi/WifiStateMachine;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-wide v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastEnableAllNetworksTime:J

    return-wide v0
.end method

.method static synthetic access$14702(Lcom/android/server/wifi/WifiStateMachine;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # J

    .prologue
    .line 151
    iput-wide p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastEnableAllNetworksTime:J

    return-wide p1
.end method

.method static synthetic access$14800(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$14802(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic access$14900(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$15000(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1502(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/AsyncChannel;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic access$15100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$15200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$15300(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mAutoRoaming:I

    return v0
.end method

.method static synthetic access$15302(Lcom/android/server/wifi/WifiStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 151
    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mAutoRoaming:I

    return p1
.end method

.method static synthetic access$15400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mRoamingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$15500(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$15600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$15700(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$15800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$15900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z

    return v0
.end method

.method static synthetic access$16000(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->ConnectNotScan:Z

    return v0
.end method

.method static synthetic access$16002(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 151
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->ConnectNotScan:Z

    return p1
.end method

.method static synthetic access$1602(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 151
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z

    return p1
.end method

.method static synthetic access$16100(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$16200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$16300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$16400(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->updateCapabilities(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method static synthetic access$16500(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$16602(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->lastSavedConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic access$16700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$16800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$16900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mObtainingIpState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 151
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V

    return-void
.end method

.method static synthetic access$17000(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$17100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/net/NetlinkTracker;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetlinkTracker:Lcom/android/server/net/NetlinkTracker;

    return-object v0
.end method

.method static synthetic access$17202(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->lastForgetConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic access$17300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWpsRunningState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$17400(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$17500(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$17600(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$17700(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$17800(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mRssiPollToken:I

    return v0
.end method

.method static synthetic access$17808(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mRssiPollToken:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mRssiPollToken:I

    return v0
.end method

.method static synthetic access$17900(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mTcpBufferSizes:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/Object;

    .prologue
    .line 151
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$18000(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/LinkProperties;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic access$18100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkCapabilities;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    return-object v0
.end method

.method static synthetic access$18200()I
    .locals 1

    .prologue
    .line 151
    sget v0, Lcom/android/server/wifi/WifiStateMachine;->DEFAULT_SCORE:I

    return v0
.end method

.method static synthetic access$18300(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/DhcpResults;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/net/DhcpResults;
    .param p2, "x2"    # I

    .prologue
    .line 151
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->handleIPv4Success(Landroid/net/DhcpResults;I)V

    return-void
.end method

.method static synthetic access$18400(Lcom/android/server/wifi/WifiStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->handleIPv4Failure(I)V

    return-void
.end method

.method static synthetic access$18500(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->handleSuccessfulIpConfiguration()V

    return-void
.end method

.method static synthetic access$18600(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->sendConnectedState()V

    return-void
.end method

.method static synthetic access$18700(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$18800(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->handleIpConfigurationLost()V

    return-void
.end method

.method static synthetic access$18900(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mEnableRssiPolling:Z

    return v0
.end method

.method static synthetic access$19000(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1902(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 151
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mEnableRssiPolling:Z

    return p1
.end method

.method static synthetic access$19100(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$19200(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$19300(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$19400(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mScreenOn:Z

    return v0
.end method

.method static synthetic access$19500(Lcom/android/server/wifi/WifiStateMachine;IZILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # I
    .param p4, "x4"    # Landroid/net/wifi/ScanSettings;
    .param p5, "x5"    # Landroid/os/WorkSource;

    .prologue
    .line 151
    invoke-direct/range {p0 .. p5}, Lcom/android/server/wifi/WifiStateMachine;->checkAndRestartDelayedScan(IZILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$19600()I
    .locals 1

    .prologue
    .line 151
    sget v0, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_OBSOLETE:I

    return v0
.end method

.method static synthetic access$19700(Lcom/android/server/wifi/WifiStateMachine;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-wide v0, p0, Lcom/android/server/wifi/WifiStateMachine;->lastFullBandConnectedTimeMilli:J

    return-wide v0
.end method

.method static synthetic access$19702(Lcom/android/server/wifi/WifiStateMachine;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # J

    .prologue
    .line 151
    iput-wide p1, p0, Lcom/android/server/wifi/WifiStateMachine;->lastFullBandConnectedTimeMilli:J

    return-wide p1
.end method

.method static synthetic access$19800(Lcom/android/server/wifi/WifiStateMachine;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-wide v0, p0, Lcom/android/server/wifi/WifiStateMachine;->fullBandConnectedTimeIntervalMilli:J

    return-wide v0
.end method

.method static synthetic access$19802(Lcom/android/server/wifi/WifiStateMachine;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # J

    .prologue
    .line 151
    iput-wide p1, p0, Lcom/android/server/wifi/WifiStateMachine;->fullBandConnectedTimeIntervalMilli:J

    return-wide p1
.end method

.method static synthetic access$19900()I
    .locals 1

    .prologue
    .line 151
    sget v0, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_REFUSED:I

    return v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 151
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->VDBG:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/wifi/WifiStateMachine;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 151
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->setSuspendOptimizations(IZ)V

    return-void
.end method

.method static synthetic access$20000()I
    .locals 1

    .prologue
    .line 151
    sget v0, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_HANDLING_ERROR:I

    return v0
.end method

.method static synthetic access$20100()Z
    .locals 1

    .prologue
    .line 151
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->VVDBG:Z

    return v0
.end method

.method static synthetic access$20200(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiLinkLayerStatsSupported:I

    return v0
.end method

.method static synthetic access$20300(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->fetchRssiLinkSpeedAndFrequencyNative()V

    return-void
.end method

.method static synthetic access$20400(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiLinkLayerStats;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/WifiLinkLayerStats;

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->calculateWifiScore(Landroid/net/wifi/WifiLinkLayerStats;)V

    return-void
.end method

.method static synthetic access$20500(Lcom/android/server/wifi/WifiStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendRssiChangeBroadcast(I)V

    return-void
.end method

.method static synthetic access$20600(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->cleanWifiScore()V

    return-void
.end method

.method static synthetic access$20700(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/RssiPacketCountInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/RssiPacketCountInfo;

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->fetchPktcntNative(Landroid/net/wifi/RssiPacketCountInfo;)V

    return-void
.end method

.method static synthetic access$20800(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$20900(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->clearIPv4Address(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mPersistedCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$21000(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2102(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mPersistedCountryCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$21100(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$21200(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$21300(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$21400(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$21500(Lcom/android/server/wifi/WifiStateMachine;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->setScanAlarm(Z)V

    return-void
.end method

.method static synthetic access$21600(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$21700(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$21808(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mRoamFailCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mRoamFailCount:I

    return v0
.end method

.method static synthetic access$21900(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mCountryCodeSequence:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$22000(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$22100(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$22200(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$22300(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$22400(Lcom/android/server/wifi/WifiStateMachine;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->updateDefaultRouteMacAddress(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$22500(Lcom/android/server/wifi/WifiStateMachine;ILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/net/wifi/ScanSettings;
    .param p3, "x3"    # Landroid/os/WorkSource;

    .prologue
    .line 151
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/WifiStateMachine;->startDelayedScan(ILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    return-void
.end method

.method static synthetic access$22600(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->testNetworkDisconnect:Z

    return v0
.end method

.method static synthetic access$22700(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->testNetworkDisconnectCounter:I

    return v0
.end method

.method static synthetic access$22708(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->testNetworkDisconnectCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/wifi/WifiStateMachine;->testNetworkDisconnectCounter:I

    return v0
.end method

.method static synthetic access$22800(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$22900(Lcom/android/server/wifi/WifiStateMachine;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-wide v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastDriverRoamAttempt:J

    return-wide v0
.end method

.method static synthetic access$22902(Lcom/android/server/wifi/WifiStateMachine;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # J

    .prologue
    .line 151
    iput-wide p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastDriverRoamAttempt:J

    return-wide p1
.end method

.method static synthetic access$2300(Lcom/android/server/wifi/WifiStateMachine;IIILjava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/Object;

    .prologue
    .line 151
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageAtFrontOfQueue(IIILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$23000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerifyingLinkState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$23100(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$23200(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$23300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$23400(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$23500(Lcom/android/server/wifi/WifiStateMachine;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-wide v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mFrameworkScanIntervalMs:J

    return-wide v0
.end method

.method static synthetic access$23502(Lcom/android/server/wifi/WifiStateMachine;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # J

    .prologue
    .line 151
    iput-wide p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mFrameworkScanIntervalMs:J

    return-wide p1
.end method

.method static synthetic access$23600(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mEnableBackgroundScan:Z

    return v0
.end method

.method static synthetic access$23700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$23800(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$23900(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/wifi/WifiStateMachine;IILandroid/os/Bundle;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/os/Bundle;

    .prologue
    .line 151
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/WifiStateMachine;->recordBatchedScanSettings(IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$24000(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$24100(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$24200(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDefaultFrameworkScanIntervalMs:I

    return v0
.end method

.method static synthetic access$24300(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedScanPeriodMs:I

    return v0
.end method

.method static synthetic access$24400(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->handlePnoFailError()V

    return-void
.end method

.method static synthetic access$24500(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mPeriodicScanToken:I

    return v0
.end method

.method static synthetic access$24504(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mPeriodicScanToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mPeriodicScanToken:I

    return v0
.end method

.method static synthetic access$24602(Lcom/android/server/wifi/WifiStateMachine;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # J

    .prologue
    .line 151
    iput-wide p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedTimeStamp:J

    return-wide p1
.end method

.method static synthetic access$24700(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mPnoPeriodicScanToken:I

    return v0
.end method

.method static synthetic access$24704(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mPnoPeriodicScanToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mPnoPeriodicScanToken:I

    return v0
.end method

.method static synthetic access$24800(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$24900(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->checkOrDeferScanAllowed(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->handleBatchedScanPollRequest()V

    return-void
.end method

.method static synthetic access$25000(Lcom/android/server/wifi/WifiStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->setScanIntevelOnMiracastModeChange(I)V

    return-void
.end method

.method static synthetic access$25100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$25200(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$25300(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$25400(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$25500(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$25600(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$25700(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$25800(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$25900(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->startNextBatchedScan()V

    return-void
.end method

.method static synthetic access$26000(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->startSoftApWithConfig(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method static synthetic access$26100(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$26200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mHotspotMonitor:Lcom/android/server/wifi/WifiMonitor;

    return-object v0
.end method

.method static synthetic access$26300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$26400(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$26500(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$26600(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$26700(Lcom/android/server/wifi/WifiStateMachine;Ljava/util/ArrayList;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->startTethering(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$26800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mTetheringState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$26900(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/wifi/WifiStateMachine;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 151
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->handleScreenStateChanged(ZZ)V

    return-void
.end method

.method static synthetic access$27000(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mTetherToken:I

    return v0
.end method

.method static synthetic access$27004(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mTetherToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mTetherToken:I

    return v0
.end method

.method static synthetic access$27100(Lcom/android/server/wifi/WifiStateMachine;Ljava/util/ArrayList;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->isWifiTethered(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$27200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mTetheredState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$27300(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$27400(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$27500(Lcom/android/server/wifi/WifiStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageAtFrontOfQueue(I)V

    return-void
.end method

.method static synthetic access$27600(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$27700()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcom/android/server/wifi/WifiStateMachine;->mHotspotClients:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$27800(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->stopTethering()V

    return-void
.end method

.method static synthetic access$27900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mUntetheringState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$28000(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2802(Lcom/android/server/wifi/WifiStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 151
    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I

    return p1
.end method

.method static synthetic access$28100(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$28200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mHotspotNative:Lcom/android/server/wifi/WifiNative;

    return-object v0
.end method

.method static synthetic access$28300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$28400(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$28500(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$28600(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2900()I
    .locals 1

    .prologue
    .line 151
    sget v0, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_DISCARD:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->startNextBatchedScanAsync()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/DhcpStateMachine;)Landroid/net/DhcpStateMachine;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/net/DhcpStateMachine;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$3200()I
    .locals 1

    .prologue
    .line 151
    sget v0, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mP2pConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z

    return v0
.end method

.method static synthetic access$3402(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 151
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # I

    .prologue
    .line 151
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/wifi/WifiStateMachine;ILandroid/net/LinkProperties;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/net/LinkProperties;

    .prologue
    .line 151
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->updateLinkProperties(ILandroid/net/LinkProperties;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pServiceImpl:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wifi/WifiStateMachine;III)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 151
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/WifiStateMachine;->handlePrefChange(III)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/AsyncChannel;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mP2pSupported:Z

    return v0
.end method

.method static synthetic access$4200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/server/wifi/WifiStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->setWifiState(I)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStartingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/wifi/WifiStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->setWifiApState(I)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSoftApStartingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mPrimaryDeviceType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wifi/WifiStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->handleStateChange(I)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantRestartCount:I

    return v0
.end method

.method static synthetic access$5002(Lcom/android/server/wifi/WifiStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 151
    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantRestartCount:I

    return p1
.end method

.method static synthetic access$5004(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantRestartCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantRestartCount:I

    return v0
.end method

.method static synthetic access$5100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5202(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5300(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    return v0
.end method

.method static synthetic access$5302(Lcom/android/server/wifi/WifiStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 151
    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    return p1
.end method

.method static synthetic access$5402(Lcom/android/server/wifi/WifiStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 151
    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastSignalLevel:I

    return p1
.end method

.method static synthetic access$5500(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/server/wifi/WifiStateMachine;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendSupplicantConnectionChangedBroadcast(Z)V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wifi/WifiStateMachine;ZLjava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 151
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/WifiStateMachine;->handleBSSIDBlacklist(ZLjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6300()I
    .locals 1

    .prologue
    .line 151
    sget v0, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_DEFERRED:I

    return v0
.end method

.method static synthetic access$6400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    return-object v0
.end method

.method static synthetic access$6602(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    return-object p1
.end method

.method static synthetic access$6700(Lcom/android/server/wifi/WifiStateMachine;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-wide v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantScanIntervalMs:J

    return-wide v0
.end method

.method static synthetic access$6702(Lcom/android/server/wifi/WifiStateMachine;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # J

    .prologue
    .line 151
    iput-wide p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantScanIntervalMs:J

    return-wide p1
.end method

.method static synthetic access$6800(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->setRandomMacOui()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWaitForP2pDisableState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStoppingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$7200(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7300(Lcom/android/server/wifi/WifiStateMachine;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->handleSupplicantConnectionLoss(Z)V

    return-void
.end method

.method static synthetic access$7400(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->handleNetworkDisconnect()V

    return-void
.end method

.method static synthetic access$7500(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7600(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7700(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->noteScanEnd()V

    return-void
.end method

.method static synthetic access$7800(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->setScanResults()V

    return-void
.end method

.method static synthetic access$7900(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsFullScanOngoing:Z

    return v0
.end method

.method static synthetic access$7902(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 151
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsFullScanOngoing:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSendScanResultsBroadcast:Z

    return v0
.end method

.method static synthetic access$8002(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 151
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mSendScanResultsBroadcast:Z

    return p1
.end method

.method static synthetic access$8100(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->sendScanResultsAvailableBroadcast()V

    return-void
.end method

.method static synthetic access$8200(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsScanOngoing:Z

    return v0
.end method

.method static synthetic access$8202(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 151
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsScanOngoing:Z

    return p1
.end method

.method static synthetic access$8300(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mBufferedScanMsg:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$8400(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mOperationalMode:I

    return v0
.end method

.method static synthetic access$8402(Lcom/android/server/wifi/WifiStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 151
    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mOperationalMode:I

    return p1
.end method

.method static synthetic access$8500(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8502(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$8600(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStopFailureToken:I

    return v0
.end method

.method static synthetic access$8604(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStopFailureToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStopFailureToken:I

    return v0
.end method

.method static synthetic access$8700(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8800(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8900(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9000(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStartToken:I

    return v0
.end method

.method static synthetic access$9004(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStartToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStartToken:I

    return v0
.end method

.method static synthetic access$9100(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)Landroid/net/wifi/SupplicantState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->handleSupplicantStateChange(Landroid/os/Message;)Landroid/net/wifi/SupplicantState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9200(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStoppedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$9400(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9500(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$9600(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$9700()Z
    .locals 1

    .prologue
    .line 151
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->PDBG:Z

    return v0
.end method

.method static synthetic access$9802(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 151
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsRunning:Z

    return p1
.end method

.method static synthetic access$9900(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mInDelayedStop:Z

    return v0
.end method

.method static synthetic access$9902(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 151
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInDelayedStop:Z

    return p1
.end method

.method private calculateWifiScore(Landroid/net/wifi/WifiLinkLayerStats;)V
    .locals 24
    .param p1, "stats"    # Landroid/net/wifi/WifiLinkLayerStats;

    .prologue
    .line 3811
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 3813
    .local v15, "sb":Ljava/lang/StringBuilder;
    const/16 v16, 0x38

    .line 3814
    .local v16, "score":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiInfo;->is24GHz()Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/wifi/WifiConfigStore;->badLinkSpeed24:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiInfo;->is5GHz()Z

    move-result v18

    if-eqz v18, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/wifi/WifiConfigStore;->badLinkSpeed5:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_2c

    :cond_1
    const/4 v7, 0x1

    .line 3818
    .local v7, "isBadLinkspeed":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiInfo;->is24GHz()Z

    move-result v18

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/wifi/WifiConfigStore;->goodLinkSpeed24:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiInfo;->is5GHz()Z

    move-result v18

    if-eqz v18, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/wifi/WifiConfigStore;->goodLinkSpeed5:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_2d

    :cond_3
    const/4 v9, 0x1

    .line 3823
    .local v9, "isGoodLinkspeed":Z
    :goto_1
    if-eqz v7, :cond_2e

    .line 3824
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mBadLinkspeedcount:I

    move/from16 v18, v0

    const/16 v19, 0x6

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    .line 3825
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mBadLinkspeedcount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiStateMachine;->mBadLinkspeedcount:I

    .line 3831
    :cond_4
    :goto_2
    if-eqz v7, :cond_5

    const-string v18, " bl("

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mBadLinkspeedcount:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3832
    :cond_5
    if-eqz v9, :cond_6

    const-string v18, " gl"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3842
    :cond_6
    const/16 v17, 0x0

    .line 3843
    .local v17, "use24Thresholds":Z
    const/4 v5, 0x0

    .line 3844
    .local v5, "homeNetworkBoost":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 3845
    .local v4, "currentConfiguration":Landroid/net/wifi/WifiConfiguration;
    if-eqz v4, :cond_8

    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    .line 3847
    const-wide/16 v18, 0x2ee0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v20

    move-wide/from16 v0, v18

    move/from16 v2, v20

    invoke-virtual {v4, v0, v1, v2}, Landroid/net/wifi/WifiConfiguration;->setVisibility(JI)Landroid/net/wifi/WifiConfiguration$Visibility;

    .line 3848
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    move-object/from16 v18, v0

    if-eqz v18, :cond_7

    .line 3849
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    move/from16 v18, v0

    sget v19, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_7

    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    move/from16 v18, v0

    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_7

    .line 3852
    const/16 v17, 0x1

    .line 3855
    :cond_7
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->size()I

    move-result v18

    const/16 v19, 0x6

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_8

    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/BitSet;->cardinality()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/util/BitSet;->get(I)Z

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 3861
    const/4 v5, 0x1

    .line 3864
    :cond_8
    if-eqz v5, :cond_9

    const-string v18, " hn"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3865
    :cond_9
    if-eqz v17, :cond_a

    const-string v18, " u24"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3867
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mAggressiveHandover:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x6

    sub-int v19, v18, v19

    if-eqz v5, :cond_2f

    sget v18, Landroid/net/wifi/WifiConfiguration;->HOME_NETWORK_RSSI_BOOST:I

    :goto_3
    add-int v13, v19, v18

    .line 3869
    .local v13, "rssi":I
    const-string v18, " rssi=%d ag=%d"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mAggressiveHandover:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3871
    if-nez v17, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiInfo;->is24GHz()Z

    move-result v18

    if-eqz v18, :cond_30

    :cond_b
    const/4 v6, 0x1

    .line 3873
    .local v6, "is24GHz":Z
    :goto_4
    if-eqz v6, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/wifi/WifiConfigStore;->thresholdBadRssi24:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v13, v0, :cond_d

    :cond_c
    if-nez v6, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/wifi/WifiConfigStore;->thresholdBadRssi5:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v13, v0, :cond_31

    :cond_d
    const/4 v8, 0x1

    .line 3875
    .local v8, "isBadRSSI":Z
    :goto_5
    if-eqz v6, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/wifi/WifiConfigStore;->thresholdLowRssi24:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v13, v0, :cond_f

    :cond_e
    if-nez v6, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/wifi/WifiConfigStore;->thresholdLowRssi5:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_32

    :cond_f
    const/4 v11, 0x1

    .line 3877
    .local v11, "isLowRSSI":Z
    :goto_6
    if-eqz v6, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/wifi/WifiConfigStore;->thresholdGoodRssi24:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v13, v0, :cond_11

    :cond_10
    if-nez v6, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/wifi/WifiConfigStore;->thresholdGoodRssi5:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_33

    :cond_11
    const/4 v10, 0x1

    .line 3880
    .local v10, "isHighRSSI":Z
    :goto_7
    if-eqz v8, :cond_12

    const-string v18, " br"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3881
    :cond_12
    if-eqz v11, :cond_13

    const-string v18, " lr"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3882
    :cond_13
    if-eqz v10, :cond_14

    const-string v18, " hr"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3884
    :cond_14
    const/4 v12, 0x0

    .line 3885
    .local v12, "penalizedDueToUserTriggeredDisconnect":I
    if-eqz v4, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4014000000000000L    # 5.0

    cmpl-double v18, v18, v20

    if-gtz v18, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4014000000000000L    # 5.0

    cmpl-double v18, v18, v20

    if-lez v18, :cond_1c

    .line 3887
    :cond_15
    if-eqz v8, :cond_34

    .line 3888
    iget v0, v4, Landroid/net/wifi/WifiConfiguration;->numTicksAtBadRSSI:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    iput v0, v4, Landroid/net/wifi/WifiConfiguration;->numTicksAtBadRSSI:I

    .line 3889
    iget v0, v4, Landroid/net/wifi/WifiConfiguration;->numTicksAtBadRSSI:I

    move/from16 v18, v0

    const/16 v19, 0x3e8

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_19

    .line 3892
    iget v0, v4, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableBadRSSI:I

    move/from16 v18, v0

    if-lez v18, :cond_16

    .line 3893
    iget v0, v4, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableBadRSSI:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    iput v0, v4, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableBadRSSI:I

    .line 3895
    :cond_16
    iget v0, v4, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    move/from16 v18, v0

    if-lez v18, :cond_17

    .line 3896
    iget v0, v4, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    iput v0, v4, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    .line 3898
    :cond_17
    iget v0, v4, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    move/from16 v18, v0

    if-lez v18, :cond_18

    .line 3899
    iget v0, v4, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    iput v0, v4, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    .line 3901
    :cond_18
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v4, Landroid/net/wifi/WifiConfiguration;->numTicksAtBadRSSI:I

    .line 3903
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConfigStore;->enableWifiCellularHandoverUserTriggeredAdjustment:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1b

    iget v0, v4, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableBadRSSI:I

    move/from16 v18, v0

    if-gtz v18, :cond_1a

    iget v0, v4, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    move/from16 v18, v0

    if-gtz v18, :cond_1a

    iget v0, v4, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    move/from16 v18, v0

    if-lez v18, :cond_1b

    .line 3907
    :cond_1a
    add-int/lit8 v16, v16, -0x5

    .line 3908
    const/4 v12, 0x1

    .line 3909
    const-string v18, " p1"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3948
    :cond_1b
    :goto_8
    const-string v18, " ticks %d,%d,%d"

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    iget v0, v4, Landroid/net/wifi/WifiConfiguration;->numTicksAtBadRSSI:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    iget v0, v4, Landroid/net/wifi/WifiConfiguration;->numTicksAtLowRSSI:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x2

    iget v0, v4, Landroid/net/wifi/WifiConfiguration;->numTicksAtNotHighRSSI:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3953
    :cond_1c
    sget-boolean v18, Lcom/android/server/wifi/WifiStateMachine;->PDBG:Z

    if-eqz v18, :cond_1f

    .line 3954
    const-string v14, ""

    .line 3955
    .local v14, "rssiStatus":Ljava/lang/String;
    if-eqz v8, :cond_3c

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " badRSSI "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 3958
    :cond_1d
    :goto_9
    if-eqz v7, :cond_1e

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " lowSpeed "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 3959
    :cond_1e
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "calculateWifiScore freq="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " speed="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " score="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/net/wifi/WifiInfo;->score:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " -> txbadrate="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "%.2f"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " txgoodrate="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "%.2f"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " txretriesrate="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "%.2f"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " rxrate="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "%.2f"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " userTriggerdPenalty"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 3970
    .end local v14    # "rssiStatus":Ljava/lang/String;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    cmpl-double v18, v18, v20

    if-ltz v18, :cond_3e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4008000000000000L    # 3.0

    cmpg-double v18, v18, v20

    if-gez v18, :cond_3e

    if-nez v8, :cond_20

    if-eqz v11, :cond_3e

    .line 3973
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    move/from16 v18, v0

    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_21

    .line 3974
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    .line 3975
    :cond_21
    const-string v18, " ls+=%d"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3976
    sget-boolean v18, Lcom/android/server/wifi/WifiStateMachine;->PDBG:Z

    if-eqz v18, :cond_22

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " bad link -> stuck count ="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 3986
    :cond_22
    :goto_a
    const-string v18, " [%d"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3988
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_23

    .line 3990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    mul-int/lit8 v18, v18, 0x2

    sub-int v16, v16, v18

    .line 3992
    :cond_23
    const-string v18, ",%d"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3994
    if-eqz v7, :cond_41

    .line 3995
    add-int/lit8 v16, v16, -0x4

    .line 3996
    sget-boolean v18, Lcom/android/server/wifi/WifiStateMachine;->PDBG:Z

    if-eqz v18, :cond_24

    .line 3997
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " isBadLinkspeed   ---> count="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mBadLinkspeedcount:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " score="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 4003
    :cond_24
    :goto_b
    const-string v18, ",%d"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4005
    if-eqz v8, :cond_42

    .line 4006
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    move/from16 v18, v0

    const/16 v19, 0x7

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_25

    .line 4007
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    .line 4019
    :cond_25
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/net/wifi/WifiInfo;->lowRssiCount:I

    move/from16 v19, v0

    add-int v18, v18, v19

    sub-int v16, v16, v18

    .line 4020
    const-string v18, ",%d"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4022
    sget-boolean v18, Lcom/android/server/wifi/WifiStateMachine;->PDBG:Z

    if-eqz v18, :cond_26

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " badRSSI count"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " lowRSSI count"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/net/wifi/WifiInfo;->lowRssiCount:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " --> score "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 4027
    :cond_26
    if-eqz v10, :cond_27

    .line 4028
    add-int/lit8 v16, v16, 0x5

    .line 4029
    sget-boolean v18, Lcom/android/server/wifi/WifiStateMachine;->PDBG:Z

    if-eqz v18, :cond_27

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " isHighRSSI       ---> score="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 4031
    :cond_27
    const-string v18, ",%d]"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4033
    const-string v18, " brc=%d lrc=%d"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/net/wifi/WifiInfo;->lowRssiCount:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4036
    const/16 v18, 0x3c

    move/from16 v0, v16

    move/from16 v1, v18

    if-le v0, v1, :cond_28

    .line 4037
    const/16 v16, 0x3c

    .line 4038
    :cond_28
    if-gez v16, :cond_29

    .line 4039
    const/16 v16, 0x0

    .line 4042
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/wifi/WifiInfo;->score:I

    move/from16 v18, v0

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_2b

    .line 4043
    sget-boolean v18, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v18, :cond_2a

    .line 4044
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "calculateWifiScore() report new score "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 4046
    :cond_2a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiStateMachine;->isPropFeatureEnabled:Z

    move/from16 v18, v0

    if-nez v18, :cond_2b

    .line 4047
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v18, v0

    move/from16 v0, v16

    move-object/from16 v1, v18

    iput v0, v1, Landroid/net/wifi/WifiInfo;->score:I

    .line 4048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2b

    .line 4049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->sendNetworkScore(I)V

    .line 4053
    :cond_2b
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/WifiStateMachine;->wifiScoringReport:Ljava/lang/String;

    .line 4054
    return-void

    .line 3814
    .end local v4    # "currentConfiguration":Landroid/net/wifi/WifiConfiguration;
    .end local v5    # "homeNetworkBoost":Z
    .end local v6    # "is24GHz":Z
    .end local v7    # "isBadLinkspeed":Z
    .end local v8    # "isBadRSSI":Z
    .end local v9    # "isGoodLinkspeed":Z
    .end local v10    # "isHighRSSI":Z
    .end local v11    # "isLowRSSI":Z
    .end local v12    # "penalizedDueToUserTriggeredDisconnect":I
    .end local v13    # "rssi":I
    .end local v17    # "use24Thresholds":Z
    :cond_2c
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 3818
    .restart local v7    # "isBadLinkspeed":Z
    :cond_2d
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 3827
    .restart local v9    # "isGoodLinkspeed":Z
    :cond_2e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mBadLinkspeedcount:I

    move/from16 v18, v0

    if-lez v18, :cond_4

    .line 3828
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mBadLinkspeedcount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiStateMachine;->mBadLinkspeedcount:I

    goto/16 :goto_2

    .line 3867
    .restart local v4    # "currentConfiguration":Landroid/net/wifi/WifiConfiguration;
    .restart local v5    # "homeNetworkBoost":Z
    .restart local v17    # "use24Thresholds":Z
    :cond_2f
    const/16 v18, 0x0

    goto/16 :goto_3

    .line 3871
    .restart local v13    # "rssi":I
    :cond_30
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 3873
    .restart local v6    # "is24GHz":Z
    :cond_31
    const/4 v8, 0x0

    goto/16 :goto_5

    .line 3875
    .restart local v8    # "isBadRSSI":Z
    :cond_32
    const/4 v11, 0x0

    goto/16 :goto_6

    .line 3877
    .restart local v11    # "isLowRSSI":Z
    :cond_33
    const/4 v10, 0x0

    goto/16 :goto_7

    .line 3911
    .restart local v10    # "isHighRSSI":Z
    .restart local v12    # "penalizedDueToUserTriggeredDisconnect":I
    :cond_34
    if-eqz v11, :cond_39

    .line 3912
    iget v0, v4, Landroid/net/wifi/WifiConfiguration;->numTicksAtLowRSSI:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    iput v0, v4, Landroid/net/wifi/WifiConfiguration;->numTicksAtLowRSSI:I

    .line 3913
    iget v0, v4, Landroid/net/wifi/WifiConfiguration;->numTicksAtLowRSSI:I

    move/from16 v18, v0

    const/16 v19, 0x3e8

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_37

    .line 3916
    iget v0, v4, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    move/from16 v18, v0

    if-lez v18, :cond_35

    .line 3917
    iget v0, v4, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    iput v0, v4, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    .line 3919
    :cond_35
    iget v0, v4, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    move/from16 v18, v0

    if-lez v18, :cond_36

    .line 3920
    iget v0, v4, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    iput v0, v4, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    .line 3922
    :cond_36
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v4, Landroid/net/wifi/WifiConfiguration;->numTicksAtLowRSSI:I

    .line 3924
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConfigStore;->enableWifiCellularHandoverUserTriggeredAdjustment:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1b

    iget v0, v4, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    move/from16 v18, v0

    if-gtz v18, :cond_38

    iget v0, v4, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    move/from16 v18, v0

    if-lez v18, :cond_1b

    .line 3927
    :cond_38
    add-int/lit8 v16, v16, -0x5

    .line 3928
    const/4 v12, 0x2

    .line 3929
    const-string v18, " p2"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 3931
    :cond_39
    if-nez v10, :cond_1b

    .line 3932
    iget v0, v4, Landroid/net/wifi/WifiConfiguration;->numTicksAtNotHighRSSI:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    iput v0, v4, Landroid/net/wifi/WifiConfiguration;->numTicksAtNotHighRSSI:I

    .line 3933
    iget v0, v4, Landroid/net/wifi/WifiConfiguration;->numTicksAtNotHighRSSI:I

    move/from16 v18, v0

    const/16 v19, 0x3e8

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_3b

    .line 3936
    iget v0, v4, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    move/from16 v18, v0

    if-lez v18, :cond_3a

    .line 3937
    iget v0, v4, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    iput v0, v4, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    .line 3939
    :cond_3a
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v4, Landroid/net/wifi/WifiConfiguration;->numTicksAtNotHighRSSI:I

    .line 3941
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConfigStore;->enableWifiCellularHandoverUserTriggeredAdjustment:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1b

    iget v0, v4, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    move/from16 v18, v0

    if-lez v18, :cond_1b

    .line 3943
    add-int/lit8 v16, v16, -0x5

    .line 3944
    const/4 v12, 0x3

    .line 3945
    const-string v18, " p3"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 3956
    .restart local v14    # "rssiStatus":Ljava/lang/String;
    :cond_3c
    if-eqz v10, :cond_3d

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " highRSSI "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_9

    .line 3957
    :cond_3d
    if-eqz v11, :cond_1d

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " lowRSSI "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_9

    .line 3978
    .end local v14    # "rssiStatus":Ljava/lang/String;
    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    cmpl-double v18, v18, v20

    if-gtz v18, :cond_3f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    move-wide/from16 v18, v0

    const-wide v20, 0x3fb999999999999aL    # 0.1

    cmpg-double v18, v18, v20

    if-gez v18, :cond_22

    .line 3979
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    move/from16 v18, v0

    if-lez v18, :cond_40

    .line 3980
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    .line 3981
    :cond_40
    const-string v18, " ls-=%d"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3982
    sget-boolean v18, Lcom/android/server/wifi/WifiStateMachine;->PDBG:Z

    if-eqz v18, :cond_22

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " good link -> stuck count ="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 4000
    :cond_41
    if-eqz v9, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4014000000000000L    # 5.0

    cmpl-double v18, v18, v20

    if-lez v18, :cond_24

    .line 4001
    add-int/lit8 v16, v16, 0x4

    goto/16 :goto_b

    .line 4008
    :cond_42
    if-eqz v11, :cond_43

    .line 4009
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/net/wifi/WifiInfo;->lowRssiCount:I

    .line 4010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    move/from16 v18, v0

    if-lez v18, :cond_25

    .line 4012
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    goto/16 :goto_c

    .line 4015
    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    .line 4016
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/net/wifi/WifiInfo;->lowRssiCount:I

    goto/16 :goto_c
.end method

.method private cancelDelayedScan()V
    .locals 2

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDelayedScanCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelDelayedScan -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDelayedScanCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 1262
    return-void
.end method

.method private checkAndRestartDelayedScan(IZILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)Z
    .locals 1
    .param p1, "counter"    # I
    .param p2, "restart"    # Z
    .param p3, "milli"    # I
    .param p4, "settings"    # Landroid/net/wifi/ScanSettings;
    .param p5, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 1266
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDelayedScanCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 1267
    const/4 v0, 0x0

    .line 1271
    :goto_0
    return v0

    .line 1269
    :cond_0
    if-eqz p2, :cond_1

    .line 1270
    invoke-direct {p0, p3, p4, p5}, Lcom/android/server/wifi/WifiStateMachine;->startDelayedScan(ILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    .line 1271
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkAndSetConnectivityInstance()V
    .locals 2

    .prologue
    .line 3227
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 3228
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    .line 3230
    :cond_0
    return-void
.end method

.method private checkOrDeferScanAllowed(Landroid/os/Message;)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1750
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1751
    .local v2, "now":J
    iget-wide v4, p0, Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttempt:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_0

    iget-wide v4, p0, Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttempt:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x2710

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    .line 1752
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 1753
    .local v0, "dmsg":Landroid/os/Message;
    const-wide/16 v4, 0x2af8

    iget-wide v6, p0, Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttempt:J

    sub-long v6, v2, v6

    sub-long/2addr v4, v6

    invoke-virtual {p0, v0, v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 1754
    const/4 v1, 0x0

    .line 1756
    .end local v0    # "dmsg":Landroid/os/Message;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private cleanWifiScore()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 3800
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iput-wide v2, v0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    .line 3801
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iput-wide v2, v0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    .line 3802
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iput-wide v2, v0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    .line 3803
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iput-wide v2, v0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    .line 3804
    return-void
.end method

.method private clearIPv4Address(Ljava/lang/String;)Z
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 4096
    :try_start_0
    new-instance v2, Landroid/net/InterfaceConfiguration;

    invoke-direct {v2}, Landroid/net/InterfaceConfiguration;-><init>()V

    .line 4097
    .local v2, "ifcg":Landroid/net/InterfaceConfiguration;
    new-instance v4, Landroid/net/LinkAddress;

    const-string v5, "0.0.0.0/0"

    invoke-direct {v4, v5}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 4098
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v4, p1, v2}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4099
    const/4 v3, 0x1

    .line 4104
    .end local v2    # "ifcg":Landroid/net/InterfaceConfiguration;
    :goto_0
    return v3

    .line 4100
    :catch_0
    move-exception v0

    .line 4101
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 4102
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 4103
    .local v1, "ie":Ljava/lang/IllegalStateException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to set interface config: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private clearLinkProperties()V
    .locals 2

    .prologue
    .line 4290
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResultsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4291
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    if-eqz v0, :cond_0

    .line 4292
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    invoke-virtual {v0}, Landroid/net/DhcpResults;->clear()V

    .line 4294
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4295
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetlinkTracker:Lcom/android/server/net/NetlinkTracker;

    invoke-virtual {v0}, Lcom/android/server/net/NetlinkTracker;->clearLinkProperties()V

    .line 4298
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->clear()V

    .line 4299
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V

    .line 4300
    :cond_1
    return-void

    .line 4294
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static concat([B[B[B)[B
    .locals 9
    .param p0, "array1"    # [B
    .param p1, "array2"    # [B
    .param p2, "array3"    # [B

    .prologue
    .line 9010
    array-length v7, p0

    array-length v8, p1

    add-int/2addr v7, v8

    array-length v8, p2

    add-int v4, v7, v8

    .line 9012
    .local v4, "len":I
    array-length v7, p0

    if-eqz v7, :cond_0

    .line 9013
    add-int/lit8 v4, v4, 0x1

    .line 9016
    :cond_0
    array-length v7, p1

    if-eqz v7, :cond_1

    .line 9017
    add-int/lit8 v4, v4, 0x1

    .line 9020
    :cond_1
    array-length v7, p2

    if-eqz v7, :cond_2

    .line 9021
    add-int/lit8 v4, v4, 0x1

    .line 9024
    :cond_2
    new-array v6, v4, [B

    .line 9026
    .local v6, "result":[B
    const/4 v3, 0x0

    .line 9027
    .local v3, "index":I
    array-length v7, p0

    if-eqz v7, :cond_3

    .line 9028
    array-length v7, p0

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v6, v3

    .line 9029
    add-int/lit8 v3, v3, 0x1

    .line 9030
    move-object v0, p0

    .local v0, "arr$":[B
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v5, :cond_3

    aget-byte v1, v0, v2

    .line 9031
    .local v1, "b":B
    aput-byte v1, v6, v3

    .line 9032
    add-int/lit8 v3, v3, 0x1

    .line 9030
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9036
    .end local v0    # "arr$":[B
    .end local v1    # "b":B
    .end local v2    # "i$":I
    .end local v5    # "len$":I
    :cond_3
    array-length v7, p1

    if-eqz v7, :cond_4

    .line 9037
    array-length v7, p1

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v6, v3

    .line 9038
    add-int/lit8 v3, v3, 0x1

    .line 9039
    move-object v0, p1

    .restart local v0    # "arr$":[B
    array-length v5, v0

    .restart local v5    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v5, :cond_4

    aget-byte v1, v0, v2

    .line 9040
    .restart local v1    # "b":B
    aput-byte v1, v6, v3

    .line 9041
    add-int/lit8 v3, v3, 0x1

    .line 9039
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 9045
    .end local v0    # "arr$":[B
    .end local v1    # "b":B
    .end local v2    # "i$":I
    .end local v5    # "len$":I
    :cond_4
    array-length v7, p2

    if-eqz v7, :cond_5

    .line 9046
    array-length v7, p2

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v6, v3

    .line 9047
    add-int/lit8 v3, v3, 0x1

    .line 9048
    move-object v0, p2

    .restart local v0    # "arr$":[B
    array-length v5, v0

    .restart local v5    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_2
    if-ge v2, v5, :cond_5

    aget-byte v1, v0, v2

    .line 9049
    .restart local v1    # "b":B
    aput-byte v1, v6, v3

    .line 9050
    add-int/lit8 v3, v3, 0x1

    .line 9048
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 9053
    .end local v0    # "arr$":[B
    .end local v1    # "b":B
    .end local v2    # "i$":I
    .end local v5    # "len$":I
    :cond_5
    return-object v6
.end method

.method private fetchPktcntNative(Landroid/net/wifi/RssiPacketCountInfo;)V
    .locals 9
    .param p1, "info"    # Landroid/net/wifi/RssiPacketCountInfo;

    .prologue
    .line 4074
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiNative;->pktcntPoll()Ljava/lang/String;

    move-result-object v5

    .line 4076
    .local v5, "pktcntPoll":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 4077
    const-string v7, "\n"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 4078
    .local v4, "lines":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 4079
    .local v3, "line":Ljava/lang/String;
    const-string v7, "="

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 4080
    .local v6, "prop":[Ljava/lang/String;
    array-length v7, v6

    const/4 v8, 0x2

    if-ge v7, v8, :cond_1

    .line 4078
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4082
    :cond_1
    const/4 v7, 0x0

    :try_start_0
    aget-object v7, v6, v7

    const-string v8, "TXGOOD"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 4083
    const/4 v7, 0x1

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p1, Landroid/net/wifi/RssiPacketCountInfo;->txgood:I

    goto :goto_1

    .line 4087
    :catch_0
    move-exception v7

    goto :goto_1

    .line 4084
    :cond_2
    const/4 v7, 0x0

    aget-object v7, v6, v7

    const-string v8, "TXBAD"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 4085
    const/4 v7, 0x1

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p1, Landroid/net/wifi/RssiPacketCountInfo;->txbad:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 4092
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "lines":[Ljava/lang/String;
    .end local v6    # "prop":[Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private fetchRssiLinkSpeedAndFrequencyNative()V
    .locals 14

    .prologue
    const/16 v13, -0x7f

    .line 3684
    const/4 v7, -0x1

    .line 3685
    .local v7, "newRssi":I
    const/4 v6, -0x1

    .line 3686
    .local v6, "newLinkSpeed":I
    const/4 v5, -0x1

    .line 3688
    .local v5, "newFrequency":I
    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v11}, Lcom/android/server/wifi/WifiNative;->signalPoll()Ljava/lang/String;

    move-result-object v10

    .line 3690
    .local v10, "signalPoll":Ljava/lang/String;
    if-eqz v10, :cond_4

    .line 3691
    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 3692
    .local v4, "lines":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_4

    aget-object v3, v0, v1

    .line 3693
    .local v3, "line":Ljava/lang/String;
    const-string v11, "="

    invoke-virtual {v3, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 3694
    .local v9, "prop":[Ljava/lang/String;
    array-length v11, v9

    const/4 v12, 0x2

    if-ge v11, v12, :cond_1

    .line 3692
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3696
    :cond_1
    const/4 v11, 0x0

    :try_start_0
    aget-object v11, v9, v11

    const-string v12, "RSSI"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 3697
    const/4 v11, 0x1

    aget-object v11, v9, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    goto :goto_1

    .line 3698
    :cond_2
    const/4 v11, 0x0

    aget-object v11, v9, v11

    const-string v12, "LINKSPEED"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 3699
    const/4 v11, 0x1

    aget-object v11, v9, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_1

    .line 3700
    :cond_3
    const/4 v11, 0x0

    aget-object v11, v9, v11

    const-string v12, "FREQUENCY"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 3701
    const/4 v11, 0x1

    aget-object v11, v9, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    goto :goto_1

    .line 3709
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "lines":[Ljava/lang/String;
    .end local v9    # "prop":[Ljava/lang/String;
    :cond_4
    sget-boolean v11, Lcom/android/server/wifi/WifiStateMachine;->PDBG:Z

    if-eqz v11, :cond_5

    .line 3710
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "fetchRssiLinkSpeedAndFrequencyNative rssi="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " linkspeed="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 3715
    :cond_5
    if-le v7, v13, :cond_c

    const/16 v11, 0xc8

    if-ge v7, v11, :cond_c

    .line 3720
    if-lez v7, :cond_6

    add-int/lit16 v7, v7, -0x100

    .line 3721
    :cond_6
    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v11, v7}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    .line 3732
    const/4 v11, 0x5

    invoke-static {v7, v11}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v8

    .line 3733
    .local v8, "newSignalLevel":I
    iget v11, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastSignalLevel:I

    if-eq v8, v11, :cond_7

    .line 3734
    invoke-direct {p0, v7}, Lcom/android/server/wifi/WifiStateMachine;->sendRssiChangeBroadcast(I)V

    .line 3736
    :cond_7
    iput v8, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastSignalLevel:I

    .line 3741
    .end local v8    # "newSignalLevel":I
    :goto_2
    const/4 v11, -0x1

    if-eq v6, v11, :cond_8

    .line 3742
    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v11, v6}, Landroid/net/wifi/WifiInfo;->setLinkSpeed(I)V

    .line 3744
    :cond_8
    if-lez v5, :cond_b

    .line 3745
    invoke-static {v5}, Landroid/net/wifi/ScanResult;->is5GHz(I)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 3746
    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;

    iget v12, v11, Landroid/net/wifi/WifiConnectionStatistics;->num5GhzConnected:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v11, Landroid/net/wifi/WifiConnectionStatistics;->num5GhzConnected:I

    .line 3748
    :cond_9
    invoke-static {v5}, Landroid/net/wifi/ScanResult;->is24GHz(I)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 3749
    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;

    iget v12, v11, Landroid/net/wifi/WifiConnectionStatistics;->num24GhzConnected:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v11, Landroid/net/wifi/WifiConnectionStatistics;->num24GhzConnected:I

    .line 3751
    :cond_a
    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v11, v5}, Landroid/net/wifi/WifiInfo;->setFrequency(I)V

    .line 3753
    :cond_b
    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v12, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v11, v12}, Lcom/android/server/wifi/WifiConfigStore;->updateConfiguration(Landroid/net/wifi/WifiInfo;)V

    .line 3754
    return-void

    .line 3738
    :cond_c
    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v11, v13}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    goto :goto_2

    .line 3703
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v4    # "lines":[Ljava/lang/String;
    .restart local v9    # "prop":[Ljava/lang/String;
    :catch_0
    move-exception v11

    goto/16 :goto_1
.end method

.method private getNetworkDetailedState()Landroid/net/NetworkInfo$DetailedState;
    .locals 1

    .prologue
    .line 4444
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    return-object v0
.end method

.method private handleBSSIDBlacklist(ZLjava/lang/String;I)V
    .locals 2
    .param p1, "enable"    # Z
    .param p2, "bssid"    # Ljava/lang/String;
    .param p3, "reason"    # I

    .prologue
    .line 3112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Blacklisting BSSID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",enable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 3113
    if-eqz p2, :cond_0

    .line 3115
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;

    monitor-enter v1

    .line 3116
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiAutoJoinController:Lcom/android/server/wifi/WifiAutoJoinController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/WifiAutoJoinController;->handleBSSIDBlackList(ZLjava/lang/String;I)V

    .line 3117
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/WifiConfigStore;->handleDisabledAPs(ZLjava/lang/String;I)V

    .line 3118
    monitor-exit v1

    .line 3120
    :cond_0
    return-void

    .line 3118
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleBatchedScanPollRequest()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 1462
    sget-boolean v2, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v2, :cond_0

    .line 1463
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleBatchedScanPoll Request - mBatchedScanMinPollTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatchedScanMinPollTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , mBatchedScanSettings="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatchedScanSettings:Landroid/net/wifi/BatchedScanSettings;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 1469
    :cond_0
    iget-wide v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatchedScanMinPollTime:J

    cmp-long v2, v2, v8

    if-nez v2, :cond_2

    .line 1482
    :cond_1
    :goto_0
    return-void

    .line 1470
    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatchedScanSettings:Landroid/net/wifi/BatchedScanSettings;

    if-eqz v2, :cond_1

    .line 1472
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1474
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatchedScanMinPollTime:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    .line 1476
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->startNextBatchedScan()V

    goto :goto_0

    .line 1478
    :cond_3
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatchedScanMinPollTime:J

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatchedScanIntervalIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 1480
    iput-wide v8, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatchedScanMinPollTime:J

    goto :goto_0
.end method

.method private handleIPv4Failure(I)V
    .locals 2
    .param p1, "reason"    # I

    .prologue
    .line 4698
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResultsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4699
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    if-eqz v0, :cond_0

    .line 4700
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    invoke-virtual {v0}, Landroid/net/DhcpResults;->clear()V

    .line 4702
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4703
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->PDBG:Z

    if-eqz v0, :cond_1

    .line 4704
    const-string v0, "wifistatemachine handleIPv4Failure"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 4706
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetlinkTracker:Lcom/android/server/net/NetlinkTracker;

    invoke-virtual {v0}, Lcom/android/server/net/NetlinkTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiStateMachine;->updateLinkProperties(ILandroid/net/LinkProperties;)V

    .line 4707
    return-void

    .line 4702
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private handleIPv4Success(Landroid/net/DhcpResults;I)V
    .locals 5
    .param p1, "dhcpResults"    # Landroid/net/DhcpResults;
    .param p2, "reason"    # I

    .prologue
    .line 4639
    sget-boolean v3, Lcom/android/server/wifi/WifiStateMachine;->PDBG:Z

    if-eqz v3, :cond_0

    .line 4640
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wifistatemachine handleIPv4Success <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/DhcpResults;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 4641
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "link address "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 4644
    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResultsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4645
    :try_start_0
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    .line 4646
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4648
    iget-object v3, p1, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v3}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    .line 4649
    .local v0, "addr":Ljava/net/Inet4Address;
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->isRoaming()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4650
    instance-of v3, v0, Ljava/net/Inet4Address;

    if-eqz v3, :cond_2

    .line 4651
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v2

    .line 4652
    .local v2, "previousAddress":I
    invoke-static {v0}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v1

    .line 4653
    .local v1, "newAddress":I
    if-eq v2, v1, :cond_1

    .line 4654
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleIPv4Success, roaming and address changed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " got: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 4664
    .end local v1    # "newAddress":I
    .end local v2    # "previousAddress":I
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3, v0}, Landroid/net/wifi/WifiInfo;->setInetAddress(Ljava/net/InetAddress;)V

    .line 4665
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1}, Landroid/net/DhcpResults;->hasMeteredHint()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiInfo;->setMeteredHint(Z)V

    .line 4666
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetlinkTracker:Lcom/android/server/net/NetlinkTracker;

    invoke-virtual {v3}, Lcom/android/server/net/NetlinkTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v3

    invoke-direct {p0, p2, v3}, Lcom/android/server/wifi/WifiStateMachine;->updateLinkProperties(ILandroid/net/LinkProperties;)V

    .line 4667
    return-void

    .line 4646
    .end local v0    # "addr":Ljava/net/Inet4Address;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 4660
    .restart local v0    # "addr":Ljava/net/Inet4Address;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleIPv4Success, roaming and didnt get an IPv4 address"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/Inet4Address;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleIpConfigurationLost()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4710
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setInetAddress(Ljava/net/InetAddress;)V

    .line 4711
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiInfo;->setMeteredHint(Z)V

    .line 4713
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    const-string v2, "DHCP FAILURE"

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/server/wifi/WifiConfigStore;->handleSSIDStateChange(IZLjava/lang/String;Ljava/lang/String;)V

    .line 4719
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 4722
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConfigStore;->enableAutoJoinWhenAssociated:Z

    if-nez v0, :cond_0

    .line 4723
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    .line 4725
    :cond_0
    return-void
.end method

.method private handleNetworkDisconnect()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 4485
    sget-boolean v1, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNetworkDisconnect: Stopping DHCP and clearing IP stack:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 4492
    :cond_0
    const-string v1, "handleNetworkDisconnect"

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->clearCurrentConfigBSSID(Ljava/lang/String;)V

    .line 4493
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x112000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiConfigStore;->shouldAutoConnect()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4501
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->disableLastNetwork()V

    .line 4504
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->stopDhcp()V

    .line 4507
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->clearInterfaceAddresses(Ljava/lang/String;)V

    .line 4508
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->disableIpv6(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4514
    :goto_0
    iput v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mBadLinkspeedcount:I

    .line 4515
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->reset()V

    .line 4516
    iput-boolean v4, p0, Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z

    .line 4518
    iput v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mAutoRoaming:I

    .line 4526
    const-wide/16 v2, 0x4e20

    iput-wide v2, p0, Lcom/android/server/wifi/WifiStateMachine;->fullBandConnectedTimeIntervalMilli:J

    .line 4528
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)Z

    .line 4529
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    if-eqz v1, :cond_2

    .line 4530
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 4531
    iput-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    .line 4533
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wifi/WifiConfigStore;->updateStatus(ILandroid/net/NetworkInfo$DetailedState;)V

    .line 4536
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->clearLinkProperties()V

    .line 4539
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    .line 4542
    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    const-string v2, "any"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->autoRoamSetBSSID(ILjava/lang/String;)V

    .line 4544
    iput-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    .line 4545
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->registerDisconnected()V

    .line 4546
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    .line 4547
    return-void

    .line 4509
    :catch_0
    move-exception v0

    .line 4510
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to clear addresses or disable ipv6"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handlePnoFailError()V
    .locals 4

    .prologue
    .line 8999
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mEnableBackgroundScan:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mP2pConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 9001
    :cond_0
    const v0, 0x2005b

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mPnoPeriodicScanToken:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mPnoPeriodicScanToken:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDefaultFrameworkScanIntervalMs:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 9005
    :cond_1
    return-void
.end method

.method private handlePrefChange(III)V
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "featureParam"    # I
    .param p3, "value"    # I

    .prologue
    const/4 v2, 0x1

    .line 3138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handle pref change : featurevalue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 3139
    if-ne p1, v2, :cond_0

    if-ne p2, v2, :cond_0

    .line 3140
    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    .line 3141
    sput v2, Lcom/android/server/wifi/WifiStateMachine;->DEFAULT_SCORE:I

    .line 3142
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiStateMachine;->isPropFeatureEnabled:Z

    .line 3148
    :cond_0
    :goto_0
    return-void

    .line 3143
    :cond_1
    if-ne p3, v2, :cond_0

    .line 3144
    const/16 v0, 0x3c

    sput v0, Lcom/android/server/wifi/WifiStateMachine;->DEFAULT_SCORE:I

    .line 3145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->isPropFeatureEnabled:Z

    goto :goto_0
.end method

.method private handleScanRequest(ILandroid/os/Message;)V
    .locals 12
    .param p1, "type"    # I
    .param p2, "message"    # Landroid/os/Message;

    .prologue
    const v11, 0x20047

    .line 1950
    const/4 v7, 0x0

    .line 1951
    .local v7, "settings":Landroid/net/wifi/ScanSettings;
    const/4 v8, 0x0

    .line 1954
    .local v8, "workSource":Landroid/os/WorkSource;
    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 1956
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1957
    const-string v9, "customized_scan_settings"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    .end local v7    # "settings":Landroid/net/wifi/ScanSettings;
    check-cast v7, Landroid/net/wifi/ScanSettings;

    .line 1958
    .restart local v7    # "settings":Landroid/net/wifi/ScanSettings;
    const-string v9, "customized_scan_worksource"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    .end local v8    # "workSource":Landroid/os/WorkSource;
    check-cast v8, Landroid/os/WorkSource;

    .line 1962
    .restart local v8    # "workSource":Landroid/os/WorkSource;
    :cond_0
    const/4 v3, 0x0

    .line 1963
    .local v3, "freqs":Ljava/lang/String;
    if-eqz v7, :cond_3

    iget-object v9, v7, Landroid/net/wifi/ScanSettings;->channelSet:Ljava/util/Collection;

    if-eqz v9, :cond_3

    .line 1964
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1965
    .local v6, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .line 1966
    .local v2, "first":Z
    iget-object v9, v7, Landroid/net/wifi/ScanSettings;->channelSet:Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiChannel;

    .line 1967
    .local v1, "channel":Landroid/net/wifi/WifiChannel;
    if-nez v2, :cond_1

    const/16 v9, 0x2c

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1968
    :goto_1
    iget v9, v1, Landroid/net/wifi/WifiChannel;->freqMHz:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1967
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 1970
    .end local v1    # "channel":Landroid/net/wifi/WifiChannel;
    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1974
    .end local v2    # "first":Z
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    invoke-direct {p0, p1, v3}, Lcom/android/server/wifi/WifiStateMachine;->startScanNative(ILjava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1976
    iget v9, p2, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v9, v8}, Lcom/android/server/wifi/WifiStateMachine;->noteScanStart(ILandroid/os/WorkSource;)V

    .line 1978
    if-nez v3, :cond_4

    .line 1979
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine;->mBufferedScanMsg:Ljava/util/Queue;

    invoke-interface {v9}, Ljava/util/Queue;->clear()V

    .line 1980
    :cond_4
    sget v9, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_OK:I

    iput v9, p0, Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I

    .line 1981
    if-eqz v8, :cond_5

    .line 1984
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/wifi/WifiStateMachine;->mSendScanResultsBroadcast:Z

    .line 2022
    :cond_5
    :goto_2
    return-void

    .line 1991
    :cond_6
    iget-boolean v9, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsScanOngoing:Z

    if-nez v9, :cond_8

    .line 1995
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine;->mBufferedScanMsg:Ljava/util/Queue;

    invoke-interface {v9}, Ljava/util/Queue;->size()I

    move-result v9

    if-lez v9, :cond_7

    .line 1996
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine;->mBufferedScanMsg:Ljava/util/Queue;

    invoke-interface {v9}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Message;

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1998
    :cond_7
    sget v9, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_DISCARD:I

    iput v9, p0, Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I

    goto :goto_2

    .line 1999
    :cond_8
    iget-boolean v9, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsFullScanOngoing:Z

    if-nez v9, :cond_b

    .line 2002
    if-nez v3, :cond_9

    .line 2003
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine;->mBufferedScanMsg:Ljava/util/Queue;

    invoke-interface {v9}, Ljava/util/Queue;->clear()V

    .line 2004
    :cond_9
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine;->mBufferedScanMsg:Ljava/util/Queue;

    invoke-interface {v9}, Ljava/util/Queue;->size()I

    move-result v9

    const/16 v10, 0xa

    if-ge v9, v10, :cond_a

    .line 2005
    iget v9, p2, Landroid/os/Message;->arg1:I

    iget v10, p2, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v11, v9, v10, v0}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 2007
    .local v5, "msg":Landroid/os/Message;
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine;->mBufferedScanMsg:Ljava/util/Queue;

    invoke-interface {v9, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2017
    :goto_3
    sget v9, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_LOOPED:I

    iput v9, p0, Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I

    goto :goto_2

    .line 2010
    .end local v5    # "msg":Landroid/os/Message;
    :cond_a
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "bundle":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2011
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v9, "customized_scan_settings"

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2012
    const-string v9, "customized_scan_worksource"

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2013
    iget v9, p2, Landroid/os/Message;->arg1:I

    iget v10, p2, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v11, v9, v10, v0}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 2014
    .restart local v5    # "msg":Landroid/os/Message;
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine;->mBufferedScanMsg:Ljava/util/Queue;

    invoke-interface {v9}, Ljava/util/Queue;->clear()V

    .line 2015
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine;->mBufferedScanMsg:Ljava/util/Queue;

    invoke-interface {v9, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2020
    .end local v5    # "msg":Landroid/os/Message;
    :cond_b
    sget v9, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I

    iput v9, p0, Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I

    goto :goto_2
.end method

.method private handleScreenStateChanged(ZZ)V
    .locals 8
    .param p1, "screenOn"    # Z
    .param p2, "startBackgroundScanIfNeeded"    # Z

    .prologue
    const v7, 0x20056

    const/4 v6, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3151
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mScreenOn:Z

    .line 3152
    sget-boolean v2, Lcom/android/server/wifi/WifiStateMachine;->PDBG:Z

    if-eqz v2, :cond_0

    .line 3153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " handleScreenStateChanged Enter: screenOn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mUserWantsSuspendOpt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " suppState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;

    invoke-virtual {v3}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 3158
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->enableRssiPolling(Z)V

    .line 3159
    if-eqz p1, :cond_1

    .line 3160
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-boolean v2, v2, Lcom/android/server/wifi/WifiConfigStore;->enableAutoJoinWhenAssociated:Z

    if-nez v2, :cond_1

    .line 3161
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x112000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConfigStore;->shouldAutoConnect()Z

    move-result v2

    if-nez v2, :cond_8

    .line 3163
    sget-boolean v2, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v2, :cond_1

    .line 3164
    const-string v2, "Don\'t auto connect skip enable networks if screen on"

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 3171
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3172
    if-eqz p1, :cond_9

    .line 3173
    invoke-virtual {p0, v7, v1, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(III)V

    .line 3180
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mScreenBroadcastReceived:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3182
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->getWifiLinkLayerStats(Z)Landroid/net/wifi/WifiLinkLayerStats;

    .line 3183
    iget v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTime:I

    iput v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTimeScreenStateChange:I

    .line 3184
    iget-wide v2, p0, Lcom/android/server/wifi/WifiStateMachine;->lastLinkLayerStatsUpdate:J

    iput-wide v2, p0, Lcom/android/server/wifi/WifiStateMachine;->lastScreenStateChangeTimeStamp:J

    .line 3185
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mEnableBackgroundScan:Z

    .line 3186
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->cancelDelayedScan()V

    .line 3188
    if-eqz p1, :cond_b

    .line 3189
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->setScanAlarm(Z)V

    .line 3190
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->clearBlacklist()V

    .line 3192
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v2, v2, Lcom/android/server/wifi/WifiConfigStore;->associatedPartialScanPeriodMilli:I

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/android/server/wifi/WifiStateMachine;->fullBandConnectedTimeIntervalMilli:J

    .line 3195
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;

    if-ne v2, v3, :cond_a

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-boolean v2, v2, Lcom/android/server/wifi/WifiConfigStore;->enableAutoJoinScanWhenAssociated:Z

    if-eqz v2, :cond_a

    .line 3198
    const/16 v2, 0x1f4

    invoke-direct {p0, v2, v6, v6}, Lcom/android/server/wifi/WifiStateMachine;->startDelayedScan(ILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    .line 3212
    :cond_3
    :goto_2
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mBackgroundScanSupported:Z

    if-eqz v2, :cond_4

    .line 3213
    if-nez p1, :cond_c

    :goto_3
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mEnableBackgroundScan:Z

    .line 3215
    :cond_4
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "backgroundScan enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mEnableBackgroundScan:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " startBackgroundScanIfNeeded:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 3217
    :cond_5
    if-eqz p2, :cond_6

    .line 3219
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mEnableBackgroundScan:Z

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->enableBackgroundScan(Z)Z

    move-result v0

    if-nez v0, :cond_6

    .line 3220
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->handlePnoFailError()V

    .line 3223
    :cond_6
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleScreenStateChanged Exit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 3224
    :cond_7
    return-void

    .line 3167
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->enableAllNetworks()V

    goto/16 :goto_0

    .line 3176
    :cond_9
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 3177
    invoke-virtual {p0, v7, v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(III)V

    goto/16 :goto_1

    .line 3199
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;

    if-ne v2, v3, :cond_3

    .line 3201
    const/16 v2, 0xc8

    invoke-direct {p0, v2, v6, v6}, Lcom/android/server/wifi/WifiStateMachine;->startDelayedScan(ILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    goto :goto_2

    .line 3203
    :cond_b
    if-eqz p2, :cond_3

    .line 3208
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mBackgroundScanSupported:Z

    if-nez v2, :cond_3

    .line 3209
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->setScanAlarm(Z)V

    goto :goto_2

    :cond_c
    move v0, v1

    .line 3213
    goto :goto_3
.end method

.method private handleStateChange(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 3124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handle state change: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 3125
    if-nez p1, :cond_1

    .line 3127
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v1, 0x1

    iput v1, v0, Landroid/net/wifi/WifiInfo;->score:I

    .line 3132
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    if-eqz v0, :cond_0

    .line 3133
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget v1, v1, Landroid/net/wifi/WifiInfo;->score:I

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->sendNetworkScore(I)V

    .line 3135
    :cond_0
    return-void

    .line 3130
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/16 v1, 0x3c

    iput v1, v0, Landroid/net/wifi/WifiInfo;->score:I

    goto :goto_0
.end method

.method private handleSuccessfulIpConfiguration()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4670
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastSignalLevel:I

    .line 4671
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 4672
    .local v0, "c":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 4674
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    .line 4677
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->updateCapabilities(Landroid/net/wifi/WifiConfiguration;)V

    .line 4679
    :cond_0
    if-eqz v0, :cond_1

    .line 4680
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v1

    .line 4681
    .local v1, "result":Landroid/net/wifi/ScanResult;
    if-nez v1, :cond_2

    .line 4682
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiStateMachine: handleSuccessfulIpConfiguration and no scan results"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 4695
    .end local v1    # "result":Landroid/net/wifi/ScanResult;
    :cond_1
    :goto_0
    return-void

    .line 4686
    .restart local v1    # "result":Landroid/net/wifi/ScanResult;
    :cond_2
    iput v3, v1, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    .line 4692
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->clearBlacklist()Z

    goto :goto_0
.end method

.method private handleSupplicantConnectionLoss(Z)V
    .locals 2
    .param p1, "killSupplicant"    # Z

    .prologue
    .line 4553
    if-eqz p1, :cond_0

    .line 4554
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mP2pSupported:Z

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiMonitor;->killSupplicant(Z)V

    .line 4556
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->closeSupplicantConnection()V

    .line 4557
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendSupplicantConnectionChangedBroadcast(Z)V

    .line 4558
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->setWifiState(I)V

    .line 4559
    return-void
.end method

.method private handleSupplicantStateChange(Landroid/os/Message;)Landroid/net/wifi/SupplicantState;
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 4449
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wifi/StateChangeResult;

    .line 4450
    .local v1, "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    iget-object v0, v1, Lcom/android/server/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    .line 4455
    .local v0, "state":Landroid/net/wifi/SupplicantState;
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiInfo;->setSupplicantState(Landroid/net/wifi/SupplicantState;)V

    .line 4457
    invoke-static {v0}, Landroid/net/wifi/SupplicantState;->isConnecting(Landroid/net/wifi/SupplicantState;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4458
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget v3, v1, Lcom/android/server/wifi/StateChangeResult;->networkId:I

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    .line 4464
    :goto_0
    sget-object v2, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    if-eq v0, v2, :cond_0

    sget-object v2, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    if-eq v0, v2, :cond_0

    sget-object v2, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    if-ne v0, v2, :cond_1

    .line 4468
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-object v3, v1, Lcom/android/server/wifi/StateChangeResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 4469
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/NetworkUtils;->enableInterface(Ljava/lang/String;)I

    .line 4473
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-object v3, v1, Lcom/android/server/wifi/StateChangeResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiInfo;->setSSID(Landroid/net/wifi/WifiSsid;)V

    .line 4475
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(Landroid/os/Message;)V

    .line 4477
    return-object v0

    .line 4460
    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    goto :goto_0
.end method

.method private isProvisioned(Landroid/net/LinkProperties;)Z
    .locals 2
    .param p1, "lp"    # Landroid/net/LinkProperties;

    .prologue
    .line 4109
    invoke-virtual {p1}, Landroid/net/LinkProperties;->isProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->isUsingStaticIp(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWifiTethered(Ljava/util/ArrayList;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 3298
    .local p1, "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->checkAndSetConnectivityInstance()V

    .line 3300
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v6

    .line 3301
    .local v6, "wifiRegexs":[Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3302
    .local v3, "intf":Ljava/lang/String;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v0, v2

    .line 3303
    .local v5, "regex":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3304
    const/4 v7, 0x1

    .line 3309
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "intf":Ljava/lang/String;
    .end local v4    # "len$":I
    .end local v5    # "regex":Ljava/lang/String;
    :goto_1
    return v7

    .line 3302
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "intf":Ljava/lang/String;
    .restart local v4    # "len$":I
    .restart local v5    # "regex":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3309
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "intf":Ljava/lang/String;
    .end local v4    # "len$":I
    .end local v5    # "regex":Ljava/lang/String;
    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private logStateAndMessage(Landroid/os/Message;Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;
    .param p2, "state"    # Ljava/lang/String;

    .prologue
    .line 2559
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I

    .line 2560
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->mLogMessages:Z

    if-eqz v0, :cond_0

    .line 2564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->getLogRecString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 2566
    :cond_0
    return-void
.end method

.method private macAddressFromRoute(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "ipAddress"    # Ljava/lang/String;

    .prologue
    .line 4761
    const/4 v4, 0x0

    .line 4762
    .local v4, "macAddress":Ljava/lang/String;
    const/4 v5, 0x0

    .line 4764
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    const-string v9, "/proc/net/arp"

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4767
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v6, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 4769
    .local v2, "line":Ljava/lang/String;
    :cond_0
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4770
    const-string v8, "[ ]+"

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 4771
    .local v7, "tokens":[Ljava/lang/String;
    array-length v8, v7

    const/4 v9, 0x6

    if-lt v8, v9, :cond_0

    .line 4777
    const/4 v8, 0x0

    aget-object v1, v7, v8

    .line 4778
    .local v1, "ip":Ljava/lang/String;
    const/4 v8, 0x3

    aget-object v3, v7, v8

    .line 4780
    .local v3, "mac":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 4781
    move-object v4, v3

    .line 4786
    .end local v1    # "ip":Ljava/lang/String;
    .end local v3    # "mac":Ljava/lang/String;
    .end local v7    # "tokens":[Ljava/lang/String;
    :cond_1
    if-nez v4, :cond_2

    .line 4787
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Did not find remoteAddress {"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "} in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/proc/net/arp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4797
    :cond_2
    if-eqz v6, :cond_3

    .line 4798
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    move-object v5, v6

    .line 4804
    .end local v2    # "line":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :cond_4
    :goto_0
    return-object v4

    .line 4800
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v8

    move-object v5, v6

    .line 4803
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto :goto_0

    .line 4791
    .end local v2    # "line":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 4792
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    const-string v8, "Could not open /proc/net/arp to lookup mac address"

    invoke-virtual {p0, v8}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4797
    if-eqz v5, :cond_4

    .line 4798
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 4800
    :catch_2
    move-exception v8

    goto :goto_0

    .line 4793
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v0

    .line 4794
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    const-string v8, "Could not read /proc/net/arp to lookup mac address"

    invoke-virtual {p0, v8}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4797
    if-eqz v5, :cond_4

    .line 4798
    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 4800
    :catch_4
    move-exception v8

    goto :goto_0

    .line 4796
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 4797
    :goto_3
    if-eqz v5, :cond_5

    .line 4798
    :try_start_7
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 4802
    :cond_5
    :goto_4
    throw v8

    .line 4800
    :catch_5
    move-exception v9

    goto :goto_4

    .line 4796
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 4793
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catch_6
    move-exception v0

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 4791
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catch_7
    move-exception v0

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method private static makeHex([B)Ljava/lang/String;
    .locals 9
    .param p0, "bytes"    # [B

    .prologue
    .line 8983
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 8984
    .local v4, "sb":Ljava/lang/StringBuilder;
    move-object v0, p0

    .local v0, "arr$":[B
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v1, v0, v2

    .line 8985
    .local v1, "b":B
    const-string v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8984
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8987
    .end local v1    # "b":B
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private static makeHex([BII)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B
    .param p1, "from"    # I
    .param p2, "len"    # I

    .prologue
    .line 8991
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8992
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 8993
    const-string v2, "%02x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int v5, p1, v0

    aget-byte v5, p0, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8992
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8995
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private noteBatchedScanStart()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1909
    sget-boolean v1, Lcom/android/server/wifi/WifiStateMachine;->PDBG:Z

    if-eqz v1, :cond_0

    const-string v1, "noteBatchedScanstart()"

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 1911
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNotedBatchedScanWorkSource:Landroid/os/WorkSource;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNotedBatchedScanWorkSource:Landroid/os/WorkSource;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatchedScanWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1, v2}, Landroid/os/WorkSource;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNotedBatchedScanCsph:I

    iget v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatchedScanCsph:I

    if-eq v1, v2, :cond_2

    .line 1915
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mNotedBatchedScanWorkSource:Landroid/os/WorkSource;

    invoke-interface {v1, v2}, Lcom/android/internal/app/IBatteryStats;->noteWifiBatchedScanStoppedFromSource(Landroid/os/WorkSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1919
    iput-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mNotedBatchedScanWorkSource:Landroid/os/WorkSource;

    .line 1920
    iput v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mNotedBatchedScanCsph:I

    .line 1925
    :cond_2
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatchedScanWorkSource:Landroid/os/WorkSource;

    iget v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatchedScanCsph:I

    invoke-interface {v1, v2, v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiBatchedScanStartedFromSource(Landroid/os/WorkSource;I)V

    .line 1927
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatchedScanWorkSource:Landroid/os/WorkSource;

    iput-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNotedBatchedScanWorkSource:Landroid/os/WorkSource;

    .line 1928
    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatchedScanCsph:I

    iput v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNotedBatchedScanCsph:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1932
    :goto_1
    return-void

    .line 1916
    :catch_0
    move-exception v0

    .line 1917
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1919
    iput-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mNotedBatchedScanWorkSource:Landroid/os/WorkSource;

    .line 1920
    iput v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mNotedBatchedScanCsph:I

    goto :goto_0

    .line 1919
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    iput-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mNotedBatchedScanWorkSource:Landroid/os/WorkSource;

    .line 1920
    iput v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mNotedBatchedScanCsph:I

    throw v1

    .line 1929
    :catch_1
    move-exception v0

    .line 1930
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private noteBatchedScanStop()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1935
    sget-boolean v1, Lcom/android/server/wifi/WifiStateMachine;->PDBG:Z

    if-eqz v1, :cond_0

    const-string v1, "noteBatchedScanstop()"

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 1937
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNotedBatchedScanWorkSource:Landroid/os/WorkSource;

    if-eqz v1, :cond_1

    .line 1939
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mNotedBatchedScanWorkSource:Landroid/os/WorkSource;

    invoke-interface {v1, v2}, Lcom/android/internal/app/IBatteryStats;->noteWifiBatchedScanStoppedFromSource(Landroid/os/WorkSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1943
    iput-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mNotedBatchedScanWorkSource:Landroid/os/WorkSource;

    .line 1944
    iput v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mNotedBatchedScanCsph:I

    .line 1947
    :cond_1
    :goto_0
    return-void

    .line 1940
    :catch_0
    move-exception v0

    .line 1941
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1943
    iput-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mNotedBatchedScanWorkSource:Landroid/os/WorkSource;

    .line 1944
    iput v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mNotedBatchedScanCsph:I

    goto :goto_0

    .line 1943
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    iput-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mNotedBatchedScanWorkSource:Landroid/os/WorkSource;

    .line 1944
    iput v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mNotedBatchedScanCsph:I

    throw v1
.end method

.method private noteScanEnd()V
    .locals 9

    .prologue
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    .line 1883
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1884
    .local v2, "now":J
    iget-wide v4, p0, Lcom/android/server/wifi/WifiStateMachine;->lastStartScanTimeStamp:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 1885
    iget-wide v4, p0, Lcom/android/server/wifi/WifiStateMachine;->lastStartScanTimeStamp:J

    sub-long v4, v2, v4

    iput-wide v4, p0, Lcom/android/server/wifi/WifiStateMachine;->lastScanDuration:J

    .line 1887
    :cond_0
    iput-wide v6, p0, Lcom/android/server/wifi/WifiStateMachine;->lastStartScanTimeStamp:J

    .line 1888
    sget-boolean v4, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v4, :cond_1

    .line 1889
    const-string v4, "[%,d ms]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1890
    .local v1, "ts":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mScanWorkSource:Landroid/os/WorkSource;

    if-eqz v4, :cond_3

    .line 1891
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " noteScanEnd "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mScanWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v5}, Landroid/os/WorkSource;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " onTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTimeThisScan:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 1897
    .end local v1    # "ts":Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mScanWorkSource:Landroid/os/WorkSource;

    if-eqz v4, :cond_2

    .line 1899
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mScanWorkSource:Landroid/os/WorkSource;

    invoke-interface {v4, v5}, Lcom/android/internal/app/IBatteryStats;->noteWifiScanStoppedFromSource(Landroid/os/WorkSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1903
    iput-object v8, p0, Lcom/android/server/wifi/WifiStateMachine;->mScanWorkSource:Landroid/os/WorkSource;

    .line 1906
    :cond_2
    :goto_1
    return-void

    .line 1894
    .restart local v1    # "ts":Ljava/lang/String;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " noteScanEnd no scan source"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " onTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTimeThisScan:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1900
    .end local v1    # "ts":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1901
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1903
    iput-object v8, p0, Lcom/android/server/wifi/WifiStateMachine;->mScanWorkSource:Landroid/os/WorkSource;

    goto :goto_1

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    iput-object v8, p0, Lcom/android/server/wifi/WifiStateMachine;->mScanWorkSource:Landroid/os/WorkSource;

    throw v4
.end method

.method private noteScanStart(ILandroid/os/WorkSource;)V
    .locals 8
    .param p1, "callingUid"    # I
    .param p2, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 1856
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1857
    .local v2, "now":J
    iput-wide v2, p0, Lcom/android/server/wifi/WifiStateMachine;->lastStartScanTimeStamp:J

    .line 1858
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/wifi/WifiStateMachine;->lastScanDuration:J

    .line 1859
    sget-boolean v4, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v4, :cond_0

    .line 1860
    const-string v4, "[%,d ms]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1861
    .local v1, "ts":Ljava/lang/String;
    if-eqz p2, :cond_4

    .line 1862
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " noteScanStart"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/WorkSource;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 1869
    .end local v1    # "ts":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->startRadioScanStats()V

    .line 1870
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mScanWorkSource:Landroid/os/WorkSource;

    if-nez v4, :cond_3

    const/4 v4, -0x1

    if-eq p1, v4, :cond_1

    const/4 v4, -0x2

    if-ne p1, v4, :cond_2

    :cond_1
    if-eqz p2, :cond_3

    .line 1873
    :cond_2
    if-eqz p2, :cond_5

    .end local p2    # "workSource":Landroid/os/WorkSource;
    :goto_1
    iput-object p2, p0, Lcom/android/server/wifi/WifiStateMachine;->mScanWorkSource:Landroid/os/WorkSource;

    .line 1875
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mScanWorkSource:Landroid/os/WorkSource;

    invoke-interface {v4, v5}, Lcom/android/internal/app/IBatteryStats;->noteWifiScanStartedFromSource(Landroid/os/WorkSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1880
    :cond_3
    :goto_2
    return-void

    .line 1865
    .restart local v1    # "ts":Ljava/lang/String;
    .restart local p2    # "workSource":Landroid/os/WorkSource;
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " noteScanstart no scan source"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1873
    .end local v1    # "ts":Ljava/lang/String;
    :cond_5
    new-instance p2, Landroid/os/WorkSource;

    .end local p2    # "workSource":Landroid/os/WorkSource;
    invoke-direct {p2, p1}, Landroid/os/WorkSource;-><init>(I)V

    goto :goto_1

    .line 1876
    :catch_0
    move-exception v0

    .line 1877
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private obtainMessageWithArg2(Landroid/os/Message;)Landroid/os/Message;
    .locals 2
    .param p1, "srcMsg"    # Landroid/os/Message;

    .prologue
    .line 8944
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 8945
    .local v0, "msg":Landroid/os/Message;
    iget v1, p1, Landroid/os/Message;->arg2:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 8946
    return-object v0
.end method

.method private static parseHex(C)I
    .locals 3
    .param p0, "ch"    # C

    .prologue
    .line 8950
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 8951
    add-int/lit8 v0, p0, -0x30

    .line 8955
    :goto_0
    return v0

    .line 8952
    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    .line 8953
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 8954
    :cond_1
    const/16 v0, 0x41

    if-gt v0, p0, :cond_2

    const/16 v0, 0x46

    if-gt p0, v0, :cond_2

    .line 8955
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 8957
    :cond_2
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid hex digit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseHex(Ljava/lang/String;)[B
    .locals 8
    .param p1, "hex"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 8963
    if-nez p1, :cond_1

    .line 8964
    new-array v3, v6, [B

    .line 8979
    :cond_0
    return-object v3

    .line 8967
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_2

    .line 8968
    new-instance v5, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not a valid hex string"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 8971
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x1

    new-array v3, v5, [B

    .line 8972
    .local v3, "result":[B
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-byte v5, v5

    aput-byte v5, v3, v6

    .line 8973
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x1

    .local v2, "j":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 8974
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->parseHex(C)I

    move-result v5

    mul-int/lit8 v5, v5, 0x10

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->parseHex(C)I

    move-result v6

    add-int v4, v5, v6

    .line 8975
    .local v4, "val":I
    and-int/lit16 v5, v4, 0xff

    int-to-byte v0, v5

    .line 8976
    .local v0, "b":B
    aput-byte v0, v3, v2

    .line 8973
    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private recordBatchedScanSettings(IILandroid/os/Bundle;)Z
    .locals 5
    .param p1, "responsibleUid"    # I
    .param p2, "csph"    # I
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 1486
    const-string v3, "batched_settings"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/BatchedScanSettings;

    .line 1487
    .local v1, "settings":Landroid/net/wifi/BatchedScanSettings;
    const-string v3, "batched_worksource"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    .line 1489
    .local v0, "responsibleWorkSource":Landroid/os/WorkSource;
    sget-boolean v3, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v3, :cond_0

    .line 1490
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set batched scan to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", worksource="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 1493
    :cond_0
    if-eqz v1, :cond_2

    .line 1494
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatchedScanSettings:Landroid/net/wifi/BatchedScanSettings;

    invoke-virtual {v1, v3}, Landroid/net/wifi/BatchedScanSettings;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1502
    :cond_1
    :goto_0
    return v2

    .line 1496
    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatchedScanSettings:Landroid/net/wifi/BatchedScanSettings;

    if-eqz v3, :cond_1

    .line 1498
    :cond_3
    iput-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatchedScanSettings:Landroid/net/wifi/BatchedScanSettings;

    .line 1499
    if-nez v0, :cond_4

    new-instance v0, Landroid/os/WorkSource;

    .end local v0    # "responsibleWorkSource":Landroid/os/WorkSource;
    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(I)V

    .line 1500
    .restart local v0    # "responsibleWorkSource":Landroid/os/WorkSource;
    :cond_4
    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatchedScanWorkSource:Landroid/os/WorkSource;

    .line 1501
    iput p2, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatchedScanCsph:I

    .line 1502
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private replyToMessage(Landroid/os/Message;I)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I

    .prologue
    .line 8915
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_0

    .line 8919
    :goto_0
    return-void

    .line 8916
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessageWithArg2(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 8917
    .local v0, "dstMsg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 8918
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private replyToMessage(Landroid/os/Message;II)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "arg1"    # I

    .prologue
    .line 8922
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_0

    .line 8927
    :goto_0
    return-void

    .line 8923
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessageWithArg2(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 8924
    .local v0, "dstMsg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 8925
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 8926
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 8930
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_0

    .line 8935
    :goto_0
    return-void

    .line 8931
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessageWithArg2(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 8932
    .local v0, "dstMsg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 8933
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 8934
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private retrieveBatchedScanData()V
    .locals 34

    .prologue
    .line 1565
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiNative;->getBatchedScanResults()Ljava/lang/String;

    move-result-object v28

    .line 1567
    .local v28, "rawData":Ljava/lang/String;
    const-wide/16 v32, 0x0

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/WifiStateMachine;->mBatchedScanMinPollTime:J

    .line 1568
    if-eqz v28, :cond_0

    const-string v4, "OK"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1569
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected BatchedScanResults :"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 1706
    :goto_0
    return-void

    .line 1573
    :cond_1
    const/16 v29, 0x0

    .line 1574
    .local v29, "scanCount":I
    const-string v17, "----"

    .line 1575
    .local v17, "END_OF_BATCHES":Ljava/lang/String;
    const-string v18, "scancount="

    .line 1576
    .local v18, "SCANCOUNT":Ljava/lang/String;
    const-string v19, "trunc"

    .line 1577
    .local v19, "TRUNCATED":Ljava/lang/String;
    const-string v14, "age="

    .line 1578
    .local v14, "AGE":Ljava/lang/String;
    const-string v15, "dist="

    .line 1579
    .local v15, "DIST":Ljava/lang/String;
    const-string v16, "distSd="

    .line 1581
    .local v16, "DISTSD":Ljava/lang/String;
    const-string v4, "\n"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v30

    .line 1582
    .local v30, "splitData":[Ljava/lang/String;
    const/16 v24, 0x0

    .line 1583
    .local v24, "n":I
    aget-object v4, v30, v24

    const-string v7, "scancount="

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1585
    add-int/lit8 v25, v24, 0x1

    .end local v24    # "n":I
    .local v25, "n":I
    :try_start_0
    aget-object v4, v30, v24

    const-string v7, "scancount="

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v29

    move/from16 v24, v25

    .line 1590
    .end local v25    # "n":I
    .restart local v24    # "n":I
    :goto_1
    if-nez v29, :cond_3

    .line 1591
    const-string v4, "scanCount==0 - aborting"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1586
    .end local v24    # "n":I
    .restart local v25    # "n":I
    :catch_0
    move-exception v22

    .line 1587
    .local v22, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "scancount parseInt Exception from "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v7, v30, v25

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    move/from16 v24, v25

    .line 1588
    .end local v25    # "n":I
    .restart local v24    # "n":I
    goto :goto_1

    .line 1589
    .end local v22    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    const-string v4, "scancount not found"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1595
    :cond_3
    new-instance v23, Landroid/content/Intent;

    const-string v4, "android.net.wifi.BATCHED_RESULTS"

    move-object/from16 v0, v23

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1596
    .local v23, "intent":Landroid/content/Intent;
    const/high16 v4, 0x4000000

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mBatchedScanResults:Ljava/util/List;

    move-object/from16 v31, v0

    monitor-enter v31

    .line 1599
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine;->mBatchedScanResults:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1600
    new-instance v20, Landroid/net/wifi/BatchedScanResult;

    invoke-direct/range {v20 .. v20}, Landroid/net/wifi/BatchedScanResult;-><init>()V

    .line 1602
    .local v20, "batchedScanResult":Landroid/net/wifi/BatchedScanResult;
    const/4 v6, 0x0

    .line 1603
    .local v6, "bssid":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1604
    .local v5, "wifiSsid":Landroid/net/wifi/WifiSsid;
    const/4 v8, 0x0

    .line 1605
    .local v8, "level":I
    const/4 v9, 0x0

    .line 1607
    .local v9, "freq":I
    const-wide/16 v10, 0x0

    .line 1608
    .local v10, "tsf":J
    const/4 v13, -0x1

    .local v13, "distSd":I
    move v12, v13

    .line 1609
    .local v12, "dist":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v26

    .line 1610
    .local v26, "now":J
    const-string v4, "bssid="

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v21

    .line 1613
    .local v21, "bssidStrLen":I
    :goto_2
    move-object/from16 v0, v30

    array-length v4, v0

    move/from16 v0, v24

    if-ge v0, v4, :cond_14

    .line 1615
    aget-object v4, v30, v24

    const-string v7, "----"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1616
    add-int/lit8 v4, v24, 0x1

    move-object/from16 v0, v30

    array-length v7, v0

    if-eq v4, v7, :cond_4

    .line 1617
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "didn\'t consume "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v30

    array-length v7, v0

    sub-int v7, v7, v24

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 1619
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine;->mBatchedScanResults:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 1620
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1622
    :cond_5
    const-string v4, "retrieveBatchedScanResults X"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 1623
    monitor-exit v31

    goto/16 :goto_0

    .line 1710
    .end local v5    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    .end local v6    # "bssid":Ljava/lang/String;
    .end local v8    # "level":I
    .end local v9    # "freq":I
    .end local v10    # "tsf":J
    .end local v12    # "dist":I
    .end local v13    # "distSd":I
    .end local v20    # "batchedScanResult":Landroid/net/wifi/BatchedScanResult;
    .end local v21    # "bssidStrLen":I
    .end local v26    # "now":J
    :catchall_0
    move-exception v4

    monitor-exit v31
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 1625
    .restart local v5    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    .restart local v6    # "bssid":Ljava/lang/String;
    .restart local v8    # "level":I
    .restart local v9    # "freq":I
    .restart local v10    # "tsf":J
    .restart local v12    # "dist":I
    .restart local v13    # "distSd":I
    .restart local v20    # "batchedScanResult":Landroid/net/wifi/BatchedScanResult;
    .restart local v21    # "bssidStrLen":I
    .restart local v26    # "now":J
    :cond_6
    :try_start_2
    aget-object v4, v30, v24

    const-string v7, "####"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    aget-object v4, v30, v24

    const-string v7, "===="

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1626
    :cond_7
    if-eqz v6, :cond_8

    .line 1627
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/wifi/BatchedScanResult;->scanResults:Ljava/util/List;

    move-object/from16 v32, v0

    new-instance v4, Landroid/net/wifi/ScanResult;

    const-string v7, ""

    invoke-direct/range {v4 .. v13}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IIJII)V

    move-object/from16 v0, v32

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1629
    const/4 v5, 0x0

    .line 1630
    const/4 v6, 0x0

    .line 1631
    const/4 v8, 0x0

    .line 1632
    const/4 v9, 0x0

    .line 1633
    const-wide/16 v10, 0x0

    .line 1634
    const/4 v13, -0x1

    move v12, v13

    .line 1636
    :cond_8
    aget-object v4, v30, v24

    const-string v7, "####"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1637
    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/net/wifi/BatchedScanResult;->scanResults:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_a

    .line 1638
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine;->mBatchedScanResults:Ljava/util/List;

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1639
    new-instance v20, Landroid/net/wifi/BatchedScanResult;

    .end local v20    # "batchedScanResult":Landroid/net/wifi/BatchedScanResult;
    invoke-direct/range {v20 .. v20}, Landroid/net/wifi/BatchedScanResult;-><init>()V

    .line 1692
    .restart local v20    # "batchedScanResult":Landroid/net/wifi/BatchedScanResult;
    :cond_9
    :goto_3
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_2

    .line 1641
    :cond_a
    const-string v4, "Found empty batch"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    goto :goto_3

    .line 1644
    :cond_b
    aget-object v4, v30, v24

    const-string v7, "trunc"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1645
    const/4 v4, 0x1

    move-object/from16 v0, v20

    iput-boolean v4, v0, Landroid/net/wifi/BatchedScanResult;->truncated:Z

    goto :goto_3

    .line 1646
    :cond_c
    aget-object v4, v30, v24

    const-string v7, "bssid="

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1647
    new-instance v6, Ljava/lang/String;

    .end local v6    # "bssid":Ljava/lang/String;
    aget-object v4, v30, v24

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aget-object v7, v30, v24

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int v7, v7, v21

    move/from16 v0, v21

    invoke-direct {v6, v4, v0, v7}, Ljava/lang/String;-><init>([BII)V

    .restart local v6    # "bssid":Ljava/lang/String;
    goto :goto_3

    .line 1649
    :cond_d
    aget-object v4, v30, v24

    const-string v7, "freq="

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-eqz v4, :cond_e

    .line 1651
    :try_start_3
    aget-object v4, v30, v24

    const-string v7, "freq="

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v9

    goto :goto_3

    .line 1652
    :catch_1
    move-exception v22

    .line 1653
    .restart local v22    # "e":Ljava/lang/NumberFormatException;
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid freqency: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v7, v30, v24

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 1654
    const/4 v9, 0x0

    .line 1655
    goto :goto_3

    .line 1656
    .end local v22    # "e":Ljava/lang/NumberFormatException;
    :cond_e
    aget-object v4, v30, v24

    const-string v7, "age="

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v4

    if-eqz v4, :cond_f

    .line 1658
    :try_start_5
    aget-object v4, v30, v24

    const-string v7, "age="

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-wide v32

    sub-long v10, v26, v32

    .line 1659
    const-wide/16 v32, 0x3e8

    mul-long v10, v10, v32

    goto/16 :goto_3

    .line 1660
    :catch_2
    move-exception v22

    .line 1661
    .restart local v22    # "e":Ljava/lang/NumberFormatException;
    :try_start_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid timestamp: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v7, v30, v24

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 1662
    const-wide/16 v10, 0x0

    .line 1663
    goto/16 :goto_3

    .line 1664
    .end local v22    # "e":Ljava/lang/NumberFormatException;
    :cond_f
    aget-object v4, v30, v24

    const-string v7, "ssid="

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1665
    aget-object v4, v30, v24

    const-string v7, "ssid="

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/wifi/WifiSsid;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v5

    goto/16 :goto_3

    .line 1667
    :cond_10
    aget-object v4, v30, v24

    const-string v7, "level="

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v4

    if-eqz v4, :cond_11

    .line 1669
    :try_start_7
    aget-object v4, v30, v24

    const-string v7, "level="

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v8

    .line 1670
    if-lez v8, :cond_9

    add-int/lit16 v8, v8, -0x100

    goto/16 :goto_3

    .line 1671
    :catch_3
    move-exception v22

    .line 1672
    .restart local v22    # "e":Ljava/lang/NumberFormatException;
    :try_start_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid level: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v7, v30, v24

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 1673
    const/4 v8, 0x0

    .line 1674
    goto/16 :goto_3

    .line 1675
    .end local v22    # "e":Ljava/lang/NumberFormatException;
    :cond_11
    aget-object v4, v30, v24

    const-string v7, "dist="

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v4

    if-eqz v4, :cond_12

    .line 1677
    :try_start_9
    aget-object v4, v30, v24

    const-string v7, "dist="

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v12

    goto/16 :goto_3

    .line 1678
    :catch_4
    move-exception v22

    .line 1679
    .restart local v22    # "e":Ljava/lang/NumberFormatException;
    :try_start_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid distance: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v7, v30, v24

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 1680
    const/4 v12, -0x1

    .line 1681
    goto/16 :goto_3

    .line 1682
    .end local v22    # "e":Ljava/lang/NumberFormatException;
    :cond_12
    aget-object v4, v30, v24

    const-string v7, "distSd="

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v4

    if-eqz v4, :cond_13

    .line 1684
    :try_start_b
    aget-object v4, v30, v24

    const-string v7, "distSd="

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result v13

    goto/16 :goto_3

    .line 1685
    :catch_5
    move-exception v22

    .line 1686
    .restart local v22    # "e":Ljava/lang/NumberFormatException;
    :try_start_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid distanceSd: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v7, v30, v24

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 1687
    const/4 v13, -0x1

    .line 1688
    goto/16 :goto_3

    .line 1690
    .end local v22    # "e":Ljava/lang/NumberFormatException;
    :cond_13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to parse batched scan result line: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v7, v30, v24

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1694
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiNative;->getBatchedScanResults()Ljava/lang/String;

    move-result-object v28

    .line 1696
    if-nez v28, :cond_15

    .line 1697
    const-string v4, "Unexpected null BatchedScanResults"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 1698
    monitor-exit v31

    goto/16 :goto_0

    .line 1700
    :cond_15
    const-string v4, "\n"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v30

    .line 1701
    move-object/from16 v0, v30

    array-length v4, v0

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    aget-object v4, v30, v4

    const-string v7, "ok"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1702
    :cond_16
    const-string v4, "batch scan results just ended!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 1703
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine;->mBatchedScanResults:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_17

    .line 1704
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0, v7}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1706
    :cond_17
    monitor-exit v31
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_0

    .line 1708
    :cond_18
    const/16 v24, 0x0

    goto/16 :goto_2
.end method

.method private sendConnectedState()V
    .locals 3

    .prologue
    .line 7785
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)Z

    .line 7786
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->updateStatus(ILandroid/net/NetworkInfo$DetailedState;)V

    .line 7788
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    .line 7790
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStore;->getLastSelectedConfiguration()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7791
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->explicitlySelected()V

    .line 7794
    :cond_0
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)Z

    .line 7795
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->updateStatus(ILandroid/net/NetworkInfo$DetailedState;)V

    .line 7796
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    .line 7797
    return-void
.end method

.method private sendLinkConfigurationChangedBroadcast()V
    .locals 4

    .prologue
    .line 4378
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4379
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4380
    const-string v1, "linkProperties"

    new-instance v2, Landroid/net/LinkProperties;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v2, v3}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4381
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4382
    return-void
.end method

.method private sendNetworkStateChangeBroadcast(Ljava/lang/String;)V
    .locals 4
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    .line 4364
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4365
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4366
    const-string v1, "networkInfo"

    new-instance v2, Landroid/net/NetworkInfo;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v2, v3}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4367
    const-string v1, "linkProperties"

    new-instance v2, Landroid/net/LinkProperties;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v2, v3}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4368
    if-eqz p1, :cond_0

    .line 4369
    const-string v1, "bssid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4370
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_2

    .line 4372
    :cond_1
    const-string v1, "wifiInfo"

    new-instance v2, Landroid/net/wifi/WifiInfo;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-direct {v2, v3}, Landroid/net/wifi/WifiInfo;-><init>(Landroid/net/wifi/WifiInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4374
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4375
    return-void
.end method

.method private sendRssiChangeBroadcast(I)V
    .locals 3
    .param p1, "newRssi"    # I

    .prologue
    .line 4353
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1, p1}, Lcom/android/internal/app/IBatteryStats;->noteWifiRssiChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4357
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4358
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4359
    const-string v1, "newRssi"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4360
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4361
    return-void

    .line 4354
    .end local v0    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private sendScanResultsAvailableBroadcast()V
    .locals 3

    .prologue
    .line 4346
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4347
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4348
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4349
    return-void
.end method

.method private sendSupplicantConnectionChangedBroadcast(Z)V
    .locals 3
    .param p1, "connected"    # Z

    .prologue
    .line 4385
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4386
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4387
    const-string v1, "connected"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4388
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4389
    return-void
.end method

.method private setCountryCode()V
    .locals 3

    .prologue
    .line 3316
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_country_code"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3318
    .local v0, "countryCode":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3319
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->setCountryCode(Ljava/lang/String;Z)V

    .line 3323
    :cond_0
    return-void
.end method

.method private setFrequencyBand()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3329
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_frequency_band"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3331
    .local v0, "band":I
    invoke-virtual {p0, v0, v3}, Lcom/android/server/wifi/WifiStateMachine;->setFrequencyBand(IZ)V

    .line 3332
    return-void
.end method

.method private setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)Z
    .locals 6
    .param p1, "state"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 4396
    const/4 v0, 0x0

    .line 4398
    .local v0, "hidden":Z
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->isRoaming()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4411
    :cond_0
    const/4 v0, 0x1

    .line 4413
    :cond_1
    sget-boolean v3, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v3, :cond_2

    .line 4414
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDetailed state, old ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and new state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " hidden="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 4418
    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v3, :cond_4

    .line 4420
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 4421
    sget-boolean v3, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v3, :cond_3

    .line 4422
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDetailed state send new extra info"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 4424
    :cond_3
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/NetworkInfo;->setExtraInfo(Ljava/lang/String;)V

    .line 4425
    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    .line 4428
    :cond_4
    if-ne v0, v2, :cond_6

    .line 4440
    :cond_5
    :goto_0
    return v1

    .line 4432
    :cond_6
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    if-eq p1, v3, :cond_5

    .line 4433
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v5, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 4434
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    if-eqz v1, :cond_7

    .line 4435
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v3}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 4437
    :cond_7
    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    move v1, v2

    .line 4438
    goto :goto_0
.end method

.method private setNextBatchedAlarm(I)V
    .locals 9
    .param p1, "scansExpected"    # I

    .prologue
    const/4 v8, 0x0

    .line 1514
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatchedScanSettings:Landroid/net/wifi/BatchedScanSettings;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    if-ge p1, v2, :cond_1

    .line 1534
    :cond_0
    :goto_0
    return-void

    .line 1516
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatchedScanSettings:Landroid/net/wifi/BatchedScanSettings;

    iget v4, v4, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatchedScanMinPollTime:J

    .line 1519
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatchedScanSettings:Landroid/net/wifi/BatchedScanSettings;

    iget v2, v2, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    if-ge v2, p1, :cond_2

    .line 1520
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatchedScanSettings:Landroid/net/wifi/BatchedScanSettings;

    iget p1, v2, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    .line 1523
    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatchedScanSettings:Landroid/net/wifi/BatchedScanSettings;

    iget v1, v2, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    .line 1524
    .local v1, "secToFull":I
    mul-int/2addr v1, p1

    .line 1526
    const-string v2, "wifi.batchedScan.pollPeriod"

    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1527
    .local v0, "debugPeriod":I
    if-lez v0, :cond_3

    move v1, v0

    .line 1531
    :cond_3
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatchedScanSettings:Landroid/net/wifi/BatchedScanSettings;

    iget v3, v3, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v1, v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v6, v3

    add-long/2addr v4, v6

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatchedScanIntervalIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v8, v4, v5, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private setRandomMacOui()Z
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/16 v9, 0x10

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1307
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x104001d

    new-array v5, v8, [Ljava/lang/Object;

    const-string v6, "DA-A1-19"

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1309
    .local v0, "oui":Ljava/lang/String;
    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1310
    .local v2, "ouiParts":[Ljava/lang/String;
    const/4 v3, 0x3

    new-array v1, v3, [B

    .line 1311
    .local v1, "ouiBytes":[B
    aget-object v3, v2, v7

    invoke-static {v3, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v7

    .line 1312
    aget-object v3, v2, v8

    invoke-static {v3, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v8

    .line 1313
    aget-object v3, v2, v10

    invoke-static {v3, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v10

    .line 1315
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting OUI to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 1316
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-static {v1}, Lcom/android/server/wifi/WifiNative;->setScanningMacOui([B)Z

    move-result v3

    return v3
.end method

.method private setScanAlarm(Z)V
    .locals 7
    .param p1, "enabled"    # Z

    .prologue
    const/4 v6, 0x0

    .line 1233
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->PDBG:Z

    if-eqz v0, :cond_0

    .line 1234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setScanAlarm "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " period "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDefaultFrameworkScanIntervalMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mBackgroundScanSupported "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mBackgroundScanSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 1238
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mBackgroundScanSupported:Z

    if-nez v0, :cond_1

    .line 1242
    const/4 p1, 0x1

    .line 1245
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mAlarmEnabled:Z

    if-ne p1, v0, :cond_2

    .line 1257
    :goto_0
    return-void

    .line 1246
    :cond_2
    if-eqz p1, :cond_3

    .line 1249
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDefaultFrameworkScanIntervalMs:I

    int-to-long v4, v1

    add-long/2addr v2, v4

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mScanIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v6, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1252
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mAlarmEnabled:Z

    goto :goto_0

    .line 1254
    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mScanIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1255
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mAlarmEnabled:Z

    goto :goto_0
.end method

.method private setScanIntevelOnMiracastModeChange(I)V
    .locals 8
    .param p1, "mode"    # I

    .prologue
    .line 9120
    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 9122
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x10e0029

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 9124
    .local v0, "defaultWfdIntervel":I
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "wifi_scan_intervel_wfd_connected_ms"

    int-to-long v6, v0

    invoke-static {v1, v4, v6, v7}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 9129
    .local v2, "wfdScanIntervalMs":J
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    long-to-int v4, v2

    div-int/lit16 v4, v4, 0x3e8

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiNative;->setScanInterval(I)V

    .line 9131
    .end local v0    # "defaultWfdIntervel":I
    .end local v2    # "wfdScanIntervalMs":J
    :cond_1
    return-void
.end method

.method private setScanResults()V
    .locals 40

    .prologue
    .line 3474
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiStateMachine;->mNumScanResultsKnown:I

    .line 3475
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiStateMachine;->mNumScanResultsReturned:I

    .line 3476
    const-string v8, ""

    .line 3477
    .local v8, "bssid":Ljava/lang/String;
    const/4 v10, 0x0

    .line 3478
    .local v10, "level":I
    const/4 v11, 0x0

    .line 3479
    .local v11, "freq":I
    const-wide/16 v12, 0x0

    .line 3480
    .local v12, "tsf":J
    const-string v9, ""

    .line 3481
    .local v9, "flags":Ljava/lang/String;
    const/4 v7, 0x0

    .line 3484
    .local v7, "wifiSsid":Landroid/net/wifi/WifiSsid;
    new-instance v29, Ljava/lang/StringBuffer;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuffer;-><init>()V

    .line 3485
    .local v29, "scanResultsBuf":Ljava/lang/StringBuffer;
    const/16 v31, 0x0

    .line 3488
    .local v31, "sid":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->scanResults(I)Ljava/lang/String;

    move-result-object v34

    .line 3489
    .local v34, "tmpResults":Ljava/lang/String;
    invoke-static/range {v34 .. v34}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v35

    if-eqz v35, :cond_2

    .line 3513
    :goto_0
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v28

    .line 3514
    .local v28, "scanResults":Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v35

    if-eqz v35, :cond_6

    .line 3515
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->emptyScanResultCount:I

    move/from16 v35, v0

    add-int/lit8 v35, v35, 0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiStateMachine;->emptyScanResultCount:I

    .line 3516
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->emptyScanResultCount:I

    move/from16 v35, v0

    const/16 v36, 0xa

    move/from16 v0, v35

    move/from16 v1, v36

    if-le v0, v1, :cond_1

    .line 3519
    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    .line 3678
    :cond_1
    :goto_1
    return-void

    .line 3490
    .end local v28    # "scanResults":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3491
    const-string v35, "\n"

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3492
    const-string v35, "\n"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v26

    .line 3493
    .local v26, "lines":[Ljava/lang/String;
    const/16 v31, -0x1

    .line 3494
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v35, v0

    add-int/lit8 v21, v35, -0x1

    .local v21, "i":I
    :goto_2
    if-ltz v21, :cond_3

    .line 3495
    aget-object v35, v26, v21

    const-string v36, "####"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_4

    .line 3506
    :cond_3
    :goto_3
    const/16 v35, -0x1

    move/from16 v0, v31

    move/from16 v1, v35

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3497
    :cond_4
    aget-object v35, v26, v21

    const-string v36, "id="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_5

    .line 3499
    :try_start_0
    aget-object v35, v26, v21

    const-string v36, "id="

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->length()I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v35

    add-int/lit8 v31, v35, 0x1

    goto :goto_3

    .line 3494
    :cond_5
    add-int/lit8 v21, v21, -0x1

    goto :goto_2

    .line 3524
    .end local v21    # "i":I
    .end local v26    # "lines":[Ljava/lang/String;
    .restart local v28    # "scanResults":Ljava/lang/String;
    :cond_6
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiStateMachine;->emptyScanResultCount:I

    .line 3529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;

    move-object/from16 v36, v0

    monitor-enter v36

    .line 3530
    :try_start_1
    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    .line 3531
    const-string v35, "\n"

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v26

    .line 3532
    .restart local v26    # "lines":[Ljava/lang/String;
    const-string v35, "bssid="

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v17

    .line 3533
    .local v17, "bssidStrLen":I
    const-string v35, "flags="

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v19

    .line 3535
    .local v19, "flagLen":I
    move-object/from16 v14, v26

    .local v14, "arr$":[Ljava/lang/String;
    array-length v0, v14

    move/from16 v24, v0

    .local v24, "len$":I
    const/16 v22, 0x0

    .local v22, "i$":I
    :goto_4
    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_17

    aget-object v25, v14, v22

    .line 3536
    .local v25, "line":Ljava/lang/String;
    const-string v35, "bssid="

    move-object/from16 v0, v25

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_8

    .line 3537
    new-instance v16, Ljava/lang/String;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->getBytes()[B

    move-result-object v35

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v37

    sub-int v37, v37, v17

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    move/from16 v2, v17

    move/from16 v3, v37

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .end local v8    # "bssid":Ljava/lang/String;
    .local v16, "bssid":Ljava/lang/String;
    move-object/from16 v8, v16

    .line 3535
    .end local v16    # "bssid":Ljava/lang/String;
    .restart local v8    # "bssid":Ljava/lang/String;
    :cond_7
    :goto_5
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    .line 3538
    :cond_8
    const-string v35, "freq="

    move-object/from16 v0, v25

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v35

    if-eqz v35, :cond_9

    .line 3540
    :try_start_2
    const-string v35, "freq="

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v35

    move-object/from16 v0, v25

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v11

    goto :goto_5

    .line 3541
    :catch_0
    move-exception v18

    .line 3542
    .local v18, "e":Ljava/lang/NumberFormatException;
    const/4 v11, 0x0

    .line 3543
    goto :goto_5

    .line 3544
    .end local v18    # "e":Ljava/lang/NumberFormatException;
    :cond_9
    :try_start_3
    const-string v35, "level="

    move-object/from16 v0, v25

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v35

    if-eqz v35, :cond_a

    .line 3546
    :try_start_4
    const-string v35, "level="

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v35

    move-object/from16 v0, v25

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v10

    .line 3550
    if-lez v10, :cond_7

    add-int/lit16 v10, v10, -0x100

    goto :goto_5

    .line 3551
    :catch_1
    move-exception v18

    .line 3552
    .restart local v18    # "e":Ljava/lang/NumberFormatException;
    const/4 v10, 0x0

    .line 3553
    goto :goto_5

    .line 3554
    .end local v18    # "e":Ljava/lang/NumberFormatException;
    :cond_a
    :try_start_5
    const-string v35, "tsf="

    move-object/from16 v0, v25

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v35

    if-eqz v35, :cond_b

    .line 3556
    :try_start_6
    const-string v35, "tsf="

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v35

    move-object/from16 v0, v25

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-wide v12

    goto :goto_5

    .line 3557
    :catch_2
    move-exception v18

    .line 3558
    .restart local v18    # "e":Ljava/lang/NumberFormatException;
    const-wide/16 v12, 0x0

    .line 3559
    goto :goto_5

    .line 3560
    .end local v18    # "e":Ljava/lang/NumberFormatException;
    :cond_b
    :try_start_7
    const-string v35, "flags="

    move-object/from16 v0, v25

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_c

    .line 3561
    new-instance v20, Ljava/lang/String;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->getBytes()[B

    move-result-object v35

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v37

    sub-int v37, v37, v19

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    move/from16 v2, v19

    move/from16 v3, v37

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .end local v9    # "flags":Ljava/lang/String;
    .local v20, "flags":Ljava/lang/String;
    move-object/from16 v9, v20

    .end local v20    # "flags":Ljava/lang/String;
    .restart local v9    # "flags":Ljava/lang/String;
    goto/16 :goto_5

    .line 3562
    :cond_c
    const-string v35, "ssid="

    move-object/from16 v0, v25

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_d

    .line 3563
    const-string v35, "ssid="

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v35

    move-object/from16 v0, v25

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Landroid/net/wifi/WifiSsid;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v7

    goto/16 :goto_5

    .line 3565
    :cond_d
    const-string v35, "===="

    move-object/from16 v0, v25

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_e

    const-string v35, "####"

    move-object/from16 v0, v25

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_7

    .line 3566
    :cond_e
    const/16 v27, 0x0

    .line 3567
    .local v27, "match":Ljava/util/regex/Matcher;
    if-eqz v8, :cond_f

    .line 3568
    sget-object v35, Lcom/android/server/wifi/WifiStateMachine;->mNotZero:Ljava/util/regex/Pattern;

    move-object/from16 v0, v35

    invoke-virtual {v0, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v27

    .line 3570
    :cond_f
    if-eqz v27, :cond_16

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v35

    if-nez v35, :cond_16

    invoke-virtual/range {v27 .. v27}, Ljava/util/regex/Matcher;->find()Z

    move-result v35

    if-eqz v35, :cond_16

    .line 3571
    if-eqz v7, :cond_12

    invoke-virtual {v7}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v32

    .line 3572
    .local v32, "ssid":Ljava/lang/String;
    :goto_6
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 3573
    .local v23, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    .line 3574
    .local v6, "scanResult":Landroid/net/wifi/ScanResult;
    if-eqz v6, :cond_14

    .line 3576
    iput v10, v6, Landroid/net/wifi/ScanResult;->level:I

    .line 3577
    iput-object v7, v6, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    .line 3579
    if-eqz v7, :cond_13

    invoke-virtual {v7}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v35

    :goto_7
    move-object/from16 v0, v35

    iput-object v0, v6, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 3581
    iput-object v9, v6, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 3582
    iput v11, v6, Landroid/net/wifi/ScanResult;->frequency:I

    .line 3583
    iput-wide v12, v6, Landroid/net/wifi/ScanResult;->timestamp:J

    .line 3584
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    move-wide/from16 v0, v38

    iput-wide v0, v6, Landroid/net/wifi/ScanResult;->seen:J

    .line 3592
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v35

    const/16 v37, 0x2

    move/from16 v0, v35

    move/from16 v1, v37

    if-ne v0, v1, :cond_15

    .line 3594
    invoke-static {v11}, Landroid/net/wifi/ScanResult;->is5GHz(I)Z

    move-result v35

    if-nez v35, :cond_7

    .line 3603
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mNumScanResultsReturned:I

    move/from16 v35, v0

    add-int/lit8 v35, v35, 0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiStateMachine;->mNumScanResultsReturned:I

    .line 3605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3612
    .end local v6    # "scanResult":Landroid/net/wifi/ScanResult;
    .end local v23    # "key":Ljava/lang/String;
    .end local v32    # "ssid":Ljava/lang/String;
    :cond_11
    :goto_9
    const/4 v8, 0x0

    .line 3613
    const/4 v10, 0x0

    .line 3614
    const/4 v11, 0x0

    .line 3615
    const-wide/16 v12, 0x0

    .line 3616
    const-string v9, ""

    .line 3617
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 3571
    :cond_12
    const-string v32, "<unknown ssid>"

    goto/16 :goto_6

    .line 3579
    .restart local v6    # "scanResult":Landroid/net/wifi/ScanResult;
    .restart local v23    # "key":Ljava/lang/String;
    .restart local v32    # "ssid":Ljava/lang/String;
    :cond_13
    const-string v35, "<unknown ssid>"

    goto :goto_7

    .line 3586
    :cond_14
    new-instance v6, Landroid/net/wifi/ScanResult;

    .end local v6    # "scanResult":Landroid/net/wifi/ScanResult;
    invoke-direct/range {v6 .. v13}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IIJ)V

    .line 3589
    .restart local v6    # "scanResult":Landroid/net/wifi/ScanResult;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    move-wide/from16 v0, v38

    iput-wide v0, v6, Landroid/net/wifi/ScanResult;->seen:J

    .line 3590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v6}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 3620
    .end local v6    # "scanResult":Landroid/net/wifi/ScanResult;
    .end local v14    # "arr$":[Ljava/lang/String;
    .end local v17    # "bssidStrLen":I
    .end local v19    # "flagLen":I
    .end local v22    # "i$":I
    .end local v23    # "key":Ljava/lang/String;
    .end local v24    # "len$":I
    .end local v25    # "line":Ljava/lang/String;
    .end local v26    # "lines":[Ljava/lang/String;
    .end local v27    # "match":Ljava/util/regex/Matcher;
    .end local v32    # "ssid":Ljava/lang/String;
    :catchall_0
    move-exception v35

    monitor-exit v36
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v35

    .line 3597
    .restart local v6    # "scanResult":Landroid/net/wifi/ScanResult;
    .restart local v14    # "arr$":[Ljava/lang/String;
    .restart local v17    # "bssidStrLen":I
    .restart local v19    # "flagLen":I
    .restart local v22    # "i$":I
    .restart local v23    # "key":Ljava/lang/String;
    .restart local v24    # "len$":I
    .restart local v25    # "line":Ljava/lang/String;
    .restart local v26    # "lines":[Ljava/lang/String;
    .restart local v27    # "match":Ljava/util/regex/Matcher;
    .restart local v32    # "ssid":Ljava/lang/String;
    :cond_15
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v35

    const/16 v37, 0x1

    move/from16 v0, v35

    move/from16 v1, v37

    if-ne v0, v1, :cond_10

    .line 3599
    invoke-static {v11}, Landroid/net/wifi/ScanResult;->is24GHz(I)Z

    move-result v35

    if-eqz v35, :cond_10

    goto/16 :goto_5

    .line 3607
    .end local v6    # "scanResult":Landroid/net/wifi/ScanResult;
    .end local v23    # "key":Ljava/lang/String;
    .end local v32    # "ssid":Ljava/lang/String;
    :cond_16
    if-eqz v8, :cond_11

    .line 3608
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "setScanResults obtaining null BSSID results <"

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v37, ">, discard it"

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_9

    .line 3620
    .end local v25    # "line":Ljava/lang/String;
    .end local v27    # "match":Ljava/util/regex/Matcher;
    :cond_17
    monitor-exit v36
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 3621
    const/4 v15, 0x1

    .line 3622
    .local v15, "attemptAutoJoin":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v33

    .line 3623
    .local v33, "state":Landroid/net/wifi/SupplicantState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/wifi/WifiConfigStore;->getLastSelectedConfiguration()Ljava/lang/String;

    move-result-object v30

    .line 3624
    .local v30, "selection":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mRoamingState:Lcom/android/internal/util/State;

    move-object/from16 v36, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-eq v0, v1, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mObtainingIpState:Lcom/android/internal/util/State;

    move-object/from16 v36, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-eq v0, v1, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mScanModeState:Lcom/android/internal/util/State;

    move-object/from16 v36, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-eq v0, v1, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;

    move-object/from16 v36, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-eq v0, v1, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;

    move-object/from16 v36, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-ne v0, v1, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConfigStore;->enableAutoJoinWhenAssociated:Z

    move/from16 v35, v0

    if-eqz v35, :cond_19

    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z

    move/from16 v35, v0

    if-nez v35, :cond_19

    sget-object v35, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    if-eq v0, v1, :cond_19

    sget-object v35, Landroid/net/wifi/SupplicantState;->AUTHENTICATING:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    if-eq v0, v1, :cond_19

    sget-object v35, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    if-eq v0, v1, :cond_19

    sget-object v35, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    if-eq v0, v1, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectionRequests:I

    move/from16 v35, v0

    if-nez v35, :cond_1a

    if-nez v30, :cond_1a

    .line 3640
    :cond_19
    const/4 v15, 0x0

    .line 3642
    :cond_1a
    sget-boolean v35, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v35, :cond_1c

    .line 3643
    if-nez v30, :cond_1b

    .line 3644
    const-string v30, "<none>"

    .line 3646
    :cond_1b
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "wifi setScanResults state"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " sup_state="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " debouncing="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " mConnectionRequests="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectionRequests:I

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " selection="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 3652
    :cond_1c
    if-eqz v15, :cond_1d

    .line 3653
    sget v35, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_PROCESSED:I

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I

    .line 3656
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getDisconnectedTimeMilli()J

    move-result-wide v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lcom/android/server/wifi/WifiConfigStore;->wifiConfigLastSelectionHysteresis:I

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-long v0, v0

    move-wide/from16 v38, v0

    cmp-long v35, v36, v38

    if-lez v35, :cond_1e

    .line 3657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v35, v0

    const/16 v36, -0x1

    invoke-virtual/range {v35 .. v36}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 3660
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConfigStore;->enableAutoJoinWhenAssociated:Z

    move/from16 v35, v0

    if-eqz v35, :cond_20

    .line 3661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;

    move-object/from16 v36, v0

    monitor-enter v36

    .line 3662
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    const v37, 0x112000e

    move-object/from16 v0, v35

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v35

    if-eqz v35, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/wifi/WifiConfigStore;->shouldAutoConnect()Z

    move-result v35

    if-nez v35, :cond_1f

    .line 3664
    const/4 v15, 0x0

    .line 3668
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiAutoJoinController:Lcom/android/server/wifi/WifiAutoJoinController;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-virtual {v0, v15}, Lcom/android/server/wifi/WifiAutoJoinController;->newSupplicantResults(Z)I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiStateMachine;->mNumScanResultsKnown:I

    .line 3669
    monitor-exit v36
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 3671
    :cond_20
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z

    move/from16 v35, v0

    if-eqz v35, :cond_1

    .line 3676
    const v35, 0x20091

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    move/from16 v36, v0

    const/16 v37, 0x1

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v35

    move/from16 v2, v36

    move/from16 v3, v37

    move-object/from16 v4, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(IIILjava/lang/Object;)V

    goto/16 :goto_1

    .line 3669
    :catchall_1
    move-exception v35

    :try_start_a
    monitor-exit v36
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v35

    .line 3500
    .end local v14    # "arr$":[Ljava/lang/String;
    .end local v15    # "attemptAutoJoin":Z
    .end local v17    # "bssidStrLen":I
    .end local v19    # "flagLen":I
    .end local v22    # "i$":I
    .end local v24    # "len$":I
    .end local v28    # "scanResults":Ljava/lang/String;
    .end local v30    # "selection":Ljava/lang/String;
    .end local v33    # "state":Landroid/net/wifi/SupplicantState;
    .restart local v21    # "i":I
    :catch_3
    move-exception v35

    goto/16 :goto_3
.end method

.method private setSuspendOptimizations(IZ)V
    .locals 2
    .param p1, "reason"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 3365
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSuspendOptimizations: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 3366
    :cond_0
    if-eqz p2, :cond_2

    .line 3367
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    .line 3371
    :goto_0
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSuspendOptNeedsDisabled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 3372
    :cond_1
    return-void

    .line 3369
    :cond_2
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    goto :goto_0
.end method

.method private setSuspendOptimizationsNative(IZ)V
    .locals 6
    .param p1, "reason"    # I
    .param p2, "enabled"    # Z

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 3335
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    .line 3336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSuspendOptimizationsNative: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -want "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " stack:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    aget-object v1, v1, v5

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 3345
    :cond_0
    if-eqz p2, :cond_3

    .line 3346
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    .line 3348
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3349
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v0, :cond_1

    .line 3350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSuspendOptimizationsNative do it "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " stack:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    aget-object v1, v1, v5

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 3356
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->setSuspendOptimizations(Z)Z

    .line 3362
    :cond_2
    :goto_0
    return-void

    .line 3359
    :cond_3
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    .line 3360
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->setSuspendOptimizations(Z)Z

    goto :goto_0
.end method

.method private setWifiApState(I)V
    .locals 5
    .param p1, "wifiApState"    # I

    .prologue
    .line 3399
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 3402
    .local v2, "previousWifiApState":I
    const/16 v3, 0xd

    if-ne p1, v3, :cond_2

    .line 3403
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiOn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3412
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3414
    sget-boolean v3, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setWifiApState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiApStateByName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 3416
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3417
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3418
    const-string v3, "wifi_state"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3419
    const-string v3, "previous_wifi_state"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3420
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3421
    return-void

    .line 3404
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    const/16 v3, 0xb

    if-ne p1, v3, :cond_0

    .line 3405
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiOff()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3407
    :catch_0
    move-exception v0

    .line 3408
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to note battery stats in wifi"

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setWifiState(I)V
    .locals 5
    .param p1, "wifiState"    # I

    .prologue
    .line 3375
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 3378
    .local v2, "previousWifiState":I
    const/4 v3, 0x3

    if-ne p1, v3, :cond_2

    .line 3379
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiOn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3387
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3389
    sget-boolean v3, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setWifiState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiStateByName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 3391
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3392
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3393
    const-string v3, "wifi_state"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3394
    const-string v3, "previous_wifi_state"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3395
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3396
    return-void

    .line 3380
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    .line 3381
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiOff()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3383
    :catch_0
    move-exception v0

    .line 3384
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to note battery stats in wifi"

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startBatchedScan()V
    .locals 4

    .prologue
    .line 1423
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatchedScanSettings:Landroid/net/wifi/BatchedScanSettings;

    if-nez v2, :cond_1

    .line 1447
    :cond_0
    :goto_0
    return-void

    .line 1425
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpActive:Z

    if-eqz v2, :cond_2

    .line 1426
    sget-boolean v2, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "not starting Batched Scans due to DHCP"

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1431
    :cond_2
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->retrieveBatchedScanData()V

    .line 1433
    sget-boolean v2, Lcom/android/server/wifi/WifiStateMachine;->PDBG:Z

    if-eqz v2, :cond_3

    const-string v2, "try  starting Batched Scans due to DHCP"

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 1436
    :cond_3
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatchedScanIntervalIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1438
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatchedScanSettings:Landroid/net/wifi/BatchedScanSettings;

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiNative;->setBatchedScanSettings(Landroid/net/wifi/BatchedScanSettings;)Ljava/lang/String;

    move-result-object v1

    .line 1440
    .local v1, "scansExpected":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mExpectedBatchedScans:I

    .line 1441
    iget v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mExpectedBatchedScans:I

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiStateMachine;->setNextBatchedAlarm(I)V

    .line 1442
    iget v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mExpectedBatchedScans:I

    if-lez v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->noteBatchedScanStart()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1443
    :catch_0
    move-exception v0

    .line 1444
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->stopBatchedScan()V

    .line 1445
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception parsing WifiNative.setBatchedScanSettings response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startDelayedScan(ILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V
    .locals 8
    .param p1, "milli"    # I
    .param p2, "settings"    # Landroid/net/wifi/ScanSettings;
    .param p3, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 1275
    if-gtz p1, :cond_1

    .line 1304
    :cond_0
    :goto_0
    return-void

    .line 1284
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDelayedScanCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1285
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mScreenOn:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;

    if-ne v0, v1, :cond_3

    .line 1288
    :cond_2
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1289
    .local v5, "bundle":Landroid/os/Bundle;
    const-string v0, "customized_scan_settings"

    invoke-virtual {v5, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1290
    const-string v0, "customized_scan_worksource"

    invoke-virtual {v5, v0, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1291
    const-string v0, "scan_request_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v5, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1292
    const v2, 0x20047

    const/4 v3, -0x2

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDelayedScanCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    int-to-long v6, p1

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(IIILjava/lang/Object;J)V

    .line 1294
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startDelayedScan send -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDelayedScanCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " milli "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1295
    .end local v5    # "bundle":Landroid/os/Bundle;
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mBackgroundScanSupported:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mScreenOn:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;

    if-ne v0, v1, :cond_4

    .line 1297
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->setScanAlarm(Z)V

    .line 1298
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startDelayedScan start scan alarm -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDelayedScanCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " milli "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1301
    :cond_4
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startDelayedScan unhandled -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDelayedScanCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " milli "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private startNextBatchedScan()V
    .locals 1

    .prologue
    .line 1456
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->retrieveBatchedScanData()V

    .line 1458
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mExpectedBatchedScans:I

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->setNextBatchedAlarm(I)V

    .line 1459
    return-void
.end method

.method private startNextBatchedScanAsync()V
    .locals 1

    .prologue
    .line 1451
    const v0, 0x20088

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 1452
    return-void
.end method

.method private startScanNative(ILjava/lang/String;)Z
    .locals 4
    .param p1, "type"    # I
    .param p2, "freqs"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2027
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-boolean v2, v2, Lcom/android/server/wifi/WifiConfigStore;->enableAutoJoinWhenAssociated:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;

    if-ne v2, v3, :cond_0

    .line 2029
    const/4 p1, 0x2

    .line 2031
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wifi/WifiNative;->scan(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2032
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsScanOngoing:Z

    .line 2033
    if-nez p2, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsFullScanOngoing:Z

    .line 2034
    iput-object p2, p0, Lcom/android/server/wifi/WifiStateMachine;->lastScanFreqs:Ljava/lang/String;

    .line 2037
    :goto_0
    return v1

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method private startSoftApWithConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 4735
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/wifi/WifiStateMachine$9;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wifi/WifiStateMachine$9;-><init>(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4754
    return-void
.end method

.method private startTethering(Ljava/util/ArrayList;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 3234
    const/4 v8, 0x0

    .line 3236
    .local v8, "wifiAvailable":Z
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->checkAndSetConnectivityInstance()V

    .line 3238
    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v11}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v9

    .line 3240
    .local v9, "wifiRegexs":[Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3241
    .local v5, "intf":Ljava/lang/String;
    move-object v0, v9

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v6, :cond_0

    aget-object v7, v0, v3

    .line 3242
    .local v7, "regex":Ljava/lang/String;
    invoke-virtual {v5, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 3244
    const/4 v4, 0x0

    .line 3246
    .local v4, "ifcg":Landroid/net/InterfaceConfiguration;
    :try_start_0
    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v11, v5}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v4

    .line 3247
    if-eqz v4, :cond_1

    .line 3249
    new-instance v11, Landroid/net/LinkAddress;

    const-string v12, "192.168.43.1"

    invoke-static {v12}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v12

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v4, v11}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 3251
    invoke-virtual {v4}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    .line 3253
    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v11, v5, v4}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3260
    :cond_1
    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v11, v5}, Landroid/net/ConnectivityManager;->tether(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_3

    .line 3261
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error tethering on "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 3270
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "ifcg":Landroid/net/InterfaceConfiguration;
    .end local v5    # "intf":Ljava/lang/String;
    .end local v6    # "len$":I
    .end local v7    # "regex":Ljava/lang/String;
    :cond_2
    :goto_1
    return v10

    .line 3255
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "ifcg":Landroid/net/InterfaceConfiguration;
    .restart local v5    # "intf":Ljava/lang/String;
    .restart local v6    # "len$":I
    .restart local v7    # "regex":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 3256
    .local v1, "e":Ljava/lang/Exception;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error configuring interface "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 3264
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    iput-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mTetherInterfaceName:Ljava/lang/String;

    .line 3265
    const/4 v10, 0x1

    goto :goto_1

    .line 3241
    .end local v4    # "ifcg":Landroid/net/InterfaceConfiguration;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private stopBatchedScan()V
    .locals 2

    .prologue
    .line 1506
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatchedScanIntervalIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1507
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->retrieveBatchedScanData()V

    .line 1508
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->setBatchedScanSettings(Landroid/net/wifi/BatchedScanSettings;)Ljava/lang/String;

    .line 1509
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->noteBatchedScanStop()V

    .line 1510
    return-void
.end method

.method private stopTethering()V
    .locals 5

    .prologue
    .line 3275
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->checkAndSetConnectivityInstance()V

    .line 3279
    const/4 v1, 0x0

    .line 3281
    .local v1, "ifcg":Landroid/net/InterfaceConfiguration;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mTetherInterfaceName:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v1

    .line 3282
    if-eqz v1, :cond_0

    .line 3283
    new-instance v2, Landroid/net/LinkAddress;

    const-string v3, "0.0.0.0"

    invoke-static {v3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v1, v2}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 3285
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mTetherInterfaceName:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3291
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mTetherInterfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 3292
    const-string v2, "Untether initiate failed!"

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 3294
    :cond_1
    return-void

    .line 3287
    :catch_0
    move-exception v0

    .line 3288
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error resetting interface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mTetherInterfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateCapabilities(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/16 v1, 0xe

    .line 7146
    iget-boolean v0, p1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v0, :cond_0

    .line 7147
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    .line 7153
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    .line 7154
    return-void

    .line 7150
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto :goto_0
.end method

.method private updateDefaultRouteMacAddress(I)Ljava/lang/String;
    .locals 9
    .param p1, "timeout"    # I

    .prologue
    const/4 v8, 0x1

    .line 4306
    const/4 v0, 0x0

    .line 4307
    .local v0, "address":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v6}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/RouteInfo;

    .line 4308
    .local v5, "route":Landroid/net/RouteInfo;
    invoke-virtual {v5}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4309
    invoke-virtual {v5}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    .line 4310
    .local v2, "gateway":Ljava/net/InetAddress;
    instance-of v6, v2, Ljava/net/Inet4Address;

    if-eqz v6, :cond_0

    .line 4311
    sget-boolean v6, Lcom/android/server/wifi/WifiStateMachine;->PDBG:Z

    if-eqz v6, :cond_1

    .line 4312
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateDefaultRouteMacAddress found Ipv4 default :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 4315
    :cond_1
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiStateMachine;->macAddressFromRoute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4317
    if-nez v0, :cond_2

    if-lez p1, :cond_2

    .line 4318
    const/4 v4, 0x0

    .line 4320
    .local v4, "reachable":Z
    :try_start_0
    invoke-virtual {v2, p1}, Ljava/net/InetAddress;->isReachable(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 4326
    if-ne v4, v8, :cond_2

    .line 4328
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiStateMachine;->macAddressFromRoute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4329
    sget-boolean v6, Lcom/android/server/wifi/WifiStateMachine;->PDBG:Z

    if-eqz v6, :cond_2

    .line 4330
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateDefaultRouteMacAddress reachable (tried again) :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " found "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 4336
    .end local v4    # "reachable":Z
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 4337
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v6, v7, v0}, Lcom/android/server/wifi/WifiConfigStore;->setDefaultGwMacAddress(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 4321
    .restart local v4    # "reachable":Z
    :catch_0
    move-exception v1

    .line 4322
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateDefaultRouteMacAddress exception reaching :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4326
    if-ne v4, v8, :cond_2

    .line 4328
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiStateMachine;->macAddressFromRoute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4329
    sget-boolean v6, Lcom/android/server/wifi/WifiStateMachine;->PDBG:Z

    if-eqz v6, :cond_2

    .line 4330
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateDefaultRouteMacAddress reachable (tried again) :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " found "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 4326
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-ne v4, v8, :cond_3

    .line 4328
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/wifi/WifiStateMachine;->macAddressFromRoute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4329
    sget-boolean v7, Lcom/android/server/wifi/WifiStateMachine;->PDBG:Z

    if-eqz v7, :cond_3

    .line 4330
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateDefaultRouteMacAddress reachable (tried again) :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " found "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    :cond_3
    throw v6

    .line 4342
    .end local v2    # "gateway":Ljava/net/InetAddress;
    .end local v4    # "reachable":Z
    .end local v5    # "route":Landroid/net/RouteInfo;
    :cond_4
    return-object v0
.end method

.method private updateLinkProperties(ILandroid/net/LinkProperties;)V
    .locals 14
    .param p1, "reason"    # I
    .param p2, "lp"    # Landroid/net/LinkProperties;

    .prologue
    .line 4131
    new-instance v7, Landroid/net/LinkProperties;

    invoke-direct {v7}, Landroid/net/LinkProperties;-><init>()V

    .line 4134
    .local v7, "newLp":Landroid/net/LinkProperties;
    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v7, v11}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 4135
    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v12, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v11, v12}, Lcom/android/server/wifi/WifiConfigStore;->getProxyProperties(I)Landroid/net/ProxyInfo;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 4138
    invoke-virtual/range {p2 .. p2}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/net/LinkProperties;->setLinkAddresses(Ljava/util/Collection;)V

    .line 4139
    invoke-virtual/range {p2 .. p2}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/RouteInfo;

    .line 4140
    .local v8, "route":Landroid/net/RouteInfo;
    invoke-virtual {v7, v8}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    goto :goto_0

    .line 4142
    .end local v8    # "route":Landroid/net/RouteInfo;
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 4143
    .local v1, "dns":Ljava/net/InetAddress;
    invoke-virtual {v7, v1}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    goto :goto_1

    .line 4147
    .end local v1    # "dns":Ljava/net/InetAddress;
    :cond_1
    iget-object v12, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResultsLock:Ljava/lang/Object;

    monitor-enter v12

    .line 4151
    :try_start_0
    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    if-eqz v11, :cond_4

    if-eqz p2, :cond_4

    invoke-virtual/range {p2 .. p2}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 4153
    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    iget-object v13, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v11, v13}, Landroid/net/DhcpResults;->getRoutes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/RouteInfo;

    .line 4154
    .restart local v8    # "route":Landroid/net/RouteInfo;
    invoke-virtual {v7, v8}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    goto :goto_2

    .line 4161
    .end local v8    # "route":Landroid/net/RouteInfo;
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .line 4156
    :cond_2
    :try_start_1
    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    iget-object v11, v11, Landroid/net/DhcpResults;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 4157
    .restart local v1    # "dns":Ljava/net/InetAddress;
    invoke-virtual {v7, v1}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    goto :goto_3

    .line 4159
    .end local v1    # "dns":Ljava/net/InetAddress;
    :cond_3
    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    iget-object v11, v11, Landroid/net/DhcpResults;->domains:Ljava/lang/String;

    invoke-virtual {v7, v11}, Landroid/net/LinkProperties;->setDomains(Ljava/lang/String;)V

    .line 4161
    :cond_4
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4163
    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7, v11}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_11

    const/4 v5, 0x1

    .line 4164
    .local v5, "linkChanged":Z
    :goto_4
    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v11}, Lcom/android/server/wifi/WifiStateMachine;->isProvisioned(Landroid/net/LinkProperties;)Z

    move-result v10

    .line 4165
    .local v10, "wasProvisioned":Z
    invoke-direct {p0, v7}, Lcom/android/server/wifi/WifiStateMachine;->isProvisioned(Landroid/net/LinkProperties;)Z

    move-result v3

    .line 4166
    .local v3, "isProvisioned":Z
    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v11}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result v11

    if-eqz v11, :cond_12

    invoke-virtual {v7}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result v11

    if-nez v11, :cond_12

    const/4 v6, 0x1

    .line 4168
    .local v6, "lostIPv4Provisioning":Z
    :goto_5
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->getNetworkDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    .line 4170
    .local v0, "detailedState":Landroid/net/NetworkInfo$DetailedState;
    if-eqz v5, :cond_7

    .line 4171
    sget-boolean v11, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v11, :cond_5

    .line 4172
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Link configuration changed for netId: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " old: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " new: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 4175
    :cond_5
    iput-object v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    .line 4176
    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine;->mTcpBufferSizes:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 4177
    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v12, p0, Lcom/android/server/wifi/WifiStateMachine;->mTcpBufferSizes:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/net/LinkProperties;->setTcpBufferSizes(Ljava/lang/String;)V

    .line 4179
    :cond_6
    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    if-eqz v11, :cond_7

    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    iget-object v12, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v11, v12}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V

    .line 4182
    :cond_7
    sget-boolean v11, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v11, :cond_f

    .line 4183
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 4184
    .local v9, "sb":Ljava/lang/StringBuilder;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateLinkProperties nid: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4185
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " state: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4186
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " reason: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->smToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4188
    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    if-eqz v11, :cond_e

    .line 4189
    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v11}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 4190
    const-string v11, " v4"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4192
    :cond_8
    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v11}, Landroid/net/LinkProperties;->hasGlobalIPv6Address()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 4193
    const-string v11, " v6"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4195
    :cond_9
    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v11}, Landroid/net/LinkProperties;->hasIPv4DefaultRoute()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 4196
    const-string v11, " v4r"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4198
    :cond_a
    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v11}, Landroid/net/LinkProperties;->hasIPv6DefaultRoute()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 4199
    const-string v11, " v6r"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4201
    :cond_b
    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v11}, Landroid/net/LinkProperties;->hasIPv4DnsServer()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 4202
    const-string v11, " v4dns"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4204
    :cond_c
    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v11}, Landroid/net/LinkProperties;->hasIPv6DnsServer()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 4205
    const-string v11, " v6dns"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4207
    :cond_d
    if-eqz v3, :cond_e

    .line 4208
    const-string v11, " isprov"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4211
    :cond_e
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 4218
    .end local v9    # "sb":Ljava/lang/StringBuilder;
    :cond_f
    sparse-switch p1, :sswitch_data_0

    .line 4283
    :cond_10
    :goto_6
    return-void

    .line 4163
    .end local v0    # "detailedState":Landroid/net/NetworkInfo$DetailedState;
    .end local v3    # "isProvisioned":Z
    .end local v5    # "linkChanged":Z
    .end local v6    # "lostIPv4Provisioning":Z
    .end local v10    # "wasProvisioned":Z
    :cond_11
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 4166
    .restart local v3    # "isProvisioned":Z
    .restart local v5    # "linkChanged":Z
    .restart local v10    # "wasProvisioned":Z
    :cond_12
    const/4 v6, 0x0

    goto/16 :goto_5

    .line 4222
    .restart local v0    # "detailedState":Landroid/net/NetworkInfo$DetailedState;
    .restart local v6    # "lostIPv4Provisioning":Z
    :sswitch_0
    const v11, 0x2008a

    invoke-virtual {p0, v11}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 4223
    if-nez v3, :cond_10

    .line 4230
    const-string v11, "IPv4 config succeeded, but not provisioned"

    invoke-virtual {p0, v11}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_6

    .line 4238
    :sswitch_1
    if-eqz v3, :cond_13

    if-eqz v6, :cond_14

    .line 4239
    :cond_13
    const v11, 0x2008b

    invoke-virtual {p0, v11}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_6

    .line 4242
    :cond_14
    const v11, 0x2008a

    invoke-virtual {p0, v11}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 4255
    const-string v11, "DHCP failure: provisioned, clearing IPv4 address."

    invoke-virtual {p0, v11}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 4256
    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/android/server/wifi/WifiStateMachine;->clearIPv4Address(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_10

    .line 4257
    const v11, 0x2008b

    invoke-virtual {p0, v11}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_6

    .line 4264
    :sswitch_2
    const v11, 0x2008b

    invoke-virtual {p0, v11}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_6

    .line 4269
    :sswitch_3
    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v12, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v11, v12}, Lcom/android/server/wifi/WifiConfigStore;->isUsingStaticIp(I)Z

    move-result v4

    .line 4270
    .local v4, "isStatic":Z
    if-eqz v10, :cond_16

    if-nez v3, :cond_16

    if-nez v4, :cond_16

    .line 4272
    const v11, 0x2008b

    invoke-virtual {p0, v11}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 4277
    :cond_15
    :goto_7
    if-eqz v5, :cond_10

    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->getNetworkDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v11

    sget-object v12, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v11, v12, :cond_10

    .line 4279
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->sendLinkConfigurationChangedBroadcast()V

    goto :goto_6

    .line 4273
    :cond_16
    if-nez v10, :cond_15

    if-eqz v3, :cond_15

    .line 4275
    const v11, 0x2008a

    invoke-virtual {p0, v11}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_7

    .line 4218
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x2000f -> :sswitch_0
        0x20010 -> :sswitch_2
        0x2008c -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public addToBlacklist(Ljava/lang/String;)V
    .locals 1
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    .line 2361
    const v0, 0x20038

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2362
    return-void
.end method

.method public autoRoamSetBSSID(ILjava/lang/String;)V
    .locals 1
    .param p1, "netId"    # I
    .param p2, "bssid"    # Ljava/lang/String;

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/wifi/WifiStateMachine;->autoRoamSetBSSID(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Z

    .line 396
    return-void
.end method

.method public autoRoamSetBSSID(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Z
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "bssid"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 399
    const/4 v0, 0x1

    .line 400
    .local v0, "ret":Z
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, "any"

    iput-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    .line 401
    :cond_0
    if-nez p2, :cond_1

    const-string p2, "any"

    .line 402
    :cond_1
    if-nez p1, :cond_3

    .line 420
    :cond_2
    :goto_0
    return v1

    .line 404
    :cond_3
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    if-ne p2, v2, :cond_4

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    if-eq p2, v2, :cond_2

    .line 407
    :cond_4
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    const-string v2, "any"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "any"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 409
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-boolean v1, v1, Lcom/android/server/wifi/WifiConfigStore;->roamOnAny:Z

    if-nez v1, :cond_5

    .line 410
    const/4 v0, 0x0

    .line 413
    :cond_5
    sget-boolean v1, Lcom/android/server/wifi/WifiStateMachine;->VDBG:Z

    if-eqz v1, :cond_6

    .line 414
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autoRoamSetBSSID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 417
    :cond_6
    iput-object p2, p1, Landroid/net/wifi/WifiConfiguration;->autoJoinBSSID:Ljava/lang/String;

    .line 418
    iput-object p2, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    .line 419
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/WifiConfigStore;->saveWifiConfigBSSID(Landroid/net/wifi/WifiConfiguration;)V

    move v1, v0

    .line 420
    goto :goto_0
.end method

.method checkAndSetAutoConnection()V
    .locals 2

    .prologue
    .line 9142
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9143
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStore;->shouldAutoConnect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9144
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConfigStore;->enableAutoJoinWhenAssociated:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConfigStore;->enableAutoJoinScanWhenAssociated:Z

    if-nez v0, :cond_0

    .line 9146
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->enableAutoConnect(Z)V

    .line 9147
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 9153
    :cond_0
    :goto_0
    return-void

    .line 9150
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->enableAutoConnect(Z)V

    goto :goto_0
.end method

.method public clearBlacklist()V
    .locals 1

    .prologue
    .line 2369
    const v0, 0x20039

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2370
    return-void
.end method

.method clearConfigBSSID(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "dbg"    # Ljava/lang/String;

    .prologue
    .line 7246
    if-nez p1, :cond_0

    .line 7264
    :goto_0
    return-void

    .line 7248
    :cond_0
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v0, :cond_1

    .line 7249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " config "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " config.bssid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 7252
    :cond_1
    const-string v0, "any"

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->autoJoinBSSID:Ljava/lang/String;

    .line 7255
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiAutoJoinController:Lcom/android/server/wifi/WifiAutoJoinController;

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->isBlacklistedBSSID(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 7256
    const-string v0, "any"

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 7259
    :cond_2
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v0, :cond_3

    .line 7260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " nid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 7263
    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiConfigStore;->saveWifiConfigBSSID(Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_0
.end method

.method clearCurrentConfigBSSID(Ljava/lang/String;)V
    .locals 1
    .param p1, "dbg"    # Ljava/lang/String;

    .prologue
    .line 7240
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 7241
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    .line 7244
    :goto_0
    return-void

    .line 7243
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->clearConfigBSSID(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    goto :goto_0
.end method

.method closeRadioScanStats()V
    .locals 3

    .prologue
    .line 1843
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->getWifiLinkLayerStats(Z)Landroid/net/wifi/WifiLinkLayerStats;

    move-result-object v0

    .line 1844
    .local v0, "stats":Landroid/net/wifi/WifiLinkLayerStats;
    if-eqz v0, :cond_0

    .line 1845
    iget v1, v0, Landroid/net/wifi/WifiLinkLayerStats;->on_time:I

    iget v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTimeStartScan:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTimeThisScan:I

    .line 1846
    iget v1, v0, Landroid/net/wifi/WifiLinkLayerStats;->tx_time:I

    iget v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mTxTimeStartScan:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mTxTimeThisScan:I

    .line 1847
    iget v1, v0, Landroid/net/wifi/WifiLinkLayerStats;->rx_time:I

    iget v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mRxTimeStartScan:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mRxTimeThisScan:I

    .line 1848
    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTimeScan:I

    iget v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTimeThisScan:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTimeScan:I

    .line 1849
    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mTxTimeScan:I

    iget v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mTxTimeThisScan:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mTxTimeScan:I

    .line 1850
    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mRxTimeScan:I

    iget v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mRxTimeThisScan:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mRxTimeScan:I

    .line 1852
    :cond_0
    return-void
.end method

.method public disableEphemeralNetwork(Ljava/lang/String;)V
    .locals 1
    .param p1, "SSID"    # Ljava/lang/String;

    .prologue
    .line 2178
    if-eqz p1, :cond_0

    .line 2179
    const v0, 0x20062

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2181
    :cond_0
    return-void
.end method

.method disableLastNetwork()V
    .locals 3

    .prologue
    .line 9135
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStoppingState:Lcom/android/internal/util/State;

    if-eq v0, v1, :cond_0

    .line 9136
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(II)Z

    .line 9139
    :cond_0
    return-void
.end method

.method public disconnectCommand()V
    .locals 1

    .prologue
    .line 2195
    const v0, 0x20049

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2196
    return-void
.end method

.method public disconnectCommand(II)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "reason"    # I

    .prologue
    .line 2199
    const v0, 0x20049

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(III)V

    .line 2200
    return-void
.end method

.method doNetworkStatus(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 7187
    const v0, 0x20094

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    .line 7188
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2532
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2533
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/SupplicantStateTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLinkProperties "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWifiInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDhcpResults "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNetworkInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLastSignalLevel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastSignalLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLastBssid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLastNetworkId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOperationalMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mOperationalMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUserWantsSuspendOpt "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSuspendOptNeedsDisabled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Supplicant status "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->status(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mEnableBackgroundScan "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mEnableBackgroundScan:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLastSetCountryCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastSetCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPersistedCountryCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mPersistedCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2548
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2549
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mUntrustedNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2550
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2551
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/WifiConfigStore;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2552
    return-void
.end method

.method enableAggressiveHandover(I)V
    .locals 0
    .param p1, "enabled"    # I

    .prologue
    .line 1208
    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mAggressiveHandover:I

    .line 1209
    return-void
.end method

.method public enableAllNetworks()V
    .locals 1

    .prologue
    .line 2377
    const v0, 0x20037

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2378
    return-void
.end method

.method enableBackgroundScan(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 2341
    if-eqz p1, :cond_0

    .line 2342
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStore;->shouldAutoConnect()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2344
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    .line 2345
    const-string v0, "No auto connect, skip enable networks during pno"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 2351
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiNative;->enableBackgroundScan(Z)Z

    move-result v0

    return v0

    .line 2348
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStore;->enableAllNetworks()V

    goto :goto_0
.end method

.method public enableRssiPolling(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 2373
    const v2, 0x20052

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(III)V

    .line 2374
    return-void

    :cond_0
    move v0, v1

    .line 2373
    goto :goto_0
.end method

.method public enableTdls(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "remoteMacAddress"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 2456
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 2457
    .local v0, "enabler":I
    :goto_0
    const v2, 0x2005c

    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 2458
    return-void

    .end local v0    # "enabler":I
    :cond_0
    move v0, v1

    .line 2456
    goto :goto_0
.end method

.method enableVerboseLogging(I)V
    .locals 2
    .param p1, "verbose"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1179
    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingLevel:I

    .line 1180
    if-lez p1, :cond_0

    .line 1181
    sput-boolean v1, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    .line 1182
    sput-boolean v1, Lcom/android/server/wifi/WifiStateMachine;->VDBG:Z

    .line 1183
    sput-boolean v1, Lcom/android/server/wifi/WifiStateMachine;->PDBG:Z

    .line 1184
    sput-boolean v1, Lcom/android/server/wifi/WifiStateMachine;->mLogMessages:Z

    .line 1185
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v1, "DEBUG"

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->setSupplicantLogLevel(Ljava/lang/String;)V

    .line 1193
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pServiceImpl:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->enableVerboseLogging(I)V

    .line 1194
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiAutoJoinController:Lcom/android/server/wifi/WifiAutoJoinController;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiAutoJoinController;->enableVerboseLogging(I)V

    .line 1195
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiMonitor;->enableVerboseLogging(I)V

    .line 1196
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiNative;->enableVerboseLogging(I)V

    .line 1197
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiConfigStore;->enableVerboseLogging(I)V

    .line 1198
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStateTracker;->enableVerboseLogging(I)V

    .line 1199
    return-void

    .line 1187
    :cond_0
    sput-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    .line 1188
    sput-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->VDBG:Z

    .line 1189
    sput-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->PDBG:Z

    .line 1190
    sput-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->mLogMessages:Z

    .line 1191
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v1, "INFO"

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->setSupplicantLogLevel(Ljava/lang/String;)V

    goto :goto_0
.end method

.method getAggressiveHandover()I
    .locals 1

    .prologue
    .line 1204
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mAggressiveHandover:I

    return v0
.end method

.method public getAllowScansWithTraffic()I
    .locals 1

    .prologue
    .line 1216
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v0, v0, Lcom/android/server/wifi/WifiConfigStore;->alwaysEnableScansWhileAssociated:I

    return v0
.end method

.method public getConfigFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2471
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStore;->getConfigFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getCurrentBSSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6503
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z

    if-eqz v0, :cond_0

    .line 6504
    const/4 v0, 0x0

    .line 6506
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    goto :goto_0
.end method

.method getCurrentScanResult()Landroid/net/wifi/ScanResult;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 6488
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 6489
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v1, :cond_1

    .line 6499
    :cond_0
    :goto_0
    return-object v2

    .line 6492
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    .line 6493
    .local v0, "BSSID":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 6494
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    .line 6496
    :cond_2
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    .line 6499
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    goto :goto_0
.end method

.method getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 2

    .prologue
    .line 6481
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 6482
    const/4 v0, 0x0

    .line 6484
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    goto :goto_0
.end method

.method public getDisconnectedTimeMilli()J
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 1716
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;

    if-ne v4, v5, :cond_0

    iget-wide v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedTimeStamp:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_0

    .line 1718
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1719
    .local v0, "now_ms":J
    iget-wide v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedTimeStamp:J

    sub-long v2, v0, v2

    .line 1721
    .end local v0    # "now_ms":J
    :cond_0
    return-wide v2
.end method

.method public getFrequencyBand()I
    .locals 1

    .prologue
    .line 2464
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method protected getLogRecString(Landroid/os/Message;)Ljava/lang/String;
    .locals 28
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2589
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 2590
    .local v19, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mScreenOn:Z

    move/from16 v22, v0

    if-eqz v22, :cond_0

    .line 2591
    const-string v22, "!"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2593
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I

    move/from16 v22, v0

    sget v23, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_UNKNOWN:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_1

    .line 2594
    const-string v22, "("

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2596
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wifi/WifiStateMachine;->smToString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2597
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v22, v0

    if-lez v22, :cond_2

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v22, v0

    const/16 v23, 0x3f2

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_2

    .line 2598
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, " uid="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2600
    :cond_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    sparse-switch v22, :sswitch_data_0

    .line 3101
    const-string v22, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3102
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3103
    const-string v22, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3104
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3108
    :cond_3
    :goto_0
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    return-object v22

    .line 2602
    :sswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 2603
    .local v14, "now":Ljava/lang/Long;
    const-string v22, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2604
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2605
    const-string v22, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2606
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2607
    const-string v22, " ic="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2608
    sget v22, Lcom/android/server/wifi/WifiStateMachine;->sScanAlarmIntentCount:I

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2609
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    if-eqz v22, :cond_4

    .line 2610
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/Bundle;

    .line 2611
    .local v5, "bundle":Landroid/os/Bundle;
    const-string v22, "scan_request_time"

    const-wide/16 v24, 0x0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v5, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    .line 2612
    .local v17, "request":Ljava/lang/Long;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-eqz v22, :cond_4

    .line 2613
    const-string v22, " proc(ms):"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    sub-long v24, v24, v26

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2616
    .end local v5    # "bundle":Landroid/os/Bundle;
    .end local v17    # "request":Ljava/lang/Long;
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mIsScanOngoing:Z

    move/from16 v22, v0

    if-eqz v22, :cond_5

    const-string v22, " onGoing"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2617
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mIsFullScanOngoing:Z

    move/from16 v22, v0

    if-eqz v22, :cond_6

    const-string v22, " full"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2618
    :cond_6
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastStartScanTimeStamp:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-eqz v22, :cond_7

    .line 2619
    const-string v22, " started:"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastStartScanTimeStamp:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2620
    const-string v22, ","

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastStartScanTimeStamp:J

    move-wide/from16 v26, v0

    sub-long v24, v24, v26

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2622
    :cond_7
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastScanDuration:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-eqz v22, :cond_8

    .line 2623
    const-string v22, " dur:"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastScanDuration:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2625
    :cond_8
    const-string v22, " cnt="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mDelayedScanCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2626
    const-string v22, " rssi="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2627
    const-string v22, " f="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2628
    const-string v22, " sc="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/net/wifi/WifiInfo;->score:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2629
    const-string v22, " link="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2630
    const-string v22, " tx=%.1f,"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2631
    const-string v22, " %.1f,"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2632
    const-string v22, " %.1f "

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2633
    const-string v22, " rx=%.1f"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastScanFreqs:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_9

    .line 2635
    const-string v22, " list="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastScanFreqs:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2639
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->reportOnTime()Ljava/lang/String;

    move-result-object v16

    .line 2640
    .local v16, "report":Ljava/lang/String;
    if-eqz v16, :cond_3

    .line 2641
    const-string v22, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2637
    .end local v16    # "report":Ljava/lang/String;
    :cond_9
    const-string v22, " fiv="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiStateMachine;->fullBandConnectedTimeIntervalMilli:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2645
    .end local v14    # "now":Ljava/lang/Long;
    :sswitch_1
    const-string v22, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2646
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2647
    const-string v22, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2648
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2649
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->printTime()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2650
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/server/wifi/StateChangeResult;

    .line 2651
    .local v21, "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    if-eqz v21, :cond_3

    .line 2652
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/StateChangeResult;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2657
    .end local v21    # "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    :sswitch_2
    const-string v22, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2658
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2659
    const-string v22, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2660
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastSavedConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3

    .line 2662
    const-string v22, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastSavedConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2663
    const-string v22, " nid="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastSavedConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastSavedConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    move/from16 v22, v0

    if-eqz v22, :cond_a

    .line 2665
    const-string v22, " hidden"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2667
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastSavedConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastSavedConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "*"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_b

    .line 2669
    const-string v22, " hasPSK"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2671
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastSavedConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    move/from16 v22, v0

    if-eqz v22, :cond_c

    .line 2672
    const-string v22, " ephemeral"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2674
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastSavedConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    move/from16 v22, v0

    if-eqz v22, :cond_d

    .line 2675
    const-string v22, " selfAdded"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2677
    :cond_d
    const-string v22, " cuid="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastSavedConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2678
    const-string v22, " suid="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastSavedConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2682
    :sswitch_3
    const-string v22, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2683
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2684
    const-string v22, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2685
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastForgetConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3

    .line 2687
    const-string v22, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastForgetConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2688
    const-string v22, " nid="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastForgetConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastForgetConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    move/from16 v22, v0

    if-eqz v22, :cond_e

    .line 2690
    const-string v22, " hidden"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2692
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastForgetConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_f

    .line 2693
    const-string v22, " hasPSK"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2695
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastForgetConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    move/from16 v22, v0

    if-eqz v22, :cond_10

    .line 2696
    const-string v22, " ephemeral"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2698
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastForgetConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    move/from16 v22, v0

    if-eqz v22, :cond_11

    .line 2699
    const-string v22, " selfAdded"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2701
    :cond_11
    const-string v22, " cuid="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastForgetConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2702
    const-string v22, " suid="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastForgetConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2703
    const-string v22, " ajst="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastForgetConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2707
    :sswitch_4
    const-string v22, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2708
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2709
    const-string v22, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2710
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2711
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 2712
    .local v4, "bssid":Ljava/lang/String;
    if-eqz v4, :cond_12

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_12

    .line 2713
    const-string v22, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2714
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2716
    :cond_12
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, " blacklist="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiStateMachine;->didBlackListBSSID:Z

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2717
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->printTime()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2720
    .end local v4    # "bssid":Ljava/lang/String;
    :sswitch_5
    const-string v22, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2721
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2722
    const-string v22, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2723
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    move-object/from16 v22, v0

    if-eqz v22, :cond_13

    .line 2725
    const-string v22, " found="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2728
    :cond_13
    const-string v22, " known="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mNumScanResultsKnown:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2729
    const-string v22, " got="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mNumScanResultsReturned:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2730
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastScanDuration:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-eqz v22, :cond_14

    .line 2731
    const-string v22, " dur:"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastScanDuration:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2733
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mOnTime:I

    move/from16 v22, v0

    if-eqz v22, :cond_15

    .line 2734
    const-string v22, " on:"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mOnTimeThisScan:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ","

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mOnTimeScan:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2735
    const-string v22, ","

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mOnTime:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2737
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mTxTime:I

    move/from16 v22, v0

    if-eqz v22, :cond_16

    .line 2738
    const-string v22, " tx:"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mTxTimeThisScan:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ","

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mTxTimeScan:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2739
    const-string v22, ","

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mTxTime:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2741
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mRxTime:I

    move/from16 v22, v0

    if-eqz v22, :cond_17

    .line 2742
    const-string v22, " rx:"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mRxTimeThisScan:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ","

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mRxTimeScan:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2743
    const-string v22, ","

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mRxTime:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2745
    :cond_17
    const-string v22, " bcn=%d"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mRunningBeaconCount:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2746
    const-string v22, " con=%d"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectionRequests:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wifi/WifiConfigStore;->getLastSelectedConfiguration()Ljava/lang/String;

    move-result-object v13

    .line 2748
    .local v13, "key":Ljava/lang/String;
    if-eqz v13, :cond_3

    .line 2749
    const-string v22, " last="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2753
    .end local v13    # "key":Ljava/lang/String;
    :sswitch_6
    const-string v22, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2754
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2755
    const-string v22, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2756
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2757
    const-string v22, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2758
    const-string v22, " nid="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2759
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    .line 2760
    .local v7, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v7, :cond_18

    .line 2761
    const-string v22, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2763
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->printTime()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wifi/WifiConfigStore;->getLastSelectedConfiguration()Ljava/lang/String;

    move-result-object v13

    .line 2765
    .restart local v13    # "key":Ljava/lang/String;
    if-eqz v13, :cond_3

    .line 2766
    const-string v22, " last="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2771
    .end local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v13    # "key":Ljava/lang/String;
    :sswitch_7
    const-string v22, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2772
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2773
    const-string v22, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2774
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2775
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    if-eqz v22, :cond_19

    .line 2776
    const-string v22, " BSSID="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2778
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1a

    .line 2779
    const-string v22, " Target="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2781
    :cond_1a
    const-string v22, " roam="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mAutoRoaming:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2782
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->printTime()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2785
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1b

    .line 2786
    const-string v22, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2788
    :cond_1b
    const-string v22, " nid="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2789
    const-string v22, " reason="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1c

    .line 2791
    const-string v22, " lastbssid="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2793
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v22

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_1d

    .line 2794
    const-string v22, " freq="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2795
    const-string v22, " rssi="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2797
    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1e

    .line 2798
    const-string v22, " debounce"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2800
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->printTime()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2804
    :sswitch_9
    const-string v22, " nid="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2805
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1f

    .line 2806
    const-string v22, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2808
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    .line 2809
    .restart local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v7, :cond_24

    .line 2810
    const-string v22, " cur="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2811
    const-string v22, " ajst="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget v0, v7, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2812
    iget-boolean v0, v7, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    move/from16 v22, v0

    if-eqz v22, :cond_20

    .line 2813
    const-string v22, " selfAdded"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2815
    :cond_20
    iget v0, v7, Landroid/net/wifi/WifiConfiguration;->status:I

    move/from16 v22, v0

    if-eqz v22, :cond_21

    .line 2816
    const-string v22, " st="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget v0, v7, Landroid/net/wifi/WifiConfiguration;->status:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2817
    const-string v22, " rs="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget v0, v7, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2819
    :cond_21
    iget-wide v0, v7, Landroid/net/wifi/WifiConfiguration;->lastConnected:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-eqz v22, :cond_22

    .line 2820
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 2821
    .restart local v14    # "now":Ljava/lang/Long;
    const-string v22, " lastconn="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    iget-wide v0, v7, Landroid/net/wifi/WifiConfiguration;->lastConnected:J

    move-wide/from16 v26, v0

    sub-long v24, v24, v26

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "(ms)"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2823
    .end local v14    # "now":Ljava/lang/Long;
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_23

    .line 2824
    const-string v22, " lastbssid="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2826
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v22

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_24

    .line 2827
    const-string v22, " freq="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2828
    const-string v22, " rssi="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2829
    const-string v22, " bssid="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2832
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->printTime()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2837
    .end local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    :sswitch_a
    const-string v22, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2838
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2839
    const-string v22, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2840
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_25

    .line 2842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_25

    .line 2843
    const-string v22, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2844
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_26

    .line 2845
    const-string v22, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2846
    :cond_26
    const-string v22, " rssi="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2847
    const-string v22, " f="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2848
    const-string v22, " sc="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/net/wifi/WifiInfo;->score:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2849
    const-string v22, " link="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2850
    const-string v22, " tx=%.1f,"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2851
    const-string v22, " %.1f,"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2852
    const-string v22, " %.1f "

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2853
    const-string v22, " rx=%.1f"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2854
    const-string v22, " bcn=%d"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mRunningBeaconCount:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2855
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->reportOnTime()Ljava/lang/String;

    move-result-object v16

    .line 2856
    .restart local v16    # "report":Ljava/lang/String;
    if-eqz v16, :cond_27

    .line 2857
    const-string v22, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2859
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->wifiScoringReport:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3

    .line 2860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->wifiScoringReport:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2865
    .end local v16    # "report":Ljava/lang/String;
    :sswitch_b
    const-string v22, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2866
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2867
    const-string v22, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2868
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2869
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/wifi/WifiConfiguration;

    .line 2870
    .restart local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v7, :cond_28

    .line 2871
    const-string v22, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2872
    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    move-object/from16 v22, v0

    if-eqz v22, :cond_28

    .line 2873
    const-string v22, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiConfiguration$Visibility;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2876
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_29

    .line 2877
    const-string v22, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2879
    :cond_29
    const-string v22, " roam="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mAutoRoaming:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2880
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->printTime()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2881
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    .line 2882
    if-eqz v7, :cond_3

    .line 2883
    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2884
    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3

    .line 2885
    const-string v22, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiConfiguration$Visibility;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2890
    .end local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    :sswitch_c
    const-string v22, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2891
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2892
    const-string v22, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2893
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2894
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/net/wifi/ScanResult;

    .line 2895
    .local v18, "result":Landroid/net/wifi/ScanResult;
    if-eqz v18, :cond_2a

    .line 2896
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 2897
    .restart local v14    # "now":Ljava/lang/Long;
    const-string v22, " bssid="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2898
    const-string v22, " rssi="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2899
    const-string v22, " freq="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2900
    move-object/from16 v0, v18

    iget-wide v0, v0, Landroid/net/wifi/ScanResult;->seen:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-lez v22, :cond_2c

    move-object/from16 v0, v18

    iget-wide v0, v0, Landroid/net/wifi/ScanResult;->seen:J

    move-wide/from16 v22, v0

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    cmp-long v22, v22, v24

    if-gez v22, :cond_2c

    .line 2901
    const-string v22, " seen="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    move-object/from16 v0, v18

    iget-wide v0, v0, Landroid/net/wifi/ScanResult;->seen:J

    move-wide/from16 v26, v0

    sub-long v24, v24, v26

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2907
    .end local v14    # "now":Ljava/lang/Long;
    :cond_2a
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2b

    .line 2908
    const-string v22, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2910
    :cond_2b
    const-string v22, " roam="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mAutoRoaming:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2911
    const-string v22, " fail count="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mRoamFailCount:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2912
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->printTime()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2904
    .restart local v14    # "now":Ljava/lang/Long;
    :cond_2c
    const-string v22, " !seen="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v18

    iget-wide v0, v0, Landroid/net/wifi/ScanResult;->seen:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2915
    .end local v14    # "now":Ljava/lang/Long;
    .end local v18    # "result":Landroid/net/wifi/ScanResult;
    :sswitch_d
    const-string v22, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2916
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2917
    const-string v22, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2918
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2919
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3

    .line 2920
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/wifi/WifiConfiguration;

    .line 2921
    .restart local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    const-string v22, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2922
    const-string v22, " prio="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget v0, v7, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2923
    const-string v22, " status="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget v0, v7, Landroid/net/wifi/WifiConfiguration;->status:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2924
    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2d

    .line 2925
    const-string v22, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2927
    :cond_2d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    .line 2928
    .local v9, "curConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v9, :cond_3

    .line 2929
    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v22

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2e

    .line 2930
    const-string v22, " is current"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2932
    :cond_2e
    const-string v22, " current="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2933
    const-string v22, " prio="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget v0, v9, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2934
    const-string v22, " status="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget v0, v9, Landroid/net/wifi/WifiConfiguration;->status:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2941
    .end local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v9    # "curConfig":Landroid/net/wifi/WifiConfiguration;
    :sswitch_e
    const-string v22, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2942
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2943
    const-string v22, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2944
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wifi/WifiConfigStore;->getLastSelectedConfiguration()Ljava/lang/String;

    move-result-object v13

    .line 2946
    .restart local v13    # "key":Ljava/lang/String;
    if-eqz v13, :cond_2f

    .line 2947
    const-string v22, " last="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2949
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    .line 2950
    .restart local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v7, :cond_3

    if-eqz v13, :cond_30

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_3

    .line 2951
    :cond_30
    const-string v22, " target="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2955
    .end local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v13    # "key":Ljava/lang/String;
    :sswitch_f
    const-string v22, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2956
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2957
    const-string v22, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2958
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2959
    const-string v22, " num="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworksSize()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2962
    :sswitch_10
    const-string v22, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2963
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2964
    const-string v22, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2965
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2966
    const-string v22, " txpkts="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2967
    const-string v22, ","

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txBad:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2968
    const-string v22, ","

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txRetries:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2971
    :sswitch_11
    const-string v22, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2972
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2973
    const-string v22, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2974
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2975
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_37

    .line 2976
    const-string v22, " OK "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2980
    :cond_31
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3

    .line 2981
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result v22

    if-eqz v22, :cond_32

    .line 2982
    const-string v22, " v4"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2984
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/net/LinkProperties;->hasGlobalIPv6Address()Z

    move-result v22

    if-eqz v22, :cond_33

    .line 2985
    const-string v22, " v6"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2987
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/net/LinkProperties;->hasIPv4DefaultRoute()Z

    move-result v22

    if-eqz v22, :cond_34

    .line 2988
    const-string v22, " v4r"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2990
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/net/LinkProperties;->hasIPv6DefaultRoute()Z

    move-result v22

    if-eqz v22, :cond_35

    .line 2991
    const-string v22, " v6r"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2993
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/net/LinkProperties;->hasIPv4DnsServer()Z

    move-result v22

    if-eqz v22, :cond_36

    .line 2994
    const-string v22, " v4dns"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2996
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/net/LinkProperties;->hasIPv6DnsServer()Z

    move-result v22

    if-eqz v22, :cond_3

    .line 2997
    const-string v22, " v6dns"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2977
    :cond_37
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_31

    .line 2978
    const-string v22, " FAIL "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 3002
    :sswitch_12
    const-string v22, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3003
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3004
    const-string v22, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3005
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3006
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3

    .line 3007
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/net/NetworkInfo;

    .line 3008
    .local v12, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v20

    .line 3009
    .local v20, "state":Landroid/net/NetworkInfo$State;
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v10

    .line 3010
    .local v10, "detailedState":Landroid/net/NetworkInfo$DetailedState;
    if-eqz v20, :cond_38

    .line 3011
    const-string v22, " st="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3013
    :cond_38
    if-eqz v10, :cond_3

    .line 3014
    const-string v22, "/"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3019
    .end local v10    # "detailedState":Landroid/net/NetworkInfo$DetailedState;
    .end local v12    # "info":Landroid/net/NetworkInfo;
    .end local v20    # "state":Landroid/net/NetworkInfo$State;
    :sswitch_13
    const/4 v8, -0x1

    .line 3020
    .local v8, "count":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    .line 3021
    .local v6, "c":Landroid/net/wifi/WifiConfiguration;
    if-eqz v6, :cond_39

    iget v8, v6, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    .line 3022
    :cond_39
    const-string v22, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3023
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3024
    const-string v22, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3025
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3026
    const-string v22, " failures: "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3027
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3028
    const-string v22, "/"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3029
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wifi/WifiConfigStore;->getMaxDhcpRetries()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_3a

    .line 3031
    const-string v22, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3033
    :cond_3a
    if-eqz v6, :cond_3d

    .line 3034
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3c

    .line 3035
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_3b
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_3c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/wifi/ScanResult;

    .line 3036
    .local v15, "r":Landroid/net/wifi/ScanResult;
    iget-object v0, v15, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3b

    .line 3037
    const-string v22, " ipfail="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget v0, v15, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3038
    const-string v22, ",st="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget v0, v15, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 3042
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v15    # "r":Landroid/net/wifi/ScanResult;
    :cond_3c
    const-string v22, " -> ajst="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget v0, v6, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3043
    const-string v22, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget v0, v6, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3044
    const-string v22, " txpkts="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3045
    const-string v22, ","

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txBad:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3046
    const-string v22, ","

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txRetries:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3048
    :cond_3d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->printTime()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3049
    const-string v22, " bcn=%d"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mRunningBeaconCount:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3052
    .end local v6    # "c":Landroid/net/wifi/WifiConfiguration;
    .end local v8    # "count":I
    :sswitch_14
    const-string v22, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3053
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3054
    const-string v22, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3055
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3

    .line 3057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result v22

    if-eqz v22, :cond_3e

    .line 3058
    const-string v22, " v4"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3060
    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/net/LinkProperties;->hasGlobalIPv6Address()Z

    move-result v22

    if-eqz v22, :cond_3f

    .line 3061
    const-string v22, " v6"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3063
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/net/LinkProperties;->hasIPv4DefaultRoute()Z

    move-result v22

    if-eqz v22, :cond_40

    .line 3064
    const-string v22, " v4r"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3066
    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/net/LinkProperties;->hasIPv6DefaultRoute()Z

    move-result v22

    if-eqz v22, :cond_41

    .line 3067
    const-string v22, " v6r"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3069
    :cond_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/net/LinkProperties;->hasIPv4DnsServer()Z

    move-result v22

    if-eqz v22, :cond_42

    .line 3070
    const-string v22, " v4dns"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3072
    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/net/LinkProperties;->hasIPv6DnsServer()Z

    move-result v22

    if-eqz v22, :cond_3

    .line 3073
    const-string v22, " v6dns"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3078
    :sswitch_15
    const-string v22, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3079
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3080
    const-string v22, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3081
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3082
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3

    .line 3083
    const-string v22, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3087
    :sswitch_16
    const-string v22, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3088
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3089
    const-string v22, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3090
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3091
    const-string v22, " cur="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->roamWatchdogCount:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3094
    :sswitch_17
    const-string v22, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3095
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3096
    const-string v22, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3097
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3098
    const-string v22, " cur="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->disconnectingWatchdogCount:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2600
    :sswitch_data_0
    .sparse-switch
        0x20034 -> :sswitch_d
        0x20036 -> :sswitch_e
        0x2003b -> :sswitch_f
        0x20047 -> :sswitch_0
        0x20050 -> :sswitch_15
        0x20053 -> :sswitch_a
        0x2005e -> :sswitch_16
        0x20060 -> :sswitch_17
        0x2008b -> :sswitch_13
        0x2008c -> :sswitch_14
        0x2008d -> :sswitch_7
        0x2008f -> :sswitch_b
        0x20090 -> :sswitch_a
        0x20091 -> :sswitch_c
        0x20092 -> :sswitch_2
        0x20093 -> :sswitch_7
        0x2300b -> :sswitch_12
        0x24003 -> :sswitch_6
        0x24004 -> :sswitch_8
        0x24005 -> :sswitch_5
        0x24006 -> :sswitch_1
        0x2400d -> :sswitch_9
        0x2400e -> :sswitch_9
        0x2402b -> :sswitch_4
        0x25001 -> :sswitch_b
        0x25004 -> :sswitch_3
        0x25007 -> :sswitch_2
        0x25011 -> :sswitch_e
        0x25014 -> :sswitch_a
        0x30004 -> :sswitch_10
        0x30005 -> :sswitch_11
    .end sparse-switch
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 1324
    new-instance v0, Landroid/os/Messenger;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method getPrivateBroadcast(Ljava/lang/String;I)Landroid/app/PendingIntent;
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "requestCode"    # I

    .prologue
    .line 1166
    new-instance v0, Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1167
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1168
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1169
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, p2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public getRxPacketRate()D
    .locals 2

    .prologue
    .line 4064
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_0

    .line 4065
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    .line 4067
    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_0
.end method

.method public getScanResultsListNoCopyUnsync()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2188
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    return-object v0
.end method

.method public getTxPacketRate()D
    .locals 2

    .prologue
    .line 4057
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_0

    .line 4058
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    .line 4060
    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_0
.end method

.method getVerboseLoggingLevel()I
    .locals 1

    .prologue
    .line 1175
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingLevel:I

    return v0
.end method

.method getWifiLinkLayerStats(Z)Landroid/net/wifi/WifiLinkLayerStats;
    .locals 8
    .param p1, "dbg"    # Z

    .prologue
    .line 1803
    const/4 v5, 0x0

    .line 1804
    .local v5, "stats":Landroid/net/wifi/WifiLinkLayerStats;
    iget v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiLinkLayerStatsSupported:I

    if-lez v6, :cond_0

    .line 1805
    const-string v4, "wlan0"

    .line 1806
    .local v4, "name":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-static {v4}, Lcom/android/server/wifi/WifiNative;->getWifiLinkLayerStats(Ljava/lang/String;)Landroid/net/wifi/WifiLinkLayerStats;

    move-result-object v5

    .line 1807
    if-eqz v4, :cond_2

    if-nez v5, :cond_2

    iget v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiLinkLayerStatsSupported:I

    if-lez v6, :cond_2

    .line 1808
    iget v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiLinkLayerStatsSupported:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiLinkLayerStatsSupported:I

    .line 1820
    .end local v4    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    iget v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiLinkLayerStatsSupported:I

    if-gtz v6, :cond_3

    .line 1821
    :cond_1
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v2

    .line 1822
    .local v2, "mTxPkts":J
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v0

    .line 1823
    .local v0, "mRxPkts":J
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v6, v2, v3, v0, v1}, Landroid/net/wifi/WifiInfo;->updatePacketRates(JJ)V

    .line 1827
    .end local v0    # "mRxPkts":J
    .end local v2    # "mTxPkts":J
    :goto_1
    return-object v5

    .line 1809
    .restart local v4    # "name":Ljava/lang/String;
    :cond_2
    if-eqz v5, :cond_0

    .line 1810
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/wifi/WifiStateMachine;->lastLinkLayerStatsUpdate:J

    .line 1811
    iget v6, v5, Landroid/net/wifi/WifiLinkLayerStats;->on_time:I

    iput v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTime:I

    .line 1812
    iget v6, v5, Landroid/net/wifi/WifiLinkLayerStats;->tx_time:I

    iput v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mTxTime:I

    .line 1813
    iget v6, v5, Landroid/net/wifi/WifiLinkLayerStats;->rx_time:I

    iput v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mRxTime:I

    .line 1814
    iget v6, v5, Landroid/net/wifi/WifiLinkLayerStats;->beacon_rx:I

    iput v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mRunningBeaconCount:I

    .line 1815
    if-eqz p1, :cond_0

    .line 1816
    invoke-virtual {v5}, Landroid/net/wifi/WifiLinkLayerStats;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1825
    .end local v4    # "name":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v6, v5}, Landroid/net/wifi/WifiInfo;->updatePacketRates(Landroid/net/wifi/WifiLinkLayerStats;)V

    goto :goto_1
.end method

.method public getWifiMonitor()Lcom/android/server/wifi/WifiMonitor;
    .locals 1

    .prologue
    .line 1328
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    return-object v0
.end method

.method handle3GAuthRequest(Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;)V
    .locals 0
    .param p1, "requestData"    # Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;

    .prologue
    .line 9118
    return-void
.end method

.method handleGsmAuthRequest(Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;)V
    .locals 22
    .param p1, "requestData"    # Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;

    .prologue
    .line 9057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->networkId:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 9059
    :cond_0
    const-string v20, "id matches targetWifiConfiguration"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 9065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "phone"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/telephony/TelephonyManager;

    .line 9068
    .local v18, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v18, :cond_4

    .line 9069
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 9070
    .local v15, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->challenges:[Ljava/lang/String;

    .local v3, "arr$":[Ljava/lang/String;
    array-length v11, v3

    .local v11, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v11, :cond_3

    aget-object v5, v3, v7

    .line 9072
    .local v5, "challenge":Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "RAND = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 9074
    const/4 v12, 0x0

    .line 9076
    .local v12, "rand":[B
    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/wifi/WifiStateMachine;->parseHex(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 9082
    const/16 v20, 0x2

    move/from16 v0, v20

    invoke-static {v12, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    .line 9088
    .local v4, "base64Challenge":Ljava/lang/String;
    const/4 v2, 0x2

    .line 9089
    .local v2, "appType":I
    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Landroid/telephony/TelephonyManager;->getIccSimChallengeResponse(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 9090
    .local v19, "tmResponse":Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Raw Response - "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logv(Ljava/lang/String;)V

    .line 9092
    if-eqz v19, :cond_2

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_2

    .line 9093
    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v14

    .line 9095
    .local v14, "result":[B
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Hex Response -"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {v14}, Lcom/android/server/wifi/WifiStateMachine;->makeHex([B)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logv(Ljava/lang/String;)V

    .line 9096
    const/16 v20, 0x0

    aget-byte v17, v14, v20

    .line 9097
    .local v17, "sres_len":I
    const/16 v20, 0x1

    move/from16 v0, v20

    move/from16 v1, v17

    invoke-static {v14, v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->makeHex([BII)Ljava/lang/String;

    move-result-object v16

    .line 9098
    .local v16, "sres":Ljava/lang/String;
    add-int/lit8 v10, v17, 0x1

    .line 9099
    .local v10, "kc_offset":I
    aget-byte v9, v14, v10

    .line 9100
    .local v9, "kc_len":I
    add-int/lit8 v20, v10, 0x1

    move/from16 v0, v20

    invoke-static {v14, v0, v9}, Lcom/android/server/wifi/WifiStateMachine;->makeHex([BII)Ljava/lang/String;

    move-result-object v8

    .line 9101
    .local v8, "kc":Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, ":"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ":"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9102
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "kc:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " sres:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logv(Ljava/lang/String;)V

    .line 9070
    .end local v2    # "appType":I
    .end local v4    # "base64Challenge":Ljava/lang/String;
    .end local v8    # "kc":Ljava/lang/String;
    .end local v9    # "kc_len":I
    .end local v10    # "kc_offset":I
    .end local v14    # "result":[B
    .end local v16    # "sres":Ljava/lang/String;
    .end local v17    # "sres_len":I
    .end local v19    # "tmResponse":Ljava/lang/String;
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 9061
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v5    # "challenge":Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v11    # "len$":I
    .end local v12    # "rand":[B
    .end local v15    # "sb":Ljava/lang/StringBuilder;
    .end local v18    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    const-string v20, "id does not match targetWifiConfiguration"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 9114
    :goto_2
    return-void

    .line 9077
    .restart local v3    # "arr$":[Ljava/lang/String;
    .restart local v5    # "challenge":Ljava/lang/String;
    .restart local v7    # "i$":I
    .restart local v11    # "len$":I
    .restart local v12    # "rand":[B
    .restart local v15    # "sb":Ljava/lang/StringBuilder;
    .restart local v18    # "tm":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v6

    .line 9078
    .local v6, "e":Ljava/lang/NumberFormatException;
    const-string v20, "malformed challenge"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 9104
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .restart local v2    # "appType":I
    .restart local v4    # "base64Challenge":Ljava/lang/String;
    .restart local v19    # "tmResponse":Ljava/lang/String;
    :cond_2
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "bad response - "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 9108
    .end local v2    # "appType":I
    .end local v4    # "base64Challenge":Ljava/lang/String;
    .end local v5    # "challenge":Ljava/lang/String;
    .end local v12    # "rand":[B
    .end local v19    # "tmResponse":Ljava/lang/String;
    :cond_3
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 9109
    .local v13, "response":Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Supplicant Response -"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logv(Ljava/lang/String;)V

    .line 9110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->networkId:I

    move/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Lcom/android/server/wifi/WifiNative;->simAuthResponse(ILjava/lang/String;)Z

    goto :goto_2

    .line 9112
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v11    # "len$":I
    .end local v13    # "response":Ljava/lang/String;
    .end local v15    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    const-string v20, "could not get telephony manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_2
.end method

.method handlePostDhcpSetup()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 4621
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x2300f

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 4624
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->setBluetoothCoexistenceMode(I)Z

    .line 4628
    invoke-direct {p0, v2, v2}, Lcom/android/server/wifi/WifiStateMachine;->setSuspendOptimizationsNative(IZ)V

    .line 4629
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiNative;->setPowerSave(Z)V

    .line 4631
    iput-boolean v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpActive:Z

    .line 4633
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->startBatchedScan()V

    .line 4634
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->restartScan()V

    .line 4635
    return-void
.end method

.method handlePreDhcpSetup()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 4562
    iput-boolean v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpActive:Z

    .line 4568
    invoke-direct {p0, v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->setSuspendOptimizationsNative(IZ)V

    .line 4569
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiNative;->setPowerSave(Z)V

    .line 4571
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v1, v3}, Lcom/android/server/wifi/WifiNative;->setBluetoothCoexistenceMode(I)Z

    .line 4574
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->stopBatchedScan()V

    .line 4575
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->pauseScan()V

    .line 4578
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiStateMachine;->getWifiLinkLayerStats(Z)Landroid/net/wifi/WifiLinkLayerStats;

    .line 4581
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 4582
    .local v0, "msg":Landroid/os/Message;
    const v1, 0x2300f

    iput v1, v0, Landroid/os/Message;->what:I

    .line 4583
    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 4584
    const v1, 0x30007

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 4585
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4586
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 4587
    return-void
.end method

.method isRoaming()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 390
    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mAutoRoaming:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mAutoRoaming:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return-void
.end method

.method maybeRegisterNetworkFactory()V
    .locals 6

    .prologue
    .line 4862
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;

    if-nez v0, :cond_0

    .line 4863
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->checkAndSetConnectivityInstance()V

    .line 4864
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    .line 4865
    new-instance v0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string v4, "WIFI"

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;-><init>(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkCapabilities;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;

    .line 4867
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;->setScoreFilter(I)V

    .line 4868
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;->register()V

    .line 4872
    new-instance v0, Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string v4, "WIFI_UT"

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;-><init>(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkCapabilities;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mUntrustedNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;

    .line 4874
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mUntrustedNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;->setScoreFilter(I)V

    .line 4875
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mUntrustedNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;->register()V

    .line 4878
    :cond_0
    return-void
.end method

.method noteWifiDisabledWhileAssociated()V
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 6455
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v5

    .line 6456
    .local v5, "rssi":I
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 6457
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;

    if-ne v7, v8, :cond_6

    const/16 v7, -0x7f

    if-eq v5, v7, :cond_6

    if-eqz v0, :cond_6

    .line 6460
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->is24GHz()Z

    move-result v1

    .line 6461
    .local v1, "is24GHz":Z
    if-eqz v1, :cond_0

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v7, v7, Lcom/android/server/wifi/WifiConfigStore;->thresholdBadRssi24:I

    if-lt v5, v7, :cond_1

    :cond_0
    if-nez v1, :cond_7

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v7, v7, Lcom/android/server/wifi/WifiConfigStore;->thresholdBadRssi5:I

    if-ge v5, v7, :cond_7

    :cond_1
    move v2, v3

    .line 6463
    .local v2, "isBadRSSI":Z
    :goto_0
    if-eqz v1, :cond_2

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v7, v7, Lcom/android/server/wifi/WifiConfigStore;->thresholdLowRssi24:I

    if-lt v5, v7, :cond_3

    :cond_2
    if-nez v1, :cond_8

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v8, v8, Lcom/android/server/wifi/WifiConfigStore;->thresholdLowRssi5:I

    if-ge v7, v8, :cond_8

    :cond_3
    move v4, v3

    .line 6465
    .local v4, "isLowRSSI":Z
    :goto_1
    if-eqz v1, :cond_4

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v7, v7, Lcom/android/server/wifi/WifiConfigStore;->thresholdGoodRssi24:I

    if-ge v5, v7, :cond_5

    :cond_4
    if-nez v1, :cond_9

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v8, v8, Lcom/android/server/wifi/WifiConfigStore;->thresholdGoodRssi5:I

    if-lt v7, v8, :cond_9

    .line 6467
    .local v3, "isHighRSSI":Z
    :cond_5
    :goto_2
    if-eqz v2, :cond_a

    .line 6469
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    .line 6478
    .end local v1    # "is24GHz":Z
    .end local v2    # "isBadRSSI":Z
    .end local v3    # "isHighRSSI":Z
    .end local v4    # "isLowRSSI":Z
    :cond_6
    :goto_3
    return-void

    .restart local v1    # "is24GHz":Z
    :cond_7
    move v2, v6

    .line 6461
    goto :goto_0

    .restart local v2    # "isBadRSSI":Z
    :cond_8
    move v4, v6

    .line 6463
    goto :goto_1

    .restart local v4    # "isLowRSSI":Z
    :cond_9
    move v3, v6

    .line 6465
    goto :goto_2

    .line 6470
    .restart local v3    # "isHighRSSI":Z
    :cond_a
    if-eqz v4, :cond_b

    .line 6472
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableBadRSSI:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableBadRSSI:I

    goto :goto_3

    .line 6473
    :cond_b
    if-nez v3, :cond_6

    .line 6475
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    goto :goto_3
.end method

.method printTime()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2573
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, " rt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2574
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2575
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public readNetworkVariablesFromSupplicantFile(Ljava/lang/String;)Landroid/net/wifi/WifiShareInfo;
    .locals 1
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 9213
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkVariablesFromSupplicantFile2(Ljava/lang/String;)Landroid/net/wifi/WifiShareInfo;

    move-result-object v0

    return-object v0
.end method

.method public reassociateCommand()V
    .locals 1

    .prologue
    .line 2213
    const v0, 0x2004b

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2214
    return-void
.end method

.method public reconnectCommand()V
    .locals 1

    .prologue
    .line 2206
    const v0, 0x2004a

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2207
    return-void
.end method

.method registerConnected()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 6419
    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 6420
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 6423
    .local v2, "now_ms":J
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 6424
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 6425
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Landroid/net/wifi/WifiConfiguration;->lastConnected:J

    .line 6426
    iput-boolean v6, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinBailedDueToLowRssi:Z

    .line 6427
    invoke-virtual {v0, v6}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    .line 6428
    iput v6, v0, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    .line 6429
    iput v6, v0, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    .line 6430
    iput v6, v0, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    .line 6431
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    .line 6433
    :cond_0
    iput v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mBadLinkspeedcount:I

    .line 6435
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "now_ms":J
    :cond_1
    return-void
.end method

.method registerDisconnected()V
    .locals 6

    .prologue
    .line 6438
    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 6439
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 6442
    .local v2, "now_ms":J
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 6443
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 6444
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Landroid/net/wifi/WifiConfiguration;->lastDisconnected:J

    .line 6445
    iget-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v1, :cond_0

    .line 6447
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiConfigStore;->forgetNetwork(I)Z

    .line 6451
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "now_ms":J
    :cond_0
    return-void
.end method

.method public reloadTlsNetworksAndReconnect()V
    .locals 1

    .prologue
    .line 2221
    const v0, 0x2008e

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2222
    return-void
.end method

.method renewDhcp()V
    .locals 2

    .prologue
    .line 4602
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    if-nez v0, :cond_0

    .line 4603
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-static {v0, p0, v1}, Landroid/net/DhcpStateMachine;->makeDhcpStateMachine(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Ljava/lang/String;)Landroid/net/DhcpStateMachine;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    .line 4607
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    invoke-virtual {v0}, Landroid/net/DhcpStateMachine;->registerForPreDhcpNotification()V

    .line 4608
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    const v1, 0x30003

    invoke-virtual {v0, v1}, Landroid/net/DhcpStateMachine;->sendMessage(I)V

    .line 4609
    return-void
.end method

.method reportOnTime()Ljava/lang/String;
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1783
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1784
    .local v0, "now":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1786
    .local v5, "sb":Ljava/lang/StringBuilder;
    iget v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTime:I

    iget v8, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTimeLastReport:I

    sub-int v2, v7, v8

    .line 1787
    .local v2, "on":I
    iget v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTime:I

    iput v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTimeLastReport:I

    .line 1788
    iget v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mTxTime:I

    iget v8, p0, Lcom/android/server/wifi/WifiStateMachine;->mTxTimeLastReport:I

    sub-int v6, v7, v8

    .line 1789
    .local v6, "tx":I
    iget v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mTxTime:I

    iput v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mTxTimeLastReport:I

    .line 1790
    iget v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mRxTime:I

    iget v8, p0, Lcom/android/server/wifi/WifiStateMachine;->mRxTimeLastReport:I

    sub-int v4, v7, v8

    .line 1791
    .local v4, "rx":I
    iget v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mRxTime:I

    iput v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mRxTimeLastReport:I

    .line 1792
    iget-wide v8, p0, Lcom/android/server/wifi/WifiStateMachine;->lastOntimeReportTimeStamp:J

    sub-long v8, v0, v8

    long-to-int v3, v8

    .line 1793
    .local v3, "period":I
    iput-wide v0, p0, Lcom/android/server/wifi/WifiStateMachine;->lastOntimeReportTimeStamp:J

    .line 1794
    const-string v7, "[on:%d tx:%d rx:%d period:%d]"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v13

    const/4 v9, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1796
    iget v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTime:I

    iget v8, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTimeScreenStateChange:I

    sub-int v2, v7, v8

    .line 1797
    iget-wide v8, p0, Lcom/android/server/wifi/WifiStateMachine;->lastScreenStateChangeTimeStamp:J

    sub-long v8, v0, v8

    long-to-int v3, v8

    .line 1798
    const-string v7, " from screen [on:%d period:%d]"

    new-array v8, v13, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1799
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public requestBatchedScanPoll()V
    .locals 1

    .prologue
    .line 1419
    const v0, 0x20089

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 1420
    return-void
.end method

.method public sendBluetoothAdapterStateChange(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 2478
    const v0, 0x2001f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(III)V

    .line 2479
    return-void
.end method

.method public setAllowScansWithTraffic(I)V
    .locals 1
    .param p1, "enabled"    # I

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iput p1, v0, Lcom/android/server/wifi/WifiConfigStore;->alwaysEnableScansWhileAssociated:I

    .line 1213
    return-void
.end method

.method public setBatchedScanSettings(Landroid/net/wifi/BatchedScanSettings;IILandroid/os/WorkSource;)V
    .locals 2
    .param p1, "settings"    # Landroid/net/wifi/BatchedScanSettings;
    .param p2, "callingUid"    # I
    .param p3, "csph"    # I
    .param p4, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 1401
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1402
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "batched_settings"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1403
    const-string v1, "batched_worksource"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1404
    const v1, 0x20087

    invoke-virtual {p0, v1, p2, p3, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 1405
    return-void
.end method

.method public setCountryCode(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "countryCode"    # Ljava/lang/String;
    .param p2, "persist"    # Z

    .prologue
    .line 2430
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mCountryCodeSequence:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 2431
    .local v0, "countryCodeSequence":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2432
    const-string v1, "Ignoring resetting of country code"

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 2436
    :goto_0
    return-void

    .line 2434
    :cond_0
    const v2, 0x20050

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setDriverStart(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 2148
    if-eqz p1, :cond_0

    .line 2149
    const v0, 0x2000d

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2153
    :goto_0
    return-void

    .line 2151
    :cond_0
    const v0, 0x2000e

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.method public setFrequencyBand(IZ)V
    .locals 2
    .param p1, "band"    # I
    .param p2, "persist"    # Z

    .prologue
    .line 2444
    if-eqz p2, :cond_0

    .line 2445
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_frequency_band"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2449
    :cond_0
    const v0, 0x2005a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(III)V

    .line 2450
    return-void
.end method

.method public setHighPerfModeEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 2417
    const v2, 0x2004d

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(III)V

    .line 2418
    return-void

    :cond_0
    move v0, v1

    .line 2417
    goto :goto_0
.end method

.method public setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V
    .locals 1
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "enable"    # Z

    .prologue
    .line 2057
    if-eqz p2, :cond_0

    .line 2058
    const v0, 0x20015

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2062
    :goto_0
    return-void

    .line 2060
    :cond_0
    const v0, 0x20018

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.method public setOperationalMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 2159
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setting operational mode to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 2160
    :cond_0
    const v0, 0x20048

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(III)V

    .line 2161
    return-void
.end method

.method public setSupplicantRunning(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 2044
    if-eqz p1, :cond_0

    .line 2045
    const-string v0, "WifiStateMachine"

    const-string v1, "Wlan: enable..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2046
    const v0, 0x2000b

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2051
    :goto_0
    return-void

    .line 2048
    :cond_0
    const-string v0, "WifiStateMachine"

    const-string v1, "Wlan: disable..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2049
    const v0, 0x2000c

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.method public setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 2065
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x20019

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(ILjava/lang/Object;)V

    .line 2066
    return-void
.end method

.method shouldSwitchNetwork(I)Z
    .locals 8
    .param p1, "networkDelta"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3763
    if-gtz p1, :cond_1

    .line 3795
    :cond_0
    :goto_0
    return v1

    .line 3766
    :cond_1
    move v0, p1

    .line 3767
    .local v0, "delta":I
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v3, :cond_7

    .line 3768
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-boolean v3, v3, Lcom/android/server/wifi/WifiConfigStore;->enableAutoJoinWhenAssociated:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 3772
    const/16 v0, -0x3e8

    .line 3792
    :goto_1
    if-lez v0, :cond_0

    move v1, v2

    .line 3793
    goto :goto_0

    .line 3778
    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-wide v4, v3, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    cmpl-double v3, v4, v6

    if-gtz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-wide v4, v3, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    const-wide/high16 v6, 0x4054000000000000L    # 80.0

    cmpl-double v3, v4, v6

    if-lez v3, :cond_5

    .line 3779
    :cond_3
    add-int/lit16 v0, v0, -0x3e7

    .line 3783
    :cond_4
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WifiStateMachine shouldSwitchNetwork  txSuccessRate="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%.2f"

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-wide v6, v6, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " rxSuccessRate="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%.2f"

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-wide v6, v6, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " delta "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 3780
    :cond_5
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-wide v4, v3, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    cmpl-double v3, v4, v6

    if-gtz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-wide v4, v3, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    cmpl-double v3, v4, v6

    if-lez v3, :cond_4

    .line 3781
    :cond_6
    add-int/lit8 v0, v0, -0x6

    goto :goto_2

    .line 3789
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WifiStateMachine shouldSwitchNetwork  delta "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method smToString(I)Ljava/lang/String;
    .locals 3
    .param p1, "what"    # I

    .prologue
    .line 6085
    const-string v0, "unknown"

    .line 6086
    .local v0, "s":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 6412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "what:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6415
    :goto_0
    return-object v0

    .line 6088
    :sswitch_0
    const-string v0, "DRIVER_HUNG_EVENT"

    .line 6089
    goto :goto_0

    .line 6091
    :sswitch_1
    const-string v0, "AsyncChannel.CMD_CHANNEL_HALF_CONNECTED"

    .line 6092
    goto :goto_0

    .line 6094
    :sswitch_2
    const-string v0, "AsyncChannel.CMD_CHANNEL_DISCONNECTED"

    .line 6095
    goto :goto_0

    .line 6097
    :sswitch_3
    const-string v0, "CMD_SET_FREQUENCY_BAND"

    .line 6098
    goto :goto_0

    .line 6100
    :sswitch_4
    const-string v0, "CMD_DELAYED_NETWORK_DISCONNECT"

    .line 6101
    goto :goto_0

    .line 6103
    :sswitch_5
    const-string v0, "CMD_TEST_NETWORK_DISCONNECT"

    .line 6104
    goto :goto_0

    .line 6106
    :sswitch_6
    const-string v0, "CMD_OBTAINING_IP_ADDRESS_WATCHDOG_TIMER"

    .line 6107
    goto :goto_0

    .line 6109
    :sswitch_7
    const-string v0, "CMD_DISABLE_EPHEMERAL_NETWORK"

    .line 6110
    goto :goto_0

    .line 6112
    :sswitch_8
    const-string v0, "CMD_START_DRIVER"

    .line 6113
    goto :goto_0

    .line 6115
    :sswitch_9
    const-string v0, "CMD_STOP_DRIVER"

    .line 6116
    goto :goto_0

    .line 6118
    :sswitch_a
    const-string v0, "CMD_STOP_SUPPLICANT"

    .line 6119
    goto :goto_0

    .line 6121
    :sswitch_b
    const-string v0, "CMD_STOP_SUPPLICANT_FAILED"

    .line 6122
    goto :goto_0

    .line 6124
    :sswitch_c
    const-string v0, "CMD_START_SUPPLICANT"

    .line 6125
    goto :goto_0

    .line 6127
    :sswitch_d
    const-string v0, "CMD_REQUEST_AP_CONFIG"

    .line 6128
    goto :goto_0

    .line 6130
    :sswitch_e
    const-string v0, "CMD_RESPONSE_AP_CONFIG"

    .line 6131
    goto :goto_0

    .line 6133
    :sswitch_f
    const-string v0, "CMD_TETHER_STATE_CHANGE"

    .line 6134
    goto :goto_0

    .line 6136
    :sswitch_10
    const-string v0, "CMD_TETHER_NOTIFICATION_TIMED_OUT"

    .line 6137
    goto :goto_0

    .line 6139
    :sswitch_11
    const-string v0, "CMD_BLUETOOTH_ADAPTER_STATE_CHANGE"

    .line 6140
    goto :goto_0

    .line 6142
    :sswitch_12
    const-string v0, "CMD_ADD_OR_UPDATE_NETWORK"

    .line 6143
    goto :goto_0

    .line 6145
    :sswitch_13
    const-string v0, "CMD_REMOVE_NETWORK"

    .line 6146
    goto :goto_0

    .line 6148
    :sswitch_14
    const-string v0, "CMD_ENABLE_NETWORK"

    .line 6149
    goto :goto_0

    .line 6151
    :sswitch_15
    const-string v0, "CMD_ENABLE_ALL_NETWORKS"

    .line 6152
    goto :goto_0

    .line 6154
    :sswitch_16
    const-string v0, "CMD_AUTO_CONNECT"

    .line 6155
    goto :goto_0

    .line 6157
    :sswitch_17
    const-string v0, "CMD_AUTO_ROAM"

    .line 6158
    goto :goto_0

    .line 6160
    :sswitch_18
    const-string v0, "CMD_AUTO_SAVE_NETWORK"

    .line 6161
    goto :goto_0

    .line 6163
    :sswitch_19
    const-string v0, "CMD_BOOT_COMPLETED"

    .line 6164
    goto :goto_0

    .line 6166
    :sswitch_1a
    const-string v0, "CMD_START_DHCP"

    .line 6167
    goto :goto_0

    .line 6169
    :sswitch_1b
    const-string v0, "CMD_STOP_DHCP"

    .line 6170
    goto :goto_0

    .line 6172
    :sswitch_1c
    const-string v0, "CMD_RENEW_DHCP"

    .line 6173
    goto :goto_0

    .line 6175
    :sswitch_1d
    const-string v0, "CMD_PRE_DHCP_ACTION"

    .line 6176
    goto :goto_0

    .line 6178
    :sswitch_1e
    const-string v0, "CMD_POST_DHCP_ACTION"

    .line 6179
    goto :goto_0

    .line 6181
    :sswitch_1f
    const-string v0, "CMD_PRE_DHCP_ACTION_COMPLETE"

    .line 6182
    goto :goto_0

    .line 6184
    :sswitch_20
    const-string v0, "CMD_ON_QUIT"

    .line 6185
    goto :goto_0

    .line 6187
    :sswitch_21
    const-string v0, "WifiP2pServiceImpl.DISCONNECT_WIFI_REQUEST"

    .line 6188
    goto :goto_0

    .line 6190
    :sswitch_22
    const-string v0, "WifiManager.DISABLE_NETWORK"

    .line 6191
    goto :goto_0

    .line 6193
    :sswitch_23
    const-string v0, "CMD_BLACKLIST_NETWORK"

    .line 6194
    goto :goto_0

    .line 6196
    :sswitch_24
    const-string v0, "CMD_CLEAR_BLACKLIST"

    .line 6197
    goto :goto_0

    .line 6199
    :sswitch_25
    const-string v0, "CMD_SAVE_CONFIG"

    .line 6200
    goto :goto_0

    .line 6202
    :sswitch_26
    const-string v0, "CMD_GET_CONFIGURED_NETWORKS"

    .line 6203
    goto :goto_0

    .line 6205
    :sswitch_27
    const-string v0, "CMD_GET_ADAPTORS"

    .line 6206
    goto :goto_0

    .line 6208
    :sswitch_28
    const-string v0, "CMD_UNWANTED_NETWORK"

    .line 6209
    goto :goto_0

    .line 6211
    :sswitch_29
    const-string v0, "CMD_NETWORK_STATUS"

    .line 6212
    goto :goto_0

    .line 6214
    :sswitch_2a
    const-string v0, "CMD_GET_LINK_LAYER_STATS"

    .line 6215
    goto/16 :goto_0

    .line 6217
    :sswitch_2b
    const-string v0, "CMD_GET_PRIVILEGED_CONFIGURED_NETWORKS"

    .line 6218
    goto/16 :goto_0

    .line 6220
    :sswitch_2c
    const-string v0, "CMD_DISCONNECT"

    .line 6221
    goto/16 :goto_0

    .line 6223
    :sswitch_2d
    const-string v0, "CMD_RECONNECT"

    .line 6224
    goto/16 :goto_0

    .line 6226
    :sswitch_2e
    const-string v0, "CMD_REASSOCIATE"

    .line 6227
    goto/16 :goto_0

    .line 6229
    :sswitch_2f
    const-string v0, "CMD_GET_CONNECTION_STATISTICS"

    .line 6230
    goto/16 :goto_0

    .line 6232
    :sswitch_30
    const-string v0, "CMD_SET_HIGH_PERF_MODE"

    .line 6233
    goto/16 :goto_0

    .line 6235
    :sswitch_31
    const-string v0, "CMD_SET_COUNTRY_CODE"

    .line 6236
    goto/16 :goto_0

    .line 6238
    :sswitch_32
    const-string v0, "CMD_ENABLE_RSSI_POLL"

    .line 6239
    goto/16 :goto_0

    .line 6241
    :sswitch_33
    const-string v0, "CMD_RSSI_POLL"

    .line 6242
    goto/16 :goto_0

    .line 6244
    :sswitch_34
    const-string v0, "CMD_START_PACKET_FILTERING"

    .line 6245
    goto/16 :goto_0

    .line 6247
    :sswitch_35
    const-string v0, "CMD_STOP_PACKET_FILTERING"

    .line 6248
    goto/16 :goto_0

    .line 6250
    :sswitch_36
    const-string v0, "CMD_SET_SUSPEND_OPT_ENABLED"

    .line 6251
    goto/16 :goto_0

    .line 6253
    :sswitch_37
    const-string v0, "CMD_NO_NETWORKS_PERIODIC_SCAN"

    .line 6254
    goto/16 :goto_0

    .line 6256
    :sswitch_38
    const-string v0, "CMD_SET_BATCHED_SCAN"

    .line 6257
    goto/16 :goto_0

    .line 6259
    :sswitch_39
    const-string v0, "CMD_START_NEXT_BATCHED_SCAN"

    .line 6260
    goto/16 :goto_0

    .line 6262
    :sswitch_3a
    const-string v0, "CMD_POLL_BATCHED_SCAN"

    .line 6263
    goto/16 :goto_0

    .line 6265
    :sswitch_3b
    const-string v0, "CMD_UPDATE_LINKPROPERTIES"

    .line 6266
    goto/16 :goto_0

    .line 6268
    :sswitch_3c
    const-string v0, "CMD_RELOAD_TLS_AND_RECONNECT"

    .line 6269
    goto/16 :goto_0

    .line 6271
    :sswitch_3d
    const-string v0, "CONNECT_NETWORK"

    .line 6272
    goto/16 :goto_0

    .line 6274
    :sswitch_3e
    const-string v0, "SAVE_NETWORK"

    .line 6275
    goto/16 :goto_0

    .line 6277
    :sswitch_3f
    const-string v0, "FORGET_NETWORK"

    .line 6278
    goto/16 :goto_0

    .line 6280
    :sswitch_40
    const-string v0, "SUP_CONNECTION_EVENT"

    .line 6281
    goto/16 :goto_0

    .line 6283
    :sswitch_41
    const-string v0, "SUP_DISCONNECTION_EVENT"

    .line 6284
    goto/16 :goto_0

    .line 6286
    :sswitch_42
    const-string v0, "SCAN_RESULTS_EVENT"

    .line 6287
    goto/16 :goto_0

    .line 6289
    :sswitch_43
    const-string v0, "SUPPLICANT_STATE_CHANGE_EVENT"

    .line 6290
    goto/16 :goto_0

    .line 6292
    :sswitch_44
    const-string v0, "AUTHENTICATION_FAILURE_EVENT"

    .line 6293
    goto/16 :goto_0

    .line 6295
    :sswitch_45
    const-string v0, "SSID_TEMP_DISABLED"

    .line 6296
    goto/16 :goto_0

    .line 6298
    :sswitch_46
    const-string v0, "SSID_REENABLED"

    .line 6299
    goto/16 :goto_0

    .line 6301
    :sswitch_47
    const-string v0, "WPS_SUCCESS_EVENT"

    .line 6302
    goto/16 :goto_0

    .line 6304
    :sswitch_48
    const-string v0, "WPS_FAIL_EVENT"

    .line 6305
    goto/16 :goto_0

    .line 6307
    :sswitch_49
    const-string v0, "SUP_REQUEST_IDENTITY"

    .line 6308
    goto/16 :goto_0

    .line 6310
    :sswitch_4a
    const-string v0, "NETWORK_CONNECTION_EVENT"

    .line 6311
    goto/16 :goto_0

    .line 6313
    :sswitch_4b
    const-string v0, "NETWORK_DISCONNECTION_EVENT"

    .line 6314
    goto/16 :goto_0

    .line 6316
    :sswitch_4c
    const-string v0, "ASSOCIATION_REJECTION_EVENT"

    .line 6317
    goto/16 :goto_0

    .line 6319
    :sswitch_4d
    const-string v0, "CMD_SET_OPERATIONAL_MODE"

    .line 6320
    goto/16 :goto_0

    .line 6322
    :sswitch_4e
    const-string v0, "CMD_START_SCAN"

    .line 6323
    goto/16 :goto_0

    .line 6325
    :sswitch_4f
    const-string v0, "CMD_DISABLE_P2P_RSP"

    .line 6326
    goto/16 :goto_0

    .line 6328
    :sswitch_50
    const-string v0, "CMD_DISABLE_P2P_REQ"

    .line 6329
    goto/16 :goto_0

    .line 6331
    :sswitch_51
    const-string v0, "GOOD_LINK_DETECTED"

    .line 6332
    goto/16 :goto_0

    .line 6334
    :sswitch_52
    const-string v0, "POOR_LINK_DETECTED"

    .line 6335
    goto/16 :goto_0

    .line 6337
    :sswitch_53
    const-string v0, "GROUP_CREATING_TIMED_OUT"

    .line 6338
    goto/16 :goto_0

    .line 6340
    :sswitch_54
    const-string v0, "P2P_CONNECTION_CHANGED"

    .line 6341
    goto/16 :goto_0

    .line 6343
    :sswitch_55
    const-string v0, "P2P.DISCONNECT_WIFI_RESPONSE"

    .line 6344
    goto/16 :goto_0

    .line 6346
    :sswitch_56
    const-string v0, "P2P.SET_MIRACAST_MODE"

    .line 6347
    goto/16 :goto_0

    .line 6349
    :sswitch_57
    const-string v0, "P2P.BLOCK_DISCOVERY"

    .line 6350
    goto/16 :goto_0

    .line 6352
    :sswitch_58
    const-string v0, "P2P.SET_COUNTRY_CODE"

    .line 6353
    goto/16 :goto_0

    .line 6355
    :sswitch_59
    const-string v0, "CANCEL_WPS"

    .line 6356
    goto/16 :goto_0

    .line 6358
    :sswitch_5a
    const-string v0, "CANCEL_WPS_FAILED"

    .line 6359
    goto/16 :goto_0

    .line 6361
    :sswitch_5b
    const-string v0, "CANCEL_WPS_SUCCEDED"

    .line 6362
    goto/16 :goto_0

    .line 6364
    :sswitch_5c
    const-string v0, "START_WPS"

    .line 6365
    goto/16 :goto_0

    .line 6367
    :sswitch_5d
    const-string v0, "START_WPS_SUCCEEDED"

    .line 6368
    goto/16 :goto_0

    .line 6370
    :sswitch_5e
    const-string v0, "WPS_FAILED"

    .line 6371
    goto/16 :goto_0

    .line 6373
    :sswitch_5f
    const-string v0, "WPS_COMPLETED"

    .line 6374
    goto/16 :goto_0

    .line 6376
    :sswitch_60
    const-string v0, "RSSI_PKTCNT_FETCH"

    .line 6377
    goto/16 :goto_0

    .line 6379
    :sswitch_61
    const-string v0, "CMD_IP_CONFIGURATION_LOST"

    .line 6380
    goto/16 :goto_0

    .line 6382
    :sswitch_62
    const-string v0, "CMD_IP_CONFIGURATION_SUCCESSFUL"

    .line 6383
    goto/16 :goto_0

    .line 6385
    :sswitch_63
    const-string v0, "CMD_STATIC_IP_SUCCESSFUL"

    .line 6386
    goto/16 :goto_0

    .line 6388
    :sswitch_64
    const-string v0, "CMD_STATIC_IP_FAILURE"

    .line 6389
    goto/16 :goto_0

    .line 6391
    :sswitch_65
    const-string v0, "DHCP_SUCCESS"

    .line 6392
    goto/16 :goto_0

    .line 6394
    :sswitch_66
    const-string v0, "DHCP_FAILURE"

    .line 6395
    goto/16 :goto_0

    .line 6397
    :sswitch_67
    const-string v0, "CMD_TARGET_BSSID"

    .line 6398
    goto/16 :goto_0

    .line 6400
    :sswitch_68
    const-string v0, "CMD_ASSOCIATED_BSSID"

    .line 6401
    goto/16 :goto_0

    .line 6403
    :sswitch_69
    const-string v0, "CMD_ROAM_WATCHDOG_TIMER"

    .line 6404
    goto/16 :goto_0

    .line 6406
    :sswitch_6a
    const-string v0, "CMD_SCREEN_STATE_CHANGED"

    .line 6407
    goto/16 :goto_0

    .line 6409
    :sswitch_6b
    const-string v0, "CMD_DISCONNECTING_WATCHDOG_TIMER"

    .line 6410
    goto/16 :goto_0

    .line 6086
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_65
        0x2 -> :sswitch_66
        0x11000 -> :sswitch_1
        0x11004 -> :sswitch_2
        0x2000b -> :sswitch_c
        0x2000c -> :sswitch_a
        0x2000d -> :sswitch_8
        0x2000e -> :sswitch_9
        0x2000f -> :sswitch_63
        0x20010 -> :sswitch_64
        0x20011 -> :sswitch_b
        0x2001b -> :sswitch_d
        0x2001c -> :sswitch_e
        0x2001d -> :sswitch_f
        0x2001e -> :sswitch_10
        0x2001f -> :sswitch_11
        0x20034 -> :sswitch_12
        0x20035 -> :sswitch_13
        0x20036 -> :sswitch_14
        0x20037 -> :sswitch_15
        0x20038 -> :sswitch_23
        0x20039 -> :sswitch_24
        0x2003a -> :sswitch_25
        0x2003b -> :sswitch_26
        0x2003d -> :sswitch_27
        0x2003e -> :sswitch_2b
        0x2003f -> :sswitch_2a
        0x20047 -> :sswitch_4e
        0x20048 -> :sswitch_4d
        0x20049 -> :sswitch_2c
        0x2004a -> :sswitch_2d
        0x2004b -> :sswitch_2e
        0x2004c -> :sswitch_2f
        0x2004d -> :sswitch_30
        0x20050 -> :sswitch_31
        0x20052 -> :sswitch_32
        0x20053 -> :sswitch_33
        0x20054 -> :sswitch_34
        0x20055 -> :sswitch_35
        0x20056 -> :sswitch_36
        0x20057 -> :sswitch_4
        0x20058 -> :sswitch_37
        0x20059 -> :sswitch_5
        0x2005a -> :sswitch_3
        0x2005d -> :sswitch_6
        0x2005e -> :sswitch_69
        0x2005f -> :sswitch_6a
        0x20060 -> :sswitch_6b
        0x20062 -> :sswitch_7
        0x20084 -> :sswitch_50
        0x20085 -> :sswitch_4f
        0x20086 -> :sswitch_19
        0x20087 -> :sswitch_38
        0x20088 -> :sswitch_39
        0x20089 -> :sswitch_3a
        0x2008a -> :sswitch_62
        0x2008b -> :sswitch_61
        0x2008c -> :sswitch_3b
        0x2008d -> :sswitch_67
        0x2008e -> :sswitch_3c
        0x2008f -> :sswitch_16
        0x20090 -> :sswitch_28
        0x20091 -> :sswitch_17
        0x20092 -> :sswitch_18
        0x20093 -> :sswitch_68
        0x20094 -> :sswitch_29
        0x21015 -> :sswitch_52
        0x21016 -> :sswitch_51
        0x23001 -> :sswitch_53
        0x2300b -> :sswitch_54
        0x2300c -> :sswitch_21
        0x2300d -> :sswitch_55
        0x2300e -> :sswitch_56
        0x2300f -> :sswitch_57
        0x23010 -> :sswitch_58
        0x24001 -> :sswitch_40
        0x24002 -> :sswitch_41
        0x24003 -> :sswitch_4a
        0x24004 -> :sswitch_4b
        0x24005 -> :sswitch_42
        0x24006 -> :sswitch_43
        0x24007 -> :sswitch_44
        0x24008 -> :sswitch_47
        0x24009 -> :sswitch_48
        0x2400c -> :sswitch_0
        0x2400d -> :sswitch_45
        0x2400e -> :sswitch_46
        0x2400f -> :sswitch_49
        0x2402b -> :sswitch_4c
        0x25001 -> :sswitch_3d
        0x25004 -> :sswitch_3f
        0x25007 -> :sswitch_3e
        0x2500a -> :sswitch_5c
        0x2500b -> :sswitch_5d
        0x2500c -> :sswitch_5e
        0x2500d -> :sswitch_5f
        0x2500e -> :sswitch_59
        0x2500f -> :sswitch_5a
        0x25010 -> :sswitch_5b
        0x25011 -> :sswitch_22
        0x25014 -> :sswitch_60
        0x30001 -> :sswitch_1a
        0x30002 -> :sswitch_1b
        0x30003 -> :sswitch_1c
        0x30004 -> :sswitch_1d
        0x30005 -> :sswitch_1e
        0x30006 -> :sswitch_20
        0x30007 -> :sswitch_1f
    .end sparse-switch
.end method

.method smToString(Landroid/os/Message;)Ljava/lang/String;
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 6081
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->smToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method startDhcp()V
    .locals 2

    .prologue
    .line 4591
    const-string v0, "WifiStateMachine"

    const-string v1, "Wlan: startDhcp()..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4592
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    if-nez v0, :cond_0

    .line 4593
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-static {v0, p0, v1}, Landroid/net/DhcpStateMachine;->makeDhcpStateMachine(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Ljava/lang/String;)Landroid/net/DhcpStateMachine;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    .line 4597
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    invoke-virtual {v0}, Landroid/net/DhcpStateMachine;->registerForPreDhcpNotification()V

    .line 4598
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    const v1, 0x30001

    invoke-virtual {v0, v1}, Landroid/net/DhcpStateMachine;->sendMessage(I)V

    .line 4599
    return-void
.end method

.method public startFilteringMulticastV4Packets()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2384
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mFilteringMulticastV4Packets:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2385
    const v0, 0x20054

    invoke-virtual {p0, v0, v2, v2}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(III)V

    .line 2386
    return-void
.end method

.method public startFilteringMulticastV6Packets()V
    .locals 3

    .prologue
    .line 2400
    const v0, 0x20054

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(III)V

    .line 2401
    return-void
.end method

.method startRadioScanStats()V
    .locals 2

    .prologue
    .line 1831
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->getWifiLinkLayerStats(Z)Landroid/net/wifi/WifiLinkLayerStats;

    move-result-object v0

    .line 1832
    .local v0, "stats":Landroid/net/wifi/WifiLinkLayerStats;
    if-eqz v0, :cond_0

    .line 1833
    iget v1, v0, Landroid/net/wifi/WifiLinkLayerStats;->on_time:I

    iput v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTimeStartScan:I

    .line 1834
    iget v1, v0, Landroid/net/wifi/WifiLinkLayerStats;->tx_time:I

    iput v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mTxTimeStartScan:I

    .line 1835
    iget v1, v0, Landroid/net/wifi/WifiLinkLayerStats;->rx_time:I

    iput v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mRxTimeStartScan:I

    .line 1836
    iget v1, v0, Landroid/net/wifi/WifiLinkLayerStats;->on_time:I

    iput v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTime:I

    .line 1837
    iget v1, v0, Landroid/net/wifi/WifiLinkLayerStats;->tx_time:I

    iput v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mTxTime:I

    .line 1838
    iget v1, v0, Landroid/net/wifi/WifiLinkLayerStats;->rx_time:I

    iput v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mRxTime:I

    .line 1840
    :cond_0
    return-void
.end method

.method public startScan(IILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V
    .locals 4
    .param p1, "callingUid"    # I
    .param p2, "scanCounter"    # I
    .param p3, "settings"    # Landroid/net/wifi/ScanSettings;
    .param p4, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 1388
    const-string v1, "WifiStateMachine"

    const-string v2, "Wlan: Initiate a wifi scan..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1390
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "customized_scan_settings"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1391
    const-string v1, "customized_scan_worksource"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1392
    const-string v1, "scan_request_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1393
    const v1, 0x20047

    invoke-virtual {p0, v1, p1, p2, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 1394
    return-void
.end method

.method startScanForConfiguration(Landroid/net/wifi/WifiConfiguration;Z)Z
    .locals 9
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "restrictChannelList"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 7191
    if-nez p1, :cond_1

    .line 7234
    :cond_0
    :goto_0
    return v5

    .line 7199
    :cond_1
    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    if-eqz v7, :cond_2

    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v7, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    const/4 v8, 0x6

    if-le v7, v8, :cond_3

    :cond_2
    move v5, v6

    .line 7203
    goto :goto_0

    .line 7205
    :cond_3
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    const v8, 0x36ee80

    invoke-virtual {v7, p1, v8, p2}, Lcom/android/server/wifi/WifiConfigStore;->makeChannelList(Landroid/net/wifi/WifiConfiguration;IZ)Ljava/util/HashSet;

    move-result-object v1

    .line 7208
    .local v1, "channels":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v7

    if-eqz v7, :cond_7

    .line 7209
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 7210
    .local v3, "freqs":Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .line 7211
    .local v2, "first":Z
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 7212
    .local v0, "channel":Ljava/lang/Integer;
    if-nez v2, :cond_4

    .line 7213
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7214
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7215
    const/4 v2, 0x0

    .line 7216
    goto :goto_1

    .line 7218
    .end local v0    # "channel":Ljava/lang/Integer;
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WifiStateMachine starting scan for "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " with "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 7221
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v6, v5}, Lcom/android/server/wifi/WifiStateMachine;->startScanNative(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 7225
    const/4 v5, -0x2

    const/4 v7, 0x0

    invoke-direct {p0, v5, v7}, Lcom/android/server/wifi/WifiStateMachine;->noteScanStart(ILandroid/os/WorkSource;)V

    .line 7226
    sget v5, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_OK:I

    iput v5, p0, Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I

    :goto_2
    move v5, v6

    .line 7231
    goto/16 :goto_0

    .line 7229
    :cond_6
    sget v5, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_HANDLING_ERROR:I

    iput v5, p0, Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I

    goto :goto_2

    .line 7233
    .end local v2    # "first":Z
    .end local v3    # "freqs":Ljava/lang/StringBuilder;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_7
    sget-boolean v6, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WifiStateMachine no channels for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public startScanForUntrustedSettingChange()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1374
    const/4 v0, -0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/android/server/wifi/WifiStateMachine;->startScan(IILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    .line 1375
    return-void
.end method

.method stopDhcp()V
    .locals 2

    .prologue
    .line 4612
    const-string v0, "WifiStateMachine"

    const-string v1, "Wlan: stopDhcp()..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4613
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    if-eqz v0, :cond_0

    .line 4615
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->handlePostDhcpSetup()V

    .line 4616
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    const v1, 0x30002

    invoke-virtual {v0, v1}, Landroid/net/DhcpStateMachine;->sendMessage(I)V

    .line 4618
    :cond_0
    return-void
.end method

.method public stopFilteringMulticastV4Packets()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2392
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mFilteringMulticastV4Packets:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2393
    const v0, 0x20055

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(III)V

    .line 2394
    return-void
.end method

.method public stopFilteringMulticastV6Packets()V
    .locals 3

    .prologue
    .line 2407
    const v0, 0x20055

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(III)V

    .line 2408
    return-void
.end method

.method public syncAddOrUpdateNetwork(Lcom/android/internal/util/AsyncChannel;Landroid/net/wifi/WifiConfiguration;)I
    .locals 3
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 2230
    const v2, 0x20034

    invoke-virtual {p1, v2, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2231
    .local v1, "resultMsg":Landroid/os/Message;
    iget v0, v1, Landroid/os/Message;->arg1:I

    .line 2232
    .local v0, "result":I
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 2233
    return v0
.end method

.method public syncBlockClient(Lcom/android/internal/util/AsyncChannel;Landroid/net/wifi/HotspotClient;)Z
    .locals 4
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "client"    # Landroid/net/wifi/HotspotClient;

    .prologue
    const/4 v0, 0x0

    .line 9189
    if-eqz p2, :cond_0

    iget-object v2, p2, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 9190
    :cond_0
    const-string v2, "Client is null!"

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 9196
    :goto_0
    return v0

    .line 9193
    :cond_1
    const v2, 0x200aa

    invoke-virtual {p1, v2, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 9194
    .local v1, "resultMsg":Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    const/4 v0, 0x1

    .line 9195
    .local v0, "result":Z
    :cond_2
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    goto :goto_0
.end method

.method public syncDisableNetwork(Lcom/android/internal/util/AsyncChannel;I)Z
    .locals 4
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "netId"    # I

    .prologue
    .line 2326
    const v2, 0x25011

    invoke-virtual {p1, v2, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(II)Landroid/os/Message;

    move-result-object v1

    .line 2327
    .local v1, "resultMsg":Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    const v3, 0x25012

    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    .line 2328
    .local v0, "result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 2329
    return v0

    .line 2327
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public syncEnableNetwork(Lcom/android/internal/util/AsyncChannel;IZ)Z
    .locals 6
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "netId"    # I
    .param p3, "disableOthers"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2312
    const v5, 0x20036

    if-eqz p3, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {p1, v5, p2, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(III)Landroid/os/Message;

    move-result-object v1

    .line 2314
    .local v1, "resultMsg":Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    move v0, v3

    .line 2315
    .local v0, "result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 2316
    return v0

    .end local v0    # "result":Z
    .end local v1    # "resultMsg":Landroid/os/Message;
    :cond_0
    move v2, v4

    .line 2312
    goto :goto_0

    .restart local v1    # "resultMsg":Landroid/os/Message;
    :cond_1
    move v0, v4

    .line 2314
    goto :goto_1
.end method

.method public syncGetBatchedScanResultsList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/BatchedScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1408
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatchedScanResults:Ljava/util/List;

    monitor-enter v4

    .line 1409
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatchedScanResults:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1411
    .local v0, "batchedScanList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/BatchedScanResult;>;"
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatchedScanResults:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/BatchedScanResult;

    .line 1412
    .local v2, "result":Landroid/net/wifi/BatchedScanResult;
    new-instance v3, Landroid/net/wifi/BatchedScanResult;

    invoke-direct {v3, v2}, Landroid/net/wifi/BatchedScanResult;-><init>(Landroid/net/wifi/BatchedScanResult;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1415
    .end local v0    # "batchedScanList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/BatchedScanResult;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "result":Landroid/net/wifi/BatchedScanResult;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1414
    .restart local v0    # "batchedScanList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/BatchedScanResult;>;"
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public syncGetChannelList(Lcom/android/internal/util/AsyncChannel;)Ljava/util/List;
    .locals 12
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/AsyncChannel;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiChannel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1342
    const v10, 0x2003c

    invoke-virtual {p1, v10}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v9

    .line 1343
    .local v9, "resultMsg":Landroid/os/Message;
    const/4 v7, 0x0

    .line 1344
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiChannel;>;"
    iget-object v10, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v10, :cond_3

    .line 1345
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiChannel;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1346
    .restart local v7    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiChannel;>;"
    iget-object v2, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 1347
    .local v2, "freqs":Ljava/lang/String;
    const-string v10, "\n"

    invoke-virtual {v2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1348
    .local v6, "lines":[Ljava/lang/String;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v5, v0, v3

    .line 1349
    .local v5, "line":Ljava/lang/String;
    const-string v10, "MHz"

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1351
    new-instance v1, Landroid/net/wifi/WifiChannel;

    invoke-direct {v1}, Landroid/net/wifi/WifiChannel;-><init>()V

    .line 1352
    .local v1, "c":Landroid/net/wifi/WifiChannel;
    const-string v10, " "

    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1353
    .local v8, "prop":[Ljava/lang/String;
    array-length v10, v8

    const/4 v11, 0x5

    if-ge v10, v11, :cond_1

    .line 1348
    .end local v1    # "c":Landroid/net/wifi/WifiChannel;
    .end local v8    # "prop":[Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1355
    .restart local v1    # "c":Landroid/net/wifi/WifiChannel;
    .restart local v8    # "prop":[Ljava/lang/String;
    :cond_1
    const/4 v10, 0x1

    :try_start_0
    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v1, Landroid/net/wifi/WifiChannel;->channelNum:I

    .line 1356
    const/4 v10, 0x3

    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v1, Landroid/net/wifi/WifiChannel;->freqMHz:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1358
    :goto_2
    const-string v10, "(DFS)"

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    iput-boolean v10, v1, Landroid/net/wifi/WifiChannel;->isDFS:Z

    .line 1359
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1360
    .end local v1    # "c":Landroid/net/wifi/WifiChannel;
    .end local v8    # "prop":[Ljava/lang/String;
    :cond_2
    const-string v10, "Mode[B] Channels:"

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1365
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "freqs":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "lines":[Ljava/lang/String;
    :cond_3
    invoke-virtual {v9}, Landroid/os/Message;->recycle()V

    .line 1366
    if-eqz v7, :cond_4

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_4

    .end local v7    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiChannel;>;"
    :goto_3
    return-object v7

    .restart local v7    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiChannel;>;"
    :cond_4
    const/4 v7, 0x0

    goto :goto_3

    .line 1357
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "c":Landroid/net/wifi/WifiChannel;
    .restart local v2    # "freqs":Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "lines":[Ljava/lang/String;
    .restart local v8    # "prop":[Ljava/lang/String;
    :catch_0
    move-exception v10

    goto :goto_2
.end method

.method public syncGetConfiguredNetworks(ILcom/android/internal/util/AsyncChannel;)Ljava/util/List;
    .locals 3
    .param p1, "uuid"    # I
    .param p2, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/internal/util/AsyncChannel;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2243
    const v2, 0x2003b

    invoke-virtual {p2, v2, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(II)Landroid/os/Message;

    move-result-object v1

    .line 2244
    .local v1, "resultMsg":Landroid/os/Message;
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 2245
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 2246
    return-object v0
.end method

.method public syncGetConnectionStatistics(Lcom/android/internal/util/AsyncChannel;)Landroid/net/wifi/WifiConnectionStatistics;
    .locals 3
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;

    .prologue
    .line 2265
    const v2, 0x2004c

    invoke-virtual {p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v1

    .line 2266
    .local v1, "resultMsg":Landroid/os/Message;
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WifiConnectionStatistics;

    .line 2267
    .local v0, "result":Landroid/net/wifi/WifiConnectionStatistics;
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 2268
    return-object v0
.end method

.method public syncGetDhcpResults()Landroid/net/DhcpResults;
    .locals 3

    .prologue
    .line 2139
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResultsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2140
    :try_start_0
    new-instance v0, Landroid/net/DhcpResults;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    invoke-direct {v0, v2}, Landroid/net/DhcpResults;-><init>(Landroid/net/DhcpResults;)V

    monitor-exit v1

    return-object v0

    .line 2141
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public syncGetHotspotClientsList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/HotspotClient;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9179
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9180
    .local v1, "clients":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/HotspotClient;>;"
    sget-object v4, Lcom/android/server/wifi/WifiStateMachine;->mHotspotClients:Ljava/util/HashMap;

    monitor-enter v4

    .line 9181
    :try_start_0
    sget-object v3, Lcom/android/server/wifi/WifiStateMachine;->mHotspotClients:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/HotspotClient;

    .line 9182
    .local v0, "client":Landroid/net/wifi/HotspotClient;
    new-instance v3, Landroid/net/wifi/HotspotClient;

    invoke-direct {v3, v0}, Landroid/net/wifi/HotspotClient;-><init>(Landroid/net/wifi/HotspotClient;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9184
    .end local v0    # "client":Landroid/net/wifi/HotspotClient;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9185
    return-object v1
.end method

.method public syncGetLinkLayerStats(Lcom/android/internal/util/AsyncChannel;)Landroid/net/wifi/WifiLinkLayerStats;
    .locals 3
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;

    .prologue
    .line 2286
    const v2, 0x2003f

    invoke-virtual {p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v1

    .line 2287
    .local v1, "resultMsg":Landroid/os/Message;
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WifiLinkLayerStats;

    .line 2288
    .local v0, "result":Landroid/net/wifi/WifiLinkLayerStats;
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 2289
    return-object v0
.end method

.method public syncGetNetworkAutoConnectable(Lcom/android/internal/util/AsyncChannel;I)Z
    .locals 3
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "networkId"    # I

    .prologue
    const/4 v0, 0x1

    .line 9169
    const v2, 0x200fb

    invoke-virtual {p1, v2, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(II)Landroid/os/Message;

    move-result-object v1

    .line 9170
    .local v1, "resultMsg":Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    if-ne v2, v0, :cond_0

    .line 9171
    .local v0, "result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 9172
    return v0

    .line 9170
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public syncGetPrivilegedConfiguredNetwork(Lcom/android/internal/util/AsyncChannel;)Ljava/util/List;
    .locals 3
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/AsyncChannel;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2250
    const v2, 0x2003e

    invoke-virtual {p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v1

    .line 2252
    .local v1, "resultMsg":Landroid/os/Message;
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 2253
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 2254
    return-object v0
.end method

.method public syncGetScanResultsList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2167
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;

    monitor-enter v4

    .line 2168
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2169
    .local v2, "scanList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 2170
    .local v1, "result":Landroid/net/wifi/ScanResult;
    new-instance v3, Landroid/net/wifi/ScanResult;

    invoke-direct {v3, v1}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/ScanResult;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2174
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "result":Landroid/net/wifi/ScanResult;
    .end local v2    # "scanList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2172
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "scanList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_0
    :try_start_1
    const-string v3, "WifiStateMachine"

    const-string v5, "Wlan: scanResultsList..."

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2173
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2
.end method

.method public syncGetSupportedFeatures(Lcom/android/internal/util/AsyncChannel;)I
    .locals 3
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;

    .prologue
    .line 2276
    const v2, 0x2003d

    invoke-virtual {p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 2277
    .local v0, "resultMsg":Landroid/os/Message;
    iget v1, v0, Landroid/os/Message;->arg1:I

    .line 2278
    .local v1, "supportedFeatureSet":I
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 2279
    return v1
.end method

.method public syncGetWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 4

    .prologue
    .line 2069
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;

    const v3, 0x2001b

    invoke-virtual {v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 2070
    .local v0, "resultMsg":Landroid/os/Message;
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 2071
    .local v1, "ret":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 2072
    return-object v1
.end method

.method public syncGetWifiApState()I
    .locals 1

    .prologue
    .line 2106
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public syncGetWifiApStateByName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2113
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2125
    const-string v0, "[invalid state]"

    :goto_0
    return-object v0

    .line 2115
    :pswitch_0
    const-string v0, "disabling"

    goto :goto_0

    .line 2117
    :pswitch_1
    const-string v0, "disabled"

    goto :goto_0

    .line 2119
    :pswitch_2
    const-string v0, "enabling"

    goto :goto_0

    .line 2121
    :pswitch_3
    const-string v0, "enabled"

    goto :goto_0

    .line 2123
    :pswitch_4
    const-string v0, "failed"

    goto :goto_0

    .line 2113
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public syncGetWifiState()I
    .locals 1

    .prologue
    .line 2079
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public syncGetWifiStateByName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2086
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2098
    const-string v0, "[invalid state]"

    :goto_0
    return-object v0

    .line 2088
    :pswitch_0
    const-string v0, "disabling"

    goto :goto_0

    .line 2090
    :pswitch_1
    const-string v0, "disabled"

    goto :goto_0

    .line 2092
    :pswitch_2
    const-string v0, "enabling"

    goto :goto_0

    .line 2094
    :pswitch_3
    const-string v0, "enabled"

    goto :goto_0

    .line 2096
    :pswitch_4
    const-string v0, "unknown state"

    goto :goto_0

    .line 2086
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public syncGetWpsNfcConfigurationToken(I)Ljava/lang/String;
    .locals 1
    .param p1, "netId"    # I

    .prologue
    .line 2337
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiNative;->getNfcWpsConfigurationToken(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public syncPingSupplicant(Lcom/android/internal/util/AsyncChannel;)Z
    .locals 4
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;

    .prologue
    .line 1335
    const v2, 0x20033

    invoke-virtual {p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v1

    .line 1336
    .local v1, "resultMsg":Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    .line 1337
    .local v0, "result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 1338
    return v0

    .line 1336
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public syncRemoveNetwork(Lcom/android/internal/util/AsyncChannel;I)Z
    .locals 4
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "networkId"    # I

    .prologue
    .line 2298
    const v2, 0x20035

    invoke-virtual {p1, v2, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(II)Landroid/os/Message;

    move-result-object v1

    .line 2299
    .local v1, "resultMsg":Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    .line 2300
    .local v0, "result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 2301
    return v0

    .line 2299
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    .prologue
    .line 2135
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method public syncSaveConfig(Lcom/android/internal/util/AsyncChannel;)Z
    .locals 4
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;

    .prologue
    .line 2489
    const v2, 0x2003a

    invoke-virtual {p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v1

    .line 2490
    .local v1, "resultMsg":Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    .line 2491
    .local v0, "result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 2492
    return v0

    .line 2490
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public syncSetNetworkAutoConnectable(Lcom/android/internal/util/AsyncChannel;IZ)Z
    .locals 6
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "networkId"    # I
    .param p3, "autoConnectable"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 9161
    const v5, 0x200fa

    if-eqz p3, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {p1, v5, p2, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(III)Landroid/os/Message;

    move-result-object v1

    .line 9162
    .local v1, "resultMsg":Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    move v0, v3

    .line 9163
    .local v0, "result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 9164
    return v0

    .end local v0    # "result":Z
    .end local v1    # "resultMsg":Landroid/os/Message;
    :cond_0
    move v2, v4

    .line 9161
    goto :goto_0

    .restart local v1    # "resultMsg":Landroid/os/Message;
    :cond_1
    move v0, v4

    .line 9162
    goto :goto_1
.end method

.method public syncUnblockClient(Lcom/android/internal/util/AsyncChannel;Landroid/net/wifi/HotspotClient;)Z
    .locals 4
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "client"    # Landroid/net/wifi/HotspotClient;

    .prologue
    const/4 v0, 0x0

    .line 9200
    if-eqz p2, :cond_0

    iget-object v2, p2, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 9201
    :cond_0
    const-string v2, "Client is null!"

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 9207
    :goto_0
    return v0

    .line 9204
    :cond_1
    const v2, 0x200ab

    invoke-virtual {p1, v2, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 9205
    .local v1, "resultMsg":Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    const/4 v0, 0x1

    .line 9206
    .local v0, "result":Z
    :cond_2
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    goto :goto_0
.end method

.method unwantedNetwork(I)V
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 7183
    const v0, 0x20090

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    .line 7184
    return-void
.end method

.method public updateBatteryWorkSource(Landroid/os/WorkSource;)V
    .locals 4
    .param p1, "newSource"    # Landroid/os/WorkSource;

    .prologue
    .line 2496
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    monitor-enter v1

    .line 2498
    if-eqz p1, :cond_0

    .line 2499
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v0, p1}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V

    .line 2501
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsRunning:Z

    if-eqz v0, :cond_3

    .line 2502
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mReportedRunning:Z

    if-eqz v0, :cond_2

    .line 2505
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->diff(Landroid/os/WorkSource;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2506
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-interface {v0, v2, v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiRunningChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V

    .line 2508
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V

    .line 2524
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2527
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2528
    return-void

    .line 2512
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-interface {v0, v2}, Lcom/android/internal/app/IBatteryStats;->noteWifiRunning(Landroid/os/WorkSource;)V

    .line 2513
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V

    .line 2514
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mReportedRunning:Z

    goto :goto_0

    .line 2525
    :catch_0
    move-exception v0

    goto :goto_1

    .line 2517
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mReportedRunning:Z

    if-eqz v0, :cond_1

    .line 2519
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    invoke-interface {v0, v2}, Lcom/android/internal/app/IBatteryStats;->noteWifiStopped(Landroid/os/WorkSource;)V

    .line 2520
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v0}, Landroid/os/WorkSource;->clear()V

    .line 2521
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mReportedRunning:Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2527
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method