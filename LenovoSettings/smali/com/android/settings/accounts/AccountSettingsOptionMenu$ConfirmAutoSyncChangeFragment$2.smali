.class Lcom/android/settings_ex/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment$2;
.super Ljava/lang/Object;
.source "AccountSettingsOptionMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;)V
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lcom/android/settings_ex/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment$2;->this$0:Lcom/android/settings_ex/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment$2;->this$0:Lcom/android/settings_ex/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;

    # getter for: Lcom/android/settings_ex/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->mpre:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings_ex/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->access$700(Lcom/android/settings_ex/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings_ex/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment$2;->this$0:Lcom/android/settings_ex/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;

    # getter for: Lcom/android/settings_ex/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->mUserHandle:Landroid/os/UserHandle;
    invoke-static {v1}, Lcom/android/settings_ex/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;->access$600(Lcom/android/settings_ex/accounts/AccountSettingsOptionMenu$ConfirmAutoSyncChangeFragment;)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v1}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 373
    return-void
.end method
