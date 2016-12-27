.class Lcom/android/settings/deviceinfo/Memory$4;
.super Landroid/content/BroadcastReceiver;
.source "Memory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/Memory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/Memory;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/Memory;)V
    .locals 0

    .prologue
    .line 421
    iput-object p1, p0, Lcom/android/settings/deviceinfo/Memory$4;->this$0:Lcom/android/settings/deviceinfo/Memory;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 424
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 425
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 426
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Memory$4;->this$0:Lcom/android/settings/deviceinfo/Memory;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/Memory$4;->this$0:Lcom/android/settings/deviceinfo/Memory;

    # invokes: Lcom/android/settings/deviceinfo/Memory;->getUsbState(Landroid/content/Context;)Z
    invoke-static {v5, p1}, Lcom/android/settings/deviceinfo/Memory;->access$400(Lcom/android/settings/deviceinfo/Memory;Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/android/settings/deviceinfo/Memory;->mIsUsbConnected:Z

    .line 427
    const-string v4, "MemorySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIsUsbConnected = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/deviceinfo/Memory$4;->this$0:Lcom/android/settings/deviceinfo/Memory;

    iget-boolean v6, v6, Lcom/android/settings/deviceinfo/Memory;->mIsUsbConnected:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Memory$4;->this$0:Lcom/android/settings/deviceinfo/Memory;

    invoke-virtual {v4}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 430
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Memory$4;->this$0:Lcom/android/settings/deviceinfo/Memory;

    # getter for: Lcom/android/settings/deviceinfo/Memory;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v4}, Lcom/android/settings/deviceinfo/Memory;->access$500(Lcom/android/settings/deviceinfo/Memory;)Landroid/hardware/usb/UsbManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v3

    .line 431
    .local v3, "usbFunction":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Memory$4;->this$0:Lcom/android/settings/deviceinfo/Memory;

    # getter for: Lcom/android/settings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/settings/deviceinfo/Memory;->access$300(Lcom/android/settings/deviceinfo/Memory;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    .line 432
    .local v1, "category":Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Memory$4;->this$0:Lcom/android/settings/deviceinfo/Memory;

    iget-boolean v4, v4, Lcom/android/settings/deviceinfo/Memory;->mIsUsbConnected:Z

    invoke-virtual {v1, v4, v3}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->onUsbStateChanged(ZLjava/lang/String;)V

    goto :goto_0

    .line 435
    .end local v1    # "category":Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    :cond_0
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isMtkPlatform()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 436
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Memory$4;->this$0:Lcom/android/settings/deviceinfo/Memory;

    invoke-virtual {v4}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 448
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "usbFunction":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 439
    :cond_2
    const-string v4, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 440
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Memory$4;->this$0:Lcom/android/settings/deviceinfo/Memory;

    # getter for: Lcom/android/settings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/settings/deviceinfo/Memory;->access$300(Lcom/android/settings/deviceinfo/Memory;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    .line 441
    .restart local v1    # "category":Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->onMediaScannerFinished()V

    goto :goto_2

    .line 444
    .end local v1    # "category":Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isMtkPlatform()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 445
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Memory$4;->this$0:Lcom/android/settings/deviceinfo/Memory;

    invoke-virtual {v4}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_1
.end method
