.class Lcom/android/settings_ex/wfd/WifiDisplaySettings$3;
.super Landroid/preference/CheckBoxPreference;
.source "WifiDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wfd/WifiDisplaySettings;->buildCertificationMenu(Landroid/preference/PreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wfd/WifiDisplaySettings;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 536
    iput-object p1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$3;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    invoke-direct {p0, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 2

    .prologue
    .line 539
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$3;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$3;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    # getter for: Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mAutoGO:Z
    invoke-static {v0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->access$300(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # setter for: Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mAutoGO:Z
    invoke-static {v1, v0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->access$302(Lcom/android/settings_ex/wfd/WifiDisplaySettings;Z)Z

    .line 540
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$3;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    # getter for: Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mAutoGO:Z
    invoke-static {v0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->access$300(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 541
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$3;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    # invokes: Lcom/android/settings_ex/wfd/WifiDisplaySettings;->startAutoGO()V
    invoke-static {v0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->access$400(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)V

    .line 545
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$3;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    # getter for: Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mAutoGO:Z
    invoke-static {v0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->access$300(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings$3;->setChecked(Z)V

    .line 546
    return-void

    .line 539
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 543
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$3;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    # invokes: Lcom/android/settings_ex/wfd/WifiDisplaySettings;->stopAutoGO()V
    invoke-static {v0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->access$500(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)V

    goto :goto_1
.end method
