.class Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SupplicantStartingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 5225
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private initializeWpsDetails()V
    .locals 4

    .prologue
    .line 5228
    const-string v1, "ro.product.name"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5229
    .local v0, "detail":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$3800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiNative;->setDeviceName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5230
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set device name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 5232
    :cond_0
    const-string v1, "ro.product.manufacturer"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5233
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$3800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiNative;->setManufacturer(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5234
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set manufacturer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 5236
    :cond_1
    const-string v1, "ro.product.model"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5237
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$3800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiNative;->setModelName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5238
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set model name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 5240
    :cond_2
    const-string v1, "ro.product.model"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5241
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$3800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiNative;->setModelNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 5242
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set model number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 5244
    :cond_3
    const-string v1, "ro.serialno"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5245
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$3800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiNative;->setSerialNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 5246
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set serial number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 5248
    :cond_4
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$3800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    const-string v2, "physical_display virtual_push_button"

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->setConfigMethods(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 5249
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v2, "Failed to set WPS config methods"

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 5251
    :cond_5
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$3800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mPrimaryDeviceType:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$4900(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->setDeviceType(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 5252
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set primary device type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mPrimaryDeviceType:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4900(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 5254
    :cond_6
    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v7, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5258
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logStateAndMessage(Landroid/os/Message;Ljava/lang/String;)V
    invoke-static {v5, p1, v6}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 5260
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 5339
    :goto_0
    return v3

    .line 5262
    :sswitch_0
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$1100()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v6, "Supplicant connection established"

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 5263
    :cond_0
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v6, 0x3

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setWifiState(I)V
    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiStateMachine;->access$4300(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 5264
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantRestartCount:I
    invoke-static {v5, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$5002(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 5267
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v5

    const v6, 0x2006f

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    .line 5269
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v6, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiStateMachine;->access$5202(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 5270
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v5, v7}, Lcom/android/server/wifi/WifiStateMachine;->access$5302(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 5271
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastSignalLevel:I
    invoke-static {v5, v7}, Lcom/android/server/wifi/WifiStateMachine;->access$5402(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 5273
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$5500(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$3800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiNative;->getMacAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiInfo;->setMacAddress(Ljava/lang/String;)V

    .line 5274
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$3800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiNative;->enableSaveConfig()V

    .line 5275
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$5600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiConfigStore;->loadAndEnableAllNetworks()V

    .line 5276
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$700(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x112000e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$5600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiConfigStore;->shouldAutoConnect()Z

    move-result v5

    if-nez v5, :cond_1

    .line 5278
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$5600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiConfigStore;->disableAllNetworks()V

    .line 5280
    :cond_1
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$5600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v5

    iget v5, v5, Lcom/android/server/wifi/WifiConfigStore;->enableVerboseLogging:I

    if-lez v5, :cond_2

    .line 5281
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$5600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v6

    iget v6, v6, Lcom/android/server/wifi/WifiConfigStore;->enableVerboseLogging:I

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiStateMachine;->enableVerboseLogging(I)V

    .line 5283
    :cond_2
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$5600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v5

    iget v5, v5, Lcom/android/server/wifi/WifiConfigStore;->associatedPartialScanPeriodMilli:I

    if-gez v5, :cond_3

    .line 5284
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$5600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v5

    iput v3, v5, Lcom/android/server/wifi/WifiConfigStore;->associatedPartialScanPeriodMilli:I

    .line 5286
    :cond_3
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->initializeWpsDetails()V

    .line 5288
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$5600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 5290
    .local v2, "networkList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v2, :cond_5

    .line 5292
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 5294
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_4

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-eq v5, v4, :cond_4

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->autoConnectable:I

    if-nez v5, :cond_4

    .line 5298
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Handle SUP_CONNECTION_EVENT, Disable Network: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " because Auto Connectable is FALSE"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 5299
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$5600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v5

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v5, v6, v3}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(II)Z

    goto :goto_1

    .line 5305
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_5
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendSupplicantConnectionChangedBroadcast(Z)V
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$5700(Lcom/android/server/wifi/WifiStateMachine;Z)V

    .line 5306
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/State;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$5800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$5900(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .end local v2    # "networkList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :goto_2
    move v3, v4

    .line 5339
    goto/16 :goto_0

    .line 5309
    :sswitch_1
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # ++operator for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantRestartCount:I
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$5004(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v5

    const/4 v6, 0x5

    if-gt v5, v6, :cond_6

    .line 5310
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v5, "Failed to setup control channel, restart supplicant"

    invoke-virtual {v3, v5}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 5311
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mP2pSupported:Z
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$4100(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/wifi/WifiMonitor;->killSupplicant(Z)V

    .line 5312
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$6000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$6100(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 5313
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v5, 0x2000b

    const-wide/16 v6, 0x1388

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_2

    .line 5315
    :cond_6
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantRestartCount:I
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$5000(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " times to start supplicant, unload driver"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 5317
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantRestartCount:I
    invoke-static {v5, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$5002(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 5318
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v5, 0x4

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setWifiState(I)V
    invoke-static {v3, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$4300(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 5319
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$6000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$6200(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_2

    .line 5333
    :sswitch_2
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_DEFERRED:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$6300()I

    move-result v5

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static {v3, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$2802(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 5334
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v3, p1}, Lcom/android/server/wifi/WifiStateMachine;->access$6400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto/16 :goto_2

    .line 5260
    :sswitch_data_0
    .sparse-switch
        0x2000b -> :sswitch_2
        0x2000c -> :sswitch_2
        0x2000d -> :sswitch_2
        0x2000e -> :sswitch_2
        0x20015 -> :sswitch_2
        0x20018 -> :sswitch_2
        0x20048 -> :sswitch_2
        0x20050 -> :sswitch_2
        0x20054 -> :sswitch_2
        0x20055 -> :sswitch_2
        0x2005a -> :sswitch_2
        0x24001 -> :sswitch_0
        0x24002 -> :sswitch_1
    .end sparse-switch
.end method
