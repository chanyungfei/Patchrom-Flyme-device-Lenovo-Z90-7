.class Lcom/android/settings/bluetooth/BluetoothStatusEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothStatusEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothStatusEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothStatusEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothStatusEnabler;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothStatusEnabler$1;->this$0:Lcom/android/settings/bluetooth/BluetoothStatusEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 52
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x80000000

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 53
    .local v0, "state":I
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothStatusEnabler$1;->this$0:Lcom/android/settings/bluetooth/BluetoothStatusEnabler;

    # invokes: Lcom/android/settings/bluetooth/BluetoothStatusEnabler;->handleStateChanged(I)V
    invoke-static {v1, v0}, Lcom/android/settings/bluetooth/BluetoothStatusEnabler;->access$000(Lcom/android/settings/bluetooth/BluetoothStatusEnabler;I)V

    .line 54
    return-void
.end method
