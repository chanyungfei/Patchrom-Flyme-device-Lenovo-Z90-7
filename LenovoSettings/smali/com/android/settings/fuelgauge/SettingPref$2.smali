.class Lcom/android/settings_ex/fuelgauge/SettingPref$2;
.super Ljava/lang/Object;
.source "SettingPref.java"

# interfaces
.implements Lcom/android/settings_ex/fuelgauge/DropDownPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/fuelgauge/SettingPref;->init(Lcom/android/settings_ex/SettingsPreferenceFragment;)Landroid/preference/Preference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/fuelgauge/SettingPref;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/fuelgauge/SettingPref;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/settings_ex/fuelgauge/SettingPref$2;->this$0:Lcom/android/settings_ex/fuelgauge/SettingPref;

    iput-object p2, p0, Lcom/android/settings_ex/fuelgauge/SettingPref$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(ILjava/lang/Object;)Z
    .locals 3
    .param p1, "pos"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/SettingPref$2;->this$0:Lcom/android/settings_ex/fuelgauge/SettingPref;

    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/SettingPref$2;->val$context:Landroid/content/Context;

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/fuelgauge/SettingPref;->setSetting(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method
