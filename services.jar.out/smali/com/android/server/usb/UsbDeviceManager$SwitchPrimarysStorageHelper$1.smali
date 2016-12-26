.class Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper$1;
.super Ljava/lang/Object;
.source "UsbDeviceManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;)V
    .locals 0

    .prologue
    .line 1321
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper$1;->this$1:Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 1324
    invoke-static {p2}, Lcom/android/internal/app/IMediaContainerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v0

    .line 1326
    .local v0, "imcs":Lcom/android/internal/app/IMediaContainerService;
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper$1;->this$1:Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;

    # invokes: Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->updateRecommendNotification(Lcom/android/internal/app/IMediaContainerService;)V
    invoke-static {v1, v0}, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->access$2300(Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;Lcom/android/internal/app/IMediaContainerService;)V

    .line 1327
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper$1;->this$1:Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;

    iget-object v1, v1, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->access$600(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper$1;->this$1:Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;

    # getter for: Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->mDefContainerConn:Landroid/content/ServiceConnection;
    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->access$2400(Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1328
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 1332
    return-void
.end method
