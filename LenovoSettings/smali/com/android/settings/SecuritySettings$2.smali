.class Lcom/android/settings_ex/SecuritySettings$2;
.super Landroid/content/BroadcastReceiver;
.source "SecuritySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/SecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/SecuritySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/SecuritySettings;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/settings_ex/SecuritySettings$2;->this$0:Lcom/android/settings_ex/SecuritySettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 211
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "action":Ljava/lang/String;
    const-string v3, "SecuritySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "receive action="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v3, p0, Lcom/android/settings_ex/SecuritySettings$2;->this$0:Lcom/android/settings_ex/SecuritySettings;

    invoke-virtual {v3}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/TelephonyPlugin;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getConstantStringACTION_SIM_INFO_UPDATE()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 216
    iget-object v3, p0, Lcom/android/settings_ex/SecuritySettings$2;->this$0:Lcom/android/settings_ex/SecuritySettings;

    # invokes: Lcom/android/settings_ex/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    invoke-static {v3}, Lcom/android/settings_ex/SecuritySettings;->access$100(Lcom/android/settings_ex/SecuritySettings;)Landroid/preference/PreferenceScreen;

    .line 217
    iget-object v3, p0, Lcom/android/settings_ex/SecuritySettings$2;->this$0:Lcom/android/settings_ex/SecuritySettings;

    # getter for: Lcom/android/settings_ex/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;
    invoke-static {v3}, Lcom/android/settings_ex/SecuritySettings;->access$200(Lcom/android/settings_ex/SecuritySettings;)Lcom/android/settings_ex/ChooseLockSettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    .line 218
    .local v1, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    iget-object v3, p0, Lcom/android/settings_ex/SecuritySettings$2;->this$0:Lcom/android/settings_ex/SecuritySettings;

    # getter for: Lcom/android/settings_ex/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/settings_ex/SecuritySettings;->access$300(Lcom/android/settings_ex/SecuritySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 219
    iget-object v3, p0, Lcom/android/settings_ex/SecuritySettings$2;->this$0:Lcom/android/settings_ex/SecuritySettings;

    # getter for: Lcom/android/settings_ex/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/settings_ex/SecuritySettings;->access$300(Lcom/android/settings_ex/SecuritySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakLivelinessEnabled()Z

    move-result v6

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 222
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/SecuritySettings$2;->this$0:Lcom/android/settings_ex/SecuritySettings;

    # getter for: Lcom/android/settings_ex/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/settings_ex/SecuritySettings;->access$400(Lcom/android/settings_ex/SecuritySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 223
    iget-object v3, p0, Lcom/android/settings_ex/SecuritySettings$2;->this$0:Lcom/android/settings_ex/SecuritySettings;

    # getter for: Lcom/android/settings_ex/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/settings_ex/SecuritySettings;->access$400(Lcom/android/settings_ex/SecuritySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v6

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 225
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/SecuritySettings$2;->this$0:Lcom/android/settings_ex/SecuritySettings;

    # getter for: Lcom/android/settings_ex/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/settings_ex/SecuritySettings;->access$500(Lcom/android/settings_ex/SecuritySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 226
    iget-object v3, p0, Lcom/android/settings_ex/SecuritySettings$2;->this$0:Lcom/android/settings_ex/SecuritySettings;

    # getter for: Lcom/android/settings_ex/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/settings_ex/SecuritySettings;->access$500(Lcom/android/settings_ex/SecuritySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks()Z

    move-result v6

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 229
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/SecuritySettings$2;->this$0:Lcom/android/settings_ex/SecuritySettings;

    # getter for: Lcom/android/settings_ex/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/settings_ex/SecuritySettings;->access$600(Lcom/android/settings_ex/SecuritySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 230
    iget-object v3, p0, Lcom/android/settings_ex/SecuritySettings$2;->this$0:Lcom/android/settings_ex/SecuritySettings;

    # getter for: Lcom/android/settings_ex/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/settings_ex/SecuritySettings;->access$600(Lcom/android/settings_ex/SecuritySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v6

    iget-object v3, p0, Lcom/android/settings_ex/SecuritySettings$2;->this$0:Lcom/android/settings_ex/SecuritySettings;

    invoke-virtual {v3}, Lcom/android/settings_ex/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "show_password"

    invoke-static {v3, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_5

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 234
    :cond_3
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v3

    invoke-virtual {v3}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v2

    .line 235
    .local v2, "state":Landroid/security/KeyStore$State;
    const-string v3, "SecuritySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KeyStore.State on receiver:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/lenovo/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v3, p0, Lcom/android/settings_ex/SecuritySettings$2;->this$0:Lcom/android/settings_ex/SecuritySettings;

    # getter for: Lcom/android/settings_ex/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;
    invoke-static {v3}, Lcom/android/settings_ex/SecuritySettings;->access$700(Lcom/android/settings_ex/SecuritySettings;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 237
    iget-object v3, p0, Lcom/android/settings_ex/SecuritySettings$2;->this$0:Lcom/android/settings_ex/SecuritySettings;

    # getter for: Lcom/android/settings_ex/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;
    invoke-static {v3}, Lcom/android/settings_ex/SecuritySettings;->access$700(Lcom/android/settings_ex/SecuritySettings;)Landroid/preference/Preference;

    move-result-object v3

    sget-object v6, Landroid/security/KeyStore$State;->UNINITIALIZED:Landroid/security/KeyStore$State;

    if-eq v2, v6, :cond_6

    :goto_1
    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 240
    .end local v1    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .end local v2    # "state":Landroid/security/KeyStore$State;
    :cond_4
    return-void

    .restart local v1    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_5
    move v3, v5

    .line 230
    goto :goto_0

    .restart local v2    # "state":Landroid/security/KeyStore$State;
    :cond_6
    move v4, v5

    .line 237
    goto :goto_1
.end method
