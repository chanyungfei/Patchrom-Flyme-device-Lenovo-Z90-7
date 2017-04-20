.class public Lcom/android/server/connectivity/NetworkAutoAuthentication;
.super Ljava/lang/Object;
.source "NetworkAutoAuthentication.java"


# static fields
.field private static final ACCEPT_CHARSET_HEADER_DEFAULT_VALUE:Ljava/lang/String; = "utf-8, utf-16, *;q=0.7"

.field private static final ACCEPT_ENCODING_HEADER_DEFAULT_VALUE:Ljava/lang/String; = "gzip,deflate"

.field private static final ACCEPT_HEADER_DEFAULT_VALUE:Ljava/lang/String; = "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"

.field private static final ACCEPT_LANGUAGE_HEADER_DEFAULT_VALUE:Ljava/lang/String; = "zh-CN, en-US"

.field private static final CONNECTION_HEADER_DEFAULT_VALUE:Ljava/lang/String; = "keep-alive"

.field private static final FILE_WIFI_SUPPLICANT:Ljava/lang/String; = "/data/misc/wifi/wpa_supplicant.conf"

.field private static final HTTP_CONNECTION_TIMEOUT_DEFAULT_VALUE:I = 0x1388

.field private static final HTTP_HEADER_NAME_ACCEPT:Ljava/lang/String; = "Accept"

.field private static final HTTP_HEADER_NAME_ACCEPT_CHARSET:Ljava/lang/String; = "Accept-Charset"

.field private static final HTTP_HEADER_NAME_ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field private static final HTTP_HEADER_NAME_ACCEPT_LANGUAGE:Ljava/lang/String; = "Accept-Language"

.field private static final HTTP_HEADER_NAME_CONNECTION:Ljava/lang/String; = "Connection"

.field private static final HTTP_HEADER_NAME_USER_AGENT:Ljava/lang/String; = "User-Agent"

.field private static final HTTP_HEADER_NAME_X_REQUESTED_WITH:Ljava/lang/String; = "X-Requested-with"

.field private static final HTTP_HEADER_NAME_X_WAP_PROFILE:Ljava/lang/String; = "x-wap-profile"

.field private static final HTTP_SOCKET_CONNECTION_TIMEOUT_DEFAULT_VALUE:I = 0x1388

.field private static final LENOVO_AUTO_AUTHORIZE_SUPPORT:Z = true

.field private static final LENOVO_CHECK_INVALID_WLAN_SUPPORT:Z = true

.field private static final LENOVO_POPUP_DIALOG_SUPPORT:Z = false

.field private static final TAG:Ljava/lang/String; = "NetworkAutoAuthentication"

.field private static final USER_AGENT_HEADER_DEFAULT_VALUE:Ljava/lang/String; = "Lenovo-S960/S104 Linux/3.0.13 Android/4.2 Release/07.05.2013 Browser/AppleWebKit534.30 Profile/ configuration"

.field private static final X_REQUESTED_WITH_HEADER_DEFAULT_VALUE:Ljava/lang/String; = "com.lenovo.browser"

.field private static final X_WAP_PROFILE_HEADER_DEFAULT_VALUE:Ljava/lang/String; = "http://218.249.47.94/xianghe/MTK_Phone_JB_UAprofile.xml"

.field private static mServer:Ljava/lang/String;


# instance fields
.field private DBG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "captive.apple.com"

    sput-object v0, Lcom/android/server/connectivity/NetworkAutoAuthentication;->mServer:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/connectivity/NetworkAutoAuthentication;->DBG:Z

    return-void
.end method

.method private static addDefaultHeader(Lorg/apache/http/client/methods/HttpGet;)V
    .locals 2
    .param p0, "getMethod"    # Lorg/apache/http/client/methods/HttpGet;

    .prologue
    .line 92
    if-nez p0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 95
    :cond_0
    const-string v0, "Connection"

    const-string v1, "keep-alive"

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v0, "Accept"

    const-string v1, "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v0, "x-wap-profile"

    const-string v1, "http://218.249.47.94/xianghe/MTK_Phone_JB_UAprofile.xml"

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v0, "User-Agent"

    const-string v1, "Lenovo-S960/S104 Linux/3.0.13 Android/4.2 Release/07.05.2013 Browser/AppleWebKit534.30 Profile/ configuration"

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v0, "Accept-Encoding"

    const-string v1, "gzip,deflate"

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v0, "Accept-Language"

    const-string v1, "zh-CN, en-US"

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v0, "Accept-Charset"

    const-string v1, "utf-8, utf-16, *;q=0.7"

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v0, "X-Requested-with"

    const-string v1, "com.lenovo.browser"

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static autoAutheticate(Landroid/content/Context;Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "networkAgentInfo"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    .line 373
    invoke-static {}, Lcom/android/server/connectivity/NetworkAutoAuthentication;->getCaptivePortalUrl()Ljava/lang/String;

    move-result-object v1

    .line 374
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autoAuthorize Redirect to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/connectivity/NetworkAutoAuthentication;->log(Ljava/lang/String;)V

    .line 376
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/server/connectivity/NetworkAutoAuthentication;->isNeedAuthenticate(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 378
    invoke-static {p0, v1}, Lcom/android/server/connectivity/NetworkAutoAuthentication;->doAutheticate(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 382
    .local v0, "result":Z
    :goto_0
    return v0

    .line 380
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "result":Z
    goto :goto_0
.end method

.method public static doAutheticate(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 316
    const/4 v6, 0x0

    .line 317
    .local v6, "response":Lorg/apache/http/HttpResponse;
    const/4 v2, 0x0

    .line 318
    .local v2, "getMethod":Lorg/apache/http/client/methods/HttpGet;
    const/4 v7, 0x0

    .line 320
    .local v7, "result":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 322
    .local v8, "statusCode":I
    const-string v11, "autoAuthorize, step 3 "

    invoke-static {v11}, Lcom/android/server/connectivity/NetworkAutoAuthentication;->log(Ljava/lang/String;)V

    .line 323
    const-string v11, "wifi"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiManager;

    .line 324
    .local v10, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v10, :cond_0

    .line 325
    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v9

    .line 326
    .local v9, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v9, :cond_0

    .line 327
    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/connectivity/NetworkAutoAuthentication;->getUserNameAndPasswordForAP(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 331
    .end local v9    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_0
    const-string v11, "autoAuthorize, step 4 "

    invoke-static {v11}, Lcom/android/server/connectivity/NetworkAutoAuthentication;->log(Ljava/lang/String;)V

    .line 332
    if-eqz v7, :cond_4

    .line 333
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Username: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v12, v7, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", Password: *"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/connectivity/NetworkAutoAuthentication;->log(Ljava/lang/String;)V

    .line 335
    :try_start_0
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 336
    .local v4, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v5

    .line 337
    .local v5, "params":Lorg/apache/http/params/HttpParams;
    if-eqz v5, :cond_1

    .line 338
    const-string v11, "http.protocol.handle-redirects"

    const/4 v12, 0x0

    invoke-interface {v5, v11, v12}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 339
    const-string v11, "http.socket.timeout"

    const/16 v12, 0x1388

    invoke-interface {v5, v11, v12}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 341
    const-string v11, "http.connection.timeout"

    const/16 v12, 0x1388

    invoke-interface {v5, v11, v12}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 344
    :cond_1
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 345
    .end local v2    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .local v3, "getMethod":Lorg/apache/http/client/methods/HttpGet;
    :try_start_1
    new-instance v0, Lorg/apache/http/auth/NTCredentials;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x0

    aget-object v12, v7, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x1

    aget-object v12, v7, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lorg/apache/http/auth/NTCredentials;-><init>(Ljava/lang/String;)V

    .line 346
    .local v0, "creds":Lorg/apache/http/auth/NTCredentials;
    invoke-virtual {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v11

    sget-object v12, Lorg/apache/http/auth/AuthScope;->ANY:Lorg/apache/http/auth/AuthScope;

    invoke-interface {v11, v12, v0}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    .line 347
    invoke-virtual {v4, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 348
    if-eqz v6, :cond_3

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 349
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    .line 350
    const/16 v11, 0x191

    if-ne v8, v11, :cond_2

    .line 351
    const/4 v11, 0x0

    move-object v2, v3

    .line 365
    .end local v0    # "creds":Lorg/apache/http/auth/NTCredentials;
    .end local v3    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .end local v4    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v5    # "params":Lorg/apache/http/params/HttpParams;
    .restart local v2    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    :goto_0
    return v11

    .line 353
    .end local v2    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .restart local v0    # "creds":Lorg/apache/http/auth/NTCredentials;
    .restart local v3    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .restart local v4    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v5    # "params":Lorg/apache/http/params/HttpParams;
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Authorization is SUCCESS, ResponseCode: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/connectivity/NetworkAutoAuthentication;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 354
    const/4 v11, 0x1

    move-object v2, v3

    .end local v3    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .restart local v2    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    goto :goto_0

    .end local v2    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .restart local v3    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    :cond_3
    move-object v2, v3

    .line 365
    .end local v0    # "creds":Lorg/apache/http/auth/NTCredentials;
    .end local v3    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .end local v4    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v5    # "params":Lorg/apache/http/params/HttpParams;
    .restart local v2    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    :cond_4
    :goto_1
    const/4 v11, 0x0

    goto :goto_0

    .line 356
    :catch_0
    move-exception v1

    .line 357
    .local v1, "e":Lorg/apache/http/client/ClientProtocolException;
    :goto_2
    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_1

    .line 358
    .end local v1    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v1

    .line 359
    .local v1, "e":Ljava/io/IOException;
    :goto_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 360
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 361
    .local v1, "e":Ljava/lang/Exception;
    :goto_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 360
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .restart local v3    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .restart local v4    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v5    # "params":Lorg/apache/http/params/HttpParams;
    :catch_3
    move-exception v1

    move-object v2, v3

    .end local v3    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .restart local v2    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    goto :goto_4

    .line 358
    .end local v2    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .restart local v3    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .restart local v2    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    goto :goto_3

    .line 356
    .end local v2    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .restart local v3    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    :catch_5
    move-exception v1

    move-object v2, v3

    .end local v3    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .restart local v2    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    goto :goto_2
.end method

.method public static getCaptivePortalUrl()Ljava/lang/String;
    .locals 14

    .prologue
    .line 204
    const/4 v7, 0x0

    .line 205
    .local v7, "response":Lorg/apache/http/HttpResponse;
    const/4 v1, 0x0

    .line 207
    .local v1, "getMethod":Lorg/apache/http/client/methods/HttpGet;
    const/4 v9, 0x0

    .line 208
    .local v9, "statusCode":I
    const/4 v6, 0x0

    .line 209
    .local v6, "redirect_count":I
    const/4 v10, 0x1

    .line 211
    .local v10, "step":I
    const/4 v8, 0x0

    .line 212
    .local v8, "responseString":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "http://"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/android/server/connectivity/NetworkAutoAuthentication;->mServer:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 214
    .local v11, "uriString":Ljava/lang/String;
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 215
    .local v3, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v5

    .line 216
    .local v5, "params":Lorg/apache/http/params/HttpParams;
    if-eqz v5, :cond_0

    .line 217
    const-string v12, "http.protocol.handle-redirects"

    const/4 v13, 0x0

    invoke-interface {v5, v12, v13}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 218
    const-string v12, "http.socket.timeout"

    const/16 v13, 0x1388

    invoke-interface {v5, v12, v13}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 220
    const-string v12, "http.connection.timeout"

    const/16 v13, 0x1388

    invoke-interface {v5, v12, v13}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 225
    :cond_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "autoAuthorize, step 1, uri: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/connectivity/NetworkAutoAuthentication;->log(Ljava/lang/String;)V

    .line 227
    :try_start_0
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v11}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 228
    .end local v1    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .local v2, "getMethod":Lorg/apache/http/client/methods/HttpGet;
    :try_start_1
    invoke-static {v2}, Lcom/android/server/connectivity/NetworkAutoAuthentication;->addDefaultHeader(Lorg/apache/http/client/methods/HttpGet;)V

    .line 229
    invoke-virtual {v3, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v7

    move-object v1, v2

    .line 238
    .end local v2    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .restart local v1    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    :goto_0
    if-eqz v7, :cond_3

    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v12

    if-eqz v12, :cond_3

    .line 239
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    .line 240
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "autoAuthorize responseCode: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/connectivity/NetworkAutoAuthentication;->log(Ljava/lang/String;)V

    .line 241
    const/16 v12, 0x12d

    if-eq v9, v12, :cond_1

    const/16 v12, 0x12e

    if-ne v9, v12, :cond_3

    .line 243
    :cond_1
    const-string v12, "location"

    invoke-interface {v7, v12}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    .line 244
    .local v4, "locationHeader":Lorg/apache/http/Header;
    if-eqz v4, :cond_2

    .line 245
    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    .line 247
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 251
    .end local v4    # "locationHeader":Lorg/apache/http/Header;
    :cond_3
    const/16 v12, 0x12d

    if-eq v9, v12, :cond_4

    const/16 v12, 0x12e

    if-ne v9, v12, :cond_5

    :cond_4
    const/4 v12, 0x3

    if-le v6, v12, :cond_0

    .line 253
    :cond_5
    const/4 v12, 0x3

    if-le v6, v12, :cond_7

    const/16 v12, 0x12d

    if-eq v9, v12, :cond_6

    const/16 v12, 0x12e

    if-ne v9, v12, :cond_7

    .line 256
    :cond_6
    const-string v12, "Too Many Redirect"

    invoke-static {v12}, Lcom/android/server/connectivity/NetworkAutoAuthentication;->log(Ljava/lang/String;)V

    .line 257
    const/4 v11, 0x0

    .line 260
    .end local v11    # "uriString":Ljava/lang/String;
    :cond_7
    return-object v11

    .line 230
    .restart local v11    # "uriString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 232
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 233
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    :goto_2
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_0

    .line 234
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v0

    .line 235
    .local v0, "e":Ljava/io/IOException;
    :goto_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 234
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .restart local v2    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    :catch_3
    move-exception v0

    move-object v1, v2

    .end local v2    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .restart local v1    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    goto :goto_3

    .line 232
    .end local v1    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .restart local v2    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .restart local v1    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    goto :goto_2

    .line 230
    .end local v1    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .restart local v2    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    :catch_5
    move-exception v0

    move-object v1, v2

    .end local v2    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .restart local v1    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    goto :goto_1
.end method

.method private static getUserNameAndPasswordForAP(Ljava/lang/String;)[Ljava/lang/String;
    .locals 19
    .param p0, "ssid"    # Ljava/lang/String;

    .prologue
    .line 107
    const/4 v8, 0x0

    .line 108
    .local v8, "networkInfoMask":Z
    const/16 v16, 0x0

    .local v16, "userName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 111
    .local v9, "passWord":Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "preSharedKey":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "identity":Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "password":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "SSID":Ljava/lang/String;
    const/4 v2, 0x0

    .line 113
    .local v2, "BSSID":Ljava/lang/String;
    if-nez p0, :cond_1

    .line 114
    const/4 v14, 0x0

    .line 199
    :cond_0
    :goto_0
    return-object v14

    .line 117
    :cond_1
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "getUserNameAndPasswordForAP, ssid: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/server/connectivity/NetworkAutoAuthentication;->log(Ljava/lang/String;)V

    .line 119
    const/4 v12, 0x0

    .line 121
    .local v12, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v5, Ljava/io/File;

    const-string v17, "/data/misc/wifi/wpa_supplicant.conf"

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_2

    .line 124
    const-string v17, "[ Auto Authorize ] :: getUserNameAndPasswordForAP, Supplicant file NOT Exist"

    invoke-static/range {v17 .. v17}, Lcom/android/server/connectivity/NetworkAutoAuthentication;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    const/4 v14, 0x0

    .line 180
    if-eqz v12, :cond_0

    .line 182
    :try_start_1
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 183
    :catch_0
    move-exception v4

    .line 184
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 185
    .end local v4    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 186
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 127
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_2
    new-instance v13, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/FileReader;

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    .end local v12    # "reader":Ljava/io/BufferedReader;
    .local v13, "reader":Ljava/io/BufferedReader;
    :cond_3
    :goto_1
    :try_start_3
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, "line":Ljava/lang/String;
    if-eqz v7, :cond_6

    .line 129
    const/4 v15, 0x0

    .line 131
    .local v15, "start":I
    const-string v17, "network={"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 132
    const/4 v8, 0x1

    .line 133
    const/4 v3, 0x0

    .line 134
    const/4 v2, 0x0

    .line 135
    const/4 v6, 0x0

    .line 136
    const/4 v10, 0x0

    .line 137
    const/4 v11, 0x0

    .line 155
    :cond_4
    if-eqz v8, :cond_3

    .line 156
    const-string v17, "bssid="

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    if-lez v17, :cond_a

    .line 157
    const-string v17, "bssid="

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    const-string v18, "bssid="

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int v15, v17, v18

    .line 158
    invoke-virtual {v7, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 138
    :cond_5
    const-string v17, "}"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 139
    const/4 v8, 0x0

    .line 140
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[Auto Authorize] :: getUserNameAndPasswordForAP, Read AP Info From Supplicant, ssid: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", BSSID: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", identity: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", password: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "*"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", psk: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "*"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/server/connectivity/NetworkAutoAuthentication;->log(Ljava/lang/String;)V

    .line 143
    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v17

    if-eqz v17, :cond_4

    .line 144
    if-eqz v6, :cond_9

    if-eqz v10, :cond_9

    .line 145
    move-object/from16 v16, v6

    .line 146
    move-object v9, v10

    .line 180
    .end local v15    # "start":I
    :cond_6
    :goto_2
    if-eqz v13, :cond_10

    .line 182
    :try_start_4
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-object v12, v13

    .line 191
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "line":Ljava/lang/String;
    .end local v13    # "reader":Ljava/io/BufferedReader;
    .restart local v12    # "reader":Ljava/io/BufferedReader;
    :cond_7
    :goto_3
    if-eqz v16, :cond_8

    if-nez v9, :cond_f

    .line 192
    :cond_8
    const-string v17, "[Auto Authorize] :: getUserNameAndPasswordForAP, Get UserName & Password Fail"

    invoke-static/range {v17 .. v17}, Lcom/android/server/connectivity/NetworkAutoAuthentication;->log(Ljava/lang/String;)V

    .line 193
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 147
    .end local v12    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v13    # "reader":Ljava/io/BufferedReader;
    .restart local v15    # "start":I
    :cond_9
    if-eqz v11, :cond_6

    .line 148
    :try_start_5
    const-string v16, ""

    .line 149
    move-object v9, v11

    goto :goto_2

    .line 159
    :cond_a
    const-string v17, "ssid="

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    if-lez v17, :cond_b

    .line 160
    const-string v17, "ssid="

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    const-string v18, "ssid="

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int v15, v17, v18

    .line 161
    invoke-virtual {v7, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 162
    :cond_b
    const-string v17, "identity="

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    if-lez v17, :cond_c

    .line 163
    const-string v17, "identity="

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    const-string v18, "identity="

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int v15, v17, v18

    .line 164
    add-int/lit8 v17, v15, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 165
    :cond_c
    const-string v17, "password="

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    if-lez v17, :cond_d

    .line 166
    const-string v17, "password="

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    const-string v18, "password="

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int v15, v17, v18

    .line 167
    add-int/lit8 v17, v15, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 168
    :cond_d
    const-string v17, "psk="

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    if-lez v17, :cond_3

    .line 169
    const-string v17, "psk="

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    const-string v18, "psk="

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int v15, v17, v18

    .line 170
    add-int/lit8 v17, v15, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_c
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v11

    goto/16 :goto_1

    .line 183
    .end local v15    # "start":I
    :catch_2
    move-exception v4

    .line 184
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    move-object v12, v13

    .line 187
    .end local v13    # "reader":Ljava/io/BufferedReader;
    .restart local v12    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_3

    .line 185
    .end local v4    # "e":Ljava/io/IOException;
    .end local v12    # "reader":Ljava/io/BufferedReader;
    .restart local v13    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v4

    .line 186
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    move-object v12, v13

    .line 187
    .end local v13    # "reader":Ljava/io/BufferedReader;
    .restart local v12    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_3

    .line 174
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "line":Ljava/lang/String;
    :catch_4
    move-exception v4

    .line 175
    .local v4, "e":Ljava/io/IOException;
    :goto_4
    :try_start_6
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 176
    const/4 v14, 0x0

    .line 180
    if-eqz v12, :cond_0

    .line 182
    :try_start_7
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_0

    .line 183
    :catch_5
    move-exception v4

    .line 184
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 185
    :catch_6
    move-exception v4

    .line 186
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 177
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v4

    .line 178
    .restart local v4    # "e":Ljava/lang/Exception;
    :goto_5
    :try_start_8
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 180
    if-eqz v12, :cond_7

    .line 182
    :try_start_9
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    goto/16 :goto_3

    .line 183
    :catch_8
    move-exception v4

    .line 184
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 185
    .local v4, "e":Ljava/lang/Exception;
    :catch_9
    move-exception v4

    .line 186
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 180
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v17

    :goto_6
    if-eqz v12, :cond_e

    .line 182
    :try_start_a
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_b

    .line 187
    :cond_e
    :goto_7
    throw v17

    .line 183
    :catch_a
    move-exception v4

    .line 184
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 185
    .end local v4    # "e":Ljava/io/IOException;
    :catch_b
    move-exception v4

    .line 186
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 195
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_f
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "getUserNameAndPasswordForAP, ssid: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", userName: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", passWord: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "*"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/server/connectivity/NetworkAutoAuthentication;->log(Ljava/lang/String;)V

    .line 197
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v14, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    aput-object v16, v14, v17

    const/16 v17, 0x1

    aput-object v9, v14, v17

    .line 199
    .local v14, "result":[Ljava/lang/String;
    goto/16 :goto_0

    .line 180
    .end local v12    # "reader":Ljava/io/BufferedReader;
    .end local v14    # "result":[Ljava/lang/String;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v13    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v17

    move-object v12, v13

    .end local v13    # "reader":Ljava/io/BufferedReader;
    .restart local v12    # "reader":Ljava/io/BufferedReader;
    goto :goto_6

    .line 177
    .end local v12    # "reader":Ljava/io/BufferedReader;
    .restart local v13    # "reader":Ljava/io/BufferedReader;
    :catch_c
    move-exception v4

    move-object v12, v13

    .end local v13    # "reader":Ljava/io/BufferedReader;
    .restart local v12    # "reader":Ljava/io/BufferedReader;
    goto :goto_5

    .line 174
    .end local v12    # "reader":Ljava/io/BufferedReader;
    .restart local v13    # "reader":Ljava/io/BufferedReader;
    :catch_d
    move-exception v4

    move-object v12, v13

    .end local v13    # "reader":Ljava/io/BufferedReader;
    .restart local v12    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_4

    .end local v12    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v13    # "reader":Ljava/io/BufferedReader;
    :cond_10
    move-object v12, v13

    .end local v13    # "reader":Ljava/io/BufferedReader;
    .restart local v12    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_3
.end method

.method public static isNeedAuthenticate(Ljava/lang/String;)Z
    .locals 11
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x1388

    const/4 v8, 0x0

    .line 265
    const/4 v6, 0x0

    .line 266
    .local v6, "response":Lorg/apache/http/HttpResponse;
    const/4 v2, 0x0

    .line 268
    .local v2, "getMethod":Lorg/apache/http/client/methods/HttpGet;
    const/4 v7, 0x0

    .line 270
    .local v7, "statusCode":I
    const-string v9, "autoAuthorize, step 2"

    invoke-static {v9}, Lcom/android/server/connectivity/NetworkAutoAuthentication;->log(Ljava/lang/String;)V

    .line 271
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 272
    .local v4, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v5

    .line 273
    .local v5, "params":Lorg/apache/http/params/HttpParams;
    if-eqz v5, :cond_0

    .line 274
    const-string v9, "http.protocol.handle-redirects"

    invoke-interface {v5, v9, v8}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 275
    const-string v9, "http.socket.timeout"

    invoke-interface {v5, v9, v10}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 277
    const-string v9, "http.connection.timeout"

    invoke-interface {v5, v9, v10}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 281
    :cond_0
    :try_start_0
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 282
    .end local v2    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .local v3, "getMethod":Lorg/apache/http/client/methods/HttpGet;
    :try_start_1
    invoke-static {v3}, Lcom/android/server/connectivity/NetworkAutoAuthentication;->addDefaultHeader(Lorg/apache/http/client/methods/HttpGet;)V

    .line 283
    invoke-virtual {v4, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v6

    move-object v2, v3

    .line 292
    .end local v3    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .restart local v2    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    :goto_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    if-nez v9, :cond_2

    .line 311
    :cond_1
    :goto_1
    return v8

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    :goto_2
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_0

    .line 286
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v0

    .line 287
    .local v0, "e":Ljava/io/IOException;
    :goto_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 288
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/Exception;
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 295
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    .line 296
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "autoAuthorize responseCode:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/connectivity/NetworkAutoAuthentication;->log(Ljava/lang/String;)V

    .line 297
    const/16 v9, 0x191

    if-eq v7, v9, :cond_4

    .line 298
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 300
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v1, :cond_3

    .line 301
    :try_start_2
    const-string v9, "utf-8"

    invoke-static {v1, v9}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/connectivity/NetworkAutoAuthentication;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 308
    :cond_3
    :goto_5
    const-string v9, "autoAuthorize, Authorization is NOT requested"

    invoke-static {v9}, Lcom/android/server/connectivity/NetworkAutoAuthentication;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 303
    :catch_3
    move-exception v0

    .line 304
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 305
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 306
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 311
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    :cond_4
    const/4 v8, 0x1

    goto :goto_1

    .line 288
    .end local v2    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .restart local v3    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    :catch_5
    move-exception v0

    move-object v2, v3

    .end local v3    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .restart local v2    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    goto :goto_4

    .line 286
    .end local v2    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .restart local v3    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    :catch_6
    move-exception v0

    move-object v2, v3

    .end local v3    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .restart local v2    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    goto :goto_3

    .line 284
    .end local v2    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .restart local v3    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .restart local v2    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    goto :goto_2
.end method

.method protected static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 42
    const-string v0, "NetworkAutoAuthentication"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return-void
.end method

.method private static lookupHost(Ljava/lang/String;Lcom/android/server/connectivity/NetworkAgentInfo;)Ljava/net/InetAddress;
    .locals 9
    .param p0, "hostname"    # Ljava/lang/String;
    .param p1, "networkAgentInfo"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    const/4 v6, 0x0

    .line 46
    const/4 v4, 0x0

    .line 48
    .local v4, "inetAddress":[Ljava/net/InetAddress;
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "lookupHost, hostName: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/connectivity/NetworkAutoAuthentication;->log(Ljava/lang/String;)V

    .line 49
    iget-object v7, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v7, v7, Landroid/net/Network;->netId:I

    invoke-static {p0, v7}, Ljava/net/InetAddress;->getAllByNameOnNet(Ljava/lang/String;I)[Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 57
    :goto_0
    const-string v7, "lookupHost success"

    invoke-static {v7}, Lcom/android/server/connectivity/NetworkAutoAuthentication;->log(Ljava/lang/String;)V

    .line 58
    move-object v1, v4

    .local v1, "arr$":[Ljava/net/InetAddress;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v5, :cond_1

    aget-object v0, v1, v3

    .line 59
    .local v0, "a":Ljava/net/InetAddress;
    instance-of v7, v0, Ljava/net/Inet4Address;

    if-eqz v7, :cond_0

    .line 61
    .end local v0    # "a":Ljava/net/InetAddress;
    .end local v1    # "arr$":[Ljava/net/InetAddress;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    :goto_2
    return-object v0

    .line 50
    :catch_0
    move-exception v2

    .line 51
    .local v2, "e":Ljava/net/UnknownHostException;
    const-string v7, "lookupHost, UnknownHostException"

    invoke-static {v7}, Lcom/android/server/connectivity/NetworkAutoAuthentication;->log(Ljava/lang/String;)V

    move-object v0, v6

    .line 52
    goto :goto_2

    .line 53
    .end local v2    # "e":Ljava/net/UnknownHostException;
    :catch_1
    move-exception v2

    .line 54
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 58
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "a":Ljava/net/InetAddress;
    .restart local v1    # "arr$":[Ljava/net/InetAddress;
    .restart local v3    # "i$":I
    .restart local v5    # "len$":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "a":Ljava/net/InetAddress;
    :cond_1
    move-object v0, v6

    .line 61
    goto :goto_2
.end method
