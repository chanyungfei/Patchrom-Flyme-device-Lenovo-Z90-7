.class Lcom/android/settings_ex/RestrictedSettingsFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "RestrictedSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/RestrictedSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/RestrictedSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/RestrictedSettingsFragment;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/settings_ex/RestrictedSettingsFragment$1;->this$0:Lcom/android/settings_ex/RestrictedSettingsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings_ex/RestrictedSettingsFragment$1;->this$0:Lcom/android/settings_ex/RestrictedSettingsFragment;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings_ex/RestrictedSettingsFragment;->mChallengeSucceeded:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->access$002(Lcom/android/settings_ex/RestrictedSettingsFragment;Z)Z

    .line 71
    iget-object v0, p0, Lcom/android/settings_ex/RestrictedSettingsFragment$1;->this$0:Lcom/android/settings_ex/RestrictedSettingsFragment;

    iget-object v1, p0, Lcom/android/settings_ex/RestrictedSettingsFragment$1;->this$0:Lcom/android/settings_ex/RestrictedSettingsFragment;

    # getter for: Lcom/android/settings_ex/RestrictedSettingsFragment;->mRestrictionKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->access$100(Lcom/android/settings_ex/RestrictedSettingsFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->shouldBePinProtected(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/settings_ex/RestrictedSettingsFragment$1;->this$0:Lcom/android/settings_ex/RestrictedSettingsFragment;

    const/4 v1, 0x0

    # invokes: Lcom/android/settings_ex/RestrictedSettingsFragment;->ensurePin(Landroid/preference/Preference;)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->access$200(Lcom/android/settings_ex/RestrictedSettingsFragment;Landroid/preference/Preference;)V

    .line 74
    :cond_0
    return-void
.end method
