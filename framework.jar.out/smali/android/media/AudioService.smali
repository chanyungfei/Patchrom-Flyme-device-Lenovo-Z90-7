.class public Landroid/media/AudioService;
.super Landroid/media/IAudioService$Stub;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioService$AudioPolicyProxy;,
        Landroid/media/AudioService$AudioServiceInternal;,
        Landroid/media/AudioService$VolumeController;,
        Landroid/media/AudioService$FmModeStackEntry;,
        Landroid/media/AudioService$FmModeDeathHandler;,
        Landroid/media/AudioService$StreamOverride;,
        Landroid/media/AudioService$MyDisplayStatusCallback;,
        Landroid/media/AudioService$AudioServiceBroadcastReceiver;,
        Landroid/media/AudioService$SettingsObserver;,
        Landroid/media/AudioService$AudioHandler;,
        Landroid/media/AudioService$AudioSystemThread;,
        Landroid/media/AudioService$VolumeStreamState;,
        Landroid/media/AudioService$ScoClient;,
        Landroid/media/AudioService$SoundPoolCallback;,
        Landroid/media/AudioService$SoundPoolListenerThread;,
        Landroid/media/AudioService$LoadSoundEffectReply;,
        Landroid/media/AudioService$SetModeDeathHandler;,
        Landroid/media/AudioService$RmtSbmxFullVolDeathHandler;,
        Landroid/media/AudioService$ForceControlStreamClient;,
        Landroid/media/AudioService$Parameter;,
        Landroid/media/AudioService$StreamVolumeCommand;,
        Landroid/media/AudioService$AudioOrientationEventListener;
    }
.end annotation


# static fields
.field private static final ASSET_FILE_VERSION:Ljava/lang/String; = "1.0"

.field private static final ATTR_ASSET_FILE:Ljava/lang/String; = "file"

.field private static final ATTR_ASSET_ID:Ljava/lang/String; = "id"

.field private static final ATTR_GROUP_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final BTA2DP_DOCK_TIMEOUT_MILLIS:I = 0x1f40

.field private static final BT_HEADSET_CNCT_TIMEOUT_MS:I = 0xbb8

.field protected static final DEBUG_AP:Z

.field protected static final DEBUG_MODE:Z

.field private static final DEBUG_SESSIONS:Z

.field protected static final DEBUG_VOL:Z = true

.field private static DEFAULT_STREAM_VOLUME:[I = null

.field private static final FLAG_ADJUST_VOLUME:I = 0x1

.field private static final GROUP_TOUCH_SOUNDS:Ljava/lang/String; = "touch_sounds"

.field private static final MAX_BATCH_VOLUME_ADJUST_STEPS:I = 0x4

.field private static final MAX_MASTER_VOLUME:I = 0x64

.field private static MAX_STREAM_VOLUME:[I = null

.field private static final MSG_BROADCAST_AUDIO_BECOMING_NOISY:I = 0xf

.field private static final MSG_BROADCAST_BT_CONNECTION_STATE:I = 0x13

.field private static final MSG_BTA2DP_DOCK_TIMEOUT:I = 0x6

.field private static final MSG_BT_HEADSET_CNCT_FAILED:I = 0x9

.field private static final MSG_CHECK_MUSIC_ACTIVE:I = 0xe

.field private static final MSG_CONFIGURE_SAFE_MEDIA_VOLUME:I = 0x10

.field private static final MSG_CONFIGURE_SAFE_MEDIA_VOLUME_FORCED:I = 0x11

.field private static final MSG_HANDLE_DEVICE_CONNECTIOIN:I = 0xcb

.field private static final MSG_LOAD_SOUND_EFFECTS:I = 0x7

.field private static final MSG_MEDIA_SERVER_DIED:I = 0x4

.field private static final MSG_PERSIST_MASTER_VOLUME:I = 0x2

.field private static final MSG_PERSIST_MASTER_VOLUME_MUTE:I = 0xb

.field private static final MSG_PERSIST_MICROPHONE_MUTE:I = 0x17

.field private static final MSG_PERSIST_MUSIC_ACTIVE_MS:I = 0x16

.field private static final MSG_PERSIST_RINGER_MODE:I = 0x3

.field private static final MSG_PERSIST_SAFE_VOLUME_STATE:I = 0x12

.field private static final MSG_PERSIST_VOLUME:I = 0x1

.field private static final MSG_PLAY_SOUND_EFFECT:I = 0x5

.field private static final MSG_REPORT_NEW_ROUTES:I = 0xc

.field private static final MSG_SET_A2DP_SINK_CONNECTION_STATE:I = 0x66

.field private static final MSG_SET_A2DP_SRC_CONNECTION_STATE:I = 0x65

.field private static final MSG_SET_ALL_VOLUMES:I = 0xa

.field private static final MSG_SET_BOOTSILENT:I = 0xcc

.field private static final MSG_SET_DEVICE_VOLUME:I = 0x0

.field private static final MSG_SET_FORCE_BT_A2DP_USE:I = 0xd

.field private static final MSG_SET_FORCE_USE:I = 0x8

.field private static final MSG_SET_VIBRATE_ON:I = 0xc9

.field private static final MSG_SET_WIRED_DEVICE_CONNECTION_STATE:I = 0x64

.field private static final MSG_SYSTEM_READY:I = 0x15

.field private static final MSG_UNLOAD_SOUND_EFFECTS:I = 0x14

.field private static final MUSIC_ACTIVE_POLL_PERIOD_MS:I = 0xea60

.field private static final NUM_SOUNDPOOL_CHANNELS:I = 0x4

.field private static final PERSIST_DELAY:I = 0x1f4

.field private static final PLATFORM_DEFAULT:I = 0x0

.field private static final PLATFORM_TELEVISION:I = 0x2

.field private static final PLATFORM_VOICE:I = 0x1

.field public static final PLAY_SOUND_DELAY:I = 0x12c

.field private static final PREVENT_VOLUME_ADJUSTMENT_IF_SILENT:Z = false

.field private static final RINGER_MODE_NAMES:[Ljava/lang/String;

.field private static final SAFE_MEDIA_VOLUME_ACTIVE:I = 0x3

.field private static final SAFE_MEDIA_VOLUME_DISABLED:I = 0x1

.field private static final SAFE_MEDIA_VOLUME_INACTIVE:I = 0x2

.field private static final SAFE_MEDIA_VOLUME_NOT_CONFIGURED:I = 0x0

.field private static final SAFE_VOLUME_CONFIGURE_TIMEOUT_MS:I = 0x7530

.field private static final SCO_MODE_MAX:I = 0x2

.field private static final SCO_MODE_RAW:I = 0x1

.field private static final SCO_MODE_UNDEFINED:I = -0x1

.field private static final SCO_MODE_VIRTUAL_CALL:I = 0x0

.field private static final SCO_MODE_VR:I = 0x2

.field private static final SCO_STATE_ACTIVATE_REQ:I = 0x1

.field private static final SCO_STATE_ACTIVE_EXTERNAL:I = 0x2

.field private static final SCO_STATE_ACTIVE_INTERNAL:I = 0x3

.field private static final SCO_STATE_DEACTIVATE_EXT_REQ:I = 0x4

.field private static final SCO_STATE_DEACTIVATE_REQ:I = 0x5

.field private static final SCO_STATE_INACTIVE:I = 0x0

.field private static final SENDMSG_NOOP:I = 0x1

.field private static final SENDMSG_QUEUE:I = 0x2

.field private static final SENDMSG_REPLACE:I = 0x0

.field private static final SOUND_EFFECTS_LOAD_TIMEOUT_MS:I = 0x1388

.field private static final SOUND_EFFECTS_PATH:Ljava/lang/String; = "/media/audio/ui/"

.field private static final SOUND_EFFECT_FILES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final STEAM_VOLUME_OPS:[I

.field private static final STREAM_NAMES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "AudioService"

.field private static final TAG_ASSET:Ljava/lang/String; = "asset"

.field private static final TAG_AUDIO_ASSETS:Ljava/lang/String; = "audio_assets"

.field private static final TAG_GROUP:Ljava/lang/String; = "group"

.field private static final UNSAFE_VOLUME_MUSIC_ACTIVE_MS_MAX:I = 0x44aa200

.field private static final VOLUME_SETS_RINGER_MODE_SILENT:Z

.field private static final mFmModeLock:Ljava/lang/Object;

.field private static mLastDeviceConnectMsgTime:Ljava/lang/Long;

.field private static sSoundEffectVolumeDb:I


# instance fields
.field private final SOUND_EFFECT_FILES_MAP:[[I

.field private final STREAM_VOLUME_ALIAS_DEFAULT:[I

.field private final STREAM_VOLUME_ALIAS_TELEVISION:[I

.field private final STREAM_VOLUME_ALIAS_VOICE:[I

.field private mA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private final mA2dpAvrcpLock:Ljava/lang/Object;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mAudioHandler:Landroid/media/AudioService$AudioHandler;

.field private mAudioPolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/media/AudioService$AudioPolicyProxy;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioPolicyCounter:I

.field private final mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

.field private mAudioSystemThread:Landroid/media/AudioService$AudioSystemThread;

.field private mAvrcpAbsVolSupported:Z

.field mBecomingNoisyIntentDevices:I

.field private mBluetoothA2dpEnabled:Z

.field private final mBluetoothA2dpEnabledLock:Ljava/lang/Object;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

.field private mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mCameraSoundForced:Ljava/lang/Boolean;

.field private final mConnectedDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field final mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

.field private mDeviceOrientation:I

.field private mDeviceRotation:I

.field private mDockAddress:Ljava/lang/String;

.field private mDockAudioMediaEnabled:Z

.field private mDockState:I

.field mFixedVolumeDevices:I

.field private final mFmModeStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/media/AudioService$FmModeStackEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mFmRxMode:I

.field private mFmStreamOn:Z

.field private mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

.field private final mForceControlStreamLock:Ljava/lang/Object;

.field private mForcedUseForComm:I

.field private mForcedUseForFM:I

.field private mForcedUseForMedia:I

.field mFullVolumeDevices:I

.field public mHandler:Landroid/media/AudioService$FmModeDeathHandler;

.field private final mHasVibrator:Z

.field private mHdmiCecSink:Z

.field private mHdmiDisplayStatusCallback:Landroid/media/AudioService$MyDisplayStatusCallback;

.field private mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

.field private mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

.field private mHdmiSystemAudioSupported:Z

.field private mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private final mMasterVolumeRamp:[I

.field private mMcc:I

.field private final mMediaFocusControl:Landroid/media/MediaFocusControl;

.field private mMode:I

.field private final mMonitorOrientation:Z

.field private final mMonitorRotation:Z

.field private mMusicActiveMs:I

.field private mMuteAffectedStreams:I

.field private mOrientationListener:Landroid/media/AudioService$AudioOrientationEventListener;

.field private mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

.field private final mPlatformType:I

.field private mPrevVolDirection:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRingerMode:I

.field private mRingerModeAffectedStreams:I

.field private mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

.field private mRingerModeExternal:I

.field private mRingerModeMutedStreams:I

.field private volatile mRingtonePlayer:Landroid/media/IRingtonePlayer;

.field private mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioService$RmtSbmxFullVolDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mRmtSbmxFullVolRefCount:I

.field final mRoutesObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/media/IAudioRoutesObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mSafeMediaVolumeDevices:I

.field private mSafeMediaVolumeIndex:I

.field private mSafeMediaVolumeState:Ljava/lang/Integer;

.field private mScoAudioMode:I

.field private mScoAudioState:I

.field private final mScoClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioService$ScoClient;",
            ">;"
        }
    .end annotation
.end field

.field private mScoConnectionState:I

.field private final mSetModeDeathHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioService$SetModeDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsLock:Ljava/lang/Object;

.field private mSettingsObserver:Landroid/media/AudioService$SettingsObserver;

.field private final mSoundEffectsLock:Ljava/lang/Object;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

.field private mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;

.field private mSoundPoolLooper:Landroid/os/Looper;

.field private mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

.field private mStreamVolumeAlias:[I

.field private mSystemReady:Z

.field private final mUseFixedVolume:Z

.field private final mUseMasterVolume:Z

.field private mVibrateSetting:I

.field private mVolumeControlStream:I

.field private final mVolumeController:Landroid/media/AudioService$VolumeController;

.field private plugInNotifiVolumeChanged:Z

.field private plugInVolumeChanged:Z

.field private storedVolume:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v1, 0xa

    const/4 v4, 0x3

    .line 123
    const-string v0, "AudioService.MOD"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/media/AudioService;->DEBUG_MODE:Z

    .line 126
    const-string v0, "AudioService.AP"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/media/AudioService;->DEBUG_AP:Z

    .line 138
    const-string v0, "AudioService.SESSIONS"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/media/AudioService;->DEBUG_SESSIONS:Z

    .line 274
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/media/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    .line 282
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    .line 297
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/media/AudioService;->DEFAULT_STREAM_VOLUME:[I

    .line 365
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroid/media/AudioService;->STEAM_VOLUME_OPS:[I

    .line 381
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "STREAM_VOICE_CALL"

    aput-object v1, v0, v5

    const-string v1, "STREAM_SYSTEM"

    aput-object v1, v0, v6

    const-string v1, "STREAM_RING"

    aput-object v1, v0, v7

    const-string v1, "STREAM_MUSIC"

    aput-object v1, v0, v4

    const/4 v1, 0x4

    const-string v2, "STREAM_ALARM"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "STREAM_NOTIFICATION"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "STREAM_BLUETOOTH_SCO"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "STREAM_SYSTEM_ENFORCED"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "STREAM_DTMF"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "STREAM_TTS"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/AudioService;->STREAM_NAMES:[Ljava/lang/String;

    .line 577
    new-instance v0, Ljava/lang/Long;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    sput-object v0, Landroid/media/AudioService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    .line 6070
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "SILENT"

    aput-object v1, v0, v5

    const-string v1, "VIBRATE"

    aput-object v1, v0, v6

    const-string v1, "NORMAL"

    aput-object v1, v0, v7

    sput-object v0, Landroid/media/AudioService;->RINGER_MODE_NAMES:[Ljava/lang/String;

    .line 6146
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/AudioService;->mFmModeLock:Ljava/lang/Object;

    return-void

    .line 282
    nop

    :array_0
    .array-data 4
        0x5
        0x7
        0xf
        0xf
        0xf
        0xf
        0xe
        0x7
        0xf
        0xf
    .end array-data

    .line 297
    :array_1
    .array-data 4
        0x4
        0x7
        0x8
        0x8
        0x8
        0x8
        0x7
        0x7
        0xb
        0xb
    .end array-data

    .line 365
    :array_2
    .array-data 4
        0x22
        0x24
        0x23
        0x24
        0x25
        0x26
        0x27
        0x24
        0x24
        0x24
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0xa

    const/4 v2, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 590
    invoke-direct {p0}, Landroid/media/IAudioService$Stub;-><init>()V

    .line 172
    iput v6, p0, Landroid/media/AudioService;->storedVolume:I

    .line 173
    iput-boolean v6, p0, Landroid/media/AudioService;->plugInVolumeChanged:Z

    .line 174
    iput-boolean v6, p0, Landroid/media/AudioService;->plugInNotifiVolumeChanged:Z

    .line 194
    new-instance v0, Landroid/media/AudioService$VolumeController;

    invoke-direct {v0}, Landroid/media/AudioService$VolumeController;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    .line 257
    iput v6, p0, Landroid/media/AudioService;->mMode:I

    .line 259
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    .line 262
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    .line 279
    const/4 v0, 0x2

    filled-new-array {v3, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    .line 320
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS_VOICE:[I

    .line 333
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS_TELEVISION:[I

    .line 346
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS_DEFAULT:[I

    .line 394
    new-instance v0, Landroid/media/AudioService$1;

    invoke-direct {v0, p0}, Landroid/media/AudioService$1;-><init>(Landroid/media/AudioService;)V

    iput-object v0, p0, Landroid/media/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    .line 414
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/AudioService;->mRingerModeExternal:I

    .line 417
    iput v6, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    .line 436
    new-instance v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;

    invoke-direct {v0, p0, v5}, Landroid/media/AudioService$AudioServiceBroadcastReceiver;-><init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V

    iput-object v0, p0, Landroid/media/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 439
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    .line 456
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    .line 459
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    .line 510
    iput-object v5, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    .line 514
    iput v6, p0, Landroid/media/AudioService;->mPrevVolDirection:I

    .line 519
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/AudioService;->mVolumeControlStream:I

    .line 520
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    .line 524
    iput-object v5, p0, Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    .line 528
    iput v6, p0, Landroid/media/AudioService;->mDeviceOrientation:I

    .line 529
    iput v6, p0, Landroid/media/AudioService;->mDeviceRotation:I

    .line 533
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    .line 536
    new-instance v0, Landroid/media/AudioRoutesInfo;

    invoke-direct {v0}, Landroid/media/AudioRoutesInfo;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    .line 537
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    .line 541
    const v0, 0x2c1c00

    iput v0, p0, Landroid/media/AudioService;->mFixedVolumeDevices:I

    .line 550
    iput v6, p0, Landroid/media/AudioService;->mFullVolumeDevices:I

    .line 556
    iput-boolean v4, p0, Landroid/media/AudioService;->mDockAudioMediaEnabled:Z

    .line 558
    iput v6, p0, Landroid/media/AudioService;->mDockState:I

    .line 571
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    .line 573
    iput-boolean v6, p0, Landroid/media/AudioService;->mAvrcpAbsVolSupported:Z

    .line 1775
    iput v6, p0, Landroid/media/AudioService;->mRmtSbmxFullVolRefCount:I

    .line 1776
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    .line 3157
    new-instance v0, Landroid/media/AudioService$2;

    invoke-direct {v0, p0}, Landroid/media/AudioService$2;-><init>(Landroid/media/AudioService;)V

    iput-object v0, p0, Landroid/media/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 5092
    const v0, 0x27f8c

    iput v0, p0, Landroid/media/AudioService;->mBecomingNoisyIntentDevices:I

    .line 5859
    iput v6, p0, Landroid/media/AudioService;->mMcc:I

    .line 5863
    const/16 v0, 0xc

    iput v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeDevices:I

    .line 5970
    iput-boolean v6, p0, Landroid/media/AudioService;->mHdmiSystemAudioSupported:Z

    .line 5981
    new-instance v0, Landroid/media/AudioService$MyDisplayStatusCallback;

    invoke-direct {v0, p0, v5}, Landroid/media/AudioService$MyDisplayStatusCallback;-><init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V

    iput-object v0, p0, Landroid/media/AudioService;->mHdmiDisplayStatusCallback:Landroid/media/AudioService$MyDisplayStatusCallback;

    .line 6133
    iput-boolean v6, p0, Landroid/media/AudioService;->mFmStreamOn:Z

    .line 6137
    iput v6, p0, Landroid/media/AudioService;->mForcedUseForFM:I

    .line 6152
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mFmModeStack:Ljava/util/Stack;

    .line 6754
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    .line 6756
    iput v6, p0, Landroid/media/AudioService;->mAudioPolicyCounter:I

    .line 591
    iput-object p1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    .line 592
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 593
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Landroid/media/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    .line 595
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #android:bool@config_voice_capable#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 597
    iput v4, p0, Landroid/media/AudioService;->mPlatformType:I

    .line 605
    :goto_0
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/PowerManager;

    .line 606
    .local v10, "pm":Landroid/os/PowerManager;
    const-string v0, "handleAudioEvent"

    invoke-virtual {v10, v4, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 608
    const-string/jumbo v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Vibrator;

    .line 609
    .local v11, "vibrator":Landroid/os/Vibrator;
    if-nez v11, :cond_6

    move v0, v6

    :goto_1
    iput-boolean v0, p0, Landroid/media/AudioService;->mHasVibrator:Z

    .line 612
    const-string/jumbo v0, "ro.config.vc_call_vol_steps"

    sget-object v1, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    aget v1, v1, v6

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 614
    .local v9, "maxVolume":I
    sget-object v0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    aget v0, v0, v6

    if-eq v9, v0, :cond_0

    .line 615
    sget-object v0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    aput v9, v0, v6

    .line 616
    sget-object v0, Landroid/media/AudioService;->DEFAULT_STREAM_VOLUME:[I

    mul-int/lit8 v1, v9, 0x3

    div-int/lit8 v1, v1, 0x4

    aput v1, v0, v6

    .line 618
    :cond_0
    const-string/jumbo v0, "ro.config.media_vol_steps"

    sget-object v1, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    aget v1, v1, v2

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 620
    sget-object v0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    aget v0, v0, v2

    if-eq v9, v0, :cond_1

    .line 621
    sget-object v0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    aput v9, v0, v2

    .line 622
    sget-object v0, Landroid/media/AudioService;->DEFAULT_STREAM_VOLUME:[I

    mul-int/lit8 v1, v9, 0x3

    div-int/lit8 v1, v1, 0x4

    aput v1, v0, v2

    .line 625
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #android:integer@config_soundEffectVolumeDb#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Landroid/media/AudioService;->sSoundEffectVolumeDb:I

    .line 628
    iput v6, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    .line 631
    iput v6, p0, Landroid/media/AudioService;->mForcedUseForMedia:I

    .line 635
    iput v6, p0, Landroid/media/AudioService;->mForcedUseForFM:I

    .line 639
    iput v6, p0, Landroid/media/AudioService;->mForcedUseForMedia:I

    .line 642
    invoke-direct {p0}, Landroid/media/AudioService;->createAudioSystemThread()V

    .line 644
    new-instance v0, Landroid/media/MediaFocusControl;

    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    invoke-virtual {v1}, Landroid/media/AudioService$AudioHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/media/MediaFocusControl;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/media/AudioService$VolumeController;Landroid/media/AudioService;)V

    iput-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    .line 647
    iget-object v0, p0, Landroid/media/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    invoke-static {v0}, Landroid/media/AudioSystem;->setErrorCallback(Landroid/media/AudioSystem$ErrorCallback;)V

    .line 649
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #android:bool@config_camera_sound_forced#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    .line 651
    .local v7, "cameraSoundForced":Z
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v7}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    .line 652
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x8

    const/4 v2, 0x2

    const/4 v3, 0x4

    if-eqz v7, :cond_7

    const/16 v4, 0xb

    :goto_2
    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 661
    new-instance v0, Ljava/lang/Integer;

    iget-object v1, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "audio_safe_volume_state"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 666
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init mSafeMediaVolumeState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #android:integer@config_safe_media_volume_index#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeIndex:I

    .line 674
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #android:bool@config_useFixedVolume#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    .line 676
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #android:bool@config_useMasterVolume#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AudioService;->mUseMasterVolume:Z

    .line 678
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #android:array@config_masterVolumeRamp#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    .line 683
    invoke-direct {p0, v6}, Landroid/media/AudioService;->updateStreamVolumeAlias(Z)V

    .line 684
    invoke-direct {p0}, Landroid/media/AudioService;->readPersistedSettings()V

    .line 685
    new-instance v0, Landroid/media/AudioService$SettingsObserver;

    invoke-direct {v0, p0}, Landroid/media/AudioService$SettingsObserver;-><init>(Landroid/media/AudioService;)V

    iput-object v0, p0, Landroid/media/AudioService;->mSettingsObserver:Landroid/media/AudioService$SettingsObserver;

    .line 686
    invoke-direct {p0}, Landroid/media/AudioService;->createStreamStates()V

    .line 688
    invoke-static {}, Landroid/media/AudioService;->readAndSetLowRamDevice()V

    .line 692
    iput v6, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    .line 693
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerModeInternal()I

    move-result v0

    invoke-direct {p0, v0, v6}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    .line 696
    new-instance v8, Landroid/content/IntentFilter;

    const-string v0, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-direct {v8, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 698
    .local v8, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 699
    const-string v0, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 700
    const-string v0, "android.media.action.USB_AUDIO_ACCESSORY_PLUG"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 701
    const-string v0, "android.media.action.USB_AUDIO_DEVICE_PLUG"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 702
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 703
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 704
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 705
    const-string v0, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 707
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 709
    const-string/jumbo v0, "ro.audio.monitorOrientation"

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AudioService;->mMonitorOrientation:Z

    .line 710
    iget-boolean v0, p0, Landroid/media/AudioService;->mMonitorOrientation:Z

    if-eqz v0, :cond_2

    .line 711
    const-string v0, "AudioService"

    const-string/jumbo v1, "monitoring device orientation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    invoke-direct {p0}, Landroid/media/AudioService;->setOrientationForAudioSystem()V

    .line 715
    :cond_2
    const-string/jumbo v0, "ro.audio.monitorRotation"

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AudioService;->mMonitorRotation:Z

    .line 716
    iget-boolean v0, p0, Landroid/media/AudioService;->mMonitorRotation:Z

    if-eqz v0, :cond_3

    .line 717
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Landroid/media/AudioService;->mDeviceRotation:I

    .line 719
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "monitoring device rotation, initial="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioService;->mDeviceRotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    new-instance v0, Landroid/media/AudioService$AudioOrientationEventListener;

    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroid/media/AudioService$AudioOrientationEventListener;-><init>(Landroid/media/AudioService;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/media/AudioService;->mOrientationListener:Landroid/media/AudioService$AudioOrientationEventListener;

    .line 722
    iget-object v0, p0, Landroid/media/AudioService;->mOrientationListener:Landroid/media/AudioService$AudioOrientationEventListener;

    invoke-virtual {v0}, Landroid/media/AudioService$AudioOrientationEventListener;->enable()V

    .line 725
    invoke-direct {p0}, Landroid/media/AudioService;->setRotationForAudioSystem()V

    .line 728
    :cond_3
    iget-object v0, p0, Landroid/media/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 730
    invoke-direct {p0}, Landroid/media/AudioService;->restoreMasterVolume()V

    .line 734
    invoke-direct {p0}, Landroid/media/AudioService;->initFmMode()V

    .line 737
    const-class v0, Landroid/media/AudioManagerInternal;

    new-instance v1, Landroid/media/AudioService$AudioServiceInternal;

    invoke-direct {v1, p0}, Landroid/media/AudioService$AudioServiceInternal;-><init>(Landroid/media/AudioService;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 738
    return-void

    .line 598
    .end local v7    # "cameraSoundForced":Z
    .end local v8    # "intentFilter":Landroid/content/IntentFilter;
    .end local v9    # "maxVolume":I
    .end local v10    # "pm":Landroid/os/PowerManager;
    .end local v11    # "vibrator":Landroid/os/Vibrator;
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 600
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/AudioService;->mPlatformType:I

    goto/16 :goto_0

    .line 602
    :cond_5
    iput v6, p0, Landroid/media/AudioService;->mPlatformType:I

    goto/16 :goto_0

    .line 609
    .restart local v10    # "pm":Landroid/os/PowerManager;
    .restart local v11    # "vibrator":Landroid/os/Vibrator;
    :cond_6
    invoke-virtual {v11}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    goto/16 :goto_1

    .restart local v7    # "cameraSoundForced":Z
    .restart local v9    # "maxVolume":I
    :cond_7
    move v4, v6

    .line 652
    goto/16 :goto_2

    .line 320
    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x0
        0x3
    .end array-data

    .line 333
    :array_1
    .array-data 4
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
    .end array-data

    .line 346
    :array_2
    .array-data 4
        0x0
        0x3
        0x2
        0x3
        0x4
        0x2
        0x6
        0x3
        0x3
        0x3
    .end array-data
.end method

.method static synthetic access$000(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 118
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    return-object v0
.end method

.method static synthetic access$002(Landroid/media/AudioService;Landroid/media/AudioService$AudioHandler;)Landroid/media/AudioService$AudioHandler;
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/media/AudioService$AudioHandler;

    .prologue
    .line 118
    iput-object p1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    return-object p1
.end method

.method static synthetic access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .locals 0
    .param p0, "x0"    # Landroid/os/Handler;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/lang/Object;
    .param p6, "x6"    # I

    .prologue
    .line 118
    invoke-static/range {p0 .. p6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$1000(Landroid/media/AudioService;)Landroid/media/AudioService$ForceControlStreamClient;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 118
    iget-object v0, p0, Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    return-object v0
.end method

.method static synthetic access$10000(Landroid/media/AudioService;)Ljava/util/Stack;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 118
    iget-object v0, p0, Landroid/media/AudioService;->mFmModeStack:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$1002(Landroid/media/AudioService;Landroid/media/AudioService$ForceControlStreamClient;)Landroid/media/AudioService$ForceControlStreamClient;
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/media/AudioService$ForceControlStreamClient;

    .prologue
    .line 118
    iput-object p1, p0, Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    return-object p1
.end method

.method static synthetic access$10100(Landroid/media/AudioService;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 118
    invoke-direct {p0, p1}, Landroid/media/AudioService;->setFmRxMode(Z)V

    return-void
.end method

.method static synthetic access$10200(Landroid/media/AudioService;)Landroid/media/AudioService$VolumeController;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 118
    iget-object v0, p0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    return-object v0
.end method

.method static synthetic access$10300(Landroid/media/AudioService;)Landroid/media/AudioManagerInternal$RingerModeDelegate;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 118
    iget-object v0, p0, Landroid/media/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    return-object v0
.end method

.method static synthetic access$10302(Landroid/media/AudioService;Landroid/media/AudioManagerInternal$RingerModeDelegate;)Landroid/media/AudioManagerInternal$RingerModeDelegate;
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/media/AudioManagerInternal$RingerModeDelegate;

    .prologue
    .line 118
    iput-object p1, p0, Landroid/media/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    return-object p1
.end method

.method static synthetic access$10400(Landroid/media/AudioService;IIILjava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # I

    .prologue
    .line 118
    invoke-direct/range {p0 .. p5}, Landroid/media/AudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$10500(Landroid/media/AudioService;IIILjava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # I

    .prologue
    .line 118
    invoke-direct/range {p0 .. p5}, Landroid/media/AudioService;->adjustStreamVolume(IIILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$10600(Landroid/media/AudioService;IIILjava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # I

    .prologue
    .line 118
    invoke-direct/range {p0 .. p5}, Landroid/media/AudioService;->setStreamVolume(IIILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$10700(Landroid/media/AudioService;ZILjava/lang/String;Landroid/os/IBinder;I)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Landroid/os/IBinder;
    .param p5, "x5"    # I

    .prologue
    .line 118
    invoke-direct/range {p0 .. p5}, Landroid/media/AudioService;->setMasterMuteInternal(ZILjava/lang/String;Landroid/os/IBinder;I)V

    return-void
.end method

.method static synthetic access$10808(Landroid/media/AudioService;)I
    .locals 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 118
    iget v0, p0, Landroid/media/AudioService;->mAudioPolicyCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/media/AudioService;->mAudioPolicyCounter:I

    return v0
.end method

.method static synthetic access$1102(Landroid/media/AudioService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 118
    iput p1, p0, Landroid/media/AudioService;->mVolumeControlStream:I

    return p1
.end method

.method static synthetic access$1300(Landroid/media/AudioService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 118
    iget-object v0, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/media/AudioService;ILandroid/os/IBinder;I)I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/IBinder;
    .param p3, "x3"    # I

    .prologue
    .line 118
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioService;->setModeInt(ILandroid/os/IBinder;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Landroid/media/AudioService;I)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 118
    invoke-direct {p0, p1}, Landroid/media/AudioService;->disconnectBluetoothSco(I)V

    return-void
.end method

.method static synthetic access$1700(Landroid/media/AudioService;)Landroid/os/Looper;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 118
    iget-object v0, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$1702(Landroid/media/AudioService;Landroid/os/Looper;)Landroid/os/Looper;
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/os/Looper;

    .prologue
    .line 118
    iput-object p1, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    return-object p1
.end method

.method static synthetic access$1800(Landroid/media/AudioService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 118
    iget-object v0, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/media/AudioService;)Landroid/media/SoundPool;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 118
    iget-object v0, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$1902(Landroid/media/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/media/SoundPool;

    .prologue
    .line 118
    iput-object p1, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$2000(Landroid/media/AudioService;)Landroid/media/AudioService$SoundPoolCallback;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 118
    iget-object v0, p0, Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

    return-object v0
.end method

.method static synthetic access$2002(Landroid/media/AudioService;Landroid/media/AudioService$SoundPoolCallback;)Landroid/media/AudioService$SoundPoolCallback;
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/media/AudioService$SoundPoolCallback;

    .prologue
    .line 118
    iput-object p1, p0, Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

    return-object p1
.end method

.method static synthetic access$2400(Landroid/media/AudioService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 118
    iget-object v0, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/media/AudioService;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 118
    invoke-direct {p0}, Landroid/media/AudioService;->checkScoAudioState()V

    return-void
.end method

.method static synthetic access$2600(Landroid/media/AudioService;I)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 118
    invoke-direct {p0, p1}, Landroid/media/AudioService;->broadcastScoConnectionState(I)V

    return-void
.end method

.method static synthetic access$2700(Landroid/media/AudioService;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 118
    iget v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    return v0
.end method

.method static synthetic access$2702(Landroid/media/AudioService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 118
    iput p1, p0, Landroid/media/AudioService;->mScoAudioState:I

    return p1
.end method

.method static synthetic access$2800(Landroid/media/AudioService;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 118
    iget v0, p0, Landroid/media/AudioService;->mScoAudioMode:I

    return v0
.end method

.method static synthetic access$2802(Landroid/media/AudioService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 118
    iput p1, p0, Landroid/media/AudioService;->mScoAudioMode:I

    return p1
.end method

.method static synthetic access$2900(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 118
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$2902(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 118
    iput-object p1, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$3000(Landroid/media/AudioService;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 118
    iget-object v0, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$3100(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 118
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$3102(Landroid/media/AudioService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothHeadset;

    .prologue
    .line 118
    iput-object p1, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$3200(Landroid/media/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 118
    invoke-direct {p0}, Landroid/media/AudioService;->getBluetoothHeadset()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Landroid/media/AudioService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 118
    iget-object v0, p0, Landroid/media/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3400(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothA2dp;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 118
    iget-object v0, p0, Landroid/media/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object v0
.end method

.method static synthetic access$3402(Landroid/media/AudioService;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothA2dp;

    .prologue
    .line 118
    iput-object p1, p0, Landroid/media/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic access$3500(Landroid/media/AudioService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 118
    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$3600(Landroid/media/AudioService;II)I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->checkSendBecomingNoisyIntent(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Landroid/media/AudioService;Landroid/os/Handler;IIILjava/lang/Object;I)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/os/Handler;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/lang/Object;
    .param p6, "x6"    # I

    .prologue
    .line 118
    invoke-direct/range {p0 .. p6}, Landroid/media/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$3800(Landroid/media/AudioService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 118
    invoke-direct {p0, p1}, Landroid/media/AudioService;->makeA2dpSrcUnavailable(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3900(Landroid/media/AudioService;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 118
    iget v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    return v0
.end method

.method static synthetic access$3902(Landroid/media/AudioService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 118
    iput p1, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    return p1
.end method

.method static synthetic access$4000()[I
    .locals 1

    .prologue
    .line 118
    sget-object v0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    return-object v0
.end method

.method static synthetic access$4100(Landroid/media/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 118
    iget-boolean v0, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    return v0
.end method

.method static synthetic access$4200(Landroid/media/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 118
    iget-boolean v0, p0, Landroid/media/AudioService;->mUseMasterVolume:Z

    return v0
.end method

.method static synthetic access$4300()[I
    .locals 1

    .prologue
    .line 118
    sget-object v0, Landroid/media/AudioService;->DEFAULT_STREAM_VOLUME:[I

    return-object v0
.end method

.method static synthetic access$4400(Landroid/media/AudioService;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 118
    iget-object v0, p0, Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$4500(Landroid/media/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 118
    iget-boolean v0, p0, Landroid/media/AudioService;->mAvrcpAbsVolSupported:Z

    return v0
.end method

.method static synthetic access$4600(Landroid/media/AudioService;I)I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 118
    invoke-direct {p0, p1}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Landroid/media/AudioService;)[I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 118
    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    return-object v0
.end method

.method static synthetic access$4800(Landroid/media/AudioService;III)I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 118
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$4900(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 118
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    return-object v0
.end method

.method static synthetic access$5300(Landroid/media/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 118
    invoke-direct {p0}, Landroid/media/AudioService;->isPlatformTelevision()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5400(Landroid/media/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 118
    iget-boolean v0, p0, Landroid/media/AudioService;->mSystemReady:Z

    return v0
.end method

.method static synthetic access$5500(Landroid/media/AudioService;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 118
    invoke-direct {p0}, Landroid/media/AudioService;->loadTouchSoundAssets()V

    return-void
.end method

.method static synthetic access$5600(Landroid/media/AudioService;)Landroid/media/AudioService$SoundPoolListenerThread;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 118
    iget-object v0, p0, Landroid/media/AudioService;->mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;

    return-object v0
.end method

.method static synthetic access$5602(Landroid/media/AudioService;Landroid/media/AudioService$SoundPoolListenerThread;)Landroid/media/AudioService$SoundPoolListenerThread;
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/media/AudioService$SoundPoolListenerThread;

    .prologue
    .line 118
    iput-object p1, p0, Landroid/media/AudioService;->mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;

    return-object p1
.end method

.method static synthetic access$5700()Ljava/util/List;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Landroid/media/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5800(Landroid/media/AudioService;)[[I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 118
    iget-object v0, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    return-object v0
.end method

.method static synthetic access$5900()I
    .locals 1

    .prologue
    .line 118
    sget v0, Landroid/media/AudioService;->sSoundEffectVolumeDb:I

    return v0
.end method

.method static synthetic access$600(Landroid/media/AudioService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 118
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6100()V
    .locals 0

    .prologue
    .line 118
    invoke-static {}, Landroid/media/AudioService;->readAndSetLowRamDevice()V

    return-void
.end method

.method static synthetic access$6200(Landroid/media/AudioService;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 118
    iget v0, p0, Landroid/media/AudioService;->mMode:I

    return v0
.end method

.method static synthetic access$6300(Landroid/media/AudioService;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 118
    iget v0, p0, Landroid/media/AudioService;->mForcedUseForMedia:I

    return v0
.end method

.method static synthetic access$6500(Landroid/media/AudioService;IZ)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    return-void
.end method

.method static synthetic access$6600(Landroid/media/AudioService;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 118
    invoke-direct {p0}, Landroid/media/AudioService;->restoreMasterVolume()V

    return-void
.end method

.method static synthetic access$6700(Landroid/media/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 118
    iget-boolean v0, p0, Landroid/media/AudioService;->mMonitorOrientation:Z

    return v0
.end method

.method static synthetic access$6800(Landroid/media/AudioService;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 118
    invoke-direct {p0}, Landroid/media/AudioService;->setOrientationForAudioSystem()V

    return-void
.end method

.method static synthetic access$6900(Landroid/media/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 118
    iget-boolean v0, p0, Landroid/media/AudioService;->mMonitorRotation:Z

    return v0
.end method

.method static synthetic access$700(Landroid/media/AudioService;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 118
    iget v0, p0, Landroid/media/AudioService;->mDeviceRotation:I

    return v0
.end method

.method static synthetic access$7000(Landroid/media/AudioService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 118
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$702(Landroid/media/AudioService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 118
    iput p1, p0, Landroid/media/AudioService;->mDeviceRotation:I

    return p1
.end method

.method static synthetic access$7100(Landroid/media/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 118
    iget-boolean v0, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabled:Z

    return v0
.end method

.method static synthetic access$7200(Landroid/media/AudioService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 118
    iget-object v0, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7300(Landroid/media/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 118
    iget-boolean v0, p0, Landroid/media/AudioService;->mDockAudioMediaEnabled:Z

    return v0
.end method

.method static synthetic access$7400(Landroid/media/AudioService;)Landroid/hardware/hdmi/HdmiControlManager;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 118
    iget-object v0, p0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    return-object v0
.end method

.method static synthetic access$7500(Landroid/media/AudioService;)Landroid/hardware/hdmi/HdmiTvClient;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 118
    iget-object v0, p0, Landroid/media/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    return-object v0
.end method

.method static synthetic access$7600(Landroid/media/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 118
    iget-boolean v0, p0, Landroid/media/AudioService;->mHdmiSystemAudioSupported:Z

    return v0
.end method

.method static synthetic access$7700(Landroid/media/AudioService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 118
    iget-object v0, p0, Landroid/media/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$7800(Landroid/media/AudioService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 118
    invoke-direct {p0, p1}, Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7900(Landroid/media/AudioService;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 118
    invoke-direct {p0}, Landroid/media/AudioService;->resetBluetoothSco()V

    return-void
.end method

.method static synthetic access$800(Landroid/media/AudioService;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 118
    invoke-direct {p0}, Landroid/media/AudioService;->setRotationForAudioSystem()V

    return-void
.end method

.method static synthetic access$8000(Landroid/media/AudioService;IILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 118
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioService;->onSetWiredDeviceConnectionState(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$8100(Landroid/media/AudioService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 118
    iget-object v0, p0, Landroid/media/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$8200(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->onSetA2dpSourceConnectionState(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic access$8300(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->onSetA2dpSinkConnectionState(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic access$8400(Landroid/media/AudioService;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 118
    invoke-direct {p0}, Landroid/media/AudioService;->onCheckMusicActive()V

    return-void
.end method

.method static synthetic access$8500(Landroid/media/AudioService;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 118
    invoke-direct {p0}, Landroid/media/AudioService;->onSendBecomingNoisyIntent()V

    return-void
.end method

.method static synthetic access$8600(Landroid/media/AudioService;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 118
    invoke-direct {p0, p1}, Landroid/media/AudioService;->onConfigureSafeVolume(Z)V

    return-void
.end method

.method static synthetic access$8700(Landroid/media/AudioService;I)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 118
    invoke-direct {p0, p1}, Landroid/media/AudioService;->onBroadcastScoConnectionState(I)V

    return-void
.end method

.method static synthetic access$8800(Landroid/media/AudioService;ZILjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 118
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioService;->handleDeviceConnection(ZILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8900(Landroid/media/AudioService;Landroid/content/ContentResolver;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/content/ContentResolver;

    .prologue
    .line 118
    invoke-direct {p0, p1}, Landroid/media/AudioService;->readDockAudioSettings(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic access$900(Landroid/media/AudioService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 118
    iget-object v0, p0, Landroid/media/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$9000(Landroid/media/AudioService;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 118
    iget v0, p0, Landroid/media/AudioService;->mDockState:I

    return v0
.end method

.method static synthetic access$9002(Landroid/media/AudioService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 118
    iput p1, p0, Landroid/media/AudioService;->mDockState:I

    return p1
.end method

.method static synthetic access$9100(Landroid/media/AudioService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 118
    invoke-direct {p0, p1}, Landroid/media/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$9200(Landroid/media/AudioService;)Landroid/media/AudioService$AudioOrientationEventListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 118
    iget-object v0, p0, Landroid/media/AudioService;->mOrientationListener:Landroid/media/AudioService$AudioOrientationEventListener;

    return-object v0
.end method

.method static synthetic access$9300(Landroid/media/AudioService;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 118
    invoke-direct {p0, p1}, Landroid/media/AudioService;->handleConfigurationChanged(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$9400(Landroid/media/AudioService;)Landroid/media/MediaFocusControl;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 118
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    return-object v0
.end method

.method static synthetic access$9500(Landroid/media/AudioService;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 118
    invoke-direct {p0, p1}, Landroid/media/AudioService;->readAudioSettings(Z)V

    return-void
.end method

.method static synthetic access$9600(Landroid/media/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 118
    iget-boolean v0, p0, Landroid/media/AudioService;->mHdmiCecSink:Z

    return v0
.end method

.method static synthetic access$9602(Landroid/media/AudioService;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, Landroid/media/AudioService;->mHdmiCecSink:Z

    return p1
.end method

.method static synthetic access$9700(Landroid/media/AudioService;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 118
    invoke-direct {p0}, Landroid/media/AudioService;->checkAllFixedVolumeDevices()V

    return-void
.end method

.method static synthetic access$9900()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Landroid/media/AudioService;->mFmModeLock:Ljava/lang/Object;

    return-object v0
.end method

.method private adjustStreamVolume(IIILjava/lang/String;I)V
    .locals 20
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "uid"    # I

    .prologue
    .line 1100
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/media/AudioService;->mUseFixedVolume:Z

    if-eqz v3, :cond_1

    .line 1245
    :cond_0
    :goto_0
    return-void

    .line 1103
    :cond_1
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adjustStreamVolume() stream="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", dir="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", flags="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/media/AudioService;->ensureValidDirection(I)V

    .line 1107
    invoke-direct/range {p0 .. p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 1112
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v19, v3, p1

    .line 1115
    .local v19, "streamTypeAlias":I
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "streamTypeAlias "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v8, v3, v19

    .line 1120
    .local v8, "streamState":Landroid/media/AudioService$VolumeStreamState;
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v6

    .line 1122
    .local v6, "device":I
    invoke-virtual {v8, v6}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v11

    .line 1123
    .local v11, "aliasIndex":I
    const/4 v10, 0x1

    .line 1128
    .local v10, "adjustVolume":Z
    and-int/lit16 v3, v6, 0x380

    if-nez v3, :cond_2

    and-int/lit8 v3, p3, 0x40

    if-nez v3, :cond_0

    .line 1133
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    sget-object v4, Landroid/media/AudioService;->STEAM_VOLUME_OPS:[I

    aget v4, v4, v19

    move/from16 v0, p5

    move-object/from16 v1, p4

    invoke-virtual {v3, v4, v0, v1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 1139
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v4

    .line 1140
    const/4 v3, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/AudioService;->mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    .line 1141
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1143
    and-int/lit8 p3, p3, -0x21

    .line 1144
    const/4 v3, 0x3

    move/from16 v0, v19

    if-ne v0, v3, :cond_f

    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v3, v6

    if-eqz v3, :cond_f

    .line 1146
    or-int/lit8 p3, p3, 0x20

    .line 1151
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_e

    and-int/lit8 v3, v6, 0xc

    if-eqz v3, :cond_e

    .line 1153
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/AudioService;->mSafeMediaVolumeIndex:I

    move/from16 v18, v0

    .line 1157
    .local v18, "step":I
    :goto_1
    if-eqz v11, :cond_3

    .line 1158
    move/from16 v11, v18

    .line 1167
    :cond_3
    :goto_2
    and-int/lit8 v3, p3, 0x2

    if-nez v3, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioService;->getMasterStreamType()I

    move-result v3

    move/from16 v0, v19

    if-ne v0, v3, :cond_7

    .line 1169
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioService;->getRingerModeInternal()I

    move-result v17

    .line 1171
    .local v17, "ringerMode":I
    const/4 v3, 0x1

    move/from16 v0, v17

    if-ne v0, v3, :cond_5

    .line 1172
    and-int/lit8 p3, p3, -0x11

    .line 1176
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v18

    invoke-direct {v0, v11, v1, v2}, Landroid/media/AudioService;->checkForRingerModeChange(III)I

    move-result v16

    .line 1177
    .local v16, "result":I
    and-int/lit8 v3, v16, 0x1

    if-eqz v3, :cond_10

    const/4 v10, 0x1

    .line 1179
    :goto_3
    move/from16 v0, v16

    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_6

    .line 1180
    move/from16 v0, p3

    or-int/lit16 v0, v0, 0x80

    move/from16 p3, v0

    .line 1183
    :cond_6
    move/from16 v0, v16

    and-int/lit16 v3, v0, 0x800

    if-eqz v3, :cond_7

    .line 1184
    move/from16 v0, p3

    or-int/lit16 v0, v0, 0x800

    move/from16 p3, v0

    .line 1188
    .end local v16    # "result":I
    .end local v17    # "ringerMode":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v3, v3, p1

    invoke-virtual {v3, v6}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v15

    .line 1190
    .local v15, "oldIndex":I
    if-eqz v10, :cond_d

    if-eqz p2, :cond_d

    .line 1193
    const/4 v3, 0x3

    move/from16 v0, v19

    if-ne v0, v3, :cond_9

    and-int/lit16 v3, v6, 0x380

    if-eqz v3, :cond_9

    and-int/lit8 v3, p3, 0x40

    if-nez v3, :cond_9

    .line 1196
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1197
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/media/AudioService;->mAvrcpAbsVolSupported:Z

    if-eqz v3, :cond_8

    .line 1198
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothA2dp;->adjustAvrcpAbsoluteVolume(I)V

    .line 1200
    :cond_8
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1203
    :cond_9
    const/4 v3, 0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_11

    add-int v3, v11, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v3, v6}, Landroid/media/AudioService;->checkSafeMediaVolume(III)Z

    move-result v3

    if-nez v3, :cond_11

    .line 1205
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adjustStreamVolume() safe volume index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    const-string v3, "AudioService"

    const-string v4, "Call postDisplaySafeVolumeWarning here a"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Landroid/media/AudioService$VolumeController;->postDisplaySafeVolumeWarning(I)V

    .line 1223
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v3, v3, p1

    invoke-virtual {v3, v6}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v14

    .line 1224
    .local v14, "newIndex":I
    const/4 v3, 0x3

    move/from16 v0, v19

    if-ne v0, v3, :cond_b

    .line 1225
    invoke-virtual/range {p0 .. p1}, Landroid/media/AudioService;->getStreamMaxVolume(I)I

    move-result v3

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v15, v14, v3, v1}, Landroid/media/AudioService;->setSystemAudioVolume(IIII)V

    .line 1227
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v3, :cond_d

    .line 1228
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v4

    .line 1230
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/media/AudioService;->mHdmiCecSink:Z

    if-eqz v3, :cond_c

    const/4 v3, 0x3

    move/from16 v0, v19

    if-ne v0, v3, :cond_c

    if-eq v15, v14, :cond_c

    .line 1233
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    monitor-enter v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1234
    const/4 v3, -0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_12

    const/16 v13, 0x19

    .line 1236
    .local v13, "keyCode":I
    :goto_5
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    const/4 v7, 0x1

    invoke-virtual {v3, v13, v7}, Landroid/hardware/hdmi/HdmiPlaybackClient;->sendKeyEvent(IZ)V

    .line 1237
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    const/4 v7, 0x0

    invoke-virtual {v3, v13, v7}, Landroid/hardware/hdmi/HdmiPlaybackClient;->sendKeyEvent(IZ)V

    .line 1238
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1240
    .end local v13    # "keyCode":I
    :cond_c
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1243
    .end local v14    # "newIndex":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v3, v3, p1

    invoke-virtual {v3, v6}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v12

    .line 1244
    .local v12, "index":I
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v15, v12, v2}, Landroid/media/AudioService;->sendVolumeUpdate(IIII)V

    goto/16 :goto_0

    .line 1141
    .end local v12    # "index":I
    .end local v15    # "oldIndex":I
    .end local v18    # "step":I
    :catchall_0
    move-exception v3

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v3

    .line 1155
    :cond_e
    invoke-virtual {v8}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v18

    .restart local v18    # "step":I
    goto/16 :goto_1

    .line 1162
    .end local v18    # "step":I
    :cond_f
    const/16 v3, 0xa

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v3, v1, v2}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v18

    .restart local v18    # "step":I
    goto/16 :goto_2

    .line 1177
    .restart local v16    # "result":I
    .restart local v17    # "ringerMode":I
    :cond_10
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 1200
    .end local v16    # "result":I
    .end local v17    # "ringerMode":I
    .restart local v15    # "oldIndex":I
    :catchall_1
    move-exception v3

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v3

    .line 1210
    :cond_11
    mul-int v3, p2, v18

    invoke-virtual {v8, v3, v6}, Landroid/media/AudioService$VolumeStreamState;->adjustIndex(II)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1213
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto/16 :goto_4

    .line 1234
    .restart local v14    # "newIndex":I
    :cond_12
    const/16 v13, 0x18

    goto :goto_5

    .line 1238
    .restart local v13    # "keyCode":I
    :catchall_2
    move-exception v3

    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v3

    .line 1240
    .end local v13    # "keyCode":I
    :catchall_3
    move-exception v3

    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v3
.end method

.method private adjustSuggestedStreamVolume(IIILjava/lang/String;I)V
    .locals 7
    .param p1, "direction"    # I
    .param p2, "suggestedStreamType"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "uid"    # I

    .prologue
    const/4 v4, 0x2

    .line 1049
    const-string v0, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustSuggestedStreamVolume() stream="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    iget v0, p0, Landroid/media/AudioService;->mVolumeControlStream:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    .line 1053
    iget v1, p0, Landroid/media/AudioService;->mVolumeControlStream:I

    .line 1058
    .local v1, "streamType":I
    :goto_0
    const-string v0, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "streamType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v6, v0, v1

    .line 1063
    .local v6, "resolvedStream":I
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_0

    if-eq v6, v4, :cond_0

    and-int/lit8 p3, p3, -0x5

    :cond_0
    iget-object v0, p0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-virtual {v0, v6, p3}, Landroid/media/AudioService$VolumeController;->suppressAdjustment(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1070
    const/4 p1, 0x0

    .line 1071
    and-int/lit8 p3, p3, -0x5

    .line 1072
    and-int/lit8 p3, p3, -0x11

    .line 1073
    const-string v0, "AudioService"

    const-string v2, "Volume controller suppressed adjustment"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    :cond_1
    const-string v0, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call adjustStreamVolume streamType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    if-eq v0, v4, :cond_2

    if-ne v1, v4, :cond_2

    .line 1084
    or-int/lit8 p3, p3, 0x2

    :cond_2
    :goto_flyme_0
    move-object v0, p0

    move v2, p1

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 1089
    invoke-direct/range {v0 .. v5}, Landroid/media/AudioService;->adjustStreamVolume(IIILjava/lang/String;I)V

    .line 1090
    return-void

    .line 1055
    .end local v1    # "streamType":I
    .end local v6    # "resolvedStream":I
    :cond_3
    invoke-direct {p0, p2}, Landroid/media/AudioService;->getActiveStreamType(I)I

    move-result v1

    .restart local v1    # "streamType":I
    goto :goto_0
.end method

.method private broadcastMasterMuteStatus(Z)V
    .locals 2
    .param p1, "muted"    # Z

    .prologue
    .line 1617
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.MASTER_MUTE_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1618
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_MASTER_VOLUME_MUTED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1619
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1621
    invoke-direct {p0, v0}, Landroid/media/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 1622
    return-void
.end method

.method private broadcastRingerMode(Ljava/lang/String;I)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "ringerMode"    # I

    .prologue
    .line 3701
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3702
    .local v0, "broadcast":Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_RINGER_MODE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3703
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3705
    invoke-direct {p0, v0}, Landroid/media/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 3706
    return-void
.end method

.method private broadcastScoConnectionState(I)V
    .locals 7
    .param p1, "state"    # I

    .prologue
    const/4 v4, 0x0

    .line 3142
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x13

    const/4 v2, 0x2

    const/4 v5, 0x0

    move v3, p1

    move v6, v4

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3144
    return-void
.end method

.method private broadcastVibrateSetting(I)V
    .locals 3
    .param p1, "vibrateType"    # I

    .prologue
    .line 3710
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3711
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3712
    .local v0, "broadcast":Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_VIBRATE_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3713
    const-string v1, "android.media.EXTRA_VIBRATE_SETTING"

    invoke-virtual {p0, p1}, Landroid/media/AudioService;->getVibrateSetting(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3714
    invoke-direct {p0, v0}, Landroid/media/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 3716
    .end local v0    # "broadcast":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private cancelA2dpDeviceTimeout()V
    .locals 2

    .prologue
    .line 4947
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/media/AudioService$AudioHandler;->removeMessages(I)V

    .line 4948
    return-void
.end method

.method private checkAllAliasStreamVolumes()V
    .locals 6

    .prologue
    .line 813
    const-class v3, Landroid/media/AudioService$VolumeStreamState;

    monitor-enter v3

    .line 814
    :try_start_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 815
    .local v0, "numStreamTypes":I
    const/4 v1, 0x0

    .local v1, "streamType":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 816
    iget-object v2, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v2, v2, v1

    if-eq v1, v2, :cond_0

    .line 817
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    iget-object v4, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    iget-object v5, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v5, v5, v1

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Landroid/media/AudioService$VolumeStreamState;->setAllIndexes(Landroid/media/AudioService$VolumeStreamState;)V

    .line 821
    :cond_0
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    # invokes: Landroid/media/AudioService$VolumeStreamState;->isMuted_syncVSS()Z
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$300(Landroid/media/AudioService$VolumeStreamState;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 822
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/media/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 815
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 825
    :cond_2
    monitor-exit v3

    .line 826
    return-void

    .line 825
    .end local v0    # "numStreamTypes":I
    .end local v1    # "streamType":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private checkAllFixedVolumeDevices()V
    .locals 3

    .prologue
    .line 830
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 831
    .local v0, "numStreamTypes":I
    const/4 v1, 0x0

    .local v1, "streamType":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 832
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/media/AudioService$VolumeStreamState;->checkFixedVolumeDevices()V

    .line 831
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 834
    :cond_0
    return-void
.end method

.method private checkAllFixedVolumeDevices(I)V
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 837
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/media/AudioService$VolumeStreamState;->checkFixedVolumeDevices()V

    .line 838
    return-void
.end method

.method private checkForRingerModeChange(III)I
    .locals 8
    .param p1, "oldIndex"    # I
    .param p2, "direction"    # I
    .param p3, "step"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v5, -0x1

    .line 3400
    const/4 v1, 0x1

    .line 3401
    .local v1, "result":I
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerModeInternal()I

    move-result v2

    .line 3403
    .local v2, "ringerMode":I
    const/4 v3, 0x0

    .line 3406
    .local v3, "switchModeWhenVolumeZero":Z
    packed-switch v2, :pswitch_data_0

    .line 3470
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkForRingerModeChange() wrong ringer mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3475
    :cond_0
    :goto_0
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "switchModeWhenVolumeZero  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3476
    if-eqz v3, :cond_8

    iget-object v4, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Landroid/media/AudioService;->isCts(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 3477
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ringerMode  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3478
    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    .line 3479
    const/4 v3, 0x0

    .line 3480
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.RINGTONE_STATE_CHANGED"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3481
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "ringtone"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3482
    invoke-direct {p0, v0}, Landroid/media/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 3489
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_1
    iput p2, p0, Landroid/media/AudioService;->mPrevVolDirection:I

    .line 3491
    return v1

    .line 3408
    :pswitch_0
    if-ne p2, v5, :cond_0

    .line 3409
    iget-boolean v4, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-eqz v4, :cond_3

    .line 3415
    if-gt p3, p1, :cond_0

    mul-int/lit8 v4, p3, 0x2

    if-ge p1, v4, :cond_0

    .line 3417
    iget-object v4, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Landroid/media/AudioService;->isCts(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3418
    const/4 v3, 0x1

    goto :goto_0

    .line 3420
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 3425
    :cond_3
    if-ge p1, p3, :cond_0

    goto :goto_0

    .line 3434
    :pswitch_1
    iget-boolean v4, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-nez v4, :cond_4

    .line 3435
    const-string v4, "AudioService"

    const-string v5, "checkForRingerModeChange() current ringer mode is vibratebut no vibrator is present"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3439
    :cond_4
    if-ne p2, v5, :cond_6

    .line 3440
    iget v4, p0, Landroid/media/AudioService;->mPrevVolDirection:I

    if-eq v4, v5, :cond_5

    .line 3444
    or-int/lit16 v1, v1, 0x800

    .line 3450
    :cond_5
    :goto_2
    and-int/lit8 v1, v1, -0x2

    .line 3451
    goto/16 :goto_0

    .line 3447
    :cond_6
    if-ne p2, v6, :cond_5

    .line 3448
    const/4 v2, 0x2

    goto :goto_2

    .line 3453
    :pswitch_2
    if-ne p2, v6, :cond_7

    .line 3463
    const/4 v2, 0x2

    .line 3467
    :cond_7
    and-int/lit8 v1, v1, -0x2

    .line 3468
    goto/16 :goto_0

    .line 3485
    :cond_8
    const-string v4, "checkForRingerModeChange"

    invoke-direct {p0, v2, v4, v7}, Landroid/media/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    goto :goto_1

    .line 3406
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private checkSafeMediaVolume(III)Z
    .locals 3
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "device"    # I

    .prologue
    const/4 v2, 0x3

    .line 5922
    iget-object v1, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v1

    .line 5923
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v0, v0, p1

    if-ne v0, v2, :cond_0

    and-int/lit8 v0, p3, 0xc

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeIndex:I

    if-le p2, v0, :cond_0

    .line 5927
    const/4 v0, 0x0

    monitor-exit v1

    .line 5929
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 5930
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private checkScoAudioState()V
    .locals 2

    .prologue
    .line 3050
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v1, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 3054
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    .line 3056
    :cond_0
    return-void
.end method

.method private checkSendBecomingNoisyIntent(II)I
    .locals 14
    .param p1, "device"    # I
    .param p2, "state"    # I

    .prologue
    .line 5100
    const/4 v7, 0x0

    .line 5101
    .local v7, "delay":I
    if-nez p2, :cond_4

    iget v0, p0, Landroid/media/AudioService;->mBecomingNoisyIntentDevices:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_4

    .line 5102
    const/4 v9, 0x0

    .line 5103
    .local v9, "devices":I
    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 5104
    .local v8, "dev":I
    const/high16 v0, -0x80000000

    and-int/2addr v0, v8

    if-nez v0, :cond_0

    iget v0, p0, Landroid/media/AudioService;->mBecomingNoisyIntentDevices:I

    and-int/2addr v0, v8

    if-eqz v0, :cond_0

    .line 5106
    or-int/2addr v9, v8

    goto :goto_0

    .line 5109
    .end local v8    # "dev":I
    :cond_1
    if-ne v9, p1, :cond_3

    .line 5110
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xf

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5119
    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-ne p1, v0, :cond_8

    .line 5120
    :cond_2
    const/16 v7, 0x64

    .line 5129
    :cond_3
    :goto_1
    const-string v0, "AudioService"

    const-string v1, "in checkSendBecomingNoisyIntent after send MSG_BROADCAST_AUDIO_BECOMING_NOISY"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5133
    .end local v9    # "devices":I
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_4
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/media/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/media/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/media/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5136
    :cond_5
    sget-object v1, Landroid/media/AudioService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    monitor-enter v1

    .line 5137
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 5138
    .local v12, "time":J
    sget-object v0, Landroid/media/AudioService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, v12

    if-lez v0, :cond_6

    .line 5139
    sget-object v0, Landroid/media/AudioService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v2, v12

    long-to-int v0, v2

    add-int/lit8 v7, v0, 0x1e

    .line 5141
    :cond_6
    monitor-exit v1

    .line 5143
    .end local v12    # "time":J
    :cond_7
    return v7

    .line 5123
    .restart local v9    # "devices":I
    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_8
    const/16 v7, 0x3e8

    goto :goto_1

    .line 5141
    .end local v9    # "devices":I
    .end local v10    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private configureHdmiPlugIntent(Landroid/content/Intent;I)V
    .locals 22
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "state"    # I

    .prologue
    .line 5332
    const-string v20, "android.media.action.HDMI_AUDIO_PLUG"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5333
    const-string v20, "android.media.extra.AUDIO_PLUG_STATE"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5334
    const/16 v20, 0x1

    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 5335
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 5336
    .local v18, "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 5337
    .local v17, "portGeneration":[I
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->listAudioPorts(Ljava/util/ArrayList;[I)I

    move-result v19

    .line 5338
    .local v19, "status":I
    if-nez v19, :cond_8

    .line 5339
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/media/AudioPort;

    .line 5340
    .local v16, "port":Landroid/media/AudioPort;
    move-object/from16 v0, v16

    instance-of v0, v0, Landroid/media/AudioDevicePort;

    move/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v5, v16

    .line 5341
    check-cast v5, Landroid/media/AudioDevicePort;

    .line 5342
    .local v5, "devicePort":Landroid/media/AudioDevicePort;
    invoke-virtual {v5}, Landroid/media/AudioDevicePort;->type()I

    move-result v20

    const/16 v21, 0x400

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1

    invoke-virtual {v5}, Landroid/media/AudioDevicePort;->type()I

    move-result v20

    const/high16 v21, 0x40000

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 5345
    :cond_1
    invoke-virtual {v5}, Landroid/media/AudioDevicePort;->formats()[I

    move-result-object v9

    .line 5346
    .local v9, "formats":[I
    array-length v0, v9

    move/from16 v20, v0

    if-lez v20, :cond_5

    .line 5347
    new-instance v7, Ljava/util/ArrayList;

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 5348
    .local v7, "encodingList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object v3, v9

    .local v3, "arr$":[I
    array-length v13, v3

    .local v13, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_1
    if-ge v12, v13, :cond_3

    aget v8, v3, v12

    .line 5350
    .local v8, "format":I
    if-eqz v8, :cond_2

    .line 5351
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5348
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 5354
    .end local v8    # "format":I
    :cond_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v6, v0, [I

    .line 5355
    .local v6, "encodingArray":[I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    array-length v0, v6

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v10, v0, :cond_4

    .line 5356
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    aput v20, v6, v10

    .line 5355
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 5358
    :cond_4
    const-string v20, "android.media.extra.ENCODINGS"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 5361
    .end local v3    # "arr$":[I
    .end local v6    # "encodingArray":[I
    .end local v7    # "encodingList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v10    # "i":I
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    :cond_5
    const/4 v15, 0x0

    .line 5362
    .local v15, "maxChannels":I
    invoke-virtual {v5}, Landroid/media/AudioDevicePort;->channelMasks()[I

    move-result-object v3

    .restart local v3    # "arr$":[I
    array-length v13, v3

    .restart local v13    # "len$":I
    const/4 v12, 0x0

    .restart local v12    # "i$":I
    :goto_3
    if-ge v12, v13, :cond_7

    aget v14, v3, v12

    .line 5363
    .local v14, "mask":I
    invoke-static {v14}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v4

    .line 5364
    .local v4, "channelCount":I
    if-le v4, v15, :cond_6

    .line 5365
    move v15, v4

    .line 5362
    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 5368
    .end local v4    # "channelCount":I
    .end local v14    # "mask":I
    :cond_7
    const-string v20, "android.media.extra.MAX_CHANNEL_COUNT"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 5374
    .end local v3    # "arr$":[I
    .end local v5    # "devicePort":Landroid/media/AudioDevicePort;
    .end local v9    # "formats":[I
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    .end local v15    # "maxChannels":I
    .end local v16    # "port":Landroid/media/AudioPort;
    .end local v17    # "portGeneration":[I
    .end local v18    # "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    .end local v19    # "status":I
    :cond_8
    return-void
.end method

.method private createAudioSystemThread()V
    .locals 1

    .prologue
    .line 793
    new-instance v0, Landroid/media/AudioService$AudioSystemThread;

    invoke-direct {v0, p0}, Landroid/media/AudioService$AudioSystemThread;-><init>(Landroid/media/AudioService;)V

    iput-object v0, p0, Landroid/media/AudioService;->mAudioSystemThread:Landroid/media/AudioService$AudioSystemThread;

    .line 794
    iget-object v0, p0, Landroid/media/AudioService;->mAudioSystemThread:Landroid/media/AudioService$AudioSystemThread;

    invoke-virtual {v0}, Landroid/media/AudioService$AudioSystemThread;->start()V

    .line 795
    invoke-direct {p0}, Landroid/media/AudioService;->waitForAudioHandlerCreation()V

    .line 796
    return-void
.end method

.method private createStreamStates()V
    .locals 6

    .prologue
    .line 841
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 842
    .local v1, "numStreamTypes":I
    new-array v2, v1, [Landroid/media/AudioService$VolumeStreamState;

    iput-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    .line 844
    .local v2, "streams":[Landroid/media/AudioService$VolumeStreamState;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 845
    new-instance v3, Landroid/media/AudioService$VolumeStreamState;

    sget-object v4, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget-object v5, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v5, v5, v0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    invoke-direct {v3, p0, v4, v0, v5}, Landroid/media/AudioService$VolumeStreamState;-><init>(Landroid/media/AudioService;Ljava/lang/String;ILandroid/media/AudioService$1;)V

    aput-object v3, v2, v0

    .line 844
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 848
    :cond_0
    invoke-direct {p0}, Landroid/media/AudioService;->checkAllFixedVolumeDevices()V

    .line 849
    invoke-direct {p0}, Landroid/media/AudioService;->checkAllAliasStreamVolumes()V

    .line 850
    return-void
.end method

.method private discardRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z
    .locals 3
    .param p1, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 1752
    iget-object v2, p0, Landroid/media/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1753
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/AudioService$RmtSbmxFullVolDeathHandler;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1754
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RmtSbmxFullVolDeathHandler;

    .line 1755
    .local v0, "handler":Landroid/media/AudioService$RmtSbmxFullVolDeathHandler;
    invoke-virtual {v0, p1}, Landroid/media/AudioService$RmtSbmxFullVolDeathHandler;->isHandlerFor(Landroid/os/IBinder;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1756
    invoke-virtual {v0}, Landroid/media/AudioService$RmtSbmxFullVolDeathHandler;->forget()V

    .line 1757
    iget-object v2, p0, Landroid/media/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1758
    const/4 v2, 0x1

    .line 1761
    .end local v0    # "handler":Landroid/media/AudioService$RmtSbmxFullVolDeathHandler;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private disconnectBluetoothSco(I)V
    .locals 8
    .param p1, "exceptPid"    # I

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x2

    .line 3111
    iget-object v7, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v7

    .line 3112
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioService;->checkScoAudioState()V

    .line 3113
    iget v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    if-ne v0, v2, :cond_3

    .line 3115
    :cond_0
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1

    .line 3116
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_2

    .line 3117
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v1, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3119
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x9

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3130
    :cond_1
    :goto_0
    monitor-exit v7

    .line 3131
    return-void

    .line 3122
    :cond_2
    iget v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Landroid/media/AudioService;->getBluetoothHeadset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3124
    const/4 v0, 0x4

    iput v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    goto :goto_0

    .line 3130
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3128
    :cond_3
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, p1, v0}, Landroid/media/AudioService;->clearAllScoClients(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private doSetMasterVolume(FI)V
    .locals 9
    .param p1, "volume"    # F
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x0

    .line 1909
    invoke-static {}, Landroid/media/AudioSystem;->getMasterMute()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1910
    invoke-virtual {p0}, Landroid/media/AudioService;->getMasterVolume()I

    move-result v8

    .line 1911
    .local v8, "oldVolume":I
    invoke-static {p1}, Landroid/media/AudioSystem;->setMasterVolume(F)I

    .line 1913
    invoke-virtual {p0}, Landroid/media/AudioService;->getMasterVolume()I

    move-result v7

    .line 1914
    .local v7, "newVolume":I
    if-eq v7, v8, :cond_0

    .line 1916
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x2

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/4 v5, 0x0

    const/16 v6, 0x1f4

    move v4, v2

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1918
    invoke-virtual {p0}, Landroid/media/AudioService;->getMasterMaxVolume()I

    move-result v0

    invoke-direct {p0, v8, v7, v0, p2}, Landroid/media/AudioService;->setSystemAudioVolume(IIII)V

    .line 1921
    :cond_0
    invoke-direct {p0, p2, v8, v7}, Landroid/media/AudioService;->sendMasterVolumeUpdate(III)V

    .line 1923
    .end local v7    # "newVolume":I
    .end local v8    # "oldVolume":I
    :cond_1
    return-void
.end method

.method private dumpAudioPolicies(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 6686
    const-string v2, "\nAudio policies:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6687
    iget-object v3, p0, Landroid/media/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v3

    .line 6688
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$AudioPolicyProxy;

    .line 6689
    .local v1, "policy":Landroid/media/AudioService$AudioPolicyProxy;
    invoke-virtual {v1}, Landroid/media/AudioService$AudioPolicyProxy;->toLogFriendlyString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 6691
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "policy":Landroid/media/AudioService$AudioPolicyProxy;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6692
    return-void
.end method

.method private dumpRingerMode(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 6077
    const-string v0, "\nRinger mode: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6078
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- mode (internal) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/media/AudioService;->RINGER_MODE_NAMES:[Ljava/lang/String;

    iget v2, p0, Landroid/media/AudioService;->mRingerMode:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6079
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- mode (external) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/media/AudioService;->RINGER_MODE_NAMES:[Ljava/lang/String;

    iget v2, p0, Landroid/media/AudioService;->mRingerModeExternal:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6080
    const-string v0, "- ringer mode affected streams = 0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6081
    iget v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6082
    const-string v0, "- ringer mode muted streams = 0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6083
    iget v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6084
    const-string v0, "- delegate = "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6085
    return-void
.end method

.method private dumpStreamStates(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 853
    const-string v2, "\nStream volumes (device: index)"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 854
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 855
    .local v1, "numStreamTypes":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 856
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/media/AudioService;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 857
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v0

    # invokes: Landroid/media/AudioService$VolumeStreamState;->dump(Ljava/io/PrintWriter;)V
    invoke-static {v2, p1}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;Ljava/io/PrintWriter;)V

    .line 858
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 855
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 860
    :cond_0
    const-string v2, "\n- mute affected streams = 0x"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 861
    iget v2, p0, Landroid/media/AudioService;->mMuteAffectedStreams:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 862
    return-void
.end method

.method private enforceSafeMediaVolume()V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 5897
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v2, 0x3

    aget-object v5, v0, v2

    .line 5898
    .local v5, "streamState":Landroid/media/AudioService$VolumeStreamState;
    const/16 v7, 0xc

    .line 5899
    .local v7, "devices":I
    const/4 v8, 0x0

    .local v8, "i":I
    move v9, v8

    .line 5901
    .end local v8    # "i":I
    .local v9, "i":I
    :goto_0
    if-eqz v7, :cond_2

    .line 5902
    const/4 v0, 0x1

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "i":I
    .restart local v8    # "i":I
    shl-int v3, v0, v9

    .line 5903
    .local v3, "device":I
    and-int v0, v3, v7

    if-nez v0, :cond_0

    move v9, v8

    .line 5904
    .end local v8    # "i":I
    .restart local v9    # "i":I
    goto :goto_0

    .line 5906
    .end local v9    # "i":I
    .restart local v8    # "i":I
    :cond_0
    invoke-virtual {v5, v3}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v10

    .line 5907
    .local v10, "index":I
    iget v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeIndex:I

    if-le v10, v0, :cond_1

    .line 5908
    iget v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeIndex:I

    invoke-virtual {v5, v0, v3}, Landroid/media/AudioService$VolumeStreamState;->setIndex(II)Z

    .line 5909
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v2, 0x2

    move v4, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5917
    :cond_1
    xor-int/lit8 v0, v3, -0x1

    and-int/2addr v7, v0

    move v9, v8

    .line 5918
    .end local v8    # "i":I
    .restart local v9    # "i":I
    goto :goto_0

    .line 5919
    .end local v3    # "device":I
    .end local v10    # "index":I
    :cond_2
    return-void
.end method

.method private enforceSelfOrSystemUI(Ljava/lang/String;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 6363
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Only SystemUI can "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6365
    return-void
.end method

.method private ensureValidDirection(I)V
    .locals 3
    .param p1, "direction"    # I

    .prologue
    .line 3584
    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 3585
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad direction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3587
    :cond_1
    return-void
.end method

.method private ensureValidRingerMode(I)V
    .locals 3
    .param p1, "ringerMode"    # I

    .prologue
    .line 1986
    invoke-virtual {p0, p1}, Landroid/media/AudioService;->isValidRingerMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1987
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad ringer mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1989
    :cond_0
    return-void
.end method

.method private ensureValidSteps(I)V
    .locals 3
    .param p1, "steps"    # I

    .prologue
    .line 3590
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 3591
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad volume adjust steps "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3593
    :cond_0
    return-void
.end method

.method private ensureValidStreamType(I)V
    .locals 3
    .param p1, "streamType"    # I

    .prologue
    .line 3596
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 3597
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad stream type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3599
    :cond_1
    return-void
.end method

.method private findVolumeDelta(II)I
    .locals 6
    .param p1, "direction"    # I
    .param p2, "volume"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 1505
    const/4 v0, 0x0

    .line 1506
    .local v0, "delta":I
    if-ne p1, v5, :cond_4

    .line 1507
    const/16 v4, 0x64

    if-ne p2, v4, :cond_1

    .line 1536
    :cond_0
    :goto_0
    return v3

    .line 1511
    :cond_1
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    aget v0, v3, v5

    .line 1514
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_1
    if-le v1, v5, :cond_2

    .line 1515
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    add-int/lit8 v4, v1, -0x1

    aget v3, v3, v4

    if-lt p2, v3, :cond_3

    .line 1516
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    aget v0, v3, v1

    .end local v1    # "i":I
    :cond_2
    :goto_2
    move v3, v0

    .line 1536
    goto :goto_0

    .line 1514
    .restart local v1    # "i":I
    :cond_3
    add-int/lit8 v1, v1, -0x2

    goto :goto_1

    .line 1520
    .end local v1    # "i":I
    :cond_4
    const/4 v4, -0x1

    if-ne p1, v4, :cond_2

    .line 1521
    if-eqz p2, :cond_0

    .line 1524
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    array-length v2, v3

    .line 1526
    .local v2, "length":I
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    add-int/lit8 v4, v2, -0x1

    aget v3, v3, v4

    neg-int v0, v3

    .line 1529
    const/4 v1, 0x2

    .restart local v1    # "i":I
    :goto_3
    if-ge v1, v2, :cond_2

    .line 1530
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    aget v3, v3, v1

    if-gt p2, v3, :cond_5

    .line 1531
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    add-int/lit8 v4, v1, -0x1

    aget v3, v3, v4

    neg-int v0, v3

    .line 1532
    goto :goto_2

    .line 1529
    :cond_5
    add-int/lit8 v1, v1, 0x2

    goto :goto_3
.end method

.method private getActiveStreamType(I)I
    .locals 7
    .param p1, "suggestedStreamType"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x5

    const/high16 v6, -0x80000000

    const/4 v1, 0x3

    const/4 v0, 0x0

    .line 3627
    const-string v4, "AudioService"

    const-string v5, "in getActiveStreamType"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3629
    iget v4, p0, Landroid/media/AudioService;->mPlatformType:I

    packed-switch v4, :pswitch_data_0

    .line 3667
    invoke-direct {p0}, Landroid/media/AudioService;->isInCommunication()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3668
    invoke-static {v0}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v2

    if-ne v2, v1, :cond_5

    .line 3670
    const-string v0, "AudioService"

    const-string v1, "getActiveStreamType: Forcing STREAM_BLUETOOTH_SCO"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3671
    const/4 p1, 0x6

    .line 3696
    .end local p1    # "suggestedStreamType":I
    :goto_0
    return p1

    .line 3631
    .restart local p1    # "suggestedStreamType":I
    :pswitch_0
    invoke-direct {p0}, Landroid/media/AudioService;->isInCommunication()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3632
    invoke-static {v0}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 3635
    const/4 p1, 0x6

    goto :goto_0

    :cond_0
    move p1, v0

    .line 3638
    goto :goto_0

    .line 3640
    :cond_1
    if-ne p1, v6, :cond_4

    .line 3641
    sget v3, Landroid/media/AudioService$StreamOverride;->sDelayMs:I

    invoke-direct {p0, v3}, Landroid/media/AudioService;->isAfMusicActiveRecently(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3643
    const-string v0, "AudioService"

    const-string v2, "getActiveStreamType: Forcing STREAM_MUSIC stream active"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v1

    .line 3644
    goto :goto_0

    .line 3646
    :cond_2
    iget v1, p0, Landroid/media/AudioService;->mMode:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    move p1, v0

    .line 3647
    goto :goto_0

    .line 3651
    :cond_3
    const-string v0, "AudioService"

    const-string v1, "getActiveStreamType: Forcing STREAM_RING b/c default"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v2

    .line 3652
    goto :goto_0

    .line 3654
    :cond_4
    invoke-direct {p0, v0}, Landroid/media/AudioService;->isAfMusicActiveRecently(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3656
    const-string v0, "AudioService"

    const-string v2, "getActiveStreamType: Forcing STREAM_MUSIC stream active"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v1

    .line 3657
    goto :goto_0

    .line 3661
    :pswitch_1
    if-ne p1, v6, :cond_a

    move p1, v1

    .line 3663
    goto :goto_0

    .line 3673
    :cond_5
    const-string v1, "AudioService"

    const-string v2, "getActiveStreamType: Forcing STREAM_VOICE_CALL"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    .line 3674
    goto :goto_0

    .line 3676
    :cond_6
    sget v0, Landroid/media/AudioService$StreamOverride;->sDelayMs:I

    invoke-static {v3, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-nez v0, :cond_7

    sget v0, Landroid/media/AudioService$StreamOverride;->sDelayMs:I

    invoke-static {v2, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3680
    :cond_7
    const-string v0, "AudioService"

    const-string v1, "getActiveStreamType: Forcing STREAM_NOTIFICATION"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v3

    .line 3681
    goto :goto_0

    .line 3682
    :cond_8
    if-ne p1, v6, :cond_a

    .line 3683
    sget v0, Landroid/media/AudioService$StreamOverride;->sDelayMs:I

    invoke-direct {p0, v0}, Landroid/media/AudioService;->isAfMusicActiveRecently(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3684
    const-string v0, "AudioService"

    const-string v2, "getActiveStreamType: forcing STREAM_MUSIC"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v1

    .line 3685
    goto :goto_0

    .line 3687
    :cond_9
    const-string v0, "AudioService"

    const-string v1, "getActiveStreamType: using STREAM_NOTIFICATION as default"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v3

    .line 3689
    goto/16 :goto_0

    .line 3694
    :cond_a
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActiveStreamType: Returning suggested type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3629
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getBluetoothHeadset()Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 3095
    const/4 v8, 0x0

    .line 3096
    .local v8, "result":Z
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v7

    .line 3097
    .local v7, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v7, :cond_0

    .line 3098
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/media/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x1

    invoke-virtual {v7, v0, v1, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v8

    .line 3105
    :cond_0
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x9

    const/4 v5, 0x0

    if-eqz v8, :cond_1

    const/16 v6, 0xbb8

    :goto_0
    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3107
    return v8

    :cond_1
    move v6, v2

    .line 3105
    goto :goto_0
.end method

.method public static getDefaultStreamVolume(I)I
    .locals 1
    .param p0, "streamType"    # I

    .prologue
    .line 1856
    sget-object v0, Landroid/media/AudioService;->DEFAULT_STREAM_VOLUME:[I

    aget v0, v0, p0

    return v0
.end method

.method private getDeviceForStream(I)I
    .locals 2
    .param p1, "stream"    # I

    .prologue
    .line 3765
    invoke-static {p1}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v0

    .line 3766
    .local v0, "device":I
    add-int/lit8 v1, v0, -0x1

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 3773
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 3774
    const/4 v0, 0x2

    .line 3785
    :cond_0
    :goto_0
    return v0

    .line 3775
    :cond_1
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_2

    .line 3776
    const/high16 v0, 0x40000

    goto :goto_0

    .line 3777
    :cond_2
    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_3

    .line 3778
    const/high16 v0, 0x80000

    goto :goto_0

    .line 3779
    :cond_3
    const/high16 v1, 0x200000

    and-int/2addr v1, v0

    if-eqz v1, :cond_4

    .line 3780
    const/high16 v0, 0x200000

    goto :goto_0

    .line 3782
    :cond_4
    and-int/lit16 v0, v0, 0x380

    goto :goto_0
.end method

.method protected static getMaxStreamVolume(I)I
    .locals 1
    .param p0, "streamType"    # I

    .prologue
    .line 1852
    sget-object v0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    aget v0, v0, p0

    return v0
.end method

.method private getScoClient(Landroid/os/IBinder;Z)Landroid/media/AudioService$ScoClient;
    .locals 6
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "create"    # Z

    .prologue
    .line 3059
    iget-object v5, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v5

    .line 3060
    const/4 v0, 0x0

    .line 3061
    .local v0, "client":Landroid/media/AudioService$ScoClient;
    :try_start_0
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 3062
    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    move-object v1, v0

    .end local v0    # "client":Landroid/media/AudioService$ScoClient;
    .local v1, "client":Landroid/media/AudioService$ScoClient;
    :goto_0
    if-ge v2, v3, :cond_1

    .line 3063
    :try_start_1
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$ScoClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3064
    .end local v1    # "client":Landroid/media/AudioService$ScoClient;
    .restart local v0    # "client":Landroid/media/AudioService$ScoClient;
    :try_start_2
    invoke-virtual {v0}, Landroid/media/AudioService$ScoClient;->getBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 3065
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v0

    .line 3071
    .end local v0    # "client":Landroid/media/AudioService$ScoClient;
    .restart local v1    # "client":Landroid/media/AudioService$ScoClient;
    :goto_1
    return-object v1

    .line 3062
    .end local v1    # "client":Landroid/media/AudioService$ScoClient;
    .restart local v0    # "client":Landroid/media/AudioService$ScoClient;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    .end local v0    # "client":Landroid/media/AudioService$ScoClient;
    .restart local v1    # "client":Landroid/media/AudioService$ScoClient;
    goto :goto_0

    .line 3067
    :cond_1
    if-eqz p2, :cond_2

    .line 3068
    :try_start_3
    new-instance v0, Landroid/media/AudioService$ScoClient;

    invoke-direct {v0, p0, p1}, Landroid/media/AudioService$ScoClient;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3069
    .end local v1    # "client":Landroid/media/AudioService$ScoClient;
    .restart local v0    # "client":Landroid/media/AudioService$ScoClient;
    :try_start_4
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3071
    :goto_2
    monitor-exit v5

    move-object v1, v0

    .end local v0    # "client":Landroid/media/AudioService$ScoClient;
    .restart local v1    # "client":Landroid/media/AudioService$ScoClient;
    goto :goto_1

    .line 3072
    .end local v1    # "client":Landroid/media/AudioService$ScoClient;
    .end local v2    # "i":I
    .end local v3    # "size":I
    .restart local v0    # "client":Landroid/media/AudioService$ScoClient;
    :catchall_0
    move-exception v4

    :goto_3
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .end local v0    # "client":Landroid/media/AudioService$ScoClient;
    .restart local v1    # "client":Landroid/media/AudioService$ScoClient;
    .restart local v2    # "i":I
    .restart local v3    # "size":I
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "client":Landroid/media/AudioService$ScoClient;
    .restart local v0    # "client":Landroid/media/AudioService$ScoClient;
    goto :goto_3

    .end local v0    # "client":Landroid/media/AudioService$ScoClient;
    .restart local v1    # "client":Landroid/media/AudioService$ScoClient;
    :cond_2
    move-object v0, v1

    .end local v1    # "client":Landroid/media/AudioService$ScoClient;
    .restart local v0    # "client":Landroid/media/AudioService$ScoClient;
    goto :goto_2
.end method

.method public static getValueForVibrateSetting(III)I
    .locals 2
    .param p0, "existingValue"    # I
    .param p1, "vibrateType"    # I
    .param p2, "vibrateSetting"    # I

    .prologue
    .line 2227
    const/4 v0, 0x3

    mul-int/lit8 v1, p1, 0x2

    shl-int/2addr v0, v1

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr p0, v0

    .line 2230
    and-int/lit8 v0, p2, 0x3

    mul-int/lit8 v1, p1, 0x2

    shl-int/2addr v0, v1

    or-int/2addr p0, v0

    .line 2232
    return p0
.end method

.method private handleConfigurationChanged(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 5697
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    .line 5699
    .local v9, "config":Landroid/content/res/Configuration;
    iget-boolean v0, p0, Landroid/media/AudioService;->mMonitorOrientation:Z

    if-eqz v0, :cond_0

    .line 5700
    iget v11, v9, Landroid/content/res/Configuration;->orientation:I

    .line 5701
    .local v11, "newOrientation":I
    iget v0, p0, Landroid/media/AudioService;->mDeviceOrientation:I

    if-eq v11, v0, :cond_0

    .line 5702
    iput v11, p0, Landroid/media/AudioService;->mDeviceOrientation:I

    .line 5703
    invoke-direct {p0}, Landroid/media/AudioService;->setOrientationForAudioSystem()V

    .line 5706
    .end local v11    # "newOrientation":I
    :cond_0
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x10

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5714
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #android:bool@config_camera_sound_forced#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    .line 5716
    .local v7, "cameraSoundForced":Z
    iget-object v13, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5717
    const/4 v8, 0x0

    .line 5718
    .local v8, "cameraSoundForcedChanged":Z
    :try_start_1
    iget-object v1, p0, Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5719
    :try_start_2
    iget-object v0, p0, Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v7, v0, :cond_1

    .line 5720
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    .line 5721
    const/4 v8, 0x1

    .line 5723
    :cond_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5724
    if-eqz v8, :cond_3

    .line 5725
    :try_start_3
    invoke-direct {p0}, Landroid/media/AudioService;->isPlatformTelevision()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5726
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v1, 0x7

    aget-object v12, v0, v1

    .line 5727
    .local v12, "s":Landroid/media/AudioService$VolumeStreamState;
    if-eqz v7, :cond_4

    .line 5728
    invoke-virtual {v12}, Landroid/media/AudioService$VolumeStreamState;->setAllIndexesToMax()V

    .line 5729
    iget v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    .line 5737
    :goto_0
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerModeInternal()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    .line 5740
    .end local v12    # "s":Landroid/media/AudioService$VolumeStreamState;
    :cond_2
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x8

    const/4 v2, 0x2

    const/4 v3, 0x4

    if-eqz v7, :cond_5

    const/16 v4, 0xb

    :goto_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5749
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xa

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v6, 0x7

    aget-object v5, v5, v6

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5756
    :cond_3
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 5757
    :try_start_4
    iget-object v0, p0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-virtual {v9}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioService$VolumeController;->setLayoutDirection(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 5761
    .end local v7    # "cameraSoundForced":Z
    .end local v8    # "cameraSoundForcedChanged":Z
    .end local v9    # "config":Landroid/content/res/Configuration;
    :goto_2
    return-void

    .line 5723
    .restart local v7    # "cameraSoundForced":Z
    .restart local v8    # "cameraSoundForcedChanged":Z
    .restart local v9    # "config":Landroid/content/res/Configuration;
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0

    .line 5756
    :catchall_1
    move-exception v0

    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 5758
    .end local v7    # "cameraSoundForced":Z
    .end local v8    # "cameraSoundForcedChanged":Z
    .end local v9    # "config":Landroid/content/res/Configuration;
    :catch_0
    move-exception v10

    .line 5759
    .local v10, "e":Ljava/lang/Exception;
    const-string v0, "AudioService"

    const-string v1, "Error handling configuration change: "

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 5732
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v7    # "cameraSoundForced":Z
    .restart local v8    # "cameraSoundForcedChanged":Z
    .restart local v9    # "config":Landroid/content/res/Configuration;
    .restart local v12    # "s":Landroid/media/AudioService$VolumeStreamState;
    :cond_4
    :try_start_8
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v12, v0}, Landroid/media/AudioService$VolumeStreamState;->setAllIndexes(Landroid/media/AudioService$VolumeStreamState;)V

    .line 5733
    iget v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_0

    .line 5740
    .end local v12    # "s":Landroid/media/AudioService$VolumeStreamState;
    :cond_5
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private handleDeviceConnection(ZILjava/lang/String;)Z
    .locals 6
    .param p1, "connected"    # Z
    .param p2, "device"    # I
    .param p3, "params"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 5059
    const-string v1, "AudioService"

    const-string v4, "in handleDeviceConnection"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5061
    iget-object v4, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v4

    .line 5062
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v0, v2

    .line 5065
    .local v0, "isConnected":Z
    :goto_0
    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    .line 5066
    const/4 v3, 0x0

    iget-object v1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p2, v3, v1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 5069
    iget-object v1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5070
    monitor-exit v4

    move v1, v2

    .line 5087
    :goto_1
    return v1

    .end local v0    # "isConnected":Z
    :cond_1
    move v0, v3

    .line 5062
    goto :goto_0

    .line 5071
    .restart local v0    # "isConnected":Z
    :cond_2
    if-nez v0, :cond_4

    if-eqz p1, :cond_4

    .line 5072
    const/4 v1, 0x1

    invoke-static {p2, v1, p3}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 5075
    iget-object v1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5078
    const/4 v1, 0x4

    if-ne p2, v1, :cond_3

    .line 5079
    iget-object v1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5080
    iget-object v1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5084
    :cond_3
    monitor-exit v4

    move v1, v2

    goto :goto_1

    .line 5086
    :cond_4
    monitor-exit v4

    move v1, v3

    .line 5087
    goto :goto_1

    .line 5086
    .end local v0    # "isConnected":Z
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleMediaRestartForFmMode()V
    .locals 2

    .prologue
    .line 6283
    const-string v0, "AudioService"

    const-string v1, "handleMediaRestartForFmMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6288
    sget-object v1, Landroid/media/AudioService;->mFmModeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6289
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService;->mFmModeStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6290
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/AudioService;->setFmRxMode(Z)V

    .line 6292
    :cond_0
    monitor-exit v1

    .line 6293
    return-void

    .line 6292
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private hasRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z
    .locals 2
    .param p1, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 1766
    iget-object v1, p0, Landroid/media/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1767
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/AudioService$RmtSbmxFullVolDeathHandler;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1768
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$RmtSbmxFullVolDeathHandler;

    invoke-virtual {v1, p1}, Landroid/media/AudioService$RmtSbmxFullVolDeathHandler;->isHandlerFor(Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1769
    const/4 v1, 0x1

    .line 1772
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hasScheduledA2dpDockTimeout()Z
    .locals 2

    .prologue
    .line 4952
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/media/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method private initFmMode()V
    .locals 4

    .prologue
    .line 6270
    const-string v1, "AudioService"

    const-string v2, "init fm mode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6272
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/media/AudioService;->setFmRxMode(Z)V

    .line 6273
    sget-object v2, Landroid/media/AudioService;->mFmModeLock:Ljava/lang/Object;

    monitor-enter v2

    .line 6274
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService;->mFmModeStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6275
    const-string v1, "AudioService"

    const-string v3, "in setFmRxMode : pop"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6276
    iget-object v1, p0, Landroid/media/AudioService;->mFmModeStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FmModeStackEntry;

    .line 6277
    .local v0, "fse":Landroid/media/AudioService$FmModeStackEntry;
    invoke-virtual {v0}, Landroid/media/AudioService$FmModeStackEntry;->unlinkToDeath()V

    .line 6279
    .end local v0    # "fse":Landroid/media/AudioService$FmModeStackEntry;
    :cond_0
    monitor-exit v2

    .line 6280
    return-void

    .line 6279
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isAfMusicActiveRecently(I)Z
    .locals 2
    .param p1, "delay_ms"    # I

    .prologue
    const/4 v1, 0x3

    .line 3621
    invoke-static {v1, p1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1, p1}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

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

.method private isCts(Landroid/content/Context;)Z
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 3496
    const-string v8, "activity"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 3497
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    .line 3498
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/4 v2, 0x0

    .line 3499
    .local v2, "composerTaskInfor":Landroid/app/ActivityManager$RunningTaskInfo;
    const/4 v3, 0x0

    .line 3501
    .local v3, "found":Z
    if-eqz v5, :cond_2

    .line 3502
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    .line 3503
    .local v7, "size":I
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_0
    if-ge v4, v7, :cond_1

    .line 3504
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 3505
    .local v1, "appInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v6, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 3507
    .local v6, "packageName":Ljava/lang/String;
    if-eqz v6, :cond_3

    const-string v8, "com.android.cts.verifier"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "com.android.cts"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "android.holo.cts"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3510
    :cond_0
    const/4 v3, 0x1

    .line 3514
    .end local v1    # "appInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 3516
    .end local v4    # "index":I
    .end local v7    # "size":I
    :cond_2
    const-string v8, "AudioService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isCtsTest= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3517
    return v3

    .line 3503
    .restart local v1    # "appInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .restart local v4    # "index":I
    .restart local v6    # "packageName":Ljava/lang/String;
    .restart local v7    # "size":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private isInCommunication()Z
    .locals 6

    .prologue
    .line 3602
    const/4 v0, 0x0

    .line 3604
    .local v0, "IsInCall":Z
    iget-object v4, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "telecom"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;

    .line 3607
    .local v1, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3608
    .local v2, "ident":J
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    .line 3609
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3611
    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioService;->getMode()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isPlatformTelevision()Z
    .locals 2

    .prologue
    .line 190
    iget v0, p0, Landroid/media/AudioService;->mPlatformType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPlatformVoice()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 186
    iget v1, p0, Landroid/media/AudioService;->mPlatformType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isStreamMutedByRingerMode(I)Z
    .locals 3
    .param p1, "streamType"    # I

    .prologue
    const/4 v0, 0x1

    .line 3527
    iget v1, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadTouchSoundAssetDefaults()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2493
    sget-object v1, Landroid/media/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    const-string v2, "Effect_Tick.ogg"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2494
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 2495
    iget-object v1, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v1, v1, v0

    aput v4, v1, v4

    .line 2496
    iget-object v1, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v1, v1, v0

    const/4 v2, 0x1

    const/4 v3, -0x1

    aput v3, v1, v2

    .line 2494
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2498
    :cond_0
    return-void
.end method

.method private loadTouchSoundAssets()V
    .locals 14

    .prologue
    .line 2501
    const/4 v9, 0x0

    .line 2504
    .local v9, "parser":Landroid/content/res/XmlResourceParser;
    sget-object v11, Landroid/media/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1

    .line 2573
    :cond_0
    :goto_0
    return-void

    .line 2508
    :cond_1
    invoke-direct {p0}, Landroid/media/AudioService;->loadTouchSoundAssetDefaults()V

    .line 2511
    :try_start_0
    iget-object v11, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, #android:xml@audio_assets#t

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v9

    .line 2513
    const-string v11, "audio_assets"

    invoke-static {v9, v11}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 2514
    const/4 v11, 0x0

    const-string/jumbo v12, "version"

    invoke-interface {v9, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2515
    .local v10, "version":Ljava/lang/String;
    const/4 v7, 0x0

    .line 2517
    .local v7, "inTouchSoundsGroup":Z
    const-string v11, "1.0"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 2519
    :cond_2
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2520
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2521
    .local v1, "element":Ljava/lang/String;
    if-nez v1, :cond_4

    .line 2532
    :goto_1
    if-eqz v7, :cond_3

    .line 2533
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2534
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2535
    if-nez v1, :cond_5

    .line 2569
    .end local v1    # "element":Ljava/lang/String;
    :cond_3
    if-eqz v9, :cond_0

    .line 2570
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .line 2524
    .restart local v1    # "element":Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string v11, "group"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 2525
    const/4 v11, 0x0

    const-string/jumbo v12, "name"

    invoke-interface {v9, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2526
    .local v8, "name":Ljava/lang/String;
    const-string/jumbo v11, "touch_sounds"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 2527
    const/4 v7, 0x1

    .line 2528
    goto :goto_1

    .line 2538
    .end local v8    # "name":Ljava/lang/String;
    :cond_5
    const-string v11, "asset"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 2539
    const/4 v11, 0x0

    const-string v12, "id"

    invoke-interface {v9, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2540
    .local v6, "id":Ljava/lang/String;
    const/4 v11, 0x0

    const-string v12, "file"

    invoke-interface {v9, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 2544
    .local v3, "file":Ljava/lang/String;
    :try_start_2
    const-class v11, Landroid/media/AudioManager;

    invoke-virtual {v11, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 2545
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    .line 2551
    .local v4, "fx":I
    :try_start_3
    sget-object v11, Landroid/media/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 2552
    .local v5, "i":I
    const/4 v11, -0x1

    if-ne v5, v11, :cond_6

    .line 2553
    sget-object v11, Landroid/media/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v5

    .line 2554
    sget-object v11, Landroid/media/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2556
    :cond_6
    iget-object v11, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v11, v11, v4

    const/4 v12, 0x0

    aput v5, v11, v12
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 2562
    .end local v1    # "element":Ljava/lang/String;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "file":Ljava/lang/String;
    .end local v4    # "fx":I
    .end local v5    # "i":I
    .end local v6    # "id":Ljava/lang/String;
    .end local v7    # "inTouchSoundsGroup":Z
    .end local v10    # "version":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2563
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    :try_start_4
    const-string v11, "AudioService"

    const-string v12, "audio assets file not found"

    invoke-static {v11, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2569
    if-eqz v9, :cond_0

    .line 2570
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0

    .line 2546
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .restart local v1    # "element":Ljava/lang/String;
    .restart local v3    # "file":Ljava/lang/String;
    .restart local v6    # "id":Ljava/lang/String;
    .restart local v7    # "inTouchSoundsGroup":Z
    .restart local v10    # "version":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 2547
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v11, "AudioService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid touch sound ID: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 2564
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "element":Ljava/lang/String;
    .end local v3    # "file":Ljava/lang/String;
    .end local v6    # "id":Ljava/lang/String;
    .end local v7    # "inTouchSoundsGroup":Z
    .end local v10    # "version":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 2565
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_6
    const-string v11, "AudioService"

    const-string v12, "XML parser exception reading touch sound assets"

    invoke-static {v11, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2569
    if-eqz v9, :cond_0

    .line 2570
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0

    .line 2566
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3
    move-exception v0

    .line 2567
    .local v0, "e":Ljava/io/IOException;
    :try_start_7
    const-string v11, "AudioService"

    const-string v12, "I/O exception reading touch sound assets"

    invoke-static {v11, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2569
    if-eqz v9, :cond_0

    .line 2570
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0

    .line 2569
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    if-eqz v9, :cond_7

    .line 2570
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_7
    throw v11
.end method

.method private makeA2dpDeviceAvailable(Ljava/lang/String;)V
    .locals 8
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/16 v3, 0x80

    const/4 v1, 0x0

    .line 4879
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v2, 0x3

    aget-object v5, v0, v2

    .line 4880
    .local v5, "streamState":Landroid/media/AudioService$VolumeStreamState;
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v2, 0x2

    move v4, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4882
    invoke-virtual {p0, v7}, Landroid/media/AudioService;->setBluetoothA2dpOnInt(Z)V

    .line 4883
    invoke-static {v3, v7, p1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 4887
    const-string v0, "A2dpSuspended=false"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 4888
    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4890
    return-void
.end method

.method private makeA2dpDeviceUnavailableLater(Ljava/lang/String;)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 4919
    const-string v1, "A2dpSuspended=true"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 4921
    iget-object v1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4923
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, p1}, Landroid/media/AudioService$AudioHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 4924
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v1, v0, v2, v3}, Landroid/media/AudioService$AudioHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4926
    return-void
.end method

.method private makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    .locals 8
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x80

    const/4 v2, 0x0

    .line 4898
    iget-object v1, p0, Landroid/media/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4899
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/media/AudioService;->mAvrcpAbsVolSupported:Z

    .line 4900
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4901
    invoke-static {v3, v2, p1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 4904
    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4905
    iget-object v7, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v7

    .line 4907
    :try_start_1
    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v0, v0, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 4908
    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    .line 4909
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xc

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4912
    :cond_0
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4913
    return-void

    .line 4900
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 4912
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private makeA2dpSrcAvailable(Ljava/lang/String;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/high16 v2, -0x7ffe0000

    .line 4930
    const/4 v0, 0x1

    invoke-static {v2, v0, p1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 4933
    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4935
    return-void
.end method

.method private makeA2dpSrcUnavailable(Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/high16 v1, -0x7ffe0000

    .line 4939
    const/4 v0, 0x0

    invoke-static {v1, v0, p1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 4942
    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4943
    return-void
.end method

.method private onBroadcastScoConnectionState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 3147
    iget v1, p0, Landroid/media/AudioService;->mScoConnectionState:I

    if-eq p1, v1, :cond_0

    .line 3148
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3149
    .local v0, "newIntent":Landroid/content/Intent;
    const-string v1, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3150
    const-string v1, "android.media.extra.SCO_AUDIO_PREVIOUS_STATE"

    iget v2, p0, Landroid/media/AudioService;->mScoConnectionState:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3152
    invoke-direct {p0, v0}, Landroid/media/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 3153
    iput p1, p0, Landroid/media/AudioService;->mScoConnectionState:I

    .line 3155
    .end local v0    # "newIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private onCheckMusicActive()V
    .locals 11

    .prologue
    const v10, 0xea60

    .line 3314
    iget-object v9, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v9

    .line 3315
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3316
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v7

    .line 3318
    .local v7, "device":I
    and-int/lit8 v0, v7, 0xc

    if-eqz v0, :cond_1

    .line 3319
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xe

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0xea60

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3326
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0, v7}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v8

    .line 3327
    .local v8, "index":I
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeIndex:I

    if-le v8, v0, :cond_1

    .line 3330
    iget v0, p0, Landroid/media/AudioService;->mMusicActiveMs:I

    add-int/2addr v0, v10

    iput v0, p0, Landroid/media/AudioService;->mMusicActiveMs:I

    .line 3331
    iget v0, p0, Landroid/media/AudioService;->mMusicActiveMs:I

    const v1, 0x44aa200

    if-le v0, v1, :cond_0

    .line 3332
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/AudioService;->setSafeMediaVolumeEnabled(Z)V

    .line 3333
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioService;->mMusicActiveMs:I

    .line 3335
    :cond_0
    invoke-direct {p0}, Landroid/media/AudioService;->saveMusicActiveMs()V

    .line 3339
    .end local v7    # "device":I
    .end local v8    # "index":I
    :cond_1
    monitor-exit v9

    .line 3340
    return-void

    .line 3339
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onConfigureSafeVolume(Z)V
    .locals 10
    .param p1, "force"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x2

    const/4 v8, 0x0

    .line 3347
    iget-object v9, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v9

    .line 3348
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v7, v1, Landroid/content/res/Configuration;->mcc:I

    .line 3349
    .local v7, "mcc":I
    iget v1, p0, Landroid/media/AudioService;->mMcc:I

    if-ne v1, v7, :cond_0

    iget v1, p0, Landroid/media/AudioService;->mMcc:I

    if-nez v1, :cond_4

    if-eqz p1, :cond_4

    .line 3350
    :cond_0
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, #android:integer@config_safe_media_volume_index#t

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    iput v1, p0, Landroid/media/AudioService;->mSafeMediaVolumeIndex:I

    .line 3352
    const-string v1, "audio.safemedia.force"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, #android:bool@config_safe_media_volume_enabled#t

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move v8, v0

    .line 3360
    .local v8, "safeMediaVolumeEnabled":Z
    :cond_2
    if-eqz v8, :cond_6

    .line 3361
    const/4 v3, 0x3

    .line 3365
    .local v3, "persistedState":I
    iget-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v4, :cond_3

    .line 3366
    iget v0, p0, Landroid/media/AudioService;->mMusicActiveMs:I

    if-nez v0, :cond_5

    .line 3367
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 3368
    invoke-direct {p0}, Landroid/media/AudioService;->enforceSafeMediaVolume()V

    .line 3378
    :cond_3
    :goto_0
    iput v7, p0, Landroid/media/AudioService;->mMcc:I

    .line 3379
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x12

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3387
    .end local v3    # "persistedState":I
    .end local v8    # "safeMediaVolumeEnabled":Z
    :cond_4
    monitor-exit v9

    .line 3388
    return-void

    .line 3371
    .restart local v3    # "persistedState":I
    .restart local v8    # "safeMediaVolumeEnabled":Z
    :cond_5
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    goto :goto_0

    .line 3387
    .end local v3    # "persistedState":I
    .end local v7    # "mcc":I
    .end local v8    # "safeMediaVolumeEnabled":Z
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3375
    .restart local v7    # "mcc":I
    .restart local v8    # "safeMediaVolumeEnabled":Z
    :cond_6
    const/4 v3, 0x1

    .line 3376
    .restart local v3    # "persistedState":I
    const/4 v0, 0x1

    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private onSendBecomingNoisyIntent()V
    .locals 2

    .prologue
    .line 4893
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/media/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 4894
    return-void
.end method

.method private onSetA2dpSinkConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 12
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 4958
    const-string v0, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSetA2dpSinkConnectionState btDevice="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4960
    if-nez p1, :cond_0

    .line 5016
    :goto_0
    return-void

    .line 4963
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    .line 4964
    .local v7, "address":Ljava/lang/String;
    invoke-static {v7}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4965
    const-string v7, ""

    .line 4968
    :cond_1
    iget-object v10, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v10

    .line 4969
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4973
    .local v8, "isConnected":Z
    :goto_1
    if-eqz v8, :cond_7

    if-eq p2, v4, :cond_7

    .line 4974
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4975
    if-nez p2, :cond_2

    .line 4979
    invoke-direct {p0, v7}, Landroid/media/AudioService;->makeA2dpDeviceUnavailableLater(Ljava/lang/String;)V

    .line 4985
    :cond_2
    :goto_2
    iget-object v11, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4986
    :try_start_1
    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v0, v0, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 4987
    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    .line 4988
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xc

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4991
    :cond_3
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5015
    :cond_4
    :goto_3
    :try_start_2
    monitor-exit v10

    goto :goto_0

    .end local v8    # "isConnected":Z
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_5
    move v8, v1

    .line 4969
    goto :goto_1

    .line 4983
    .restart local v8    # "isConnected":Z
    :cond_6
    :try_start_3
    invoke-direct {p0, v7}, Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 4991
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0

    .line 4992
    :cond_7
    if-nez v8, :cond_4

    if-ne p2, v4, :cond_4

    .line 4993
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4995
    invoke-direct {p0}, Landroid/media/AudioService;->cancelA2dpDeviceTimeout()V

    .line 4996
    iput-object v7, p0, Landroid/media/AudioService;->mDockAddress:Ljava/lang/String;

    .line 5005
    :cond_8
    :goto_4
    invoke-direct {p0, v7}, Landroid/media/AudioService;->makeA2dpDeviceAvailable(Ljava/lang/String;)V

    .line 5006
    iget-object v11, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 5007
    :try_start_6
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v9

    .line 5008
    .local v9, "name":Ljava/lang/String;
    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v0, v0, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    invoke-static {v0, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 5009
    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iput-object v9, v0, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    .line 5010
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xc

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5013
    :cond_9
    monitor-exit v11

    goto :goto_3

    .end local v9    # "name":Ljava/lang/String;
    :catchall_2
    move-exception v0

    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v0

    .line 5000
    :cond_a
    invoke-direct {p0}, Landroid/media/AudioService;->hasScheduledA2dpDockTimeout()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5001
    invoke-direct {p0}, Landroid/media/AudioService;->cancelA2dpDeviceTimeout()V

    .line 5002
    iget-object v0, p0, Landroid/media/AudioService;->mDockAddress:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4
.end method

.method private onSetA2dpSourceConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 6
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I

    .prologue
    const/4 v5, 0x2

    .line 5021
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSetA2dpSourceConnectionState btDevice="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5023
    if-nez p1, :cond_0

    .line 5042
    :goto_0
    return-void

    .line 5026
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 5027
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5028
    const-string v0, ""

    .line 5031
    :cond_1
    iget-object v3, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v3

    .line 5032
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    const/high16 v4, -0x7ffe0000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    const/high16 v4, -0x7ffe0000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    .line 5036
    .local v1, "isConnected":Z
    :goto_1
    if-eqz v1, :cond_4

    if-eq p2, v5, :cond_4

    .line 5037
    invoke-direct {p0, v0}, Landroid/media/AudioService;->makeA2dpSrcUnavailable(Ljava/lang/String;)V

    .line 5041
    :cond_2
    :goto_2
    monitor-exit v3

    goto :goto_0

    .end local v1    # "isConnected":Z
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 5032
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 5038
    .restart local v1    # "isConnected":Z
    :cond_4
    if-nez v1, :cond_2

    if-ne p2, v5, :cond_2

    .line 5039
    :try_start_1
    invoke-direct {p0, v0}, Landroid/media/AudioService;->makeA2dpSrcAvailable(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method private onSetStreamVolume(IIII)V
    .locals 5
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .param p4, "device"    # I

    .prologue
    const/4 v4, 0x0

    .line 1316
    iget-object v2, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v2, v2, p1

    invoke-direct {p0, v2, p2, p4, v4}, Landroid/media/AudioService;->setStreamVolumeInt(IIIZ)V

    .line 1320
    and-int/lit8 v2, p3, 0x2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v2, v2, p1

    invoke-virtual {p0}, Landroid/media/AudioService;->getMasterStreamType()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 1323
    :cond_0
    if-nez p2, :cond_2

    .line 1324
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.RINGTONE_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1325
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "ringtone"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1326
    invoke-direct {p0, v0}, Landroid/media/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 1333
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 1328
    :cond_2
    const/4 v1, 0x2

    .line 1329
    .local v1, "newRingerMode":I
    const-string/jumbo v2, "onSetStreamVolume"

    invoke-direct {p0, v1, v2, v4}, Landroid/media/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    goto :goto_0
.end method

.method private onSetWiredDeviceConnectionState(IILjava/lang/String;)V
    .locals 15
    .param p1, "device"    # I
    .param p2, "state"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 5211
    iget-object v14, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v14

    .line 5212
    if-nez p2, :cond_1

    const/4 v1, 0x4

    move/from16 v0, p1

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    move/from16 v0, p1

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x20000

    move/from16 v0, p1

    if-ne v0, v1, :cond_1

    .line 5215
    :cond_0
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/media/AudioService;->setBluetoothA2dpOnInt(Z)V

    .line 5217
    :cond_1
    move/from16 v0, p1

    and-int/lit16 v1, v0, -0x6001

    if-eqz v1, :cond_2

    const/high16 v1, -0x80000000

    and-int v1, v1, p1

    if-eqz v1, :cond_b

    const v1, 0x7fffe7ff

    and-int v1, v1, p1

    if-nez v1, :cond_b

    :cond_2
    const/4 v5, 0x1

    .line 5221
    .local v5, "isUsb":Z
    :goto_0
    const/4 v1, 0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_f

    const/4 v1, 0x4

    move/from16 v0, p1

    if-eq v0, v1, :cond_3

    const/16 v1, 0x8

    move/from16 v0, p1

    if-ne v0, v1, :cond_f

    .line 5223
    :cond_3
    const/4 v13, 0x0

    .line 5224
    .local v13, "tempIndex":I
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 5226
    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v13

    .line 5227
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStreamVolume return index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5228
    const/4 v1, 0x4

    move/from16 v0, p1

    if-ne v0, v1, :cond_c

    const/16 v1, 0x6e

    if-lt v13, v1, :cond_c

    .line 5229
    const-string v1, "AudioService"

    const-string v2, "before setStreamVolume Music Stream to index 8"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5231
    const/4 v1, 0x3

    const/16 v2, 0x8

    const/16 v3, 0x80

    const-string v4, "android"

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/AudioService;->setStreamVolume(IIILjava/lang/String;)V

    .line 5280
    .end local v13    # "tempIndex":I
    :cond_4
    :goto_1
    iget-object v11, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v7, 0xcb

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-instance v1, Landroid/media/AudioService$Parameter;

    move-object v2, p0

    move/from16 v3, p2

    move/from16 v4, p1

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/media/AudioService$Parameter;-><init>(Landroid/media/AudioService;IIZLjava/lang/String;)V

    const/4 v12, 0x0

    move-object v6, v11

    move-object v11, v1

    invoke-static/range {v6 .. v12}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5288
    if-eqz p2, :cond_12

    .line 5289
    const/4 v1, 0x4

    move/from16 v0, p1

    if-eq v0, v1, :cond_5

    const/16 v1, 0x8

    move/from16 v0, p1

    if-eq v0, v1, :cond_5

    const/high16 v1, 0x20000

    move/from16 v0, p1

    if-ne v0, v1, :cond_6

    .line 5292
    :cond_5
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/media/AudioService;->setBluetoothA2dpOnInt(Z)V

    .line 5294
    :cond_6
    and-int/lit8 v1, p1, 0xc

    if-eqz v1, :cond_7

    .line 5295
    iget-object v6, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v7, 0xe

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const v12, 0xea60

    invoke-static/range {v6 .. v12}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5304
    :cond_7
    invoke-direct {p0}, Landroid/media/AudioService;->isPlatformTelevision()Z

    move-result v1

    if-eqz v1, :cond_9

    move/from16 v0, p1

    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_9

    .line 5305
    iget v1, p0, Landroid/media/AudioService;->mFixedVolumeDevices:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Landroid/media/AudioService;->mFixedVolumeDevices:I

    .line 5306
    invoke-direct {p0}, Landroid/media/AudioService;->checkAllFixedVolumeDevices()V

    .line 5307
    iget-object v1, p0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v1, :cond_9

    .line 5308
    iget-object v2, p0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5309
    :try_start_1
    iget-object v1, p0, Landroid/media/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    if-eqz v1, :cond_8

    .line 5310
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/AudioService;->mHdmiCecSink:Z

    .line 5311
    iget-object v1, p0, Landroid/media/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    iget-object v3, p0, Landroid/media/AudioService;->mHdmiDisplayStatusCallback:Landroid/media/AudioService$MyDisplayStatusCallback;

    invoke-virtual {v1, v3}, Landroid/hardware/hdmi/HdmiPlaybackClient;->queryDisplayStatus(Landroid/hardware/hdmi/HdmiPlaybackClient$DisplayStatusCallback;)V

    .line 5313
    :cond_8
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5325
    :cond_9
    :goto_2
    if-nez v5, :cond_a

    const v1, -0x7ffffff0

    move/from16 v0, p1

    if-eq v0, v1, :cond_a

    .line 5326
    :try_start_2
    invoke-direct/range {p0 .. p3}, Landroid/media/AudioService;->sendDeviceConnectionIntent(IILjava/lang/String;)V

    .line 5328
    :cond_a
    monitor-exit v14

    .line 5329
    return-void

    .line 5217
    .end local v5    # "isUsb":Z
    :cond_b
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 5232
    .restart local v5    # "isUsb":Z
    .restart local v13    # "tempIndex":I
    :cond_c
    const/16 v1, 0x8

    move/from16 v0, p1

    if-ne v0, v1, :cond_4

    const/16 v1, 0x6e

    if-lt v13, v1, :cond_4

    .line 5233
    const-string v1, "AudioService"

    const-string v2, "before setStreamVolume Music Stream to index 8"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5235
    const/4 v1, 0x3

    const/16 v2, 0x8

    const/16 v3, 0x100

    const-string v4, "android"

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/AudioService;->setStreamVolume(IIILjava/lang/String;)V

    goto/16 :goto_1

    .line 5328
    .end local v5    # "isUsb":Z
    .end local v13    # "tempIndex":I
    :catchall_0
    move-exception v1

    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 5237
    .restart local v5    # "isUsb":Z
    .restart local v13    # "tempIndex":I
    :cond_d
    const/4 v1, 0x2

    const/4 v2, 0x0

    :try_start_3
    invoke-static {v1, v2}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 5238
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/media/AudioService;->getStreamVolume(I)I

    move-result v13

    .line 5239
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStreamVolume return index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5242
    const/4 v1, 0x4

    if-le v13, v1, :cond_4

    .line 5243
    const-string v1, "AudioService"

    const-string v2, "before setStreamVolume Ring to index 4"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5244
    iput v13, p0, Landroid/media/AudioService;->storedVolume:I

    .line 5246
    const/4 v1, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x0

    const-string v4, "android"

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/AudioService;->setStreamVolume(IIILjava/lang/String;)V

    .line 5247
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/AudioService;->plugInVolumeChanged:Z

    goto/16 :goto_1

    .line 5252
    :cond_e
    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5253
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Landroid/media/AudioService;->getStreamVolume(I)I

    move-result v13

    .line 5254
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStreamVolume stream notification volume:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5255
    const/4 v1, 0x4

    if-le v13, v1, :cond_4

    .line 5256
    const-string v1, "AudioService"

    const-string/jumbo v2, "need to lower notification volume to index4"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5257
    iput v13, p0, Landroid/media/AudioService;->storedVolume:I

    .line 5258
    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x0

    const-string v4, "android"

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/AudioService;->setStreamVolume(IIILjava/lang/String;)V

    .line 5259
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/AudioService;->plugInNotifiVolumeChanged:Z

    goto/16 :goto_1

    .line 5262
    .end local v13    # "tempIndex":I
    :cond_f
    if-nez p2, :cond_4

    const/4 v1, 0x4

    move/from16 v0, p1

    if-eq v0, v1, :cond_10

    const/16 v1, 0x8

    move/from16 v0, p1

    if-ne v0, v1, :cond_4

    .line 5264
    :cond_10
    iget v1, p0, Landroid/media/AudioService;->storedVolume:I

    if-eqz v1, :cond_11

    iget-boolean v1, p0, Landroid/media/AudioService;->plugInVolumeChanged:Z

    if-eqz v1, :cond_11

    .line 5266
    const/4 v1, 0x2

    iget v2, p0, Landroid/media/AudioService;->storedVolume:I

    const/4 v3, 0x0

    const-string v4, "android"

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/AudioService;->setStreamVolume(IIILjava/lang/String;)V

    .line 5267
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/AudioService;->plugInVolumeChanged:Z

    .line 5268
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/AudioService;->storedVolume:I

    goto/16 :goto_1

    .line 5269
    :cond_11
    iget v1, p0, Landroid/media/AudioService;->storedVolume:I

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Landroid/media/AudioService;->plugInNotifiVolumeChanged:Z

    if-eqz v1, :cond_4

    .line 5270
    const/4 v1, 0x5

    iget v2, p0, Landroid/media/AudioService;->storedVolume:I

    const/4 v3, 0x0

    const-string v4, "android"

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/AudioService;->setStreamVolume(IIILjava/lang/String;)V

    .line 5271
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/AudioService;->plugInNotifiVolumeChanged:Z

    .line 5272
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/AudioService;->storedVolume:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 5313
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v1

    .line 5317
    :cond_12
    invoke-direct {p0}, Landroid/media/AudioService;->isPlatformTelevision()Z

    move-result v1

    if-eqz v1, :cond_9

    move/from16 v0, p1

    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_9

    .line 5318
    iget-object v1, p0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v1, :cond_9

    .line 5319
    iget-object v2, p0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 5320
    const/4 v1, 0x0

    :try_start_6
    iput-boolean v1, p0, Landroid/media/AudioService;->mHdmiCecSink:Z

    .line 5321
    monitor-exit v2

    goto/16 :goto_2

    :catchall_2
    move-exception v1

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method private queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V
    .locals 10
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "msg"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "delay"    # I

    .prologue
    .line 3725
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 3728
    .local v8, "ident":J
    iget-object v0, p0, Landroid/media/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3729
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3730
    const/4 v2, 0x2

    move-object v0, p1

    move v1, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move/from16 v6, p6

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3731
    return-void
.end method

.method private static readAndSetLowRamDevice()V
    .locals 4

    .prologue
    .line 6124
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v1

    invoke-static {v1}, Landroid/media/AudioSystem;->setLowRamDevice(Z)I

    move-result v0

    .line 6125
    .local v0, "status":I
    if-eqz v0, :cond_0

    .line 6126
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioFlinger informed of device\'s low RAM attribute; status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6128
    :cond_0
    return-void
.end method

.method private readAudioSettings(Z)V
    .locals 11
    .param p1, "userSwitch"    # Z

    .prologue
    const/4 v10, 0x3

    const/4 v8, 0x0

    .line 2683
    invoke-direct {p0}, Landroid/media/AudioService;->readPersistedSettings()V

    .line 2686
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 2687
    .local v1, "numStreamTypes":I
    const/4 v4, 0x0

    .local v4, "streamType":I
    :goto_0
    if-ge v4, v1, :cond_4

    .line 2688
    iget-object v5, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v3, v5, v4

    .line 2690
    .local v3, "streamState":Landroid/media/AudioService$VolumeStreamState;
    if-eqz p1, :cond_0

    iget-object v5, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v5, v5, v4

    if-ne v5, v10, :cond_0

    .line 2687
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2694
    :cond_0
    invoke-virtual {v3}, Landroid/media/AudioService$VolumeStreamState;->readSettings()V

    .line 2695
    const-class v6, Landroid/media/AudioService$VolumeStreamState;

    monitor-enter v6

    .line 2697
    :try_start_0
    # invokes: Landroid/media/AudioService$VolumeStreamState;->isMuted_syncVSS()Z
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState;->access$300(Landroid/media/AudioService$VolumeStreamState;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0, v4}, Landroid/media/AudioService;->isStreamAffectedByMute(I)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-direct {p0, v4}, Landroid/media/AudioService;->isStreamMutedByRingerMode(I)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    iget-boolean v5, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    if-eqz v5, :cond_3

    .line 2699
    :cond_2
    # getter for: Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState;->access$2200(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2700
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v2, :cond_3

    .line 2701
    # getter for: Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState;->access$2200(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    const/4 v7, 0x1

    # setter for: Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I
    invoke-static {v5, v7}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->access$2302(Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;I)I

    .line 2702
    # getter for: Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState;->access$2200(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mute_syncVSS(Z)V

    .line 2700
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2705
    .end local v0    # "i":I
    .end local v2    # "size":I
    :cond_3
    monitor-exit v6

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 2710
    .end local v3    # "streamState":Landroid/media/AudioService$VolumeStreamState;
    :cond_4
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerModeInternal()I

    move-result v5

    invoke-direct {p0, v5, v8}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    .line 2712
    invoke-direct {p0}, Landroid/media/AudioService;->checkAllFixedVolumeDevices()V

    .line 2713
    invoke-direct {p0}, Landroid/media/AudioService;->checkAllAliasStreamVolumes()V

    .line 2715
    iget-object v6, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v6

    .line 2716
    :try_start_1
    iget-object v5, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v7, "unsafe_volume_music_active_ms"

    const/4 v8, 0x0

    const/4 v9, -0x2

    invoke-static {v5, v7, v8, v9}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    const/4 v7, 0x0

    const v8, 0x44aa200

    invoke-static {v5, v7, v8}, Landroid/util/MathUtils;->constrain(III)I

    move-result v5

    iput v5, p0, Landroid/media/AudioService;->mMusicActiveMs:I

    .line 2719
    iget-object v5, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v10, :cond_5

    .line 2720
    invoke-direct {p0}, Landroid/media/AudioService;->enforceSafeMediaVolume()V

    .line 2722
    :cond_5
    monitor-exit v6

    .line 2723
    return-void

    .line 2722
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v5
.end method

.method private readDockAudioSettings(Landroid/content/ContentResolver;)V
    .locals 7
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    const/16 v1, 0x8

    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 915
    const-string v2, "dock_audio_media_enabled"

    invoke-static {p1, v2, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Landroid/media/AudioService;->mDockAudioMediaEnabled:Z

    .line 918
    iget-boolean v0, p0, Landroid/media/AudioService;->mDockAudioMediaEnabled:Z

    if-eqz v0, :cond_1

    .line 919
    iget v0, p0, Landroid/media/AudioService;->mBecomingNoisyIntentDevices:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Landroid/media/AudioService;->mBecomingNoisyIntentDevices:I

    .line 924
    :goto_1
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v2, 0x2

    const/4 v3, 0x3

    iget-boolean v4, p0, Landroid/media/AudioService;->mDockAudioMediaEnabled:Z

    if-eqz v4, :cond_2

    move v4, v1

    :goto_2
    const/4 v5, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 932
    return-void

    :cond_0
    move v0, v6

    .line 915
    goto :goto_0

    .line 921
    :cond_1
    iget v0, p0, Landroid/media/AudioService;->mBecomingNoisyIntentDevices:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Landroid/media/AudioService;->mBecomingNoisyIntentDevices:I

    goto :goto_1

    :cond_2
    move v4, v6

    .line 924
    goto :goto_2
.end method

.method private readPersistedSettings()V
    .locals 13

    .prologue
    const/4 v7, 0x2

    const/4 v12, -0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 935
    iget-object v0, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 937
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v8, "mode_ringer"

    invoke-static {v0, v8, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 940
    .local v4, "ringerModeFromSettings":I
    move v3, v4

    .line 943
    .local v3, "ringerMode":I
    invoke-virtual {p0, v3}, Landroid/media/AudioService;->isValidRingerMode(I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 944
    const/4 v3, 0x2

    .line 946
    :cond_0
    if-ne v3, v5, :cond_1

    iget-boolean v8, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-nez v8, :cond_1

    .line 947
    const/4 v3, 0x0

    .line 949
    :cond_1
    if-eq v3, v4, :cond_2

    .line 950
    const-string/jumbo v8, "mode_ringer"

    invoke-static {v0, v8, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 952
    :cond_2
    iget-boolean v8, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    if-nez v8, :cond_3

    invoke-direct {p0}, Landroid/media/AudioService;->isPlatformTelevision()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 953
    :cond_3
    const/4 v3, 0x2

    .line 955
    :cond_4
    iget-object v9, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v9

    .line 956
    :try_start_0
    iput v3, p0, Landroid/media/AudioService;->mRingerMode:I

    .line 957
    iget v8, p0, Landroid/media/AudioService;->mRingerModeExternal:I

    const/4 v10, -0x1

    if-ne v8, v10, :cond_5

    .line 958
    iget v8, p0, Landroid/media/AudioService;->mRingerMode:I

    iput v8, p0, Landroid/media/AudioService;->mRingerModeExternal:I

    .line 964
    :cond_5
    const/4 v10, 0x0

    const/4 v11, 0x1

    iget-boolean v8, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-eqz v8, :cond_7

    move v8, v7

    :goto_0
    invoke-static {v10, v11, v8}, Landroid/media/AudioService;->getValueForVibrateSetting(III)I

    move-result v8

    iput v8, p0, Landroid/media/AudioService;->mVibrateSetting:I

    .line 968
    iget v8, p0, Landroid/media/AudioService;->mVibrateSetting:I

    const/4 v10, 0x0

    iget-boolean v11, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-eqz v11, :cond_8

    :goto_1
    invoke-static {v8, v10, v7}, Landroid/media/AudioService;->getValueForVibrateSetting(III)I

    move-result v7

    iput v7, p0, Landroid/media/AudioService;->mVibrateSetting:I

    .line 974
    const-string/jumbo v7, "vibrate_on"

    const/4 v8, 0x0

    invoke-static {v0, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Landroid/media/AudioService;->mVibrateSetting:I

    .line 976
    invoke-virtual {p0}, Landroid/media/AudioService;->updateRingerModeAffectedStreams()Z

    .line 977
    invoke-direct {p0, v0}, Landroid/media/AudioService;->readDockAudioSettings(Landroid/content/ContentResolver;)V

    .line 978
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 980
    const-string/jumbo v7, "mute_streams_affected"

    const/16 v8, 0xe

    invoke-static {v0, v7, v8, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    iput v7, p0, Landroid/media/AudioService;->mMuteAffectedStreams:I

    .line 987
    const-string/jumbo v7, "volume_master_mute"

    invoke-static {v0, v7, v6, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-ne v7, v5, :cond_9

    move v1, v5

    .line 989
    .local v1, "masterMute":Z
    :goto_2
    iget-boolean v7, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    if-eqz v7, :cond_6

    .line 990
    const/4 v1, 0x0

    .line 991
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v7}, Landroid/media/AudioSystem;->setMasterVolume(F)I

    .line 993
    :cond_6
    invoke-static {v1}, Landroid/media/AudioSystem;->setMasterMute(Z)I

    .line 994
    invoke-direct {p0, v1}, Landroid/media/AudioService;->broadcastMasterMuteStatus(Z)V

    .line 996
    const-string/jumbo v7, "microphone_mute"

    invoke-static {v0, v7, v6, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-ne v7, v5, :cond_a

    move v2, v5

    .line 998
    .local v2, "microphoneMute":Z
    :goto_3
    invoke-static {v2}, Landroid/media/AudioSystem;->muteMicrophone(Z)I

    .line 1003
    const-string v7, "android.media.RINGER_MODE_CHANGED"

    iget v8, p0, Landroid/media/AudioService;->mRingerModeExternal:I

    invoke-direct {p0, v7, v8}, Landroid/media/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    .line 1004
    const-string v7, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    iget v8, p0, Landroid/media/AudioService;->mRingerMode:I

    invoke-direct {p0, v7, v8}, Landroid/media/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    .line 1007
    invoke-direct {p0, v6}, Landroid/media/AudioService;->broadcastVibrateSetting(I)V

    .line 1008
    invoke-direct {p0, v5}, Landroid/media/AudioService;->broadcastVibrateSetting(I)V

    .line 1011
    iget-object v5, p0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-virtual {v5, v0}, Landroid/media/AudioService$VolumeController;->loadSettings(Landroid/content/ContentResolver;)V

    .line 1012
    return-void

    .end local v1    # "masterMute":Z
    .end local v2    # "microphoneMute":Z
    :cond_7
    move v8, v6

    .line 964
    goto :goto_0

    :cond_8
    move v7, v6

    .line 968
    goto :goto_1

    .line 978
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    :cond_9
    move v1, v6

    .line 987
    goto :goto_2

    .restart local v1    # "masterMute":Z
    :cond_a
    move v2, v6

    .line 996
    goto :goto_3
.end method

.method private rescaleIndex(III)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "srcStream"    # I
    .param p3, "dstStream"    # I

    .prologue
    .line 1015
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0

    mul-int/2addr v0, p1

    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    div-int/2addr v0, v1

    return v0
.end method

.method private resetBluetoothSco()V
    .locals 3

    .prologue
    .line 3134
    iget-object v1, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v1

    .line 3135
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v2}, Landroid/media/AudioService;->clearAllScoClients(IZ)V

    .line 3136
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    .line 3137
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/AudioService;->broadcastScoConnectionState(I)V

    .line 3138
    monitor-exit v1

    .line 3139
    return-void

    .line 3138
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private restoreMasterVolume()V
    .locals 5

    .prologue
    .line 2160
    iget-boolean v1, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    if-eqz v1, :cond_1

    .line 2161
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Landroid/media/AudioSystem;->setMasterVolume(F)I

    .line 2171
    :cond_0
    :goto_0
    return-void

    .line 2164
    :cond_1
    iget-boolean v1, p0, Landroid/media/AudioService;->mUseMasterVolume:Z

    if-eqz v1, :cond_0

    .line 2165
    iget-object v1, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "volume_master"

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    .line 2167
    .local v0, "volume":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    .line 2168
    invoke-static {v0}, Landroid/media/AudioSystem;->setMasterVolume(F)I

    goto :goto_0
.end method

.method private static safeMediaVolumeStateToString(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # Ljava/lang/Integer;

    .prologue
    .line 6112
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 6118
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 6113
    :pswitch_0
    const-string v0, "SAFE_MEDIA_VOLUME_NOT_CONFIGURED"

    goto :goto_0

    .line 6114
    :pswitch_1
    const-string v0, "SAFE_MEDIA_VOLUME_DISABLED"

    goto :goto_0

    .line 6115
    :pswitch_2
    const-string v0, "SAFE_MEDIA_VOLUME_INACTIVE"

    goto :goto_0

    .line 6116
    :pswitch_3
    const-string v0, "SAFE_MEDIA_VOLUME_ACTIVE"

    goto :goto_0

    .line 6112
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private saveMusicActiveMs()V
    .locals 4

    .prologue
    .line 3343
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x16

    iget v2, p0, Landroid/media/AudioService;->mMusicActiveMs:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioService$AudioHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3344
    return-void
.end method

.method private sendBroadcastToAll(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1540
    const/high16 v2, 0x4000000

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1541
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1543
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1545
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1547
    return-void

    .line 1545
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private sendDeviceConnectionIntent(IILjava/lang/String;)V
    .locals 15
    .param p1, "device"    # I
    .param p2, "state"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 5148
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 5150
    .local v12, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "state"

    move/from16 v0, p2

    invoke-virtual {v12, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5151
    const-string/jumbo v2, "name"

    move-object/from16 v0, p3

    invoke-virtual {v12, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5152
    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v12, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5154
    const/4 v9, 0x0

    .line 5156
    .local v9, "connType":I
    const/4 v2, 0x4

    move/from16 v0, p1

    if-ne v0, v2, :cond_3

    .line 5157
    const/4 v9, 0x1

    .line 5158
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5159
    const-string/jumbo v2, "microphone"

    const/4 v3, 0x1

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5178
    :cond_0
    :goto_0
    iget-object v14, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v14

    .line 5179
    if-eqz v9, :cond_2

    .line 5180
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget v13, v2, Landroid/media/AudioRoutesInfo;->mMainType:I

    .line 5181
    .local v13, "newConn":I
    if-eqz p2, :cond_9

    .line 5182
    or-int/2addr v13, v9

    .line 5193
    :cond_1
    :goto_1
    iget-object v2, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget v2, v2, Landroid/media/AudioRoutesInfo;->mMainType:I

    if-eq v13, v2, :cond_2

    .line 5194
    iget-object v2, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iput v13, v2, Landroid/media/AudioRoutesInfo;->mMainType:I

    .line 5195
    iget-object v2, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v3, 0xc

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5199
    .end local v13    # "newConn":I
    :cond_2
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5201
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 5203
    .local v10, "ident":J
    const/4 v2, 0x0

    const/4 v3, -0x1

    :try_start_1
    invoke-static {v12, v2, v3}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5205
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5207
    return-void

    .line 5160
    .end local v10    # "ident":J
    :cond_3
    const/16 v2, 0x8

    move/from16 v0, p1

    if-eq v0, v2, :cond_4

    const/high16 v2, 0x20000

    move/from16 v0, p1

    if-ne v0, v2, :cond_5

    .line 5163
    :cond_4
    const/4 v9, 0x2

    .line 5164
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5165
    const-string/jumbo v2, "microphone"

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 5166
    :cond_5
    const/16 v2, 0x800

    move/from16 v0, p1

    if-ne v0, v2, :cond_6

    .line 5167
    const/4 v9, 0x4

    .line 5168
    const-string v2, "android.media.action.ANALOG_AUDIO_DOCK_PLUG"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 5169
    :cond_6
    const/16 v2, 0x1000

    move/from16 v0, p1

    if-ne v0, v2, :cond_7

    .line 5170
    const/4 v9, 0x4

    .line 5171
    const-string v2, "android.media.action.DIGITAL_AUDIO_DOCK_PLUG"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 5172
    :cond_7
    const/16 v2, 0x400

    move/from16 v0, p1

    if-eq v0, v2, :cond_8

    const/high16 v2, 0x40000

    move/from16 v0, p1

    if-ne v0, v2, :cond_0

    .line 5174
    :cond_8
    const/16 v9, 0x8

    .line 5175
    move/from16 v0, p2

    invoke-direct {p0, v12, v0}, Landroid/media/AudioService;->configureHdmiPlugIntent(Landroid/content/Intent;I)V

    goto :goto_0

    .line 5184
    .restart local v13    # "newConn":I
    :cond_9
    xor-int/lit8 v2, v9, -0x1

    and-int/2addr v13, v2

    .line 5187
    const/4 v2, 0x1

    if-eq v9, v2, :cond_a

    const/4 v2, 0x2

    if-ne v9, v2, :cond_1

    .line 5188
    :cond_a
    and-int/lit8 v13, v13, -0x2

    .line 5189
    and-int/lit8 v13, v13, -0x3

    goto :goto_1

    .line 5199
    .end local v13    # "newConn":I
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 5205
    .restart local v10    # "ident":J
    :catchall_1
    move-exception v2

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private sendMasterMuteUpdate(ZI)V
    .locals 2
    .param p1, "muted"    # Z
    .param p2, "flags"    # I

    .prologue
    .line 1612
    iget-object v0, p0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-direct {p0, p2}, Landroid/media/AudioService;->updateFlagsForSystemAudio(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioService$VolumeController;->postMasterMuteChanged(I)V

    .line 1613
    invoke-direct {p0, p1}, Landroid/media/AudioService;->broadcastMasterMuteStatus(Z)V

    .line 1614
    return-void
.end method

.method private sendMasterVolumeUpdate(III)V
    .locals 3
    .param p1, "flags"    # I
    .param p2, "oldVolume"    # I
    .param p3, "newVolume"    # I

    .prologue
    .line 1602
    iget-object v1, p0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-direct {p0, p1}, Landroid/media/AudioService;->updateFlagsForSystemAudio(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioService$VolumeController;->postMasterVolumeChanged(I)V

    .line 1604
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.MASTER_VOLUME_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1605
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_PREV_MASTER_VOLUME_VALUE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1606
    const-string v1, "android.media.EXTRA_MASTER_VOLUME_VALUE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1607
    invoke-direct {p0, v0}, Landroid/media/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 1608
    return-void
.end method

.method private static sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .locals 8
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "delay"    # I

    .prologue
    .line 3736
    if-nez p2, :cond_3

    .line 3737
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3741
    :cond_0
    sget-object v3, Landroid/media/AudioService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    monitor-enter v3

    .line 3742
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    int-to-long v6, p6

    add-long v0, v4, v6

    .line 3743
    .local v0, "time":J
    invoke-virtual {p0, p1, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 3744
    const/16 v2, 0x64

    if-eq p1, v2, :cond_1

    const/16 v2, 0x65

    if-eq p1, v2, :cond_1

    const/16 v2, 0x66

    if-ne p1, v2, :cond_2

    .line 3747
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    sput-object v2, Landroid/media/AudioService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    .line 3749
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3750
    .end local v0    # "time":J
    :goto_0
    return-void

    .line 3738
    :cond_3
    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 3749
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private sendStickyBroadcastToAll(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1550
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1552
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1554
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1556
    return-void

    .line 1554
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private sendVolumeUpdate(IIII)V
    .locals 4
    .param p1, "streamType"    # I
    .param p2, "oldIndex"    # I
    .param p3, "index"    # I
    .param p4, "flags"    # I

    .prologue
    .line 1561
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in sendVolumeUpdate : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    invoke-direct {p0}, Landroid/media/AudioService;->isPlatformVoice()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 1564
    const/4 p1, 0x5

    .line 1567
    :cond_0
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 1568
    invoke-direct {p0, p4}, Landroid/media/AudioService;->updateFlagsForSystemAudio(I)I

    move-result p4

    .line 1570
    :cond_1
    iget-object v1, p0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-virtual {v1, p1, p4}, Landroid/media/AudioService$VolumeController;->postVolumeChanged(II)V

    .line 1572
    and-int/lit8 v1, p4, 0x20

    if-nez v1, :cond_2

    .line 1573
    add-int/lit8 v1, p2, 0x5

    div-int/lit8 p2, v1, 0xa

    .line 1574
    add-int/lit8 v1, p3, 0x5

    div-int/lit8 p3, v1, 0xa

    .line 1575
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1576
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1577
    const-string v1, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1578
    const-string v1, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1579
    invoke-direct {p0, v0}, Landroid/media/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 1582
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    const-string v1, "AudioService"

    const-string/jumbo v2, "out sendVolumeUpdate "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    return-void
.end method

.method private setBootRinger(II)V
    .locals 9
    .param p1, "actualRingerMode"    # I
    .param p2, "expectRingerMode"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 2054
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRingerMode: actual = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", expect = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2056
    if-eq p1, p2, :cond_1

    .line 2057
    if-eqz p2, :cond_0

    if-ne p2, v8, :cond_3

    .line 2058
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 2059
    const-string/jumbo v0, "persist.sys.boot_silently"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2060
    .local v5, "isBootSilently":Ljava/lang/String;
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRingerMode isBootSilently1 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2062
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xcc

    move v3, v2

    move v4, v2

    move v6, v2

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2063
    const-string v0, "AudioService"

    const-string/jumbo v1, "setRingerMode isBootSilently2 "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2064
    const-string/jumbo v0, "persist.sys.boot_silently"

    invoke-static {v8}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2080
    .end local v5    # "isBootSilently":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 2066
    :cond_2
    const-string v0, "AudioService"

    const-string/jumbo v1, "the same boot silently settings, do nothing."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2069
    :cond_3
    iget-object v0, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "persist.sys.boot_silently"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2070
    .local v7, "restoreBootSilently":Ljava/lang/String;
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "change ringer mode to :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "  restore the Silent of bootsilently to :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2071
    const-string/jumbo v0, "true"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2072
    const-string/jumbo v0, "persist.sys.boot_silently"

    invoke-static {v8}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2073
    const-string v0, "AudioService"

    const-string/jumbo v1, "set bootsilently to true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2075
    :cond_4
    const-string/jumbo v0, "persist.sys.boot_silently"

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2076
    const-string v0, "AudioService"

    const-string/jumbo v1, "set bootsilently to false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setFmRxMode(Z)V
    .locals 6
    .param p1, "on"    # Z

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x100000

    const/4 v3, 0x1

    .line 6297
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in setFmRxMode bool pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6298
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in setFmRxMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6299
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/media/AudioService;->mFmRxMode:I

    if-ne v0, v3, :cond_0

    .line 6300
    const-string v0, "AudioService"

    const-string v1, "FmModeOn on and on"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6320
    :goto_0
    const-string v0, "AudioService"

    const-string/jumbo v1, "out setFmRxMode bool"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6321
    return-void

    .line 6301
    :cond_0
    if-nez p1, :cond_1

    iget v0, p0, Landroid/media/AudioService;->mFmRxMode:I

    if-eq v0, v3, :cond_1

    .line 6302
    const-string v0, "AudioService"

    const-string v1, "FmModeOn off and off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6303
    :cond_1
    if-eqz p1, :cond_2

    .line 6304
    iput-boolean v3, p0, Landroid/media/AudioService;->mFmStreamOn:Z

    .line 6305
    iput v3, p0, Landroid/media/AudioService;->mFmRxMode:I

    .line 6306
    const-string v0, ""

    invoke-static {v4, v3, v0}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 6308
    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6313
    :cond_2
    iput-boolean v5, p0, Landroid/media/AudioService;->mFmStreamOn:Z

    .line 6314
    iput v5, p0, Landroid/media/AudioService;->mFmRxMode:I

    .line 6315
    const-string v0, ""

    invoke-static {v4, v5, v0}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 6317
    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private setMasterMuteInternal(ZILjava/lang/String;Landroid/os/IBinder;I)V
    .locals 8
    .param p1, "state"    # Z
    .param p2, "flags"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "cb"    # Landroid/os/IBinder;
    .param p5, "uid"    # I

    .prologue
    const/4 v2, 0x0

    .line 1825
    iget-boolean v0, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    if-eqz v0, :cond_1

    .line 1844
    :cond_0
    :goto_0
    return-void

    .line 1828
    :cond_1
    iget-object v0, p0, Landroid/media/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x21

    invoke-virtual {v0, v1, p5, p3}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1832
    invoke-static {}, Landroid/media/AudioSystem;->getMasterMute()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 1833
    invoke-direct {p0, p1}, Landroid/media/AudioService;->setSystemAudioMute(Z)V

    .line 1834
    invoke-static {p1}, Landroid/media/AudioSystem;->setMasterMute(Z)I

    .line 1836
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xb

    if-eqz p1, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    const/4 v5, 0x0

    const/16 v6, 0x1f4

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1838
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->sendMasterMuteUpdate(ZI)V

    .line 1840
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.media.MASTER_MUTE_CHANGED_ACTION"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1841
    .local v7, "intent":Landroid/content/Intent;
    const-string v0, "android.media.EXTRA_MASTER_VOLUME_MUTED"

    invoke-virtual {v7, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1842
    invoke-direct {p0, v7}, Landroid/media/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    goto :goto_0

    .end local v7    # "intent":Landroid/content/Intent;
    :cond_2
    move v3, v2

    .line 1836
    goto :goto_1
.end method

.method private setModeInt(ILandroid/os/IBinder;I)I
    .locals 15
    .param p1, "mode"    # I
    .param p2, "cb"    # Landroid/os/IBinder;
    .param p3, "pid"    # I

    .prologue
    .line 2339
    sget-boolean v12, Landroid/media/AudioService;->DEBUG_MODE:Z

    if-eqz v12, :cond_0

    const-string v12, "AudioService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "setModeInt(mode="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", pid="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2341
    :cond_0
    const-string v12, "AudioService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "in setMode() mode "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2343
    const/4 v8, 0x0

    .line 2344
    .local v8, "newModeOwnerPid":I
    if-nez p2, :cond_1

    .line 2345
    const-string v12, "AudioService"

    const-string/jumbo v13, "setModeInt() called with null binder"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v8

    .line 2463
    .end local v8    # "newModeOwnerPid":I
    .local v9, "newModeOwnerPid":I
    :goto_0
    return v9

    .line 2349
    .end local v9    # "newModeOwnerPid":I
    .restart local v8    # "newModeOwnerPid":I
    :cond_1
    const/4 v5, 0x0

    .line 2350
    .local v5, "hdlr":Landroid/media/AudioService$SetModeDeathHandler;
    iget-object v12, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 2351
    .local v7, "iter":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 2352
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioService$SetModeDeathHandler;

    .line 2353
    .local v4, "h":Landroid/media/AudioService$SetModeDeathHandler;
    invoke-virtual {v4}, Landroid/media/AudioService$SetModeDeathHandler;->getPid()I

    move-result v12

    move/from16 v0, p3

    if-ne v12, v0, :cond_2

    .line 2354
    move-object v5, v4

    .line 2356
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 2357
    invoke-virtual {v5}, Landroid/media/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v5, v13}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2363
    .end local v4    # "h":Landroid/media/AudioService$SetModeDeathHandler;
    :cond_3
    const-string v12, "AudioService"

    const-string v13, "in setModeInt here a"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2366
    const/4 v10, 0x0

    .line 2369
    .local v10, "status":I
    :cond_4
    const-string v12, "AudioService"

    const-string v13, "in setModeInt here b"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2371
    if-nez p1, :cond_b

    .line 2373
    const-string v12, "AudioService"

    const-string v13, "in setModeInt here c"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2376
    iget-object v12, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_6

    .line 2377
    iget-object v12, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "hdlr":Landroid/media/AudioService$SetModeDeathHandler;
    check-cast v5, Landroid/media/AudioService$SetModeDeathHandler;

    .line 2378
    .restart local v5    # "hdlr":Landroid/media/AudioService$SetModeDeathHandler;
    invoke-virtual {v5}, Landroid/media/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 2379
    invoke-virtual {v5}, Landroid/media/AudioService$SetModeDeathHandler;->getMode()I

    move-result p1

    .line 2380
    sget-boolean v12, Landroid/media/AudioService;->DEBUG_MODE:Z

    if-eqz v12, :cond_5

    .line 2381
    const-string v12, "AudioService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " using mode="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " instead due to death hdlr at pid="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    # getter for: Landroid/media/AudioService$SetModeDeathHandler;->mPid:I
    invoke-static {v5}, Landroid/media/AudioService$SetModeDeathHandler;->access$1600(Landroid/media/AudioService$SetModeDeathHandler;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2385
    :cond_5
    const-string v12, "AudioService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "in setModeInt here d mode "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2410
    :cond_6
    :goto_1
    iget v12, p0, Landroid/media/AudioService;->mMode:I

    move/from16 v0, p1

    if-eq v0, v12, :cond_10

    .line 2412
    const-string v12, "AudioService"

    const-string v13, "in setModeInt here f"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2415
    invoke-static/range {p1 .. p1}, Landroid/media/AudioSystem;->setPhoneState(I)I

    move-result v10

    .line 2417
    const-string v12, "AudioService"

    const-string v13, "in setModeInt here h"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2419
    if-nez v10, :cond_d

    .line 2420
    sget-boolean v12, Landroid/media/AudioService;->DEBUG_MODE:Z

    if-eqz v12, :cond_7

    const-string v12, "AudioService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " mode successfully set to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2421
    :cond_7
    move/from16 v0, p1

    iput v0, p0, Landroid/media/AudioService;->mMode:I

    .line 2434
    :goto_2
    if-eqz v10, :cond_8

    iget-object v12, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 2437
    :cond_8
    const-string v12, "AudioService"

    const-string v13, "in setModeInt here i"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2440
    if-nez v10, :cond_a

    .line 2441
    if-eqz p1, :cond_9

    .line 2442
    iget-object v12, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_11

    .line 2443
    const-string v12, "AudioService"

    const-string/jumbo v13, "setMode() different from MODE_NORMAL with empty mode client stack"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2448
    :cond_9
    :goto_3
    const/high16 v12, -0x80000000

    invoke-direct {p0, v12}, Landroid/media/AudioService;->getActiveStreamType(I)I

    move-result v11

    .line 2450
    .local v11, "streamType":I
    const-string v12, "AudioService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "streamType : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2453
    invoke-direct {p0, v11}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v2

    .line 2454
    .local v2, "device":I
    iget-object v12, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    iget-object v13, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v13, v13, v11

    aget-object v12, v12, v13

    invoke-virtual {v12, v2}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v6

    .line 2455
    .local v6, "index":I
    iget-object v12, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v12, v12, v11

    const/4 v13, 0x1

    invoke-direct {p0, v12, v6, v2, v13}, Landroid/media/AudioService;->setStreamVolumeInt(IIIZ)V

    .line 2457
    const/4 v12, 0x1

    invoke-direct {p0, v12}, Landroid/media/AudioService;->updateStreamVolumeAlias(Z)V

    .line 2461
    .end local v2    # "device":I
    .end local v6    # "index":I
    .end local v11    # "streamType":I
    :cond_a
    const-string v12, "AudioService"

    const-string/jumbo v13, "out setModeInt"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v8

    .line 2463
    .end local v8    # "newModeOwnerPid":I
    .restart local v9    # "newModeOwnerPid":I
    goto/16 :goto_0

    .line 2390
    .end local v9    # "newModeOwnerPid":I
    .restart local v8    # "newModeOwnerPid":I
    :cond_b
    const-string v12, "AudioService"

    const-string v13, "in setModeInt here e"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2393
    if-nez v5, :cond_c

    .line 2394
    new-instance v5, Landroid/media/AudioService$SetModeDeathHandler;

    .end local v5    # "hdlr":Landroid/media/AudioService$SetModeDeathHandler;
    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v5, p0, v0, v1}, Landroid/media/AudioService$SetModeDeathHandler;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;I)V

    .line 2398
    .restart local v5    # "hdlr":Landroid/media/AudioService$SetModeDeathHandler;
    :cond_c
    const/4 v12, 0x0

    :try_start_0
    move-object/from16 v0, p2

    invoke-interface {v0, v5, v12}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2406
    :goto_4
    iget-object v12, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2407
    move/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/media/AudioService$SetModeDeathHandler;->setMode(I)V

    goto/16 :goto_1

    .line 2399
    :catch_0
    move-exception v3

    .line 2401
    .local v3, "e":Landroid/os/RemoteException;
    const-string v12, "AudioService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "setMode() could not link to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " binder death"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 2423
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_d
    if-eqz v5, :cond_e

    .line 2424
    iget-object v12, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2425
    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v12}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2428
    :cond_e
    sget-boolean v12, Landroid/media/AudioService;->DEBUG_MODE:Z

    if-eqz v12, :cond_f

    const-string v12, "AudioService"

    const-string v13, " mode set to MODE_NORMAL after phoneState pb"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2429
    :cond_f
    const/16 p1, 0x0

    goto/16 :goto_2

    .line 2432
    :cond_10
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 2445
    :cond_11
    iget-object v12, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/AudioService$SetModeDeathHandler;

    invoke-virtual {v12}, Landroid/media/AudioService$SetModeDeathHandler;->getPid()I

    move-result v8

    goto/16 :goto_3
.end method

.method private setOrientationForAudioSystem()V
    .locals 2

    .prologue
    .line 5764
    iget v0, p0, Landroid/media/AudioService;->mDeviceOrientation:I

    packed-switch v0, :pswitch_data_0

    .line 5782
    const-string v0, "AudioService"

    const-string v1, "Unknown orientation"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5784
    :goto_0
    return-void

    .line 5767
    :pswitch_0
    const-string/jumbo v0, "orientation=landscape"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 5771
    :pswitch_1
    const-string/jumbo v0, "orientation=portrait"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 5775
    :pswitch_2
    const-string/jumbo v0, "orientation=square"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 5779
    :pswitch_3
    const-string/jumbo v0, "orientation=undefined"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 5764
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private setRingerMode(ILjava/lang/String;Z)V
    .locals 7
    .param p1, "ringerMode"    # I
    .param p2, "caller"    # Ljava/lang/String;
    .param p3, "external"    # Z

    .prologue
    const/4 v5, 0x1

    .line 2006
    iget-boolean v4, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    if-nez v4, :cond_0

    invoke-direct {p0}, Landroid/media/AudioService;->isPlatformTelevision()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2050
    :cond_0
    :goto_0
    return-void

    .line 2009
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 2010
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad caller: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2012
    :cond_3
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidRingerMode(I)V

    .line 2013
    if-ne p1, v5, :cond_4

    iget-boolean v4, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-nez v4, :cond_4

    .line 2014
    const/4 p1, 0x0

    .line 2016
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2018
    .local v0, "identity":J
    :try_start_0
    iget-object v5, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2019
    :try_start_1
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerModeInternal()I

    move-result v3

    .line 2020
    .local v3, "ringerModeInternal":I
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerModeExternal()I

    move-result v2

    .line 2021
    .local v2, "ringerModeExternal":I
    if-eqz p3, :cond_7

    .line 2023
    invoke-direct {p0, v2, p1}, Landroid/media/AudioService;->setBootRinger(II)V

    .line 2025
    invoke-direct {p0, p1}, Landroid/media/AudioService;->setRingerModeExt(I)V

    .line 2026
    iget-object v4, p0, Landroid/media/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    if-eqz v4, :cond_5

    .line 2027
    iget-object v4, p0, Landroid/media/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    invoke-interface {v4, v2, p1, p2, v3}, Landroid/media/AudioManagerInternal$RingerModeDelegate;->onSetRingerModeExternal(IILjava/lang/String;I)I

    move-result p1

    .line 2030
    :cond_5
    if-eq p1, v3, :cond_6

    .line 2031
    const/4 v4, 0x1

    invoke-direct {p0, p1, v4}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    .line 2046
    :cond_6
    :goto_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2048
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 2035
    :cond_7
    :try_start_2
    invoke-direct {p0, v3, p1}, Landroid/media/AudioService;->setBootRinger(II)V

    .line 2037
    if-eq p1, v3, :cond_8

    .line 2038
    const/4 v4, 0x1

    invoke-direct {p0, p1, v4}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    .line 2040
    :cond_8
    iget-object v4, p0, Landroid/media/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    if-eqz v4, :cond_9

    .line 2041
    iget-object v4, p0, Landroid/media/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    invoke-interface {v4, v3, p1, p2, v2}, Landroid/media/AudioManagerInternal$RingerModeDelegate;->onSetRingerModeInternal(IILjava/lang/String;I)I

    move-result p1

    .line 2044
    :cond_9
    invoke-direct {p0, p1}, Landroid/media/AudioService;->setRingerModeExt(I)V

    goto :goto_1

    .line 2046
    .end local v2    # "ringerModeExternal":I
    .end local v3    # "ringerModeInternal":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2048
    :catchall_1
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private setRingerModeExt(I)V
    .locals 2
    .param p1, "ringerMode"    # I

    .prologue
    .line 2084
    iget-object v1, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2085
    :try_start_0
    iget v0, p0, Landroid/media/AudioService;->mRingerModeExternal:I

    if-ne p1, v0, :cond_0

    monitor-exit v1

    .line 2090
    :goto_0
    return-void

    .line 2086
    :cond_0
    iput p1, p0, Landroid/media/AudioService;->mRingerModeExternal:I

    .line 2087
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2089
    const-string v0, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {p0, v0, p1}, Landroid/media/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    goto :goto_0

    .line 2087
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private setRingerModeInt(IZ)V
    .locals 22
    .param p1, "ringerMode"    # I
    .param p2, "persist"    # Z

    .prologue
    .line 2094
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2095
    :try_start_0
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/AudioService;->mRingerMode:I

    move/from16 v0, p1

    if-eq v2, v0, :cond_1

    const/4 v13, 0x1

    .line 2096
    .local v13, "change":Z
    :goto_0
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/AudioService;->mRingerMode:I

    .line 2097
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2103
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v17

    .line 2104
    .local v17, "numStreamTypes":I
    const/4 v2, 0x1

    move/from16 v0, p1

    if-eq v0, v2, :cond_0

    if-nez p1, :cond_2

    :cond_0
    const/16 v18, 0x1

    .line 2106
    .local v18, "ringerModeMute":Z
    :goto_1
    add-int/lit8 v21, v17, -0x1

    .local v21, "streamType":I
    :goto_2
    if-ltz v21, :cond_a

    .line 2107
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/media/AudioService;->isStreamMutedByRingerMode(I)Z

    move-result v16

    .line 2108
    .local v16, "isMuted":Z
    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v20, 0x1

    .line 2109
    .local v20, "shouldMute":Z
    :goto_3
    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 2106
    :goto_4
    add-int/lit8 v21, v21, -0x1

    goto :goto_2

    .line 2095
    .end local v13    # "change":Z
    .end local v16    # "isMuted":Z
    .end local v17    # "numStreamTypes":I
    .end local v18    # "ringerModeMute":Z
    .end local v20    # "shouldMute":Z
    .end local v21    # "streamType":I
    :cond_1
    const/4 v13, 0x0

    goto :goto_0

    .line 2097
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 2104
    .restart local v13    # "change":Z
    .restart local v17    # "numStreamTypes":I
    :cond_2
    const/16 v18, 0x0

    goto :goto_1

    .line 2108
    .restart local v16    # "isMuted":Z
    .restart local v18    # "ringerModeMute":Z
    .restart local v21    # "streamType":I
    :cond_3
    const/16 v20, 0x0

    goto :goto_3

    .line 2110
    .restart local v20    # "shouldMute":Z
    :cond_4
    if-nez v20, :cond_9

    .line 2114
    invoke-direct/range {p0 .. p0}, Landroid/media/AudioService;->isPlatformVoice()Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/media/AudioService;->mHasVibrator:Z

    if-eqz v2, :cond_8

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v2, v2, v21

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    .line 2116
    const-class v9, Landroid/media/AudioService$VolumeStreamState;

    monitor-enter v9

    .line 2117
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v21

    # getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$1200(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v19

    .line 2118
    .local v19, "set":Ljava/util/Set;
    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 2119
    .local v15, "i":Ljava/util/Iterator;
    :cond_6
    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2120
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 2121
    .local v14, "entry":Ljava/util/Map$Entry;
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_6

    .line 2122
    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v14, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2124
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v5

    .line 2125
    .local v5, "device":I
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in setRingerModeInt streamType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " device : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2127
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v7, v7, v21

    const/16 v8, 0x1f4

    invoke-static/range {v2 .. v8}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_5

    .line 2137
    .end local v5    # "device":I
    .end local v14    # "entry":Ljava/util/Map$Entry;
    .end local v15    # "i":Ljava/util/Iterator;
    .end local v19    # "set":Ljava/util/Set;
    :catchall_1
    move-exception v2

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .restart local v15    # "i":Ljava/util/Iterator;
    .restart local v19    # "set":Ljava/util/Set;
    :cond_7
    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2139
    .end local v15    # "i":Ljava/util/Iterator;
    .end local v19    # "set":Ljava/util/Set;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v21

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;Z)V

    .line 2140
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    const/4 v3, 0x1

    shl-int v3, v3, v21

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    goto/16 :goto_4

    .line 2143
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v21

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;Z)V

    .line 2144
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    const/4 v3, 0x1

    shl-int v3, v3, v21

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    goto/16 :goto_4

    .line 2149
    .end local v16    # "isMuted":Z
    .end local v20    # "shouldMute":Z
    :cond_a
    if-eqz p2, :cond_b

    .line 2150
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x1f4

    invoke-static/range {v6 .. v12}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2153
    :cond_b
    if-eqz v13, :cond_c

    .line 2155
    const-string v2, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v2, v1}, Landroid/media/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    .line 2157
    :cond_c
    return-void
.end method

.method private setRotationForAudioSystem()V
    .locals 2

    .prologue
    .line 5787
    iget v0, p0, Landroid/media/AudioService;->mDeviceRotation:I

    packed-switch v0, :pswitch_data_0

    .line 5801
    const-string v0, "AudioService"

    const-string v1, "Unknown device rotation"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5803
    :goto_0
    return-void

    .line 5789
    :pswitch_0
    const-string/jumbo v0, "rotation=0"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 5792
    :pswitch_1
    const-string/jumbo v0, "rotation=90"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 5795
    :pswitch_2
    const-string/jumbo v0, "rotation=180"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 5798
    :pswitch_3
    const-string/jumbo v0, "rotation=270"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 5787
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setSafeMediaVolumeEnabled(Z)V
    .locals 8
    .param p1, "on"    # Z

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 5874
    iget-object v7, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v7

    .line 5875
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 5877
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 5878
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 5879
    invoke-direct {p0}, Landroid/media/AudioService;->enforceSafeMediaVolume()V

    .line 5893
    :cond_0
    :goto_0
    monitor-exit v7

    .line 5894
    return-void

    .line 5880
    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 5881
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 5882
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/AudioService;->mMusicActiveMs:I

    .line 5883
    invoke-direct {p0}, Landroid/media/AudioService;->saveMusicActiveMs()V

    .line 5884
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xe

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0xea60

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0

    .line 5893
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setStreamVolume(IIILjava/lang/String;I)V
    .locals 10
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "uid"    # I

    .prologue
    const/4 v3, 0x3

    .line 1360
    iget-boolean v0, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    if-eqz v0, :cond_1

    .line 1451
    :cond_0
    :goto_0
    return-void

    .line 1364
    :cond_1
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 1365
    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v8, v0, p1

    .line 1366
    .local v8, "streamTypeAlias":I
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v7, v0, v8

    .line 1372
    .local v7, "streamState":Landroid/media/AudioService$VolumeStreamState;
    invoke-direct {p0, p1}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v5

    .line 1373
    .local v5, "device":I
    and-int/lit16 v0, p3, 0x80

    if-eqz v0, :cond_9

    .line 1374
    const/4 v5, 0x4

    .line 1382
    :cond_2
    :goto_1
    const/high16 v0, 0x10000

    if-ne p3, v0, :cond_3

    const/4 v0, 0x1

    if-ne v5, v0, :cond_3

    .line 1383
    const-string v0, "AudioService"

    const-string/jumbo v1, "volume for device change to speaker for package mode."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    const/4 v5, 0x2

    .line 1390
    :cond_3
    and-int/lit16 v0, v5, 0x380

    if-nez v0, :cond_4

    and-int/lit8 v0, p3, 0x40

    if-nez v0, :cond_0

    .line 1395
    :cond_4
    iget-object v0, p0, Landroid/media/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    sget-object v1, Landroid/media/AudioService;->STEAM_VOLUME_OPS:[I

    aget v1, v1, v8

    invoke-virtual {v0, v1, p5, p4}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1400
    iget-object v9, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v9

    .line 1402
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/media/AudioService;->mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    .line 1404
    invoke-virtual {v7, v5}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v6

    .line 1406
    .local v6, "oldIndex":I
    mul-int/lit8 v0, p2, 0xa

    invoke-direct {p0, v0, p1, v8}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result p2

    .line 1408
    if-ne v8, v3, :cond_6

    and-int/lit16 v0, v5, 0x380

    if-eqz v0, :cond_6

    and-int/lit8 v0, p3, 0x40

    if-nez v0, :cond_6

    .line 1411
    iget-object v1, p0, Landroid/media/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1412
    :try_start_1
    iget-object v0, p0, Landroid/media/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Landroid/media/AudioService;->mAvrcpAbsVolSupported:Z

    if-eqz v0, :cond_5

    .line 1413
    iget-object v0, p0, Landroid/media/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    div-int/lit8 v2, p2, 0xa

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothA2dp;->setAvrcpAbsoluteVolume(I)V

    .line 1415
    :cond_5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1418
    :cond_6
    if-ne v8, v3, :cond_7

    .line 1419
    :try_start_2
    invoke-virtual {p0, p1}, Landroid/media/AudioService;->getStreamMaxVolume(I)I

    move-result v0

    invoke-direct {p0, v6, p2, v0, p3}, Landroid/media/AudioService;->setSystemAudioVolume(IIII)V

    .line 1422
    :cond_7
    and-int/lit8 p3, p3, -0x21

    .line 1423
    if-ne v8, v3, :cond_8

    iget v0, p0, Landroid/media/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_8

    .line 1425
    or-int/lit8 p3, p3, 0x20

    .line 1428
    if-eqz p2, :cond_8

    .line 1429
    iget-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_a

    and-int/lit8 v0, v5, 0xc

    if-eqz v0, :cond_a

    .line 1431
    iget p2, p0, Landroid/media/AudioService;->mSafeMediaVolumeIndex:I

    .line 1438
    :cond_8
    :goto_2
    invoke-direct {p0, v8, p2, v5}, Landroid/media/AudioService;->checkSafeMediaVolume(III)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1440
    const-string v0, "AudioService"

    const-string v1, "Call postDisplaySafeVolumeWarning here b"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    iget-object v0, p0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-virtual {v0, p3}, Landroid/media/AudioService$VolumeController;->postDisplaySafeVolumeWarning(I)V

    .line 1443
    new-instance v0, Landroid/media/AudioService$StreamVolumeCommand;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioService$StreamVolumeCommand;-><init>(Landroid/media/AudioService;IIII)V

    iput-object v0, p0, Landroid/media/AudioService;->mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    .line 1449
    :goto_3
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1450
    invoke-direct {p0, p1, v6, p2, p3}, Landroid/media/AudioService;->sendVolumeUpdate(IIII)V

    goto/16 :goto_0

    .line 1375
    .end local v6    # "oldIndex":I
    :cond_9
    and-int/lit16 v0, p3, 0x100

    if-eqz v0, :cond_2

    .line 1376
    const/16 v5, 0x8

    goto/16 :goto_1

    .line 1415
    .restart local v6    # "oldIndex":I
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 1449
    .end local v6    # "oldIndex":I
    :catchall_1
    move-exception v0

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 1433
    .restart local v6    # "oldIndex":I
    :cond_a
    :try_start_5
    invoke-virtual {v7}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result p2

    goto :goto_2

    .line 1446
    :cond_b
    invoke-direct {p0, p1, p2, p3, v5}, Landroid/media/AudioService;->onSetStreamVolume(IIII)V

    .line 1447
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0, v5}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result p2

    goto :goto_3
.end method

.method private setStreamVolumeInt(IIIZ)V
    .locals 7
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "device"    # I
    .param p4, "force"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1638
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v5, v0, p1

    .line 1640
    .local v5, "streamState":Landroid/media/AudioService$VolumeStreamState;
    invoke-virtual {v5, p2, p3}, Landroid/media/AudioService$VolumeStreamState;->setIndex(II)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p4, :cond_1

    .line 1643
    :cond_0
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v2, 0x2

    move v3, p3

    move v4, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1651
    :cond_1
    return-void
.end method

.method private setSystemAudioMute(Z)V
    .locals 5
    .param p1, "state"    # Z

    .prologue
    .line 1694
    iget-object v2, p0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/media/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-nez v2, :cond_1

    .line 1706
    :cond_0
    :goto_0
    return-void

    .line 1695
    :cond_1
    iget-object v3, p0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v3

    .line 1696
    :try_start_0
    iget-boolean v2, p0, Landroid/media/AudioService;->mHdmiSystemAudioSupported:Z

    if-nez v2, :cond_2

    monitor-exit v3

    goto :goto_0

    .line 1705
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1697
    :cond_2
    :try_start_1
    iget-object v4, p0, Landroid/media/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1698
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-wide v0

    .line 1700
    .local v0, "token":J
    :try_start_3
    iget-object v2, p0, Landroid/media/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    invoke-virtual {v2, p1}, Landroid/hardware/hdmi/HdmiTvClient;->setSystemAudioMute(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1702
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1704
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1705
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 1702
    :catchall_1
    move-exception v2

    :try_start_6
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1704
    .end local v0    # "token":J
    :catchall_2
    move-exception v2

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method private setSystemAudioVolume(IIII)V
    .locals 7
    .param p1, "oldVolume"    # I
    .param p2, "newVolume"    # I
    .param p3, "maxVolume"    # I
    .param p4, "flags"    # I

    .prologue
    .line 1248
    iget-object v2, p0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/media/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v2, :cond_0

    if-eq p1, p2, :cond_0

    and-int/lit16 v2, p4, 0x100

    if-eqz v2, :cond_1

    .line 1267
    :cond_0
    :goto_0
    return-void

    .line 1255
    :cond_1
    iget-object v3, p0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v3

    .line 1256
    :try_start_0
    iget-boolean v2, p0, Landroid/media/AudioService;->mHdmiSystemAudioSupported:Z

    if-nez v2, :cond_2

    monitor-exit v3

    goto :goto_0

    .line 1266
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1257
    :cond_2
    :try_start_1
    iget-object v4, p0, Landroid/media/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1258
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-wide v0

    .line 1260
    .local v0, "token":J
    :try_start_3
    iget-object v2, p0, Landroid/media/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    add-int/lit8 v5, p1, 0x5

    div-int/lit8 v5, v5, 0xa

    add-int/lit8 v6, p2, 0x5

    div-int/lit8 v6, v6, 0xa

    invoke-virtual {v2, v5, v6, p3}, Landroid/hardware/hdmi/HdmiTvClient;->setSystemAudioVolume(III)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1263
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1265
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1266
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 1263
    :catchall_1
    move-exception v2

    :try_start_6
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1265
    .end local v0    # "token":J
    :catchall_2
    move-exception v2

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public static streamToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "stream"    # I

    .prologue
    .line 866
    if-ltz p0, :cond_0

    sget-object v0, Landroid/media/AudioService;->STREAM_NAMES:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Landroid/media/AudioService;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v0, v0, p0

    .line 868
    :goto_0
    return-object v0

    .line 867
    :cond_0
    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_1

    const-string v0, "USE_DEFAULT_STREAM_TYPE"

    goto :goto_0

    .line 868
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_STREAM_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private updateFlagsForSystemAudio(I)I
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 1589
    iget-object v0, p0, Landroid/media/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v0, :cond_1

    .line 1590
    iget-object v1, p0, Landroid/media/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    monitor-enter v1

    .line 1591
    :try_start_0
    iget-boolean v0, p0, Landroid/media/AudioService;->mHdmiSystemAudioSupported:Z

    if-eqz v0, :cond_0

    and-int/lit16 v0, p1, 0x100

    if-nez v0, :cond_0

    .line 1593
    and-int/lit8 p1, p1, -0x2

    .line 1595
    :cond_0
    monitor-exit v1

    .line 1597
    :cond_1
    return p1

    .line 1595
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateStreamVolumeAlias(Z)V
    .locals 8
    .param p1, "updateVolumes"    # Z

    .prologue
    const/16 v5, 0x8

    const/4 v3, 0x0

    .line 874
    iget v0, p0, Landroid/media/AudioService;->mPlatformType:I

    packed-switch v0, :pswitch_data_0

    .line 884
    iget-object v0, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS_DEFAULT:[I

    iput-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    .line 885
    const/4 v7, 0x3

    .line 888
    .local v7, "dtmfStreamAlias":I
    :goto_0
    invoke-direct {p0}, Landroid/media/AudioService;->isPlatformTelevision()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 889
    iput v3, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    .line 899
    :goto_1
    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aput v7, v0, v5

    .line 900
    if-eqz p1, :cond_0

    .line 901
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v5

    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, v7

    invoke-virtual {v0, v1}, Landroid/media/AudioService$VolumeStreamState;->setAllIndexes(Landroid/media/AudioService$VolumeStreamState;)V

    .line 903
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerModeInternal()I

    move-result v0

    invoke-direct {p0, v0, v3}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    .line 904
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xa

    const/4 v2, 0x2

    iget-object v4, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v5, v4, v5

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 911
    :cond_0
    return-void

    .line 876
    .end local v7    # "dtmfStreamAlias":I
    :pswitch_0
    iget-object v0, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS_VOICE:[I

    iput-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    .line 877
    const/4 v7, 0x2

    .line 878
    .restart local v7    # "dtmfStreamAlias":I
    goto :goto_0

    .line 880
    .end local v7    # "dtmfStreamAlias":I
    :pswitch_1
    iget-object v0, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS_TELEVISION:[I

    iput-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    .line 881
    const/4 v7, 0x3

    .line 882
    .restart local v7    # "dtmfStreamAlias":I
    goto :goto_0

    .line 891
    :cond_1
    invoke-direct {p0}, Landroid/media/AudioService;->isInCommunication()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 892
    const/4 v7, 0x0

    .line 893
    iget v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    goto :goto_1

    .line 895
    :cond_2
    iget v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    goto :goto_1

    .line 874
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private waitForAudioHandlerCreation()V
    .locals 3

    .prologue
    .line 800
    monitor-enter p0

    .line 801
    :goto_0
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 804
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 805
    :catch_0
    move-exception v0

    .line 806
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "AudioService"

    const-string v2, "Interrupted while waiting on volume handler."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 809
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 810
    return-void
.end method


# virtual methods
.method public abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;)I
    .locals 3
    .param p1, "fd"    # Landroid/media/IAudioFocusDispatcher;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "aa"    # Landroid/media/AudioAttributes;

    .prologue
    .line 5671
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AudioFocus  abandonAudioFocus() from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5673
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaFocusControl;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;)I

    move-result v0

    return v0
.end method

.method public adjustMasterVolume(IILjava/lang/String;)V
    .locals 1
    .param p1, "steps"    # I
    .param p2, "flags"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 1271
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/media/AudioService;->adjustMasterVolume(IILjava/lang/String;I)V

    .line 1272
    return-void
.end method

.method public adjustMasterVolume(IILjava/lang/String;I)V
    .locals 7
    .param p1, "steps"    # I
    .param p2, "flags"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "uid"    # I

    .prologue
    .line 1275
    iget-boolean v5, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    if-eqz v5, :cond_0

    .line 1290
    :goto_0
    return-void

    .line 1278
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidSteps(I)V

    .line 1279
    invoke-static {}, Landroid/media/AudioSystem;->getMasterVolume()F

    move-result v5

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 1280
    .local v4, "volume":I
    const/4 v0, 0x0

    .line 1281
    .local v0, "delta":I
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1282
    .local v3, "numSteps":I
    if-lez p1, :cond_1

    const/4 v1, 0x1

    .line 1283
    .local v1, "direction":I
    :goto_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v3, :cond_2

    .line 1284
    invoke-direct {p0, v1, v4}, Landroid/media/AudioService;->findVolumeDelta(II)I

    move-result v0

    .line 1285
    add-int/2addr v4, v0

    .line 1283
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1282
    .end local v1    # "direction":I
    .end local v2    # "i":I
    :cond_1
    const/4 v1, -0x1

    goto :goto_1

    .line 1289
    .restart local v1    # "direction":I
    .restart local v2    # "i":I
    :cond_2
    invoke-virtual {p0, v4, p2, p3, p4}, Landroid/media/AudioService;->setMasterVolume(IILjava/lang/String;I)V

    goto :goto_0
.end method

.method public adjustStreamVolume(IIILjava/lang/String;)V
    .locals 6
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 1095
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioService;->adjustStreamVolume(IIILjava/lang/String;I)V

    .line 1096
    return-void
.end method

.method public adjustSuggestedStreamVolume(IIILjava/lang/String;)V
    .locals 6
    .param p1, "direction"    # I
    .param p2, "suggestedStreamType"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 1043
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;I)V

    .line 1045
    return-void
.end method

.method public avrcpSupportsAbsoluteVolume(Ljava/lang/String;Z)V
    .locals 8
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "support"    # Z

    .prologue
    .line 5046
    iget-object v7, p0, Landroid/media/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    monitor-enter v7

    .line 5047
    :try_start_0
    iput-boolean p2, p0, Landroid/media/AudioService;->mAvrcpAbsVolSupported:Z

    .line 5048
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/16 v3, 0x80

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5051
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/16 v3, 0x80

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5054
    monitor-exit v7

    .line 5055
    return-void

    .line 5054
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method checkAudioSettingsPermission(Ljava/lang/String;)Z
    .locals 3
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 3753
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_AUDIO_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 3755
    const/4 v1, 0x1

    .line 3761
    :goto_0
    return v1

    .line 3757
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio Settings Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3760
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3761
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearAllScoClients(IZ)V
    .locals 6
    .param p1, "exceptPid"    # I
    .param p2, "stopSco"    # Z

    .prologue
    .line 3076
    iget-object v5, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v5

    .line 3077
    const/4 v2, 0x0

    .line 3078
    .local v2, "savedClient":Landroid/media/AudioService$ScoClient;
    :try_start_0
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3079
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 3080
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$ScoClient;

    .line 3081
    .local v0, "cl":Landroid/media/AudioService$ScoClient;
    invoke-virtual {v0}, Landroid/media/AudioService$ScoClient;->getPid()I

    move-result v4

    if-eq v4, p1, :cond_0

    .line 3082
    invoke-virtual {v0, p2}, Landroid/media/AudioService$ScoClient;->clearCount(Z)V

    .line 3079
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3084
    :cond_0
    move-object v2, v0

    goto :goto_1

    .line 3087
    .end local v0    # "cl":Landroid/media/AudioService$ScoClient;
    :cond_1
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 3088
    if-eqz v2, :cond_2

    .line 3089
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3091
    :cond_2
    monitor-exit v5

    .line 3092
    return-void

    .line 3091
    .end local v1    # "i":I
    .end local v3    # "size":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public disableSafeMediaVolume()V
    .locals 5

    .prologue
    .line 5935
    const-string v0, "disable the safe media volume"

    invoke-direct {p0, v0}, Landroid/media/AudioService;->enforceSelfOrSystemUI(Ljava/lang/String;)V

    .line 5936
    iget-object v1, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v1

    .line 5937
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Landroid/media/AudioService;->setSafeMediaVolumeEnabled(Z)V

    .line 5938
    iget-object v0, p0, Landroid/media/AudioService;->mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    if-eqz v0, :cond_0

    .line 5939
    iget-object v0, p0, Landroid/media/AudioService;->mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    iget v0, v0, Landroid/media/AudioService$StreamVolumeCommand;->mStreamType:I

    iget-object v2, p0, Landroid/media/AudioService;->mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    iget v2, v2, Landroid/media/AudioService$StreamVolumeCommand;->mIndex:I

    iget-object v3, p0, Landroid/media/AudioService;->mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    iget v3, v3, Landroid/media/AudioService$StreamVolumeCommand;->mFlags:I

    iget-object v4, p0, Landroid/media/AudioService;->mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    iget v4, v4, Landroid/media/AudioService$StreamVolumeCommand;->mDevice:I

    invoke-direct {p0, v0, v2, v3, v4}, Landroid/media/AudioService;->onSetStreamVolume(IIII)V

    .line 5943
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioService;->mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    .line 5945
    :cond_0
    monitor-exit v1

    .line 5946
    return-void

    .line 5945
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 6089
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    const-string v2, "AudioService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6091
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p2}, Landroid/media/MediaFocusControl;->dump(Ljava/io/PrintWriter;)V

    .line 6092
    invoke-direct {p0, p2}, Landroid/media/AudioService;->dumpStreamStates(Ljava/io/PrintWriter;)V

    .line 6093
    invoke-direct {p0, p2}, Landroid/media/AudioService;->dumpRingerMode(Ljava/io/PrintWriter;)V

    .line 6094
    const-string v0, "\nAudio routes:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6095
    const-string v0, "  mMainType=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget v0, v0, Landroid/media/AudioRoutesInfo;->mMainType:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6096
    const-string v0, "  mBluetoothName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v0, v0, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6098
    const-string v0, "\nOther state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6099
    const-string v0, "  mVolumeController="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6100
    const-string v0, "  mSafeMediaVolumeState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6101
    iget-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-static {v0}, Landroid/media/AudioService;->safeMediaVolumeStateToString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6102
    const-string v0, "  mSafeMediaVolumeIndex="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeIndex:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6103
    const-string v0, "  mPendingVolumeCommand="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/AudioService;->mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6104
    const-string v0, "  mMusicActiveMs="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/media/AudioService;->mMusicActiveMs:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6105
    const-string v0, "  mMcc="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/media/AudioService;->mMcc:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6106
    const-string v0, "  mHasVibrator="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/media/AudioService;->mHasVibrator:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6108
    invoke-direct {p0, p2}, Landroid/media/AudioService;->dumpAudioPolicies(Ljava/io/PrintWriter;)V

    .line 6109
    return-void
.end method

.method public forceRemoteSubmixFullVolume(ZLandroid/os/IBinder;)V
    .locals 5
    .param p1, "startForcing"    # Z
    .param p2, "cb"    # Landroid/os/IBinder;

    .prologue
    const v4, 0x8000

    const v3, -0x8001

    .line 1780
    if-nez p2, :cond_0

    .line 1816
    :goto_0
    return-void

    .line 1783
    :cond_0
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CAPTURE_AUDIO_OUTPUT"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 1785
    const-string v1, "AudioService"

    const-string v2, "Trying to call forceRemoteSubmixFullVolume() without CAPTURE_AUDIO_OUTPUT"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1788
    :cond_1
    iget-object v2, p0, Landroid/media/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1789
    const/4 v0, 0x0

    .line 1790
    .local v0, "applyRequired":Z
    if-eqz p1, :cond_5

    .line 1791
    :try_start_0
    invoke-direct {p0, p2}, Landroid/media/AudioService;->hasRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1792
    iget-object v1, p0, Landroid/media/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    new-instance v3, Landroid/media/AudioService$RmtSbmxFullVolDeathHandler;

    invoke-direct {v3, p0, p2}, Landroid/media/AudioService$RmtSbmxFullVolDeathHandler;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1793
    iget v1, p0, Landroid/media/AudioService;->mRmtSbmxFullVolRefCount:I

    if-nez v1, :cond_2

    .line 1794
    iget v1, p0, Landroid/media/AudioService;->mFullVolumeDevices:I

    or-int/2addr v1, v4

    iput v1, p0, Landroid/media/AudioService;->mFullVolumeDevices:I

    .line 1795
    iget v1, p0, Landroid/media/AudioService;->mFixedVolumeDevices:I

    or-int/2addr v1, v4

    iput v1, p0, Landroid/media/AudioService;->mFixedVolumeDevices:I

    .line 1796
    const/4 v0, 0x1

    .line 1798
    :cond_2
    iget v1, p0, Landroid/media/AudioService;->mRmtSbmxFullVolRefCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/media/AudioService;->mRmtSbmxFullVolRefCount:I

    .line 1810
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 1812
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Landroid/media/AudioService;->checkAllFixedVolumeDevices(I)V

    .line 1813
    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v3, 0x3

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/media/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 1815
    :cond_4
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1801
    :cond_5
    :try_start_1
    invoke-direct {p0, p2}, Landroid/media/AudioService;->discardRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/media/AudioService;->mRmtSbmxFullVolRefCount:I

    if-lez v1, :cond_3

    .line 1802
    iget v1, p0, Landroid/media/AudioService;->mRmtSbmxFullVolRefCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/media/AudioService;->mRmtSbmxFullVolRefCount:I

    .line 1803
    iget v1, p0, Landroid/media/AudioService;->mRmtSbmxFullVolRefCount:I

    if-nez v1, :cond_3

    .line 1804
    iget v1, p0, Landroid/media/AudioService;->mFullVolumeDevices:I

    and-int/2addr v1, v3

    iput v1, p0, Landroid/media/AudioService;->mFullVolumeDevices:I

    .line 1805
    iget v1, p0, Landroid/media/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v1, v3

    iput v1, p0, Landroid/media/AudioService;->mFixedVolumeDevices:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1806
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public forceVolumeControlStream(ILandroid/os/IBinder;)V
    .locals 3
    .param p1, "streamType"    # I
    .param p2, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 1455
    iget-object v1, p0, Landroid/media/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1456
    :try_start_0
    iput p1, p0, Landroid/media/AudioService;->mVolumeControlStream:I

    .line 1457
    iget v0, p0, Landroid/media/AudioService;->mVolumeControlStream:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 1458
    iget-object v0, p0, Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    if-eqz v0, :cond_0

    .line 1459
    iget-object v0, p0, Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    invoke-virtual {v0}, Landroid/media/AudioService$ForceControlStreamClient;->release()V

    .line 1460
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    .line 1465
    :cond_0
    :goto_0
    monitor-exit v1

    .line 1466
    return-void

    .line 1463
    :cond_1
    new-instance v0, Landroid/media/AudioService$ForceControlStreamClient;

    invoke-direct {v0, p0, p2}, Landroid/media/AudioService$ForceControlStreamClient;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;)V

    iput-object v0, p0, Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    goto :goto_0

    .line 1465
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCurrentAudioFocus()I
    .locals 1

    .prologue
    .line 5681
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0}, Landroid/media/MediaFocusControl;->getCurrentAudioFocus()I

    move-result v0

    return v0
.end method

.method public getFmRxMode()I
    .locals 1

    .prologue
    .line 6324
    iget v0, p0, Landroid/media/AudioService;->mFmRxMode:I

    return v0
.end method

.method public getLastAudibleMasterVolume()I
    .locals 2

    .prologue
    .line 1944
    invoke-static {}, Landroid/media/AudioSystem;->getMasterVolume()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getLastAudibleStreamVolume(I)I
    .locals 2
    .param p1, "streamType"    # I

    .prologue
    .line 1937
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 1938
    invoke-direct {p0, p1}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v0

    .line 1939
    .local v0, "device":I
    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0xa

    return v1
.end method

.method public getMasterMaxVolume()I
    .locals 1

    .prologue
    .line 1932
    const/16 v0, 0x64

    return v0
.end method

.method public getMasterStreamType()I
    .locals 2

    .prologue
    .line 1950
    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getMasterVolume()I
    .locals 1

    .prologue
    .line 1880
    invoke-virtual {p0}, Landroid/media/AudioService;->isMasterMute()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1881
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/media/AudioService;->getLastAudibleMasterVolume()I

    move-result v0

    goto :goto_0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 2468
    iget v0, p0, Landroid/media/AudioService;->mMode:I

    return v0
.end method

.method public getRemoteControlClientNowPlayingEntries()V
    .locals 1

    .prologue
    .line 5623
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0}, Landroid/media/MediaFocusControl;->getRemoteControlClientNowPlayingEntries()V

    .line 5624
    return-void
.end method

.method public getRingerModeExternal()I
    .locals 2

    .prologue
    .line 1973
    iget-object v1, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1974
    :try_start_0
    iget v0, p0, Landroid/media/AudioService;->mRingerModeExternal:I

    monitor-exit v1

    return v0

    .line 1975
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRingerModeInternal()I
    .locals 2

    .prologue
    .line 1980
    iget-object v1, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1981
    :try_start_0
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    monitor-exit v1

    return v0

    .line 1982
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRingtonePlayer()Landroid/media/IRingtonePlayer;
    .locals 1

    .prologue
    .line 5824
    iget-object v0, p0, Landroid/media/AudioService;->mRingtonePlayer:Landroid/media/IRingtonePlayer;

    return-object v0
.end method

.method public getStreamMaxVolume(I)I
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 1927
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 1928
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public getStreamVolume(I)I
    .locals 5
    .param p1, "streamType"    # I

    .prologue
    .line 1861
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 1862
    invoke-direct {p0, p1}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v0

    .line 1863
    .local v0, "device":I
    const-class v3, Landroid/media/AudioService$VolumeStreamState;

    monitor-enter v3

    .line 1864
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, p1

    invoke-virtual {v2, v0}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    .line 1867
    .local v1, "index":I
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, p1

    # invokes: Landroid/media/AudioService$VolumeStreamState;->isMuted_syncVSS()Z
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$300(Landroid/media/AudioService$VolumeStreamState;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1868
    const/4 v1, 0x0

    .line 1870
    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v2, v2, p1

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    iget v2, p0, Landroid/media/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_1

    .line 1872
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    .line 1874
    :cond_1
    add-int/lit8 v2, v1, 0x5

    div-int/lit8 v2, v2, 0xa

    monitor-exit v3

    return v2

    .line 1875
    .end local v1    # "index":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getVibrateSetting(I)I
    .locals 2
    .param p1, "vibrateType"    # I

    .prologue
    .line 2196
    iget-boolean v0, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2197
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/media/AudioService;->mVibrateSetting:I

    mul-int/lit8 v1, p1, 0x2

    shr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x3

    goto :goto_0
.end method

.method public isBluetoothA2dpOn()Z
    .locals 2

    .prologue
    .line 2814
    iget-object v1, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2815
    :try_start_0
    iget-boolean v0, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabled:Z

    monitor-exit v1

    return v0

    .line 2816
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isBluetoothScoOn()Z
    .locals 2

    .prologue
    .line 2798
    iget v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCameraSoundForced()Z
    .locals 2

    .prologue
    .line 6065
    iget-object v1, p0, Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    monitor-enter v1

    .line 6066
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 6067
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isFmActive()Z
    .locals 1

    .prologue
    .line 6357
    iget-boolean v0, p0, Landroid/media/AudioService;->mFmStreamOn:Z

    return v0
.end method

.method public isHdmiSystemAudioSupported()Z
    .locals 1

    .prologue
    .line 6009
    iget-boolean v0, p0, Landroid/media/AudioService;->mHdmiSystemAudioSupported:Z

    return v0
.end method

.method public isMasterMute()Z
    .locals 1

    .prologue
    .line 1848
    invoke-static {}, Landroid/media/AudioSystem;->getMasterMute()Z

    move-result v0

    return v0
.end method

.method public isSpeakerfmOn()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 6352
    iget v1, p0, Landroid/media/AudioService;->mForcedUseForFM:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSpeakerphoneOn()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2755
    iget v1, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStreamAffectedByMute(I)Z
    .locals 3
    .param p1, "streamType"    # I

    .prologue
    const/4 v0, 0x1

    .line 3580
    iget v1, p0, Landroid/media/AudioService;->mMuteAffectedStreams:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStreamAffectedByRingerMode(I)Z
    .locals 3
    .param p1, "streamType"    # I

    .prologue
    const/4 v0, 0x1

    .line 3523
    iget v1, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStreamMute(I)Z
    .locals 2
    .param p1, "streamType"    # I

    .prologue
    .line 1710
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    .line 1711
    invoke-direct {p0, p1}, Landroid/media/AudioService;->getActiveStreamType(I)I

    move-result p1

    .line 1713
    :cond_0
    const-class v1, Landroid/media/AudioService$VolumeStreamState;

    monitor-enter v1

    .line 1714
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    # invokes: Landroid/media/AudioService$VolumeStreamState;->isMuted_syncVSS()Z
    invoke-static {v0}, Landroid/media/AudioService$VolumeStreamState;->access$300(Landroid/media/AudioService$VolumeStreamState;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1715
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isValidRingerMode(I)Z
    .locals 1
    .param p1, "ringerMode"    # I

    .prologue
    .line 1993
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadSoundEffects()Z
    .locals 12

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 2596
    const/4 v7, 0x3

    .line 2597
    .local v7, "attempts":I
    new-instance v5, Landroid/media/AudioService$LoadSoundEffectReply;

    invoke-direct {v5, p0}, Landroid/media/AudioService$LoadSoundEffectReply;-><init>(Landroid/media/AudioService;)V

    .line 2599
    .local v5, "reply":Landroid/media/AudioService$LoadSoundEffectReply;
    monitor-enter v5

    .line 2600
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x7

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v8, v7

    .line 2601
    .end local v7    # "attempts":I
    .local v8, "attempts":I
    :goto_0
    :try_start_1
    iget v0, v5, Landroid/media/AudioService$LoadSoundEffectReply;->mStatus:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v0, v10, :cond_0

    add-int/lit8 v7, v8, -0x1

    .end local v8    # "attempts":I
    .restart local v7    # "attempts":I
    if-lez v8, :cond_1

    .line 2603
    const-wide/16 v0, 0x1388

    :try_start_2
    invoke-virtual {v5, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v8, v7

    .line 2606
    .end local v7    # "attempts":I
    .restart local v8    # "attempts":I
    goto :goto_0

    .line 2604
    .end local v8    # "attempts":I
    .restart local v7    # "attempts":I
    :catch_0
    move-exception v9

    .line 2605
    .local v9, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v0, "AudioService"

    const-string v1, "loadSoundEffects Interrupted while waiting sound pool loaded."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v7

    .line 2606
    .end local v7    # "attempts":I
    .restart local v8    # "attempts":I
    goto :goto_0

    .end local v9    # "e":Ljava/lang/InterruptedException;
    :cond_0
    move v7, v8

    .line 2608
    .end local v8    # "attempts":I
    .restart local v7    # "attempts":I
    :cond_1
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2609
    iget v0, v5, Landroid/media/AudioService$LoadSoundEffectReply;->mStatus:I

    if-nez v0, :cond_2

    move v0, v10

    :goto_1
    return v0

    .line 2608
    :catchall_0
    move-exception v0

    :goto_2
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_2
    move v0, v11

    .line 2609
    goto :goto_1

    .line 2608
    .end local v7    # "attempts":I
    .restart local v8    # "attempts":I
    :catchall_1
    move-exception v0

    move v7, v8

    .end local v8    # "attempts":I
    .restart local v7    # "attempts":I
    goto :goto_2
.end method

.method public notifyVolumeControllerVisible(Landroid/media/IVolumeController;Z)V
    .locals 3
    .param p1, "controller"    # Landroid/media/IVolumeController;
    .param p2, "visible"    # Z

    .prologue
    .line 6400
    const-string/jumbo v0, "notify about volume controller visibility"

    invoke-direct {p0, v0}, Landroid/media/AudioService;->enforceSelfOrSystemUI(Ljava/lang/String;)V

    .line 6403
    iget-object v0, p0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-virtual {v0, p1}, Landroid/media/AudioService$VolumeController;->isSameBinder(Landroid/media/IVolumeController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6409
    :goto_0
    return-void

    .line 6407
    :cond_0
    iget-object v0, p0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-virtual {v0, p2}, Landroid/media/AudioService$VolumeController;->setVisible(Z)V

    .line 6408
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Volume controller visible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onSystemReady()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 746
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/AudioService;->mSystemReady:Z

    .line 747
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x7

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 750
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Landroid/media/AudioService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 752
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/AudioService;->mScoConnectionState:I

    .line 753
    invoke-direct {p0}, Landroid/media/AudioService;->resetBluetoothSco()V

    .line 754
    invoke-direct {p0}, Landroid/media/AudioService;->getBluetoothHeadset()Z

    .line 757
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.media.SCO_AUDIO_STATE_CHANGED"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 758
    .local v8, "newIntent":Landroid/content/Intent;
    const-string v0, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {v8, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 760
    invoke-direct {p0, v8}, Landroid/media/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 762
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v7

    .line 763
    .local v7, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v7, :cond_0

    .line 764
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/media/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v7, v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 768
    :cond_0
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "hdmi_control"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiControlManager;

    iput-object v0, p0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    .line 770
    iget-object v0, p0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v0, :cond_2

    .line 771
    iget-object v1, p0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v1

    .line 772
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlManager;->getTvClient()Landroid/hardware/hdmi/HdmiTvClient;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    .line 773
    iget-object v0, p0, Landroid/media/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v0, :cond_1

    .line 774
    iget v0, p0, Landroid/media/AudioService;->mFixedVolumeDevices:I

    const v2, -0x2c0003

    and-int/2addr v0, v2

    iput v0, p0, Landroid/media/AudioService;->mFixedVolumeDevices:I

    .line 776
    :cond_1
    iget-object v0, p0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlManager;->getPlaybackClient()Landroid/hardware/hdmi/HdmiPlaybackClient;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    .line 777
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/AudioService;->mHdmiCecSink:Z

    .line 778
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 781
    :cond_2
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x11

    const/16 v6, 0x7530

    move v2, v3

    move v4, v3

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 789
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/AudioService$StreamOverride;->init(Landroid/content/Context;)V

    .line 790
    return-void

    .line 778
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public playSoundEffect(I)V
    .locals 1
    .param p1, "effectType"    # I

    .prologue
    .line 2577
    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioService;->playSoundEffectVolume(IF)V

    .line 2578
    return-void
.end method

.method public playSoundEffectVolume(IF)V
    .locals 7
    .param p1, "effectType"    # I
    .param p2, "volume"    # F

    .prologue
    .line 2582
    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 2583
    :cond_0
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioService effectType value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " out of range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2589
    :goto_0
    return-void

    .line 2587
    :cond_1
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v3, p2

    float-to-int v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, p1

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public registerAudioPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;Z)Ljava/lang/String;
    .locals 9
    .param p1, "policyConfig"    # Landroid/media/audiopolicy/AudioPolicyConfig;
    .param p2, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;
    .param p3, "hasFocusListener"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 6600
    sget-boolean v5, Landroid/media/AudioService;->DEBUG_AP:Z

    if-eqz v5, :cond_0

    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "registerAudioPolicy for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with config:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6602
    :cond_0
    const/4 v3, 0x0

    .line 6604
    .local v3, "regId":Ljava/lang/String;
    iget-object v5, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    const/4 v2, 0x1

    .line 6607
    .local v2, "hasPermissionForPolicy":Z
    :cond_1
    if-nez v2, :cond_2

    .line 6608
    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t register audio policy for pid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", need MODIFY_AUDIO_ROUTING"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6630
    :goto_0
    return-object v4

    .line 6613
    :cond_2
    iget-object v5, p0, Landroid/media/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v5

    .line 6615
    :try_start_0
    iget-object v6, p0, Landroid/media/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 6616
    const-string v6, "AudioService"

    const-string v7, "Cannot re-register policy"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6617
    :try_start_1
    monitor-exit v5

    goto :goto_0

    .line 6629
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 6619
    :cond_3
    :try_start_2
    new-instance v0, Landroid/media/AudioService$AudioPolicyProxy;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/media/AudioService$AudioPolicyProxy;-><init>(Landroid/media/AudioService;Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;Z)V

    .line 6620
    .local v0, "app":Landroid/media/AudioService$AudioPolicyProxy;
    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v0, v7}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 6621
    invoke-virtual {v0}, Landroid/media/AudioService$AudioPolicyProxy;->getRegistrationId()Ljava/lang/String;

    move-result-object v3

    .line 6622
    iget-object v6, p0, Landroid/media/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6629
    :try_start_3
    monitor-exit v5

    move-object v4, v3

    .line 6630
    goto :goto_0

    .line 6623
    .end local v0    # "app":Landroid/media/AudioService$AudioPolicyProxy;
    :catch_0
    move-exception v1

    .line 6625
    .local v1, "e":Landroid/os/RemoteException;
    const-string v6, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Audio policy registration failed, could not link to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " binder death"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6627
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)Z
    .locals 1
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 5602
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaFocusControl;->registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)Z

    move-result v0

    return v0
.end method

.method public registerRemoteController(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)Z
    .locals 1
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "listenerComp"    # Landroid/content/ComponentName;

    .prologue
    .line 5598
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/media/MediaFocusControl;->registerRemoteController(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public reloadAudioSettings()V
    .locals 1

    .prologue
    .line 2678
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/AudioService;->readAudioSettings(Z)V

    .line 2679
    return-void
.end method

.method public remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V
    .locals 1
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 5610
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaFocusControl;->remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V

    .line 5611
    return-void
.end method

.method public remoteControlDisplayWantsPlaybackPositionSync(Landroid/media/IRemoteControlDisplay;Z)V
    .locals 1
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "wantsSync"    # Z

    .prologue
    .line 5615
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaFocusControl;->remoteControlDisplayWantsPlaybackPositionSync(Landroid/media/IRemoteControlDisplay;Z)V

    .line 5616
    return-void
.end method

.method public requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;ILandroid/media/audiopolicy/IAudioPolicyCallback;)I
    .locals 8
    .param p1, "aa"    # Landroid/media/AudioAttributes;
    .param p2, "durationHint"    # I
    .param p3, "cb"    # Landroid/os/IBinder;
    .param p4, "fd"    # Landroid/media/IAudioFocusDispatcher;
    .param p5, "clientId"    # Ljava/lang/String;
    .param p6, "callingPackageName"    # Ljava/lang/String;
    .param p7, "flags"    # I
    .param p8, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .prologue
    .line 5644
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AudioFocus  requestAudioFocus() from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5647
    and-int/lit8 v0, p7, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 5648
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    const-string v0, "AudioFocus_For_Phone_Ring_And_Calls"

    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5649
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 5651
    const-string v0, "AudioService"

    const-string v1, "Invalid permission to (un)lock audio focus"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5652
    const/4 v0, 0x0

    .line 5665
    :goto_0
    return v0

    .line 5656
    :cond_0
    iget-object v1, p0, Landroid/media/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v1

    .line 5657
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface/range {p8 .. p8}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5658
    const-string v0, "AudioService"

    const-string v2, "Invalid unregistered AudioPolicy to (un)lock audio focus"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5659
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 5661
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5665
    :cond_2
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/media/MediaFocusControl;->requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;II)I
    .locals 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "profile"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x2

    .line 3803
    if-eq p3, v2, :cond_0

    const/16 v1, 0xa

    if-eq p3, v1, :cond_0

    .line 3804
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid profile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3806
    :cond_0
    iget-object v7, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v7

    .line 3807
    if-ne p3, v2, :cond_2

    .line 3808
    const/16 v1, 0x80

    if-ne p2, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    :try_start_0
    invoke-direct {p0, v1, v0}, Landroid/media/AudioService;->checkSendBecomingNoisyIntent(II)I

    move-result v6

    .line 3813
    .local v6, "delay":I
    :goto_0
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    if-ne p3, v2, :cond_3

    const/16 v2, 0x66

    :goto_1
    const/4 v4, 0x0

    move-object v0, p0

    move v3, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    .line 3820
    monitor-exit v7

    .line 3821
    return v6

    .line 3811
    .end local v6    # "delay":I
    :cond_2
    const/4 v6, 0x0

    .restart local v6    # "delay":I
    goto :goto_0

    .line 3813
    :cond_3
    const/16 v2, 0x65

    goto :goto_1

    .line 3820
    .end local v6    # "delay":I
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBluetoothA2dpOn(Z)V
    .locals 8
    .param p1, "on"    # Z

    .prologue
    const/4 v4, 0x0

    .line 2803
    iget-object v7, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2804
    :try_start_0
    iput-boolean p1, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabled:Z

    .line 2805
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xd

    const/4 v2, 0x2

    const/4 v3, 0x1

    iget-boolean v5, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabled:Z

    if-eqz v5, :cond_0

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2809
    monitor-exit v7

    .line 2810
    return-void

    .line 2805
    :cond_0
    const/16 v4, 0xa

    goto :goto_0

    .line 2809
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBluetoothA2dpOnInt(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 5808
    iget-object v1, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5809
    :try_start_0
    iput-boolean p1, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabled:Z

    .line 5810
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/media/AudioService$AudioHandler;->removeMessages(I)V

    .line 5811
    const/4 v2, 0x1

    iget-boolean v0, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v2, v0}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 5813
    monitor-exit v1

    .line 5814
    return-void

    .line 5811
    :cond_0
    const/16 v0, 0xa

    goto :goto_0

    .line 5813
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBluetoothScoOn(Z)V
    .locals 13
    .param p1, "on"    # Z

    .prologue
    const/4 v5, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 2761
    const-string/jumbo v0, "setBluetoothScoOn()"

    invoke-virtual {p0, v0}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2794
    :goto_0
    return-void

    .line 2780
    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/media/AudioService;->isSpeakerphoneOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2781
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    .line 2782
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget v4, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    move v6, v3

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2784
    iget-object v6, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    move v7, v1

    move v8, v2

    move v9, v2

    move v10, v3

    move-object v11, v5

    move v12, v3

    invoke-static/range {v6 .. v12}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0

    .line 2787
    :cond_1
    if-eqz p1, :cond_2

    const/4 v0, 0x3

    :goto_1
    iput v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    .line 2788
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget v4, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    move v6, v3

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2790
    iget-object v6, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget v10, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    move v7, v1

    move v8, v2

    move v9, v2

    move-object v11, v5

    move v12, v3

    invoke-static/range {v6 .. v12}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0

    :cond_2
    move v0, v3

    .line 2787
    goto :goto_1
.end method

.method public setFmRxMode(ILandroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)I
    .locals 14
    .param p1, "mode"    # I
    .param p2, "cb"    # Landroid/os/IBinder;
    .param p3, "clientId"    # Ljava/lang/String;
    .param p4, "callingPackageName"    # Ljava/lang/String;

    .prologue
    .line 6227
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in setFmRxMode : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " package "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6230
    const/4 v11, 0x0

    .line 6231
    .local v11, "rv":I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/4 v3, 0x1

    .line 6233
    .local v3, "on":Z
    :goto_0
    invoke-direct {p0, v3}, Landroid/media/AudioService;->setFmRxMode(Z)V

    .line 6236
    sget-object v12, Landroid/media/AudioService;->mFmModeLock:Ljava/lang/Object;

    monitor-enter v12

    .line 6237
    if-eqz v3, :cond_1

    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService;->mFmModeStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6244
    new-instance v5, Landroid/media/AudioService$FmModeDeathHandler;

    move-object/from16 v0, p2

    invoke-direct {v5, p0, v0}, Landroid/media/AudioService$FmModeDeathHandler;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6246
    .local v5, "afdh":Landroid/media/AudioService$FmModeDeathHandler;
    const/4 v1, 0x0

    :try_start_1
    move-object/from16 v0, p2

    invoke-interface {v0, v5, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6252
    :goto_1
    :try_start_2
    iget-object v13, p0, Landroid/media/AudioService;->mFmModeStack:Ljava/util/Stack;

    new-instance v1, Landroid/media/AudioService$FmModeStackEntry;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    move-object v2, p0

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v8}, Landroid/media/AudioService$FmModeStackEntry;-><init>(Landroid/media/AudioService;ZLandroid/os/IBinder;Landroid/media/AudioService$FmModeDeathHandler;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v13, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6254
    const-string v1, "AudioService"

    const-string v2, "in setFmRxMode : monitor this app"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6265
    .end local v5    # "afdh":Landroid/media/AudioService$FmModeDeathHandler;
    :goto_2
    monitor-exit v12

    .line 6266
    return v11

    .line 6231
    .end local v3    # "on":Z
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 6247
    .restart local v3    # "on":Z
    .restart local v5    # "afdh":Landroid/media/AudioService$FmModeDeathHandler;
    :catch_0
    move-exception v9

    .line 6249
    .local v9, "e":Landroid/os/RemoteException;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setFmRxMode could not link to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " binder death"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 6265
    .end local v5    # "afdh":Landroid/media/AudioService$FmModeDeathHandler;
    .end local v9    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 6255
    :cond_1
    if-nez v3, :cond_2

    :try_start_3
    iget-object v1, p0, Landroid/media/AudioService;->mFmModeStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 6256
    const-string v1, "AudioService"

    const-string v2, "in setFmRxMode : pop"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6258
    iget-object v1, p0, Landroid/media/AudioService;->mFmModeStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/media/AudioService$FmModeStackEntry;

    .line 6259
    .local v10, "fse":Landroid/media/AudioService$FmModeStackEntry;
    invoke-virtual {v10}, Landroid/media/AudioService$FmModeStackEntry;->unlinkToDeath()V

    goto :goto_2

    .line 6260
    .end local v10    # "fse":Landroid/media/AudioService$FmModeStackEntry;
    :cond_2
    if-eqz v3, :cond_3

    .line 6261
    const-string v1, "AudioService"

    const-string/jumbo v2, "repeated setFmRxMode on"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 6263
    :cond_3
    const-string v1, "AudioService"

    const-string/jumbo v2, "repeated setFmRxMode off"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method public setFocusPropertiesForPolicy(ILandroid/media/audiopolicy/IAudioPolicyCallback;)I
    .locals 10
    .param p1, "duckingBehavior"    # I
    .param p2, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v6, 0x1

    .line 6650
    sget-boolean v7, Landroid/media/AudioService;->DEBUG_AP:Z

    if-eqz v7, :cond_0

    const-string v7, "AudioService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setFocusPropertiesForPolicy() duck behavior="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " policy "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6653
    :cond_0
    iget-object v7, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v7, v8}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_1

    move v1, v6

    .line 6656
    .local v1, "hasPermissionForPolicy":Z
    :goto_0
    if-nez v1, :cond_2

    .line 6657
    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot change audio policy ducking handling for pid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", need MODIFY_AUDIO_ROUTING"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6682
    :goto_1
    return v4

    .end local v1    # "hasPermissionForPolicy":Z
    :cond_1
    move v1, v5

    .line 6653
    goto :goto_0

    .line 6663
    .restart local v1    # "hasPermissionForPolicy":Z
    :cond_2
    iget-object v7, p0, Landroid/media/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v7

    .line 6664
    :try_start_0
    iget-object v8, p0, Landroid/media/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 6665
    const-string v5, "AudioService"

    const-string v6, "Cannot change audio policy focus properties, unregistered policy"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6666
    monitor-exit v7

    goto :goto_1

    .line 6681
    :catchall_0
    move-exception v4

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 6668
    :cond_3
    :try_start_1
    iget-object v8, p0, Landroid/media/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$AudioPolicyProxy;

    .line 6669
    .local v0, "app":Landroid/media/AudioService$AudioPolicyProxy;
    if-ne p1, v6, :cond_5

    .line 6671
    iget-object v8, p0, Landroid/media/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$AudioPolicyProxy;

    .line 6672
    .local v3, "policy":Landroid/media/AudioService$AudioPolicyProxy;
    iget v8, v3, Landroid/media/AudioService$AudioPolicyProxy;->mFocusDuckBehavior:I

    if-ne v8, v6, :cond_4

    .line 6673
    const-string v5, "AudioService"

    const-string v6, "Cannot change audio policy ducking behavior, already handled"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6674
    monitor-exit v7

    goto :goto_1

    .line 6678
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "policy":Landroid/media/AudioService$AudioPolicyProxy;
    :cond_5
    iput p1, v0, Landroid/media/AudioService$AudioPolicyProxy;->mFocusDuckBehavior:I

    .line 6679
    iget-object v8, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    if-ne p1, v6, :cond_6

    move v4, v6

    :goto_2
    invoke-virtual {v8, v4}, Landroid/media/MediaFocusControl;->setDuckingInExtPolicyAvailable(Z)V

    .line 6681
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v4, v5

    .line 6682
    goto :goto_1

    :cond_6
    move v4, v5

    .line 6679
    goto :goto_2
.end method

.method public setHdmiSystemAudioSupported(Z)I
    .locals 6
    .param p1, "on"    # Z

    .prologue
    .line 5985
    const/4 v0, 0x0

    .line 5986
    .local v0, "device":I
    iget-object v2, p0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v2, :cond_2

    .line 5987
    iget-object v3, p0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v3

    .line 5988
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-nez v2, :cond_0

    .line 5989
    const-string v2, "AudioService"

    const-string v4, "Only Hdmi-Cec enabled TV device supports system audio mode."

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5990
    monitor-exit v3

    move v1, v0

    .line 6004
    .end local v0    # "device":I
    .local v1, "device":I
    :goto_0
    return v1

    .line 5993
    .end local v1    # "device":I
    .restart local v0    # "device":I
    :cond_0
    iget-object v4, p0, Landroid/media/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5994
    :try_start_1
    iget-boolean v2, p0, Landroid/media/AudioService;->mHdmiSystemAudioSupported:Z

    if-eq v2, p1, :cond_1

    .line 5995
    iput-boolean p1, p0, Landroid/media/AudioService;->mHdmiSystemAudioSupported:Z

    .line 5996
    const/4 v5, 0x5

    if-eqz p1, :cond_3

    const/16 v2, 0xc

    :goto_1
    invoke-static {v5, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 6000
    :cond_1
    const/4 v2, 0x3

    invoke-static {v2}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v0

    .line 6001
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6002
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    move v1, v0

    .line 6004
    .end local v0    # "device":I
    .restart local v1    # "device":I
    goto :goto_0

    .line 5996
    .end local v1    # "device":I
    .restart local v0    # "device":I
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 6001
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    .line 6002
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2
.end method

.method public setMasterMute(ZILjava/lang/String;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "state"    # Z
    .param p2, "flags"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 1820
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioService;->setMasterMuteInternal(ZILjava/lang/String;Landroid/os/IBinder;I)V

    .line 1821
    return-void
.end method

.method public setMasterVolume(IILjava/lang/String;)V
    .locals 1
    .param p1, "volume"    # I
    .param p2, "flags"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 1886
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/media/AudioService;->setMasterVolume(IILjava/lang/String;I)V

    .line 1887
    return-void
.end method

.method public setMasterVolume(IILjava/lang/String;I)V
    .locals 2
    .param p1, "volume"    # I
    .param p2, "flags"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "uid"    # I

    .prologue
    .line 1890
    iget-boolean v0, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    if-eqz v0, :cond_1

    .line 1905
    :cond_0
    :goto_0
    return-void

    .line 1894
    :cond_1
    iget-object v0, p0, Landroid/media/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x21

    invoke-virtual {v0, v1, p4, p3}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1899
    if-gez p1, :cond_3

    .line 1900
    const/4 p1, 0x0

    .line 1904
    :cond_2
    :goto_1
    int-to-float v0, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    invoke-direct {p0, v0, p2}, Landroid/media/AudioService;->doSetMasterVolume(FI)V

    goto :goto_0

    .line 1901
    :cond_3
    const/16 v0, 0x64

    if-le p1, v0, :cond_2

    .line 1902
    const/16 p1, 0x64

    goto :goto_1
.end method

.method public setMicrophoneMute(ZLjava/lang/String;)V
    .locals 7
    .param p1, "on"    # Z
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1957
    iget-object v0, p0, Landroid/media/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x2c

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v3, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 1969
    :cond_0
    :goto_0
    return-void

    .line 1961
    :cond_1
    const-string/jumbo v0, "setMicrophoneMute()"

    invoke-virtual {p0, v0}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1965
    invoke-static {p1}, Landroid/media/AudioSystem;->muteMicrophone(Z)I

    .line 1967
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x17

    if-eqz p1, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    const/4 v5, 0x0

    const/16 v6, 0x1f4

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1
.end method

.method public setMode(ILandroid/os/IBinder;)V
    .locals 6
    .param p1, "mode"    # I
    .param p2, "cb"    # Landroid/os/IBinder;

    .prologue
    const/4 v5, 0x2

    const/4 v4, -0x1

    .line 2284
    sget-boolean v1, Landroid/media/AudioService;->DEBUG_MODE:Z

    if-eqz v1, :cond_0

    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMode(mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2286
    :cond_0
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in setMode() mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2288
    const-string/jumbo v1, "setMode()"

    invoke-virtual {p0, v1}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2333
    :cond_1
    :goto_0
    return-void

    .line 2292
    :cond_2
    const-string v1, "AudioService"

    const-string/jumbo v2, "setMode() here a"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2295
    if-ne p1, v5, :cond_3

    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3

    .line 2299
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MODIFY_PHONE_STATE Permission Denial: setMode(MODE_IN_CALL) from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2304
    :cond_3
    if-lt p1, v4, :cond_1

    const/4 v1, 0x4

    if-ge p1, v1, :cond_1

    .line 2308
    const-string v1, "AudioService"

    const-string/jumbo v2, "setMode() here b"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2311
    const/4 v0, 0x0

    .line 2312
    .local v0, "newModeOwnerPid":I
    iget-object v2, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    monitor-enter v2

    .line 2313
    if-ne p1, v4, :cond_4

    .line 2314
    :try_start_0
    iget p1, p0, Landroid/media/AudioService;->mMode:I

    .line 2317
    :cond_4
    if-ne p1, v5, :cond_5

    invoke-direct {p0}, Landroid/media/AudioService;->isInCommunication()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2318
    const-string v1, "in_call=true"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 2320
    :cond_5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-direct {p0, p1, p2, v1}, Landroid/media/AudioService;->setModeInt(ILandroid/os/IBinder;I)I

    move-result v0

    .line 2321
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2323
    const-string v1, "AudioService"

    const-string/jumbo v2, "setMode() here c"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2327
    if-eqz v0, :cond_6

    .line 2328
    invoke-direct {p0, v0}, Landroid/media/AudioService;->disconnectBluetoothSco(I)V

    .line 2331
    :cond_6
    const-string v1, "AudioService"

    const-string/jumbo v2, "out setMode()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2321
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setRemoteControlClientBrowsedPlayer()V
    .locals 1

    .prologue
    .line 5627
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0}, Landroid/media/MediaFocusControl;->setRemoteControlClientBrowsedPlayer()V

    .line 5628
    return-void
.end method

.method public setRemoteControlClientPlayItem(JI)V
    .locals 1
    .param p1, "uid"    # J
    .param p3, "scope"    # I

    .prologue
    .line 5619
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaFocusControl;->setRemoteControlClientPlayItem(JI)V

    .line 5620
    return-void
.end method

.method public setRemoteStreamVolume(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 5632
    const-string/jumbo v0, "set the remote stream volume"

    invoke-direct {p0, v0}, Landroid/media/AudioService;->enforceSelfOrSystemUI(Ljava/lang/String;)V

    .line 5633
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1}, Landroid/media/MediaFocusControl;->setRemoteStreamVolume(I)V

    .line 5634
    return-void
.end method

.method public setRingerModeExternal(ILjava/lang/String;)V
    .locals 1
    .param p1, "ringerMode"    # I
    .param p2, "caller"    # Ljava/lang/String;

    .prologue
    .line 1997
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/media/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    .line 1998
    return-void
.end method

.method public setRingerModeInternal(ILjava/lang/String;)V
    .locals 1
    .param p1, "ringerMode"    # I
    .param p2, "caller"    # Ljava/lang/String;

    .prologue
    .line 2001
    const-string/jumbo v0, "setRingerModeInternal"

    invoke-direct {p0, v0}, Landroid/media/AudioService;->enforceSelfOrSystemUI(Ljava/lang/String;)V

    .line 2002
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    .line 2003
    return-void
.end method

.method public setRingtonePlayer(Landroid/media/IRingtonePlayer;)V
    .locals 3
    .param p1, "player"    # Landroid/media/IRingtonePlayer;

    .prologue
    .line 5818
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.REMOTE_AUDIO_PLAYBACK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5819
    iput-object p1, p0, Landroid/media/AudioService;->mRingtonePlayer:Landroid/media/IRingtonePlayer;

    .line 5820
    return-void
.end method

.method public setSpeakerfmOn(Z)V
    .locals 8
    .param p1, "on"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 6333
    const-string v0, "AudioService"

    const-string v1, "in setSpeakerfmOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6335
    iget v0, p0, Landroid/media/AudioService;->mFmRxMode:I

    if-ne v0, v3, :cond_0

    .line 6336
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6337
    .local v7, "intent":Landroid/content/Intent;
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 6340
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_0
    if-eqz p1, :cond_1

    move v0, v3

    :goto_0
    iput v0, p0, Landroid/media/AudioService;->mForcedUseForFM:I

    .line 6342
    iget v0, p0, Landroid/media/AudioService;->mForcedUseForFM:I

    iput v0, p0, Landroid/media/AudioService;->mForcedUseForMedia:I

    .line 6344
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x8

    const/4 v2, 0x2

    iget v4, p0, Landroid/media/AudioService;->mForcedUseForFM:I

    const/4 v5, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 6347
    const-string v0, "AudioService"

    const-string/jumbo v1, "out setSpeakerfmOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6348
    return-void

    :cond_1
    move v0, v6

    .line 6340
    goto :goto_0
.end method

.method public setSpeakerphoneOn(Z)V
    .locals 13
    .param p1, "on"    # Z

    .prologue
    const/4 v5, 0x0

    const/16 v1, 0x8

    const/4 v7, 0x1

    const/4 v2, 0x2

    const/4 v4, 0x0

    .line 2728
    const-string v0, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "in setSpeakephoneON "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2731
    const-string/jumbo v0, "setSpeakerphoneOn()"

    invoke-virtual {p0, v0}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2751
    :goto_0
    return-void

    .line 2735
    :cond_0
    if-eqz p1, :cond_3

    .line 2736
    iget v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    .line 2737
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    move v3, v2

    move v6, v4

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2740
    :cond_1
    iput v7, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    .line 2745
    :cond_2
    :goto_1
    iget-object v6, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget v10, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    move v7, v1

    move v8, v2

    move v9, v4

    move-object v11, v5

    move v12, v4

    invoke-static/range {v6 .. v12}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2749
    const-string v0, "AudioService"

    const-string/jumbo v1, "out setSpeakephoneON"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2741
    :cond_3
    iget v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    if-ne v0, v7, :cond_2

    .line 2742
    iput v4, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    goto :goto_1
.end method

.method public setStreamMute(IZLandroid/os/IBinder;)V
    .locals 4
    .param p1, "streamType"    # I
    .param p2, "state"    # Z
    .param p3, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 1669
    iget-boolean v3, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    if-eqz v3, :cond_1

    .line 1691
    :cond_0
    return-void

    .line 1672
    :cond_1
    const/high16 v3, -0x80000000

    if-ne p1, v3, :cond_2

    .line 1673
    invoke-direct {p0, p1}, Landroid/media/AudioService;->getActiveStreamType(I)I

    move-result p1

    .line 1675
    :cond_2
    iget-object v3, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v2, v3, p1

    .line 1676
    .local v2, "streamAlias":I
    invoke-virtual {p0, v2}, Landroid/media/AudioService;->isStreamAffectedByMute(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1677
    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 1678
    invoke-direct {p0, p2}, Landroid/media/AudioService;->setSystemAudioMute(Z)V

    .line 1680
    :cond_3
    const/4 v1, 0x0

    .local v1, "stream":I
    :goto_0
    iget-object v3, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 1681
    iget-object v3, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v3, v3, v1

    if-ne v2, v3, :cond_4

    .line 1682
    iget-object v3, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v3, v3, v1

    invoke-virtual {v3, p3, p2}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;Z)V

    .line 1684
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.media.STREAM_MUTE_CHANGED_ACTION"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1685
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1686
    const-string v3, "android.media.EXTRA_STREAM_VOLUME_MUTED"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1687
    invoke-direct {p0, v0}, Landroid/media/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 1680
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setStreamSolo(IZLandroid/os/IBinder;)V
    .locals 3
    .param p1, "streamType"    # I
    .param p2, "state"    # Z
    .param p3, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 1655
    iget-boolean v2, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    if-eqz v2, :cond_1

    .line 1665
    :cond_0
    return-void

    .line 1658
    :cond_1
    iget-object v2, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v1, v2, p1

    .line 1659
    .local v1, "streamAlias":I
    const/4 v0, 0x0

    .local v0, "stream":I
    :goto_0
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1660
    invoke-virtual {p0, v1}, Landroid/media/AudioService;->isStreamAffectedByMute(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v2, v2, v0

    if-ne v1, v2, :cond_3

    .line 1659
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1663
    :cond_3
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v0

    invoke-virtual {v2, p3, p2}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;Z)V

    goto :goto_1
.end method

.method public setStreamVolume(IIILjava/lang/String;)V
    .locals 6
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 1353
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in setStreamVolume : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioService;->setStreamVolume(IIILjava/lang/String;I)V

    .line 1356
    return-void
.end method

.method public setVibrateSetting(II)V
    .locals 7
    .param p1, "vibrateType"    # I
    .param p2, "vibrateSetting"    # I

    .prologue
    const/4 v2, 0x0

    .line 2203
    iget-boolean v0, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-nez v0, :cond_0

    .line 2217
    :goto_0
    return-void

    .line 2205
    :cond_0
    iget v0, p0, Landroid/media/AudioService;->mVibrateSetting:I

    invoke-static {v0, p1, p2}, Landroid/media/AudioService;->getValueForVibrateSetting(III)I

    move-result v0

    iput v0, p0, Landroid/media/AudioService;->mVibrateSetting:I

    .line 2210
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xc9

    iget v3, p0, Landroid/media/AudioService;->mVibrateSetting:I

    const/4 v5, 0x0

    move v4, v2

    move v6, v2

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2215
    invoke-direct {p0, p1}, Landroid/media/AudioService;->broadcastVibrateSetting(I)V

    goto :goto_0
.end method

.method public setVolumeController(Landroid/media/IVolumeController;)V
    .locals 3
    .param p1, "controller"    # Landroid/media/IVolumeController;

    .prologue
    .line 6369
    const-string/jumbo v0, "set the volume controller"

    invoke-direct {p0, v0}, Landroid/media/AudioService;->enforceSelfOrSystemUI(Ljava/lang/String;)V

    .line 6372
    iget-object v0, p0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-virtual {v0, p1}, Landroid/media/AudioService$VolumeController;->isSameBinder(Landroid/media/IVolumeController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6396
    :goto_0
    return-void

    .line 6377
    :cond_0
    iget-object v0, p0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-virtual {v0}, Landroid/media/AudioService$VolumeController;->postDismiss()V

    .line 6378
    if-eqz p1, :cond_1

    .line 6381
    :try_start_0
    invoke-interface {p1}, Landroid/media/IVolumeController;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Landroid/media/AudioService$3;

    invoke-direct {v1, p0, p1}, Landroid/media/AudioService$3;-><init>(Landroid/media/AudioService;Landroid/media/IVolumeController;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6394
    :cond_1
    :goto_1
    iget-object v0, p0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-virtual {v0, p1}, Landroid/media/AudioService$VolumeController;->setController(Landroid/media/IVolumeController;)V

    .line 6395
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Volume controller: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6390
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public setWiredDeviceConnectionState(IILjava/lang/String;)V
    .locals 8
    .param p1, "device"    # I
    .param p2, "state"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 3789
    iget-object v7, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v7

    .line 3790
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->checkSendBecomingNoisyIntent(II)I

    move-result v6

    .line 3791
    .local v6, "delay":I
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v2, 0x64

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    .line 3797
    monitor-exit v7

    .line 3798
    return-void

    .line 3797
    .end local v6    # "delay":I
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public shouldVibrate(I)Z
    .locals 3
    .param p1, "vibrateType"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2175
    iget-boolean v2, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-nez v2, :cond_0

    .line 2190
    :goto_0
    :pswitch_0
    return v1

    .line 2177
    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/AudioService;->getVibrateSetting(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 2180
    :pswitch_1
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerModeExternal()I

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 2183
    :pswitch_2
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerModeExternal()I

    move-result v2

    if-ne v2, v0, :cond_2

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2

    .line 2177
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public startBluetoothSco(Landroid/os/IBinder;I)V
    .locals 2
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "targetSdkVersion"    # I

    .prologue
    .line 2821
    const/16 v1, 0x12

    if-ge p2, v1, :cond_0

    const/4 v0, 0x0

    .line 2824
    .local v0, "scoAudioMode":I
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/media/AudioService;->startBluetoothScoInt(Landroid/os/IBinder;I)V

    .line 2825
    return-void

    .line 2821
    .end local v0    # "scoAudioMode":I
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method startBluetoothScoInt(Landroid/os/IBinder;I)V
    .locals 4
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "scoAudioMode"    # I

    .prologue
    .line 2833
    const-string/jumbo v1, "startBluetoothSco()"

    invoke-virtual {p0, v1}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/media/AudioService;->mSystemReady:Z

    if-nez v1, :cond_1

    .line 2846
    :cond_0
    :goto_0
    return-void

    .line 2837
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/media/AudioService;->getScoClient(Landroid/os/IBinder;Z)Landroid/media/AudioService$ScoClient;

    move-result-object v0

    .line 2843
    .local v0, "client":Landroid/media/AudioService$ScoClient;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2844
    .local v2, "ident":J
    invoke-virtual {v0, p2}, Landroid/media/AudioService$ScoClient;->incCount(I)V

    .line 2845
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0
.end method

.method public startBluetoothScoVirtualCall(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 2829
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioService;->startBluetoothScoInt(Landroid/os/IBinder;I)V

    .line 2830
    return-void
.end method

.method public startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;
    .locals 3
    .param p1, "observer"    # Landroid/media/IAudioRoutesObserver;

    .prologue
    .line 5829
    iget-object v2, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v2

    .line 5830
    :try_start_0
    new-instance v0, Landroid/media/AudioRoutesInfo;

    iget-object v1, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    invoke-direct {v0, v1}, Landroid/media/AudioRoutesInfo;-><init>(Landroid/media/AudioRoutesInfo;)V

    .line 5831
    .local v0, "routes":Landroid/media/AudioRoutesInfo;
    iget-object v1, p0, Landroid/media/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 5832
    monitor-exit v2

    return-object v0

    .line 5833
    .end local v0    # "routes":Landroid/media/AudioRoutesInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopBluetoothSco(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 2850
    const-string/jumbo v1, "stopBluetoothSco()"

    invoke-virtual {p0, v1}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/media/AudioService;->mSystemReady:Z

    if-nez v1, :cond_1

    .line 2863
    :cond_0
    :goto_0
    return-void

    .line 2854
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/media/AudioService;->getScoClient(Landroid/os/IBinder;Z)Landroid/media/AudioService$ScoClient;

    move-result-object v0

    .line 2858
    .local v0, "client":Landroid/media/AudioService$ScoClient;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2859
    .local v2, "ident":J
    if-eqz v0, :cond_2

    .line 2860
    invoke-virtual {v0}, Landroid/media/AudioService$ScoClient;->decCount()V

    .line 2862
    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0
.end method

.method public systemReady()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 741
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x15

    const/4 v2, 0x2

    const/4 v5, 0x0

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 743
    return-void
.end method

.method public unloadSoundEffects()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 2618
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x14

    const/4 v2, 0x2

    const/4 v5, 0x0

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2619
    return-void
.end method

.method public unregisterAudioFocusClient(Ljava/lang/String;)V
    .locals 1
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    .line 5677
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1}, Landroid/media/MediaFocusControl;->unregisterAudioFocusClient(Ljava/lang/String;)V

    .line 5678
    return-void
.end method

.method public unregisterAudioPolicyAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .locals 5
    .param p1, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .prologue
    .line 6634
    sget-boolean v1, Landroid/media/AudioService;->DEBUG_AP:Z

    if-eqz v1, :cond_0

    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterAudioPolicyAsync for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6635
    :cond_0
    iget-object v2, p0, Landroid/media/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v2

    .line 6636
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$AudioPolicyProxy;

    .line 6637
    .local v0, "app":Landroid/media/AudioService$AudioPolicyProxy;
    if-nez v0, :cond_1

    .line 6638
    const-string v1, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to unregister unknown audio policy for pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6640
    monitor-exit v2

    .line 6647
    :goto_0
    return-void

    .line 6642
    :cond_1
    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 6644
    invoke-virtual {v0}, Landroid/media/AudioService$AudioPolicyProxy;->release()V

    .line 6645
    monitor-exit v2

    goto :goto_0

    .end local v0    # "app":Landroid/media/AudioService$AudioPolicyProxy;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    .locals 1
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;

    .prologue
    .line 5606
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1}, Landroid/media/MediaFocusControl;->unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V

    .line 5607
    return-void
.end method

.method updateRingerModeAffectedStreams()Z
    .locals 5

    .prologue
    const/4 v4, -0x2

    .line 3534
    iget-object v1, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "mode_ringer_streams_affected"

    const/16 v3, 0xa6

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 3541
    .local v0, "ringerModeAffectedStreams":I
    or-int/lit16 v0, v0, 0x126

    .line 3546
    iget v1, p0, Landroid/media/AudioService;->mPlatformType:I

    packed-switch v1, :pswitch_data_0

    .line 3551
    and-int/lit8 v0, v0, -0x9

    .line 3555
    :goto_0
    iget-object v2, p0, Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    monitor-enter v2

    .line 3556
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3557
    and-int/lit16 v0, v0, -0x81

    .line 3561
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3562
    iget-object v1, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    const/16 v2, 0x8

    aget v1, v1, v2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 3563
    or-int/lit16 v0, v0, 0x100

    .line 3568
    :goto_2
    iget v1, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    if-eq v0, v1, :cond_2

    .line 3569
    iget-object v1, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "mode_ringer_streams_affected"

    invoke-static {v1, v2, v0, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 3573
    iput v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    .line 3574
    const/4 v1, 0x1

    .line 3576
    :goto_3
    return v1

    .line 3548
    :pswitch_0
    const/4 v0, 0x0

    .line 3549
    goto :goto_0

    .line 3559
    :cond_0
    or-int/lit16 v0, v0, 0x80

    goto :goto_1

    .line 3561
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 3565
    :cond_1
    and-int/lit16 v0, v0, -0x101

    goto :goto_2

    .line 3576
    :cond_2
    const/4 v1, 0x0

    goto :goto_3

    .line 3546
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
