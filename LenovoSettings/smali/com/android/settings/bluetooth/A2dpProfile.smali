.class final Lcom/android/settings_ex/bluetooth/A2dpProfile;
.super Ljava/lang/Object;
.source "A2dpProfile.java"

# interfaces
.implements Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/bluetooth/A2dpProfile$1;,
        Lcom/android/settings_ex/bluetooth/A2dpProfile$A2dpServiceListener;
    }
.end annotation


# static fields
.field static final NAME:Ljava/lang/String; = "A2DP"

.field private static final ORDINAL:I = 0x1

.field static final SINK_UUIDS:[Landroid/os/ParcelUuid;

.field private static final TAG:Ljava/lang/String; = "A2dpProfile"

.field private static V:Z


# instance fields
.field private final mDeviceManager:Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;

.field private mIsProfileReady:Z

.field private final mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

.field private final mProfileManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;

.field private mService:Landroid/bluetooth/BluetoothA2dp;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 40
    sput-boolean v3, Lcom/android/settings_ex/bluetooth/A2dpProfile;->V:Z

    .line 48
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/os/ParcelUuid;

    const/4 v1, 0x0

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->AdvAudioDist:Landroid/os/ParcelUuid;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/settings_ex/bluetooth/A2dpProfile;->SINK_UUIDS:[Landroid/os/ParcelUuid;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;
    .param p3, "deviceManager"    # Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;
    .param p4, "profileManager"    # Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p2, p0, Lcom/android/settings_ex/bluetooth/A2dpProfile;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    .line 96
    iput-object p3, p0, Lcom/android/settings_ex/bluetooth/A2dpProfile;->mDeviceManager:Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;

    .line 97
    iput-object p4, p0, Lcom/android/settings_ex/bluetooth/A2dpProfile;->mProfileManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;

    .line 98
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/A2dpProfile;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    new-instance v1, Lcom/android/settings_ex/bluetooth/A2dpProfile$A2dpServiceListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings_ex/bluetooth/A2dpProfile$A2dpServiceListener;-><init>(Lcom/android/settings_ex/bluetooth/A2dpProfile;Lcom/android/settings_ex/bluetooth/A2dpProfile$1;)V

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)V

    .line 100
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/android/settings_ex/bluetooth/A2dpProfile;->V:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/bluetooth/A2dpProfile;)Landroid/bluetooth/BluetoothA2dp;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/A2dpProfile;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings_ex/bluetooth/A2dpProfile;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/A2dpProfile;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothA2dp;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings_ex/bluetooth/A2dpProfile;)Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/A2dpProfile;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/A2dpProfile;->mDeviceManager:Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/bluetooth/A2dpProfile;)Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/A2dpProfile;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/A2dpProfile;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/bluetooth/A2dpProfile;)Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/A2dpProfile;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/A2dpProfile;->mProfileManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settings_ex/bluetooth/A2dpProfile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/bluetooth/A2dpProfile;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/android/settings_ex/bluetooth/A2dpProfile;->mIsProfileReady:Z

    return p1
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 119
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 133
    :goto_0
    return v3

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/A2dpProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    .line 121
    .local v2, "sinks":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v2, :cond_3

    .line 122
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 123
    .local v1, "sink":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 125
    const-string v3, "A2dpProfile"

    const-string v4, "Ignoring Connect"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const/4 v3, 0x1

    goto :goto_0

    .line 129
    .end local v1    # "sink":Landroid/bluetooth/BluetoothDevice;
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 130
    .restart local v1    # "sink":Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v3, v1}, Landroid/bluetooth/BluetoothA2dp;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_1

    .line 133
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "sink":Landroid/bluetooth/BluetoothDevice;
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothA2dp;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    goto :goto_0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/16 v1, 0x64

    .line 137
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 142
    :goto_0
    return v0

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-le v0, v1, :cond_1

    .line 140
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothA2dp;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 4

    .prologue
    .line 214
    sget-boolean v1, Lcom/android/settings_ex/bluetooth/A2dpProfile;->V:Z

    if-eqz v1, :cond_0

    const-string v1, "A2dpProfile"

    const-string v2, "finalize()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v1, :cond_1

    .line 217
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 219
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :cond_1
    :goto_0
    return-void

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "A2dpProfile"

    const-string v2, "Error cleaning up A2DP proxy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 112
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothA2dp;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :array_0
    .array-data 4
        0x2
        0x1
        0x3
    .end array-data
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_0

    .line 147
    const/4 v0, 0x0

    .line 149
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    goto :goto_0
.end method

.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 1
    .param p1, "btClass"    # Landroid/bluetooth/BluetoothClass;

    .prologue
    .line 210
    const v0, 0x7f02004b

    return v0
.end method

.method public getNameResource(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 192
    const v0, 0x7f0c05c1

    return v0
.end method

.method public getOrdinal()I
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x1

    return v0
.end method

.method public getPreferred(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 159
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    goto :goto_0
.end method

.method public getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 196
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/bluetooth/A2dpProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 197
    .local v0, "state":I
    packed-switch v0, :pswitch_data_0

    .line 205
    :pswitch_0
    invoke-static {v0}, Lcom/android/settings_ex/bluetooth/Utils;->getConnectionStateSummary(I)I

    move-result v1

    :goto_0
    return v1

    .line 199
    :pswitch_1
    const v1, 0x7f0c05db

    goto :goto_0

    .line 202
    :pswitch_2
    const v1, 0x7f0c05d3

    goto :goto_0

    .line 197
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method isA2dpPlaying()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 173
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v1, :cond_0

    move v1, v2

    .line 180
    :goto_0
    return v1

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 175
    .local v0, "sinks":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 176
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v1}, Landroid/bluetooth/BluetoothA2dp;->isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 180
    goto :goto_0
.end method

.method public isAutoConnectable()Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public isConnectable()Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method public isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v0, 0x0

    .line 153
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v1, :cond_1

    .line 154
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothA2dp;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isProfileReady()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/A2dpProfile;->mIsProfileReady:Z

    return v0
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "preferred"    # Z

    .prologue
    const/16 v1, 0x64

    .line 163
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    if-eqz p2, :cond_2

    .line 165
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothA2dp;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0

    .line 169
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothA2dp;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    const-string v0, "A2DP"

    return-object v0
.end method
