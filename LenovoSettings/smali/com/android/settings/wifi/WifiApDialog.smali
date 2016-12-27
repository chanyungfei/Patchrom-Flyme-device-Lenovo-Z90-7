.class public Lcom/android/settings_ex/wifi/WifiApDialog;
.super Landroid/app/AlertDialog;
.source "WifiApDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field static final BUTTON_SUBMIT:I = -0x1

.field public static final OPEN_INDEX:I = 0x0

.field public static final WPA2_INDEX:I = 0x1


# instance fields
.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mPassword:Landroid/widget/EditText;

.field private mSecurityTypeIndex:I

.field private mSsid:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field mWifiConfig:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 64
    iput-object p2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 65
    iput-object p3, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 66
    if-eqz p3, :cond_0

    .line 67
    invoke-static {p3}, Lcom/android/settings_ex/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 69
    :cond_0
    return-void
.end method

.method public static getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I
    .locals 5
    .param p0, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v3, 0x1

    .line 72
    const/4 v2, 0x0

    .line 74
    .local v2, "securityIndex":I
    :try_start_0
    const-string v4, "android.net.wifi.WifiConfiguration$KeyMgmt"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 75
    .local v0, "clazz":Ljava/lang/Class;
    const-string v4, "WPA2_PSK"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 76
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 77
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 79
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :goto_0
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 82
    :goto_1
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 78
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private showSecurityFields()V
    .locals 2

    .prologue
    const v1, 0x7f0b01b6

    .line 199
    iget v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 204
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private validate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 161
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_2

    .line 164
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/wifi/WifiApDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 168
    :goto_0
    return-void

    .line 166
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/wifi/WifiApDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiApDialog;->validate()V

    .line 185
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 181
    return-void
.end method

.method public getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 87
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 95
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 97
    iget v6, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSecurityTypeIndex:I

    packed-switch v6, :pswitch_data_0

    move-object v1, v5

    .line 118
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    :goto_0
    return-object v1

    .line 99
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    :pswitch_0
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v7}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 103
    :pswitch_1
    const/4 v4, 0x0

    .line 105
    .local v4, "securityIndex":I
    :try_start_0
    const-string v5, "android.net.wifi.WifiConfiguration$KeyMgmt"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 106
    .local v0, "clazz":Ljava/lang/Class;
    const-string v5, "WPA2_PSK"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 107
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 108
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 110
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :goto_1
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v4}, Ljava/util/BitSet;->set(I)V

    .line 111
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v5, v7}, Ljava/util/BitSet;->set(I)V

    .line 112
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 113
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 114
    .local v3, "password":Ljava/lang/String;
    iput-object v3, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 109
    .end local v3    # "password":Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_1

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 171
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    check-cast p1, Landroid/widget/CheckBox;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x90

    :goto_0
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 175
    return-void

    .line 171
    :cond_0
    const/16 v0, 0x80

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 124
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiApDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400c4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    .line 125
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b01b5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 127
    .local v1, "mSecurity":Landroid/widget/Spinner;
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/wifi/WifiApDialog;->setView(Landroid/view/View;)V

    .line 128
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/wifi/WifiApDialog;->setInverseBackgroundForced(Z)V

    .line 130
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 132
    .local v0, "context":Landroid/content/Context;
    const v2, 0x7f0c01fd

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/wifi/WifiApDialog;->setTitle(I)V

    .line 133
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b0186

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 134
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b01b4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    .line 135
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b019a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    .line 137
    const/4 v2, -0x1

    const v3, 0x7f0c0652

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/settings_ex/wifi/WifiApDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 138
    const/4 v2, -0x2

    const v3, 0x7f0c0654

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/settings_ex/wifi/WifiApDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 141
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v2, :cond_0

    .line 142
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSecurityTypeIndex:I

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 144
    iget v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-ne v2, v5, :cond_0

    .line 145
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 149
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 150
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 151
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b01b7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    invoke-virtual {v1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 154
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 156
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiApDialog;->showSecurityFields()V

    .line 157
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiApDialog;->validate()V

    .line 158
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 189
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iput p3, p0, Lcom/android/settings_ex/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 190
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiApDialog;->showSecurityFields()V

    .line 191
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiApDialog;->validate()V

    .line 192
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 178
    return-void
.end method
