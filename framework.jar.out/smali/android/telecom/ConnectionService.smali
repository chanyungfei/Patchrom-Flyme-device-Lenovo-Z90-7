.class public abstract Landroid/telecom/ConnectionService;
.super Landroid/app/Service;
.source "ConnectionService.java"


# static fields
.field private static final MSG_ABORT:I = 0x3

.field private static final MSG_ADD_CONNECTION_SERVICE_ADAPTER:I = 0x1

.field private static final MSG_ADD_PARTICIPANT_WITH_CONFERENCE:I = 0x1e

.field private static final MSG_ANSWER:I = 0x4

.field private static final MSG_ANSWER_VIDEO:I = 0x11

.field private static final MSG_CONFERENCE:I = 0xc

.field private static final MSG_CREATE_CONNECTION:I = 0x2

.field private static final MSG_DISCONNECT:I = 0x6

.field private static final MSG_HOLD:I = 0x7

.field private static final MSG_MERGE_CONFERENCE:I = 0x12

.field private static final MSG_ON_CALL_AUDIO_STATE_CHANGED:I = 0x9

.field private static final MSG_ON_POST_DIAL_CONTINUE:I = 0xe

.field private static final MSG_PLAY_DTMF_TONE:I = 0xa

.field private static final MSG_REJECT:I = 0x5

.field private static final MSG_REMOVE_CONNECTION_SERVICE_ADAPTER:I = 0x10

.field private static final MSG_SET_LOCAL_HOLD:I = 0x14

.field private static final MSG_SPLIT_FROM_CONFERENCE:I = 0xd

.field private static final MSG_STOP_DTMF_TONE:I = 0xb

.field private static final MSG_SWAP_CONFERENCE:I = 0x13

.field private static final MSG_UNHOLD:I = 0x8

.field private static final PII_DEBUG:Z

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.telecom.ConnectionService"

.field private static sNullConnection:Landroid/telecom/Connection;


# instance fields
.field private final mAdapter:Landroid/telecom/ConnectionServiceAdapter;

.field private mAreAccountsInitialized:Z

.field private final mBinder:Landroid/os/IBinder;

.field private final mConferenceById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/telecom/Conference;",
            ">;"
        }
    .end annotation
.end field

.field private final mConferenceListener:Landroid/telecom/Conference$Listener;

.field private final mConnectionById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectionListener:Landroid/telecom/Connection$Listener;

.field private final mHandler:Landroid/os/Handler;

.field private final mIdByConference:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/telecom/Conference;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mIdByConnection:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/telecom/Connection;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreInitializationConnectionRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

.field private sNullConference:Landroid/telecom/Conference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Landroid/telecom/ConnectionService;->PII_DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 110
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    .line 111
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    .line 112
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    .line 113
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    .line 114
    new-instance v0, Landroid/telecom/RemoteConnectionManager;

    invoke-direct {v0, p0}, Landroid/telecom/RemoteConnectionManager;-><init>(Landroid/telecom/ConnectionService;)V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mPreInitializationConnectionRequests:Ljava/util/List;

    .line 117
    new-instance v0, Landroid/telecom/ConnectionServiceAdapter;

    invoke-direct {v0}, Landroid/telecom/ConnectionServiceAdapter;-><init>()V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telecom/ConnectionService;->mAreAccountsInitialized:Z

    .line 122
    new-instance v0, Landroid/telecom/ConnectionService$1;

    invoke-direct {v0, p0}, Landroid/telecom/ConnectionService$1;-><init>(Landroid/telecom/ConnectionService;)V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mBinder:Landroid/os/IBinder;

    .line 252
    new-instance v0, Landroid/telecom/ConnectionService$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/telecom/ConnectionService$2;-><init>(Landroid/telecom/ConnectionService;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mHandler:Landroid/os/Handler;

    .line 403
    new-instance v0, Landroid/telecom/ConnectionService$3;

    invoke-direct {v0, p0}, Landroid/telecom/ConnectionService$3;-><init>(Landroid/telecom/ConnectionService;)V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mConferenceListener:Landroid/telecom/Conference$Listener;

    .line 485
    new-instance v0, Landroid/telecom/ConnectionService$4;

    invoke-direct {v0, p0}, Landroid/telecom/ConnectionService$4;-><init>(Landroid/telecom/ConnectionService;)V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionListener:Landroid/telecom/Connection$Listener;

    return-void
.end method

.method private abort(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 712
    const-string v0, "abort %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 713
    const-string v0, "abort"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onAbort()V

    .line 714
    return-void
.end method

.method static synthetic access$000(Landroid/telecom/ConnectionService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/telecom/ConnectionService;

    .prologue
    .line 76
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;
    .locals 1
    .param p0, "x0"    # Landroid/telecom/ConnectionService;

    .prologue
    .line 76
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->disconnect(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->hold(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->unhold(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/CallAudioState;)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/telecom/CallAudioState;

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->onCallAudioStateChanged(Ljava/lang/String;Landroid/telecom/CallAudioState;)V

    return-void
.end method

.method static synthetic access$1400(Landroid/telecom/ConnectionService;Ljava/lang/String;C)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # C

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->playDtmfTone(Ljava/lang/String;C)V

    return-void
.end method

.method static synthetic access$1500(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->stopDtmfTone(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Landroid/telecom/ConnectionService;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->setLocalCallHold(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1700(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->conference(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->splitFromConference(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->addParticipantWithConference(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Landroid/telecom/ConnectionService;)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->onAdapterAttached()V

    return-void
.end method

.method static synthetic access$2000(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->mergeConference(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->swapConference(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Landroid/telecom/ConnectionService;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->onPostDialContinue(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$2300(Landroid/telecom/ConnectionService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Landroid/telecom/ConnectionService;

    .prologue
    .line 76
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/telecom/ConnectionService;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->createConnectionIdList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Landroid/telecom/ConnectionService;Landroid/telecom/Conference;)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Landroid/telecom/Conference;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->removeConference(Landroid/telecom/Conference;)V

    return-void
.end method

.method static synthetic access$2600(Landroid/telecom/ConnectionService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Landroid/telecom/ConnectionService;

    .prologue
    .line 76
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2700(Landroid/telecom/ConnectionService;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->createIdList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Landroid/telecom/ConnectionService;)Landroid/telecom/RemoteConnectionManager;
    .locals 1
    .param p0, "x0"    # Landroid/telecom/ConnectionService;

    .prologue
    .line 76
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

    return-object v0
.end method

.method static synthetic access$2900(Landroid/telecom/ConnectionService;)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->onAccountsInitialized()V

    return-void
.end method

.method static synthetic access$300(Landroid/telecom/ConnectionService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/telecom/ConnectionService;

    .prologue
    .line 76
    iget-boolean v0, p0, Landroid/telecom/ConnectionService;->mAreAccountsInitialized:Z

    return v0
.end method

.method static synthetic access$302(Landroid/telecom/ConnectionService;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Landroid/telecom/ConnectionService;->mAreAccountsInitialized:Z

    return p1
.end method

.method static synthetic access$400(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/telecom/ConnectionRequest;
    .param p4, "x4"    # Z
    .param p5, "x5"    # Z

    .prologue
    .line 76
    invoke-direct/range {p0 .. p5}, Landroid/telecom/ConnectionService;->createConnection(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V

    return-void
.end method

.method static synthetic access$500(Landroid/telecom/ConnectionService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/telecom/ConnectionService;

    .prologue
    .line 76
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mPreInitializationConnectionRequests:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->abort(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->answer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Landroid/telecom/ConnectionService;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->answerVideo(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$900(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->reject(Ljava/lang/String;)V

    return-void
.end method

.method private addConferenceInternal(Landroid/telecom/Conference;)Ljava/lang/String;
    .locals 4
    .param p1, "conference"    # Landroid/telecom/Conference;

    .prologue
    .line 1242
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1243
    const-string v1, "Re-adding an existing conference: %s."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1252
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1244
    :cond_1
    if-eqz p1, :cond_0

    .line 1245
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1246
    .local v0, "id":Ljava/lang/String;
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1247
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1248
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mConferenceListener:Landroid/telecom/Conference$Listener;

    invoke-virtual {p1, v1}, Landroid/telecom/Conference;->addListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;

    goto :goto_0
.end method

.method private addConnection(Ljava/lang/String;Landroid/telecom/Connection;)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "connection"    # Landroid/telecom/Connection;

    .prologue
    .line 1225
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1226
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1227
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {p2, v0}, Landroid/telecom/Connection;->addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    .line 1228
    invoke-virtual {p2, p0}, Landroid/telecom/Connection;->setConnectionService(Landroid/telecom/ConnectionService;)V

    .line 1229
    return-void
.end method

.method private addExistingConnectionInternal(Landroid/telecom/Connection;)Ljava/lang/String;
    .locals 2
    .param p1, "connection"    # Landroid/telecom/Connection;

    .prologue
    .line 1219
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1220
    .local v0, "id":Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Landroid/telecom/ConnectionService;->addConnection(Ljava/lang/String;Landroid/telecom/Connection;)V

    .line 1221
    return-object v0
.end method

.method private addParticipantWithConference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "participant"    # Ljava/lang/String;

    .prologue
    .line 855
    const-string v2, "ConnectionService addParticipantWithConference(%s, %s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 856
    const-string v2, "addParticipantWithConference"

    invoke-direct {p0, p1, v2}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    .line 857
    .local v0, "conference":Landroid/telecom/Conference;
    const-string v2, "addParticipantWithConnection"

    invoke-direct {p0, p1, v2}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v1

    .line 858
    .local v1, "connection":Landroid/telecom/Connection;
    invoke-static {}, Landroid/telecom/ConnectionService;->getNullConnection()Landroid/telecom/Connection;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 859
    invoke-virtual {p0, v1, p2}, Landroid/telecom/ConnectionService;->onAddParticipant(Landroid/telecom/Connection;Ljava/lang/String;)V

    .line 863
    :cond_0
    :goto_0
    return-void

    .line 860
    :cond_1
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->getNullConference()Landroid/telecom/Conference;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 861
    invoke-virtual {v0, p2}, Landroid/telecom/Conference;->onAddParticipant(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private answer(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 722
    const-string v0, "answer %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 723
    const-string v0, "answer"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onAnswer()V

    .line 724
    return-void
.end method

.method private answerVideo(Ljava/lang/String;I)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "videoState"    # I

    .prologue
    .line 717
    const-string v0, "answerVideo %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 718
    const-string v0, "answer"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->onAnswer(I)V

    .line 719
    return-void
.end method

.method private conference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "callId1"    # Ljava/lang/String;
    .param p2, "callId2"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 793
    const-string v4, "conference %s, %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    aput-object p2, v5, v7

    invoke-static {p0, v4, v5}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 796
    const-string v4, "conference"

    invoke-direct {p0, p2, v4}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v3

    .line 797
    .local v3, "connection2":Landroid/telecom/Connection;
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->getNullConference()Landroid/telecom/Conference;

    move-result-object v1

    .line 798
    .local v1, "conference2":Landroid/telecom/Conference;
    invoke-static {}, Landroid/telecom/ConnectionService;->getNullConnection()Landroid/telecom/Connection;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 799
    const-string v4, "conference"

    invoke-direct {p0, p2, v4}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v1

    .line 800
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->getNullConference()Landroid/telecom/Conference;

    move-result-object v4

    if-ne v1, v4, :cond_0

    .line 801
    const-string v4, "Connection2 or Conference2 missing in conference request %s."

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p2, v5, v6

    invoke-static {p0, v4, v5}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 837
    :goto_0
    return-void

    .line 808
    :cond_0
    const-string v4, "conference"

    invoke-direct {p0, p1, v4}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v2

    .line 809
    .local v2, "connection1":Landroid/telecom/Connection;
    invoke-static {}, Landroid/telecom/ConnectionService;->getNullConnection()Landroid/telecom/Connection;

    move-result-object v4

    if-ne v2, v4, :cond_3

    .line 810
    const-string v4, "addConnection"

    invoke-direct {p0, p1, v4}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    .line 811
    .local v0, "conference1":Landroid/telecom/Conference;
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->getNullConference()Landroid/telecom/Conference;

    move-result-object v4

    if-ne v0, v4, :cond_1

    .line 812
    const-string v4, "Connection1 or Conference1 missing in conference request %s."

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-static {p0, v4, v5}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 817
    :cond_1
    invoke-static {}, Landroid/telecom/ConnectionService;->getNullConnection()Landroid/telecom/Connection;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 819
    invoke-virtual {v0, v3}, Landroid/telecom/Conference;->onMerge(Landroid/telecom/Connection;)V

    goto :goto_0

    .line 822
    :cond_2
    const-string v4, "There can only be one conference and an attempt was made to merge two conferences."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Landroid/telecom/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 829
    .end local v0    # "conference1":Landroid/telecom/Conference;
    :cond_3
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->getNullConference()Landroid/telecom/Conference;

    move-result-object v4

    if-eq v1, v4, :cond_4

    .line 831
    invoke-virtual {v1, v2}, Landroid/telecom/Conference;->onMerge(Landroid/telecom/Connection;)V

    goto :goto_0

    .line 834
    :cond_4
    invoke-virtual {p0, v2, v3}, Landroid/telecom/ConnectionService;->onConference(Landroid/telecom/Connection;Landroid/telecom/Connection;)V

    goto :goto_0
.end method

.method private createConnection(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V
    .locals 26
    .param p1, "callManagerAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "request"    # Landroid/telecom/ConnectionRequest;
    .param p4, "isIncoming"    # Z
    .param p5, "isUnknown"    # Z

    .prologue
    .line 660
    const-string v4, "createConnection, callManagerAccount: %s, callId: %s, request: %s, isIncoming: %b, isUnknown: %b"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    aput-object p3, v5, v6

    const/4 v6, 0x3

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 664
    if-eqz p5, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/telecom/ConnectionService;->onCreateUnknownConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;

    move-result-object v23

    .line 667
    .local v23, "connection":Landroid/telecom/Connection;
    :goto_0
    const-string v4, "createConnection, connection: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v23, v5, v6

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 668
    if-nez v23, :cond_0

    .line 669
    new-instance v4, Landroid/telecom/DisconnectCause;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-static {v4}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v23

    .line 673
    :cond_0
    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getState()I

    move-result v4

    const/4 v5, 0x6

    if-eq v4, v5, :cond_1

    .line 674
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/telecom/ConnectionService;->addConnection(Ljava/lang/String;Landroid/telecom/Connection;)V

    .line 677
    :cond_1
    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getAddress()Landroid/net/Uri;

    move-result-object v22

    .line 678
    .local v22, "address":Landroid/net/Uri;
    if-nez v22, :cond_5

    const-string/jumbo v24, "null"

    .line 679
    .local v24, "number":Ljava/lang/String;
    :goto_1
    const-string v4, "createConnection, number: %s, state: %s, capabilities: %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {v24 .. v24}, Landroid/telecom/Connection;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getState()I

    move-result v7

    invoke-static {v7}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getConnectionCapabilities()I

    move-result v7

    invoke-static {v7}, Landroid/telecom/Connection;->capabilitiesToString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 684
    const-string v4, "createConnection, calling handleCreateConnectionSuccessful %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 685
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    move-object/from16 v25, v0

    new-instance v4, Landroid/telecom/ParcelableConnection;

    invoke-virtual/range {p3 .. p3}, Landroid/telecom/ConnectionRequest;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v5

    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getState()I

    move-result v6

    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getConnectionCapabilities()I

    move-result v7

    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getAddress()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getAddressPresentation()I

    move-result v9

    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getCallerDisplayNamePresentation()I

    move-result v11

    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v12

    if-nez v12, :cond_6

    const/4 v12, 0x0

    :goto_2
    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getVideoState()I

    move-result v13

    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->isRingbackRequested()Z

    move-result v14

    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getAudioModeIsVoip()Z

    move-result v15

    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getConnectTimeMillis()J

    move-result-wide v16

    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v18

    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v19

    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getConferenceables()Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/telecom/ConnectionService;->createIdList(Ljava/util/List;)Ljava/util/List;

    move-result-object v20

    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getExtras()Landroid/os/Bundle;

    move-result-object v21

    invoke-direct/range {v4 .. v21}, Landroid/telecom/ParcelableConnection;-><init>(Landroid/telecom/PhoneAccountHandle;IILandroid/net/Uri;ILjava/lang/String;ILcom/android/internal/telecom/IVideoProvider;IZZJLandroid/telecom/StatusHints;Landroid/telecom/DisconnectCause;Ljava/util/List;Landroid/os/Bundle;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2, v4}, Landroid/telecom/ConnectionServiceAdapter;->handleCreateConnectionComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConnection;)V

    .line 706
    if-eqz p5, :cond_2

    .line 707
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/ConnectionService;->triggerConferenceRecalculate()V

    .line 709
    :cond_2
    return-void

    .line 664
    .end local v22    # "address":Landroid/net/Uri;
    .end local v23    # "connection":Landroid/telecom/Connection;
    .end local v24    # "number":Ljava/lang/String;
    :cond_3
    if-eqz p4, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/telecom/ConnectionService;->onCreateIncomingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;

    move-result-object v23

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/telecom/ConnectionService;->onCreateOutgoingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;

    move-result-object v23

    goto/16 :goto_0

    .line 678
    .restart local v22    # "address":Landroid/net/Uri;
    .restart local v23    # "connection":Landroid/telecom/Connection;
    :cond_5
    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_1

    .line 685
    .restart local v24    # "number":Ljava/lang/String;
    :cond_6
    invoke-virtual/range {v23 .. v23}, Landroid/telecom/Connection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telecom/Connection$VideoProvider;->getInterface()Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v12

    goto :goto_2
.end method

.method private createConnectionIdList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Connection;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1290
    .local p1, "connections":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Connection;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1291
    .local v2, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    .line 1292
    .local v0, "c":Landroid/telecom/Connection;
    iget-object v3, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1293
    iget-object v3, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1296
    .end local v0    # "c":Landroid/telecom/Connection;
    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1297
    return-object v2
.end method

.method private createIdList(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Conferenceable;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1308
    .local p1, "conferenceables":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Conferenceable;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1309
    .local v4, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Conferenceable;

    .line 1311
    .local v0, "c":Landroid/telecom/Conferenceable;
    instance-of v5, v0, Landroid/telecom/Connection;

    if-eqz v5, :cond_1

    move-object v2, v0

    .line 1312
    check-cast v2, Landroid/telecom/Connection;

    .line 1313
    .local v2, "connection":Landroid/telecom/Connection;
    iget-object v5, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1314
    iget-object v5, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1316
    .end local v2    # "connection":Landroid/telecom/Connection;
    :cond_1
    instance-of v5, v0, Landroid/telecom/Conference;

    if-eqz v5, :cond_0

    move-object v1, v0

    .line 1317
    check-cast v1, Landroid/telecom/Conference;

    .line 1318
    .local v1, "conference":Landroid/telecom/Conference;
    iget-object v5, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1319
    iget-object v5, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1323
    .end local v0    # "c":Landroid/telecom/Conferenceable;
    .end local v1    # "conference":Landroid/telecom/Conference;
    :cond_2
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1324
    return-object v4
.end method

.method private disconnect(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 732
    const-string v0, "disconnect %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 733
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 734
    const-string v0, "disconnect"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onDisconnect()V

    .line 738
    :goto_0
    return-void

    .line 736
    :cond_0
    const-string v0, "disconnect"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Conference;->onDisconnect()V

    goto :goto_0
.end method

.method private endAllConnections()V
    .locals 4

    .prologue
    .line 1336
    iget-object v3, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection;

    .line 1338
    .local v1, "connection":Landroid/telecom/Connection;
    invoke-virtual {v1}, Landroid/telecom/Connection;->getConference()Landroid/telecom/Conference;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1339
    invoke-virtual {v1}, Landroid/telecom/Connection;->onDisconnect()V

    goto :goto_0

    .line 1342
    .end local v1    # "connection":Landroid/telecom/Connection;
    :cond_1
    iget-object v3, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Conference;

    .line 1343
    .local v0, "conference":Landroid/telecom/Conference;
    invoke-virtual {v0}, Landroid/telecom/Conference;->onDisconnect()V

    goto :goto_1

    .line 1345
    .end local v0    # "conference":Landroid/telecom/Conference;
    :cond_2
    return-void
.end method

.method private findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;
    .locals 3
    .param p1, "conferenceId"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 1282
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1283
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Conference;

    .line 1286
    :goto_0
    return-object v0

    .line 1285
    :cond_0
    const-string v0, "%s - Cannot find conference %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1286
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->getNullConference()Landroid/telecom/Conference;

    move-result-object v0

    goto :goto_0
.end method

.method private findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 1267
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1268
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    .line 1271
    :goto_0
    return-object v0

    .line 1270
    :cond_0
    const-string v0, "%s - Cannot find Connection %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1271
    invoke-static {}, Landroid/telecom/ConnectionService;->getNullConnection()Landroid/telecom/Connection;

    move-result-object v0

    goto :goto_0
.end method

.method private getNullConference()Landroid/telecom/Conference;
    .locals 2

    .prologue
    .line 1328
    iget-object v0, p0, Landroid/telecom/ConnectionService;->sNullConference:Landroid/telecom/Conference;

    if-nez v0, :cond_0

    .line 1329
    new-instance v0, Landroid/telecom/ConnectionService$7;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telecom/ConnectionService$7;-><init>(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;)V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->sNullConference:Landroid/telecom/Conference;

    .line 1331
    :cond_0
    iget-object v0, p0, Landroid/telecom/ConnectionService;->sNullConference:Landroid/telecom/Conference;

    return-object v0
.end method

.method static declared-synchronized getNullConnection()Landroid/telecom/Connection;
    .locals 2

    .prologue
    .line 1275
    const-class v1, Landroid/telecom/ConnectionService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/telecom/ConnectionService;->sNullConnection:Landroid/telecom/Connection;

    if-nez v0, :cond_0

    .line 1276
    new-instance v0, Landroid/telecom/ConnectionService$6;

    invoke-direct {v0}, Landroid/telecom/ConnectionService$6;-><init>()V

    sput-object v0, Landroid/telecom/ConnectionService;->sNullConnection:Landroid/telecom/Connection;

    .line 1278
    :cond_0
    sget-object v0, Landroid/telecom/ConnectionService;->sNullConnection:Landroid/telecom/Connection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 1275
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private hold(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 741
    const-string v0, "hold %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 742
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 743
    const-string v0, "hold"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onHold()V

    .line 747
    :goto_0
    return-void

    .line 745
    :cond_0
    const-string v0, "hold"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Conference;->onHold()V

    goto :goto_0
.end method

.method private mergeConference(Ljava/lang/String;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 866
    const-string/jumbo v1, "mergeConference(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 867
    const-string/jumbo v1, "mergeConference"

    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    .line 868
    .local v0, "conference":Landroid/telecom/Conference;
    if-eqz v0, :cond_0

    .line 869
    invoke-virtual {v0}, Landroid/telecom/Conference;->onMerge()V

    .line 871
    :cond_0
    return-void
.end method

.method private onAccountsInitialized()V
    .locals 3

    .prologue
    .line 1205
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/telecom/ConnectionService;->mAreAccountsInitialized:Z

    .line 1206
    iget-object v2, p0, Landroid/telecom/ConnectionService;->mPreInitializationConnectionRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 1207
    .local v1, "r":Ljava/lang/Runnable;
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 1209
    .end local v1    # "r":Ljava/lang/Runnable;
    :cond_0
    iget-object v2, p0, Landroid/telecom/ConnectionService;->mPreInitializationConnectionRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1210
    return-void
.end method

.method private onAdapterAttached()V
    .locals 2

    .prologue
    .line 893
    iget-boolean v0, p0, Landroid/telecom/ConnectionService;->mAreAccountsInitialized:Z

    if-eqz v0, :cond_0

    .line 927
    :goto_0
    return-void

    .line 898
    :cond_0
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    new-instance v1, Landroid/telecom/ConnectionService$5;

    invoke-direct {v1, p0}, Landroid/telecom/ConnectionService$5;-><init>(Landroid/telecom/ConnectionService;)V

    invoke-virtual {v0, v1}, Landroid/telecom/ConnectionServiceAdapter;->queryRemoteConnectionServices(Lcom/android/internal/telecom/RemoteServiceCallback;)V

    goto :goto_0
.end method

.method private onCallAudioStateChanged(Ljava/lang/String;Landroid/telecom/CallAudioState;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "callAudioState"    # Landroid/telecom/CallAudioState;

    .prologue
    .line 759
    const-string/jumbo v0, "onAudioStateChanged %s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 760
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 761
    const-string/jumbo v0, "onCallAudioStateChanged"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->setCallAudioState(Landroid/telecom/CallAudioState;)V

    .line 767
    :goto_0
    return-void

    .line 764
    :cond_0
    const-string/jumbo v0, "onCallAudioStateChanged"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Conference;->setCallAudioState(Landroid/telecom/CallAudioState;)V

    goto :goto_0
.end method

.method private onPostDialContinue(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "proceed"    # Z

    .prologue
    .line 888
    const-string/jumbo v0, "onPostDialContinue(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 889
    const-string/jumbo v0, "stopDtmfTone"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->onPostDialContinue(Z)V

    .line 890
    return-void
.end method

.method private playDtmfTone(Ljava/lang/String;C)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "digit"    # C

    .prologue
    .line 770
    const-string/jumbo v0, "playDtmfTone %s %c"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 771
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 772
    const-string/jumbo v0, "playDtmfTone"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->onPlayDtmfTone(C)V

    .line 776
    :goto_0
    return-void

    .line 774
    :cond_0
    const-string/jumbo v0, "playDtmfTone"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Conference;->onPlayDtmfTone(C)V

    goto :goto_0
.end method

.method private reject(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 727
    const-string/jumbo v0, "reject %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 728
    const-string/jumbo v0, "reject"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onReject()V

    .line 729
    return-void
.end method

.method private removeConference(Landroid/telecom/Conference;)V
    .locals 2
    .param p1, "conference"    # Landroid/telecom/Conference;

    .prologue
    .line 1256
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1257
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mConferenceListener:Landroid/telecom/Conference$Listener;

    invoke-virtual {p1, v1}, Landroid/telecom/Conference;->removeListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;

    .line 1259
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1260
    .local v0, "id":Ljava/lang/String;
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1261
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1262
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v1, v0}, Landroid/telecom/ConnectionServiceAdapter;->removeCall(Ljava/lang/String;)V

    .line 1264
    .end local v0    # "id":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private setLocalCallHold(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "lchStatus"    # Z

    .prologue
    .line 788
    const-string/jumbo v0, "setLocalCallHold %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 789
    const-string/jumbo v0, "setLocalCallHold"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->setLocalCallHold(Z)V

    .line 790
    return-void
.end method

.method private splitFromConference(Ljava/lang/String;)V
    .locals 6
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 840
    const-string/jumbo v2, "splitFromConference(%s)"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 842
    const-string/jumbo v2, "splitFromConference"

    invoke-direct {p0, p1, v2}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v1

    .line 843
    .local v1, "connection":Landroid/telecom/Connection;
    invoke-static {}, Landroid/telecom/ConnectionService;->getNullConnection()Landroid/telecom/Connection;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 844
    const-string v2, "Connection missing in conference request %s."

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 852
    :cond_0
    :goto_0
    return-void

    .line 848
    :cond_1
    invoke-virtual {v1}, Landroid/telecom/Connection;->getConference()Landroid/telecom/Conference;

    move-result-object v0

    .line 849
    .local v0, "conference":Landroid/telecom/Conference;
    if-eqz v0, :cond_0

    .line 850
    invoke-virtual {v0, v1}, Landroid/telecom/Conference;->onSeparate(Landroid/telecom/Connection;)V

    goto :goto_0
.end method

.method private stopDtmfTone(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 779
    const-string/jumbo v0, "stopDtmfTone %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 780
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 781
    const-string/jumbo v0, "stopDtmfTone"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onStopDtmfTone()V

    .line 785
    :goto_0
    return-void

    .line 783
    :cond_0
    const-string/jumbo v0, "stopDtmfTone"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Conference;->onStopDtmfTone()V

    goto :goto_0
.end method

.method private swapConference(Ljava/lang/String;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 874
    const-string/jumbo v1, "swapConference(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 876
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 877
    const-string/jumbo v1, "swapConference"

    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/Connection;->onSwapActiveAndHoldCall()V

    .line 885
    :cond_0
    :goto_0
    return-void

    .line 879
    :cond_1
    const-string/jumbo v1, "swapConference"

    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    .line 880
    .local v0, "conference":Landroid/telecom/Conference;
    if-eqz v0, :cond_0

    .line 881
    invoke-virtual {v0}, Landroid/telecom/Conference;->onSwap()V

    goto :goto_0
.end method

.method private unhold(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 750
    const-string/jumbo v0, "unhold %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 751
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 752
    const-string/jumbo v0, "unhold"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onUnhold()V

    .line 756
    :goto_0
    return-void

    .line 754
    :cond_0
    const-string/jumbo v0, "unhold"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Conference;->onUnhold()V

    goto :goto_0
.end method


# virtual methods
.method public final addConference(Landroid/telecom/Conference;)V
    .locals 15
    .param p1, "conference"    # Landroid/telecom/Conference;

    .prologue
    .line 992
    const-string v2, "addConference: conference=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 994
    invoke-direct/range {p0 .. p1}, Landroid/telecom/ConnectionService;->addConferenceInternal(Landroid/telecom/Conference;)Ljava/lang/String;

    move-result-object v14

    .line 995
    .local v14, "id":Ljava/lang/String;
    if-eqz v14, :cond_4

    .line 996
    new-instance v5, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 997
    .local v5, "connectionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    .line 998
    .local v0, "connection":Landroid/telecom/Connection;
    iget-object v2, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 999
    iget-object v2, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1002
    .end local v0    # "connection":Landroid/telecom/Connection;
    :cond_1
    new-instance v1, Landroid/telecom/ParcelableConference;

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getState()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getConnectionCapabilities()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v6

    if-nez v6, :cond_3

    const/4 v6, 0x0

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getVideoState()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getConnectTimeMillis()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    invoke-direct/range {v1 .. v11}, Landroid/telecom/ParcelableConference;-><init>(Landroid/telecom/PhoneAccountHandle;IILjava/util/List;Lcom/android/internal/telecom/IVideoProvider;IJLandroid/telecom/StatusHints;Landroid/os/Bundle;)V

    .line 1014
    .local v1, "parcelableConference":Landroid/telecom/ParcelableConference;
    iget-object v2, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v2, v14, v1}, Landroid/telecom/ConnectionServiceAdapter;->addConferenceCall(Ljava/lang/String;Landroid/telecom/ParcelableConference;)V

    .line 1015
    iget-object v2, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v3

    invoke-virtual {v2, v14, v3}, Landroid/telecom/ConnectionServiceAdapter;->setVideoProvider(Ljava/lang/String;Landroid/telecom/Connection$VideoProvider;)V

    .line 1016
    iget-object v2, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getVideoState()I

    move-result v3

    invoke-virtual {v2, v14, v3}, Landroid/telecom/ConnectionServiceAdapter;->setVideoState(Ljava/lang/String;I)V

    .line 1019
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_2
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    .line 1020
    .restart local v0    # "connection":Landroid/telecom/Connection;
    iget-object v2, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1021
    .local v12, "connectionId":Ljava/lang/String;
    if-eqz v12, :cond_2

    .line 1022
    iget-object v2, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v2, v12, v14}, Landroid/telecom/ConnectionServiceAdapter;->setIsConferenced(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1002
    .end local v0    # "connection":Landroid/telecom/Connection;
    .end local v1    # "parcelableConference":Landroid/telecom/ParcelableConference;
    .end local v12    # "connectionId":Ljava/lang/String;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telecom/Connection$VideoProvider;->getInterface()Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v6

    goto :goto_1

    .line 1026
    .end local v5    # "connectionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_4
    return-void
.end method

.method public final addExistingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/Connection;)V
    .locals 21
    .param p1, "phoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "connection"    # Landroid/telecom/Connection;

    .prologue
    .line 1038
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/telecom/ConnectionService;->addExistingConnectionInternal(Landroid/telecom/Connection;)Ljava/lang/String;

    move-result-object v20

    .line 1039
    .local v20, "id":Ljava/lang/String;
    if-eqz v20, :cond_0

    .line 1040
    new-instance v18, Ljava/util/ArrayList;

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1042
    .local v18, "emptyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Landroid/telecom/ParcelableConnection;

    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getState()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getConnectionCapabilities()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getAddress()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getAddressPresentation()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getCallerDisplayNamePresentation()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v10, 0x0

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getVideoState()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->isRingbackRequested()Z

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getAudioModeIsVoip()Z

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getConnectTimeMillis()J

    move-result-wide v14

    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getExtras()Landroid/os/Bundle;

    move-result-object v19

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v19}, Landroid/telecom/ParcelableConnection;-><init>(Landroid/telecom/PhoneAccountHandle;IILandroid/net/Uri;ILjava/lang/String;ILcom/android/internal/telecom/IVideoProvider;IZZJLandroid/telecom/StatusHints;Landroid/telecom/DisconnectCause;Ljava/util/List;Landroid/os/Bundle;)V

    .line 1060
    .local v2, "parcelableConnection":Landroid/telecom/ParcelableConnection;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0, v2}, Landroid/telecom/ConnectionServiceAdapter;->addExistingConnection(Ljava/lang/String;Landroid/telecom/ParcelableConnection;)V

    .line 1062
    .end local v2    # "parcelableConnection":Landroid/telecom/ParcelableConnection;
    .end local v18    # "emptyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    return-void

    .line 1042
    .restart local v18    # "emptyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telecom/Connection$VideoProvider;->getInterface()Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v10

    goto :goto_0
.end method

.method addRemoteConference(Landroid/telecom/RemoteConference;)V
    .locals 0
    .param p1, "remoteConference"    # Landroid/telecom/RemoteConference;

    .prologue
    .line 1196
    invoke-virtual {p0, p1}, Landroid/telecom/ConnectionService;->onRemoteConferenceAdded(Landroid/telecom/RemoteConference;)V

    .line 1197
    return-void
.end method

.method addRemoteExistingConnection(Landroid/telecom/RemoteConnection;)V
    .locals 0
    .param p1, "remoteConnection"    # Landroid/telecom/RemoteConnection;

    .prologue
    .line 1201
    invoke-virtual {p0, p1}, Landroid/telecom/ConnectionService;->onRemoteExistingConnectionAdded(Landroid/telecom/RemoteConnection;)V

    .line 1202
    return-void
.end method

.method public final conferenceRemoteConnections(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection;)V
    .locals 1
    .param p1, "remoteConnection1"    # Landroid/telecom/RemoteConnection;
    .param p2, "remoteConnection2"    # Landroid/telecom/RemoteConnection;

    .prologue
    .line 980
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

    invoke-virtual {v0, p1, p2}, Landroid/telecom/RemoteConnectionManager;->conferenceRemoteConnections(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection;)V

    .line 981
    return-void
.end method

.method public containsConference(Landroid/telecom/Conference;)Z
    .locals 1
    .param p1, "conference"    # Landroid/telecom/Conference;

    .prologue
    .line 1191
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final createRemoteIncomingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/RemoteConnection;
    .locals 2
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .prologue
    .line 944
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/telecom/RemoteConnectionManager;->createRemoteConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;Z)Landroid/telecom/RemoteConnection;

    move-result-object v0

    return-object v0
.end method

.method public final createRemoteOutgoingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/RemoteConnection;
    .locals 2
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .prologue
    .line 963
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/telecom/RemoteConnectionManager;->createRemoteConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;Z)Landroid/telecom/RemoteConnection;

    move-result-object v0

    return-object v0
.end method

.method public final getAllConnections()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1071
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public onAddParticipant(Landroid/telecom/Connection;Ljava/lang/String;)V
    .locals 0
    .param p1, "connection"    # Landroid/telecom/Connection;
    .param p2, "participant"    # Ljava/lang/String;

    .prologue
    .line 1167
    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 639
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onConference(Landroid/telecom/Connection;Landroid/telecom/Connection;)V
    .locals 0
    .param p1, "connection1"    # Landroid/telecom/Connection;
    .param p2, "connection2"    # Landroid/telecom/Connection;

    .prologue
    .line 1154
    return-void
.end method

.method public onCreateIncomingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .locals 1
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .prologue
    .line 1087
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateOutgoingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .locals 1
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .prologue
    .line 1126
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateUnknownConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .locals 1
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .prologue
    .line 1143
    const/4 v0, 0x0

    return-object v0
.end method

.method public onRemoteConferenceAdded(Landroid/telecom/RemoteConference;)V
    .locals 0
    .param p1, "conference"    # Landroid/telecom/RemoteConference;

    .prologue
    .line 1179
    return-void
.end method

.method public onRemoteExistingConnectionAdded(Landroid/telecom/RemoteConnection;)V
    .locals 0
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;

    .prologue
    .line 1185
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 645
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->endAllConnections()V

    .line 646
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method protected removeConnection(Landroid/telecom/Connection;)V
    .locals 3
    .param p1, "connection"    # Landroid/telecom/Connection;

    .prologue
    .line 1233
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1234
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {p1, p0}, Landroid/telecom/Connection;->unsetConnectionService(Landroid/telecom/ConnectionService;)V

    .line 1235
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mConnectionListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {p1, v1}, Landroid/telecom/Connection;->removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    .line 1236
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    iget-object v2, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1237
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1238
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v1, v0}, Landroid/telecom/ConnectionServiceAdapter;->removeCall(Ljava/lang/String;)V

    .line 1239
    return-void
.end method

.method public triggerConferenceRecalculate()V
    .locals 0

    .prologue
    .line 1098
    return-void
.end method
