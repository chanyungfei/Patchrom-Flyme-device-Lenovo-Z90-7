.class Lcom/android/settings/deviceinfo/UsbSettings$5;
.super Ljava/lang/Object;
.source "UsbSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/UsbSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/UsbSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/UsbSettings;)V
    .locals 0

    .prologue
    .line 657
    iput-object p1, p0, Lcom/android/settings/deviceinfo/UsbSettings$5;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 659
    const-string v0, "UsbSettings"

    const-string v1, "[rick debug] mClickListener onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 675
    :goto_0
    return-void

    .line 665
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$5;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    # getter for: Lcom/android/settings/deviceinfo/UsbSettings;->mAdbPreference:Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;
    invoke-static {v0}, Lcom/android/settings/deviceinfo/UsbSettings;->access$1200(Lcom/android/settings/deviceinfo/UsbSettings;)Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 666
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$5;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    # setter for: Lcom/android/settings/deviceinfo/UsbSettings;->mOkClicked:Z
    invoke-static {v0, v2}, Lcom/android/settings/deviceinfo/UsbSettings;->access$1302(Lcom/android/settings/deviceinfo/UsbSettings;Z)Z

    .line 667
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$5;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    # getter for: Lcom/android/settings/deviceinfo/UsbSettings;->mOkDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/settings/deviceinfo/UsbSettings;->access$1400(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 668
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$5;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    # invokes: Lcom/android/settings/deviceinfo/UsbSettings;->dismissDialog()V
    invoke-static {v0}, Lcom/android/settings/deviceinfo/UsbSettings;->access$1500(Lcom/android/settings/deviceinfo/UsbSettings;)V

    .line 670
    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$5;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    # invokes: Lcom/android/settings/deviceinfo/UsbSettings;->showAdbDialog()V
    invoke-static {v0}, Lcom/android/settings/deviceinfo/UsbSettings;->access$1600(Lcom/android/settings/deviceinfo/UsbSettings;)V

    goto :goto_0

    .line 672
    :cond_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$5;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
