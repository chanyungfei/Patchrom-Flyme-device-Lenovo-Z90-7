.class public final Lcom/android/settings/bluetooth/BluetoothPermissionRequest;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPermissionRequest.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final NOTIFICATION_ID:I = 0x7f0200ea

.field private static final NOTIFICATION_ID_BQB:I = 0x7f0200eb

.field private static final NOTIFICATION_TAG_MAP:Ljava/lang/String; = "Message Access"

.field private static final NOTIFICATION_TAG_PBAP:Ljava/lang/String; = "Phonebook Access"

.field private static final TAG:Ljava/lang/String; = "BluetoothPermissionRequest"


# instance fields
.field mContext:Landroid/content/Context;

.field mDevice:Landroid/bluetooth/BluetoothDevice;

.field mRequestType:I

.field mReturnClass:Ljava/lang/String;

.field mReturnPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnPackage:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnClass:Ljava/lang/String;

    return-void
.end method

.method private checkUserChoice()Z
    .locals 11

    .prologue
    .line 177
    const/4 v6, 0x0

    .line 180
    .local v6, "processed":Z
    iget v8, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_0

    iget v8, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const/4 v9, 0x3

    if-eq v8, v9, :cond_0

    move v7, v6

    .line 237
    .end local v6    # "processed":Z
    .local v7, "processed":I
    :goto_0
    return v7

    .line 186
    .end local v7    # "processed":I
    .restart local v6    # "processed":Z
    :cond_0
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 187
    .local v0, "bluetoothManager":Lcom/android/settings/bluetooth/LocalBluetoothManager;
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    .line 189
    .local v2, "cachedDeviceManager":Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v8}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 191
    .local v1, "cachedDevice":Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    if-nez v1, :cond_1

    .line 192
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v8, v9, v10}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 196
    :cond_1
    iget v8, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_6

    .line 198
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getPhonebookPermissionChoice()I

    move-result v5

    .line 200
    .local v5, "phonebookPermission":I
    if-nez v5, :cond_2

    move v7, v6

    .line 201
    .restart local v7    # "processed":I
    goto :goto_0

    .line 204
    .end local v7    # "processed":I
    :cond_2
    const-string v3, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    .line 205
    .local v3, "intentName":Ljava/lang/String;
    const/4 v8, 0x1

    if-ne v5, v8, :cond_4

    .line 206
    const/4 v8, 0x1

    const-string v9, "android.bluetooth.device.extra.ALWAYS_ALLOWED"

    const/4 v10, 0x1

    invoke-direct {p0, v3, v8, v9, v10}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->sendIntentToReceiver(Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 207
    const/4 v6, 0x1

    .end local v3    # "intentName":Ljava/lang/String;
    .end local v5    # "phonebookPermission":I
    :cond_3
    :goto_1
    move v7, v6

    .line 237
    .restart local v7    # "processed":I
    goto :goto_0

    .line 208
    .end local v7    # "processed":I
    .restart local v3    # "intentName":Ljava/lang/String;
    .restart local v5    # "phonebookPermission":I
    :cond_4
    const/4 v8, 0x2

    if-ne v5, v8, :cond_5

    .line 209
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {p0, v3, v8, v9, v10}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->sendIntentToReceiver(Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 211
    const/4 v6, 0x1

    goto :goto_1

    .line 213
    :cond_5
    const-string v8, "BluetoothPermissionRequest"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad phonebookPermission: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 216
    .end local v3    # "intentName":Ljava/lang/String;
    .end local v5    # "phonebookPermission":I
    :cond_6
    iget v8, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_3

    .line 218
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getMessagePermissionChoice()I

    move-result v4

    .line 220
    .local v4, "messagePermission":I
    if-nez v4, :cond_7

    move v7, v6

    .line 221
    .restart local v7    # "processed":I
    goto :goto_0

    .line 224
    .end local v7    # "processed":I
    :cond_7
    const-string v3, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    .line 225
    .restart local v3    # "intentName":Ljava/lang/String;
    const/4 v8, 0x1

    if-ne v4, v8, :cond_8

    .line 226
    const/4 v8, 0x1

    const-string v9, "android.bluetooth.device.extra.ALWAYS_ALLOWED"

    const/4 v10, 0x1

    invoke-direct {p0, v3, v8, v9, v10}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->sendIntentToReceiver(Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 227
    const/4 v6, 0x1

    goto :goto_1

    .line 228
    :cond_8
    const/4 v8, 0x2

    if-ne v4, v8, :cond_9

    .line 229
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {p0, v3, v8, v9, v10}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->sendIntentToReceiver(Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 231
    const/4 v6, 0x1

    goto :goto_1

    .line 233
    :cond_9
    const-string v8, "BluetoothPermissionRequest"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad messagePermission: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getNotificationTag(I)Ljava/lang/String;
    .locals 2
    .param p1, "requestType"    # I

    .prologue
    .line 163
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 164
    const-string v0, "Phonebook Access"

    .line 168
    :goto_0
    return-object v0

    .line 165
    :cond_0
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 166
    const-string v0, "Message Access"

    goto :goto_0

    .line 168
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendIntentToReceiver(Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 3
    .param p1, "intentName"    # Ljava/lang/String;
    .param p2, "allowed"    # Z
    .param p3, "extraName"    # Ljava/lang/String;
    .param p4, "extraValue"    # Z

    .prologue
    .line 242
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 244
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnClass:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 245
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    :cond_0
    const-string v2, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 252
    if-eqz p3, :cond_1

    .line 253
    invoke-virtual {v0, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 255
    :cond_1
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 256
    const-string v1, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    iget v2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 257
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 258
    return-void

    .line 248
    :cond_2
    const/4 v1, 0x2

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 55
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mContext:Landroid/content/Context;

    .line 56
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "action":Ljava/lang/String;
    const-string v12, "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 62
    const-string v12, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/bluetooth/BluetoothDevice;

    iput-object v12, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 63
    const-string v12, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    const/4 v13, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    iput v12, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    .line 65
    const-string v12, "android.bluetooth.device.extra.PACKAGE_NAME"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnPackage:Ljava/lang/String;

    .line 66
    const-string v12, "android.bluetooth.device.extra.CLASS_NAME"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnClass:Ljava/lang/String;

    .line 74
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->checkUserChoice()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    .local v2, "connectionAccessIntent":Landroid/content/Intent;
    const-class v12, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v12}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 81
    const/high16 v12, 0x18000000

    invoke-virtual {v2, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 82
    iget v12, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const-string v12, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    iget v13, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    invoke-virtual {v2, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 87
    const-string v12, "android.bluetooth.device.extra.DEVICE"

    iget-object v13, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 88
    const-string v12, "android.bluetooth.device.extra.PACKAGE_NAME"

    iget-object v13, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnPackage:Ljava/lang/String;

    invoke-virtual {v2, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const-string v12, "android.bluetooth.device.extra.CLASS_NAME"

    iget-object v13, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnClass:Ljava/lang/String;

    invoke-virtual {v2, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    iget-object v12, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v12, :cond_2

    iget-object v12, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 92
    .local v4, "deviceAddress":Ljava/lang/String;
    :goto_1
    const/4 v11, 0x0

    .line 93
    .local v11, "title":Ljava/lang/String;
    const/4 v7, 0x0

    .line 94
    .local v7, "message":Ljava/lang/String;
    const-string v12, "power"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/PowerManager;

    .line 97
    .local v10, "powerManager":Landroid/os/PowerManager;
    invoke-virtual {v10}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v12

    if-eqz v12, :cond_3

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->shouldShowDialogInForeground(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 99
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 91
    .end local v4    # "deviceAddress":Ljava/lang/String;
    .end local v7    # "message":Ljava/lang/String;
    .end local v10    # "powerManager":Landroid/os/PowerManager;
    .end local v11    # "title":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 106
    .restart local v4    # "deviceAddress":Ljava/lang/String;
    .restart local v7    # "message":Ljava/lang/String;
    .restart local v10    # "powerManager":Landroid/os/PowerManager;
    .restart local v11    # "title":Ljava/lang/String;
    :cond_3
    new-instance v3, Landroid/content/Intent;

    const-string v12, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-direct {v3, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    .local v3, "deleteIntent":Landroid/content/Intent;
    const-string v12, "android.bluetooth.device.extra.DEVICE"

    iget-object v13, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 108
    const-string v12, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    const/4 v13, 0x2

    invoke-virtual {v3, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 110
    const-string v12, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    iget v13, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    invoke-virtual {v3, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 111
    iget-object v12, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v12, :cond_4

    iget-object v12, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v5

    .line 112
    .local v5, "deviceName":Ljava/lang/String;
    :goto_2
    iget v12, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    packed-switch v12, :pswitch_data_0

    .line 122
    const v12, 0x7f0c04c0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 123
    const v12, 0x7f0c04c2

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v5, v13, v14

    const/4 v14, 0x1

    aput-object v5, v13, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 126
    :goto_3
    new-instance v12, Landroid/app/Notification$Builder;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v12, v11}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v12

    invoke-virtual {v12, v7}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v12

    invoke-virtual {v12, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v13

    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isBQBPass()Z

    move-result v12

    if-eqz v12, :cond_5

    const v12, 0x7f0200eb

    :goto_4
    invoke-virtual {v13, v12}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v12

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v12

    const/4 v13, -0x1

    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v13, v2, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v13, v3, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    .line 139
    .local v8, "notification":Landroid/app/Notification;
    iget v12, v8, Landroid/app/Notification;->flags:I

    or-int/lit8 v12, v12, 0x20

    iput v12, v8, Landroid/app/Notification;->flags:I

    .line 141
    const-string v12, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    .line 146
    .local v9, "notificationManager":Landroid/app/NotificationManager;
    iget v12, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    invoke-direct {p0, v12}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->getNotificationTag(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isBQBPass()Z

    move-result v12

    if-eqz v12, :cond_6

    const v12, 0x7f0200eb

    :goto_5
    invoke-virtual {v9, v13, v12, v8}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 111
    .end local v5    # "deviceName":Ljava/lang/String;
    .end local v8    # "notification":Landroid/app/Notification;
    .end local v9    # "notificationManager":Landroid/app/NotificationManager;
    :cond_4
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 114
    .restart local v5    # "deviceName":Ljava/lang/String;
    :pswitch_0
    const v12, 0x7f0c04c3

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 115
    const v12, 0x7f0c04c4

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v5, v13, v14

    const/4 v14, 0x1

    aput-object v5, v13, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 116
    goto/16 :goto_3

    .line 118
    :pswitch_1
    const v12, 0x7f0c04c7

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 119
    const v12, 0x7f0c04c8

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v5, v13, v14

    const/4 v14, 0x1

    aput-object v5, v13, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 120
    goto/16 :goto_3

    .line 126
    :cond_5
    const v12, 0x7f0200ea

    goto/16 :goto_4

    .line 146
    .restart local v8    # "notification":Landroid/app/Notification;
    .restart local v9    # "notificationManager":Landroid/app/NotificationManager;
    :cond_6
    const v12, 0x7f0200ea

    goto :goto_5

    .line 149
    .end local v2    # "connectionAccessIntent":Landroid/content/Intent;
    .end local v3    # "deleteIntent":Landroid/content/Intent;
    .end local v4    # "deviceAddress":Ljava/lang/String;
    .end local v5    # "deviceName":Ljava/lang/String;
    .end local v7    # "message":Ljava/lang/String;
    .end local v8    # "notification":Landroid/app/Notification;
    .end local v9    # "notificationManager":Landroid/app/NotificationManager;
    .end local v10    # "powerManager":Landroid/os/PowerManager;
    .end local v11    # "title":Ljava/lang/String;
    :cond_7
    const-string v12, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 151
    const-string v12, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 153
    .local v6, "manager":Landroid/app/NotificationManager;
    const-string v12, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    const/4 v13, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    iput v12, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    .line 157
    iget v12, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    invoke-direct {p0, v12}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->getNotificationTag(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isBQBPass()Z

    move-result v12

    if-eqz v12, :cond_8

    const v12, 0x7f0200eb

    :goto_6
    invoke-virtual {v6, v13, v12}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_8
    const v12, 0x7f0200ea

    goto :goto_6

    .line 112
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
