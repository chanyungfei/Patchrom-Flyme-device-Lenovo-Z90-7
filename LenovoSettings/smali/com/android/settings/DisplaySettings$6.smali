.class Lcom/android/settings_ex/DisplaySettings$6;
.super Landroid/database/ContentObserver;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DisplaySettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 569
    iput-object p1, p0, Lcom/android/settings_ex/DisplaySettings$6;->this$0:Lcom/android/settings_ex/DisplaySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 572
    const-string v2, "DisplaySettings"

    const-string v3, "mNightModeObserver omChanged"

    invoke-static {v2, v3}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    iget-object v2, p0, Lcom/android/settings_ex/DisplaySettings$6;->this$0:Lcom/android/settings_ex/DisplaySettings;

    invoke-virtual {v2}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sys.night_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 576
    .local v0, "ischecked":Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$6;->this$0:Lcom/android/settings_ex/DisplaySettings;

    # getter for: Lcom/android/settings_ex/DisplaySettings;->mNight:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings_ex/DisplaySettings;->access$600(Lcom/android/settings_ex/DisplaySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 577
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$6;->this$0:Lcom/android/settings_ex/DisplaySettings;

    # getter for: Lcom/android/settings_ex/DisplaySettings;->mNight:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings_ex/DisplaySettings;->access$600(Lcom/android/settings_ex/DisplaySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 579
    :cond_0
    return-void

    .end local v0    # "ischecked":Z
    :cond_1
    move v0, v1

    .line 574
    goto :goto_0
.end method
