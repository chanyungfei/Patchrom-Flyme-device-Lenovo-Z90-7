.class final Lcom/android/settings_ex/bluetooth/PbapServerProfile$PbapServiceListener;
.super Ljava/lang/Object;
.source "PbapServerProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothPbap$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/bluetooth/PbapServerProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PbapServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/PbapServerProfile;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/bluetooth/PbapServerProfile;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/PbapServerProfile$PbapServiceListener;->this$0:Lcom/android/settings_ex/bluetooth/PbapServerProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/bluetooth/PbapServerProfile;Lcom/android/settings_ex/bluetooth/PbapServerProfile$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/bluetooth/PbapServerProfile;
    .param p2, "x1"    # Lcom/android/settings_ex/bluetooth/PbapServerProfile$1;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/settings_ex/bluetooth/PbapServerProfile$PbapServiceListener;-><init>(Lcom/android/settings_ex/bluetooth/PbapServerProfile;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/bluetooth/BluetoothPbap;)V
    .locals 2
    .param p1, "proxy"    # Landroid/bluetooth/BluetoothPbap;

    .prologue
    .line 56
    # getter for: Lcom/android/settings_ex/bluetooth/PbapServerProfile;->V:Z
    invoke-static {}, Lcom/android/settings_ex/bluetooth/PbapServerProfile;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PbapServerProfile"

    const-string v1, "Bluetooth service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/PbapServerProfile$PbapServiceListener;->this$0:Lcom/android/settings_ex/bluetooth/PbapServerProfile;

    # setter for: Lcom/android/settings_ex/bluetooth/PbapServerProfile;->mService:Landroid/bluetooth/BluetoothPbap;
    invoke-static {v0, p1}, Lcom/android/settings_ex/bluetooth/PbapServerProfile;->access$102(Lcom/android/settings_ex/bluetooth/PbapServerProfile;Landroid/bluetooth/BluetoothPbap;)Landroid/bluetooth/BluetoothPbap;

    .line 58
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/PbapServerProfile$PbapServiceListener;->this$0:Lcom/android/settings_ex/bluetooth/PbapServerProfile;

    const/4 v1, 0x1

    # setter for: Lcom/android/settings_ex/bluetooth/PbapServerProfile;->mIsProfileReady:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/bluetooth/PbapServerProfile;->access$202(Lcom/android/settings_ex/bluetooth/PbapServerProfile;Z)Z

    .line 59
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 2

    .prologue
    .line 62
    # getter for: Lcom/android/settings_ex/bluetooth/PbapServerProfile;->V:Z
    invoke-static {}, Lcom/android/settings_ex/bluetooth/PbapServerProfile;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PbapServerProfile"

    const-string v1, "Bluetooth service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/PbapServerProfile$PbapServiceListener;->this$0:Lcom/android/settings_ex/bluetooth/PbapServerProfile;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings_ex/bluetooth/PbapServerProfile;->mIsProfileReady:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/bluetooth/PbapServerProfile;->access$202(Lcom/android/settings_ex/bluetooth/PbapServerProfile;Z)Z

    .line 64
    return-void
.end method
